require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class ManagementIntent < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The display name for the management intent. Optional. Read-only.
                @display_name
                ## 
                # A flag indicating whether the management intent is global. Required. Read-only.
                @is_global
                ## 
                # The collection of management templates associated with the management intent. Optional. Read-only.
                @management_templates
                ## 
                ## Instantiates a new managementIntent and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a management_intent
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ManagementIntent.new
                end
                ## 
                ## Gets the displayName property value. The display name for the management intent. Optional. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name for the management intent. Optional. Read-only.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "isGlobal" => lambda {|n| @is_global = n.get_boolean_value() },
                        "managementTemplates" => lambda {|n| @management_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagementTemplateDetailedInfo.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the isGlobal property value. A flag indicating whether the management intent is global. Required. Read-only.
                ## @return a boolean
                ## 
                def is_global
                    return @is_global
                end
                ## 
                ## Sets the isGlobal property value. A flag indicating whether the management intent is global. Required. Read-only.
                ## @param value Value to set for the is_global property.
                ## @return a void
                ## 
                def is_global=(value)
                    @is_global = value
                end
                ## 
                ## Gets the managementTemplates property value. The collection of management templates associated with the management intent. Optional. Read-only.
                ## @return a management_template_detailed_info
                ## 
                def management_templates
                    return @management_templates
                end
                ## 
                ## Sets the managementTemplates property value. The collection of management templates associated with the management intent. Optional. Read-only.
                ## @param value Value to set for the management_templates property.
                ## @return a void
                ## 
                def management_templates=(value)
                    @management_templates = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("displayName", @display_name)
                    writer.write_boolean_value("isGlobal", @is_global)
                    writer.write_collection_of_object_values("managementTemplates", @management_templates)
                end
            end
        end
    end
end
