require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementTemplateSettingCategory < MicrosoftGraphBeta::Models::DeviceManagementSettingCategory
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The settings this category contains
        @recommended_settings
        ## 
        ## Instantiates a new DeviceManagementTemplateSettingCategory and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_template_setting_category
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementTemplateSettingCategory.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "recommendedSettings" => lambda {|n| @recommended_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInstance.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the recommendedSettings property value. The settings this category contains
        ## @return a device_management_setting_instance
        ## 
        def recommended_settings
            return @recommended_settings
        end
        ## 
        ## Sets the recommendedSettings property value. The settings this category contains
        ## @param value Value to set for the recommendedSettings property.
        ## @return a void
        ## 
        def recommended_settings=(value)
            @recommended_settings = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("recommendedSettings", @recommended_settings)
        end
    end
end
