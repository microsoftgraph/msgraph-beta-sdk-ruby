require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityDataDiscoveryRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The available entities are IP addresses, devices, and users who access a cloud app.
            @cloud_app_discovery
            ## 
            ## Gets the cloudAppDiscovery property value. The available entities are IP addresses, devices, and users who access a cloud app.
            ## @return a security_data_discovery_report
            ## 
            def cloud_app_discovery
                return @cloud_app_discovery
            end
            ## 
            ## Sets the cloudAppDiscovery property value. The available entities are IP addresses, devices, and users who access a cloud app.
            ## @param value Value to set for the cloudAppDiscovery property.
            ## @return a void
            ## 
            def cloud_app_discovery=(value)
                @cloud_app_discovery = value
            end
            ## 
            ## Instantiates a new SecurityDataDiscoveryRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_data_discovery_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDataDiscoveryRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cloudAppDiscovery" => lambda {|n| @cloud_app_discovery = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDataDiscoveryReport.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("cloudAppDiscovery", @cloud_app_discovery)
            end
        end
    end
end
