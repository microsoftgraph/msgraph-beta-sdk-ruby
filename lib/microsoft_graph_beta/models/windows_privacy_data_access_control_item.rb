require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Specify access control level per privacy data category
    class WindowsPrivacyDataAccessControlItem < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Determine the access level to specific Windows privacy data category.
        @access_level
        ## 
        # The Package Family Name of a Windows app. When set, the access level applies to the specified application.
        @app_display_name
        ## 
        # The Package Family Name of a Windows app. When set, the access level applies to the specified application.
        @app_package_family_name
        ## 
        # Windows privacy data category specifier for privacy data access.
        @data_category
        ## 
        ## Gets the accessLevel property value. Determine the access level to specific Windows privacy data category.
        ## @return a windows_privacy_data_access_level
        ## 
        def access_level
            return @access_level
        end
        ## 
        ## Sets the accessLevel property value. Determine the access level to specific Windows privacy data category.
        ## @param value Value to set for the accessLevel property.
        ## @return a void
        ## 
        def access_level=(value)
            @access_level = value
        end
        ## 
        ## Gets the appDisplayName property value. The Package Family Name of a Windows app. When set, the access level applies to the specified application.
        ## @return a string
        ## 
        def app_display_name
            return @app_display_name
        end
        ## 
        ## Sets the appDisplayName property value. The Package Family Name of a Windows app. When set, the access level applies to the specified application.
        ## @param value Value to set for the appDisplayName property.
        ## @return a void
        ## 
        def app_display_name=(value)
            @app_display_name = value
        end
        ## 
        ## Gets the appPackageFamilyName property value. The Package Family Name of a Windows app. When set, the access level applies to the specified application.
        ## @return a string
        ## 
        def app_package_family_name
            return @app_package_family_name
        end
        ## 
        ## Sets the appPackageFamilyName property value. The Package Family Name of a Windows app. When set, the access level applies to the specified application.
        ## @param value Value to set for the appPackageFamilyName property.
        ## @return a void
        ## 
        def app_package_family_name=(value)
            @app_package_family_name = value
        end
        ## 
        ## Instantiates a new windowsPrivacyDataAccessControlItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_privacy_data_access_control_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsPrivacyDataAccessControlItem.new
        end
        ## 
        ## Gets the dataCategory property value. Windows privacy data category specifier for privacy data access.
        ## @return a windows_privacy_data_category
        ## 
        def data_category
            return @data_category
        end
        ## 
        ## Sets the dataCategory property value. Windows privacy data category specifier for privacy data access.
        ## @param value Value to set for the dataCategory property.
        ## @return a void
        ## 
        def data_category=(value)
            @data_category = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "accessLevel" => lambda {|n| @access_level = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsPrivacyDataAccessLevel) },
                "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                "appPackageFamilyName" => lambda {|n| @app_package_family_name = n.get_string_value() },
                "dataCategory" => lambda {|n| @data_category = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsPrivacyDataCategory) },
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
            writer.write_enum_value("accessLevel", @access_level)
            writer.write_string_value("appDisplayName", @app_display_name)
            writer.write_string_value("appPackageFamilyName", @app_package_family_name)
            writer.write_enum_value("dataCategory", @data_category)
        end
    end
end
