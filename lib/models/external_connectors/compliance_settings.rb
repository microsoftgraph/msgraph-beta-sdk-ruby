require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraphBeta::Models::ExternalConnectors
    class ComplianceSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Enables the developer to define the appearance of the content and configure conditions that dictate when the template should be displayed. Maximum of two eDiscovery result templates per connection.
        @e_discovery_result_templates
        ## 
        # The OdataType property
        @odata_type
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new complianceSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a compliance_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ComplianceSettings.new
        end
        ## 
        ## Gets the eDiscoveryResultTemplates property value. Enables the developer to define the appearance of the content and configure conditions that dictate when the template should be displayed. Maximum of two eDiscovery result templates per connection.
        ## @return a display_template
        ## 
        def e_discovery_result_templates
            return @e_discovery_result_templates
        end
        ## 
        ## Sets the eDiscoveryResultTemplates property value. Enables the developer to define the appearance of the content and configure conditions that dictate when the template should be displayed. Maximum of two eDiscovery result templates per connection.
        ## @param value Value to set for the eDiscoveryResultTemplates property.
        ## @return a void
        ## 
        def e_discovery_result_templates=(value)
            @e_discovery_result_templates = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "eDiscoveryResultTemplates" => lambda {|n| @e_discovery_result_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExternalConnectors::DisplayTemplate.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("eDiscoveryResultTemplates", @e_discovery_result_templates)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
