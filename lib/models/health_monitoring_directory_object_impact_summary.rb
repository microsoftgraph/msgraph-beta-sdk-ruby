require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HealthMonitoringDirectoryObjectImpactSummary < MicrosoftGraphBeta::Models::HealthMonitoringResourceImpactSummary
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The resourceSampling property
            @resource_sampling
            ## 
            ## Instantiates a new HealthMonitoringDirectoryObjectImpactSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.healthMonitoring.directoryObjectImpactSummary"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a health_monitoring_directory_object_impact_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.healthMonitoring.applicationImpactSummary"
                            return HealthMonitoringApplicationImpactSummary.new
                        when "#microsoft.graph.healthMonitoring.deviceImpactSummary"
                            return HealthMonitoringDeviceImpactSummary.new
                        when "#microsoft.graph.healthMonitoring.groupImpactSummary"
                            return HealthMonitoringGroupImpactSummary.new
                        when "#microsoft.graph.healthMonitoring.servicePrincipalImpactSummary"
                            return HealthMonitoringServicePrincipalImpactSummary.new
                        when "#microsoft.graph.healthMonitoring.userImpactSummary"
                            return HealthMonitoringUserImpactSummary.new
                    end
                end
                return HealthMonitoringDirectoryObjectImpactSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "resourceSampling" => lambda {|n| @resource_sampling = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resourceSampling property value. The resourceSampling property
            ## @return a directory_object
            ## 
            def resource_sampling
                return @resource_sampling
            end
            ## 
            ## Sets the resourceSampling property value. The resourceSampling property
            ## @param value Value to set for the resourceSampling property.
            ## @return a void
            ## 
            def resource_sampling=(value)
                @resource_sampling = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("resourceSampling", @resource_sampling)
            end
        end
    end
end
