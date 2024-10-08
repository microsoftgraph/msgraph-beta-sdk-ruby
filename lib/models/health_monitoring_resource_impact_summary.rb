require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HealthMonitoringResourceImpactSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The impactedCount property
            @impacted_count
            ## 
            # The impactedCountLimitExceeded property
            @impacted_count_limit_exceeded
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The resourceType property
            @resource_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new HealthMonitoringResourceImpactSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a health_monitoring_resource_impact_summary
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
                        when "#microsoft.graph.healthMonitoring.directoryObjectImpactSummary"
                            return HealthMonitoringDirectoryObjectImpactSummary.new
                        when "#microsoft.graph.healthMonitoring.groupImpactSummary"
                            return HealthMonitoringGroupImpactSummary.new
                        when "#microsoft.graph.healthMonitoring.servicePrincipalImpactSummary"
                            return HealthMonitoringServicePrincipalImpactSummary.new
                        when "#microsoft.graph.healthMonitoring.userImpactSummary"
                            return HealthMonitoringUserImpactSummary.new
                    end
                end
                return HealthMonitoringResourceImpactSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "impactedCount" => lambda {|n| @impacted_count = n.get_string_value() },
                    "impactedCountLimitExceeded" => lambda {|n| @impacted_count_limit_exceeded = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the impactedCount property value. The impactedCount property
            ## @return a string
            ## 
            def impacted_count
                return @impacted_count
            end
            ## 
            ## Sets the impactedCount property value. The impactedCount property
            ## @param value Value to set for the impactedCount property.
            ## @return a void
            ## 
            def impacted_count=(value)
                @impacted_count = value
            end
            ## 
            ## Gets the impactedCountLimitExceeded property value. The impactedCountLimitExceeded property
            ## @return a boolean
            ## 
            def impacted_count_limit_exceeded
                return @impacted_count_limit_exceeded
            end
            ## 
            ## Sets the impactedCountLimitExceeded property value. The impactedCountLimitExceeded property
            ## @param value Value to set for the impactedCountLimitExceeded property.
            ## @return a void
            ## 
            def impacted_count_limit_exceeded=(value)
                @impacted_count_limit_exceeded = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the resourceType property value. The resourceType property
            ## @return a string
            ## 
            def resource_type
                return @resource_type
            end
            ## 
            ## Sets the resourceType property value. The resourceType property
            ## @param value Value to set for the resourceType property.
            ## @return a void
            ## 
            def resource_type=(value)
                @resource_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("impactedCount", @impacted_count)
                writer.write_boolean_value("impactedCountLimitExceeded", @impacted_count_limit_exceeded)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("resourceType", @resource_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
