require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityProtectByTemplateAction < MicrosoftGraphBeta::Models::SecurityInformationProtectionAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for a protection template in Microsoft Purview Information Protection to apply to the content.
            @template_id
            ## 
            ## Instantiates a new securityProtectByTemplateAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.protectByTemplateAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_protect_by_template_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityProtectByTemplateAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
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
                writer.write_string_value("templateId", @template_id)
            end
            ## 
            ## Gets the templateId property value. The unique identifier for a protection template in Microsoft Purview Information Protection to apply to the content.
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. The unique identifier for a protection template in Microsoft Purview Information Protection to apply to the content.
            ## @param value Value to set for the templateId property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
        end
    end
end
