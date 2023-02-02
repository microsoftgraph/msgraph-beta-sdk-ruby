require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Contains properties for the installation status for a user.
    class UserAppInstallStatus < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The navigation link to the mobile app.
        @app
        ## 
        # The install state of the app on devices.
        @device_statuses
        ## 
        # Failed Device Count.
        @failed_device_count
        ## 
        # Installed Device Count.
        @installed_device_count
        ## 
        # Not installed device count.
        @not_installed_device_count
        ## 
        # User name.
        @user_name
        ## 
        # User Principal Name.
        @user_principal_name
        ## 
        ## Gets the app property value. The navigation link to the mobile app.
        ## @return a mobile_app
        ## 
        def app
            return @app
        end
        ## 
        ## Sets the app property value. The navigation link to the mobile app.
        ## @param value Value to set for the app property.
        ## @return a void
        ## 
        def app=(value)
            @app = value
        end
        ## 
        ## Instantiates a new userAppInstallStatus and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_app_install_status
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserAppInstallStatus.new
        end
        ## 
        ## Gets the deviceStatuses property value. The install state of the app on devices.
        ## @return a mobile_app_install_status
        ## 
        def device_statuses
            return @device_statuses
        end
        ## 
        ## Sets the deviceStatuses property value. The install state of the app on devices.
        ## @param value Value to set for the device_statuses property.
        ## @return a void
        ## 
        def device_statuses=(value)
            @device_statuses = value
        end
        ## 
        ## Gets the failedDeviceCount property value. Failed Device Count.
        ## @return a integer
        ## 
        def failed_device_count
            return @failed_device_count
        end
        ## 
        ## Sets the failedDeviceCount property value. Failed Device Count.
        ## @param value Value to set for the failed_device_count property.
        ## @return a void
        ## 
        def failed_device_count=(value)
            @failed_device_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "app" => lambda {|n| @app = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MobileApp.create_from_discriminator_value(pn) }) },
                "deviceStatuses" => lambda {|n| @device_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppInstallStatus.create_from_discriminator_value(pn) }) },
                "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                "installedDeviceCount" => lambda {|n| @installed_device_count = n.get_number_value() },
                "notInstalledDeviceCount" => lambda {|n| @not_installed_device_count = n.get_number_value() },
                "userName" => lambda {|n| @user_name = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the installedDeviceCount property value. Installed Device Count.
        ## @return a integer
        ## 
        def installed_device_count
            return @installed_device_count
        end
        ## 
        ## Sets the installedDeviceCount property value. Installed Device Count.
        ## @param value Value to set for the installed_device_count property.
        ## @return a void
        ## 
        def installed_device_count=(value)
            @installed_device_count = value
        end
        ## 
        ## Gets the notInstalledDeviceCount property value. Not installed device count.
        ## @return a integer
        ## 
        def not_installed_device_count
            return @not_installed_device_count
        end
        ## 
        ## Sets the notInstalledDeviceCount property value. Not installed device count.
        ## @param value Value to set for the not_installed_device_count property.
        ## @return a void
        ## 
        def not_installed_device_count=(value)
            @not_installed_device_count = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("app", @app)
            writer.write_collection_of_object_values("deviceStatuses", @device_statuses)
            writer.write_number_value("failedDeviceCount", @failed_device_count)
            writer.write_number_value("installedDeviceCount", @installed_device_count)
            writer.write_number_value("notInstalledDeviceCount", @not_installed_device_count)
            writer.write_string_value("userName", @user_name)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the userName property value. User name.
        ## @return a string
        ## 
        def user_name
            return @user_name
        end
        ## 
        ## Sets the userName property value. User name.
        ## @param value Value to set for the user_name property.
        ## @return a void
        ## 
        def user_name=(value)
            @user_name = value
        end
        ## 
        ## Gets the userPrincipalName property value. User Principal Name.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. User Principal Name.
        ## @param value Value to set for the user_principal_name property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
