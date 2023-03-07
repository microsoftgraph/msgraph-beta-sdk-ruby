require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GovernanceNotificationPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The enabledTemplateTypes property
            @enabled_template_types
            ## 
            # The notificationTemplates property
            @notification_templates
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
            ## Instantiates a new governanceNotificationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a governance_notification_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GovernanceNotificationPolicy.new
            end
            ## 
            ## Gets the enabledTemplateTypes property value. The enabledTemplateTypes property
            ## @return a string
            ## 
            def enabled_template_types
                return @enabled_template_types
            end
            ## 
            ## Sets the enabledTemplateTypes property value. The enabledTemplateTypes property
            ## @param value Value to set for the enabled_template_types property.
            ## @return a void
            ## 
            def enabled_template_types=(value)
                @enabled_template_types = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enabledTemplateTypes" => lambda {|n| @enabled_template_types = n.get_collection_of_primitive_values(String) },
                    "notificationTemplates" => lambda {|n| @notification_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceNotificationTemplate.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the notificationTemplates property value. The notificationTemplates property
            ## @return a governance_notification_template
            ## 
            def notification_templates
                return @notification_templates
            end
            ## 
            ## Sets the notificationTemplates property value. The notificationTemplates property
            ## @param value Value to set for the notification_templates property.
            ## @return a void
            ## 
            def notification_templates=(value)
                @notification_templates = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_collection_of_primitive_values("enabledTemplateTypes", @enabled_template_types)
                writer.write_collection_of_object_values("notificationTemplates", @notification_templates)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
