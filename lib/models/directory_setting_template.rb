require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DirectorySettingTemplate < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description of the template. Read-only.
            @description
            ## 
            # Display name of the template. Read-only.
            @display_name
            ## 
            # Collection of settingTemplateValues that list the set of available settings, defaults and types that make up this template.  Read-only.
            @values
            ## 
            ## Instantiates a new DirectorySettingTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.directorySettingTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a directory_setting_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DirectorySettingTemplate.new
            end
            ## 
            ## Gets the description property value. Description of the template. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the template. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of the template. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the template. Read-only.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "values" => lambda {|n| @values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SettingTemplateValue.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("values", @values)
            end
            ## 
            ## Gets the values property value. Collection of settingTemplateValues that list the set of available settings, defaults and types that make up this template.  Read-only.
            ## @return a setting_template_value
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. Collection of settingTemplateValues that list the set of available settings, defaults and types that make up this template.  Read-only.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
