require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class ManagementIntentInfo
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The display name for the management intent. Optional. Read-only.
                @management_intent_display_name
                ## 
                # The identifier for the management intent. Required. Read-only.
                @management_intent_id
                ## 
                # The collection of management template information associated with the management intent. Optional. Read-only.
                @management_templates
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
                ## Instantiates a new managementIntentInfo and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a management_intent_info
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ManagementIntentInfo.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "managementIntentDisplayName" => lambda {|n| @management_intent_display_name = n.get_string_value() },
                        "managementIntentId" => lambda {|n| @management_intent_id = n.get_string_value() },
                        "managementTemplates" => lambda {|n| @management_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagementTemplateDetailedInfo.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the managementIntentDisplayName property value. The display name for the management intent. Optional. Read-only.
                ## @return a string
                ## 
                def management_intent_display_name
                    return @management_intent_display_name
                end
                ## 
                ## Sets the managementIntentDisplayName property value. The display name for the management intent. Optional. Read-only.
                ## @param value Value to set for the management_intent_display_name property.
                ## @return a void
                ## 
                def management_intent_display_name=(value)
                    @management_intent_display_name = value
                end
                ## 
                ## Gets the managementIntentId property value. The identifier for the management intent. Required. Read-only.
                ## @return a string
                ## 
                def management_intent_id
                    return @management_intent_id
                end
                ## 
                ## Sets the managementIntentId property value. The identifier for the management intent. Required. Read-only.
                ## @param value Value to set for the management_intent_id property.
                ## @return a void
                ## 
                def management_intent_id=(value)
                    @management_intent_id = value
                end
                ## 
                ## Gets the managementTemplates property value. The collection of management template information associated with the management intent. Optional. Read-only.
                ## @return a management_template_detailed_info
                ## 
                def management_templates
                    return @management_templates
                end
                ## 
                ## Sets the managementTemplates property value. The collection of management template information associated with the management intent. Optional. Read-only.
                ## @param value Value to set for the management_templates property.
                ## @return a void
                ## 
                def management_templates=(value)
                    @management_templates = value
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
                    writer.write_string_value("managementIntentDisplayName", @management_intent_display_name)
                    writer.write_string_value("managementIntentId", @management_intent_id)
                    writer.write_collection_of_object_values("managementTemplates", @management_templates)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
