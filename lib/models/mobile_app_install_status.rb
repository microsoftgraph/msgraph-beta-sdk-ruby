require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Contains properties for the installation state of a mobile app for a device.
    class MobileAppInstallStatus < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The navigation link to the mobile app.
        @app
        ## 
        # Device ID
        @device_id
        ## 
        # Device name
        @device_name
        ## 
        # Human readable version of the application
        @display_version
        ## 
        # The error code for install or uninstall failures.
        @error_code
        ## 
        # A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
        @install_state
        ## 
        # Enum indicating additional details regarding why an application has a particular install state.
        @install_state_detail
        ## 
        # Last sync date time
        @last_sync_date_time
        ## 
        # A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
        @mobile_app_install_status_value
        ## 
        # OS Description
        @os_description
        ## 
        # OS Version
        @os_version
        ## 
        # Device User Name
        @user_name
        ## 
        # User Principal Name
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
        ## Instantiates a new mobileAppInstallStatus and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mobile_app_install_status
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MobileAppInstallStatus.new
        end
        ## 
        ## Gets the deviceId property value. Device ID
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. Device ID
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the deviceName property value. Device name
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. Device name
        ## @param value Value to set for the deviceName property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## Gets the displayVersion property value. Human readable version of the application
        ## @return a string
        ## 
        def display_version
            return @display_version
        end
        ## 
        ## Sets the displayVersion property value. Human readable version of the application
        ## @param value Value to set for the displayVersion property.
        ## @return a void
        ## 
        def display_version=(value)
            @display_version = value
        end
        ## 
        ## Gets the errorCode property value. The error code for install or uninstall failures.
        ## @return a integer
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. The error code for install or uninstall failures.
        ## @param value Value to set for the errorCode property.
        ## @return a void
        ## 
        def error_code=(value)
            @error_code = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "app" => lambda {|n| @app = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MobileApp.create_from_discriminator_value(pn) }) },
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "displayVersion" => lambda {|n| @display_version = n.get_string_value() },
                "errorCode" => lambda {|n| @error_code = n.get_number_value() },
                "installState" => lambda {|n| @install_state = n.get_enum_value(MicrosoftGraphBeta::Models::ResultantAppState) },
                "installStateDetail" => lambda {|n| @install_state_detail = n.get_enum_value(MicrosoftGraphBeta::Models::ResultantAppStateDetail) },
                "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                "mobileAppInstallStatusValue" => lambda {|n| @mobile_app_install_status_value = n.get_enum_value(MicrosoftGraphBeta::Models::ResultantAppState) },
                "osDescription" => lambda {|n| @os_description = n.get_string_value() },
                "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                "userName" => lambda {|n| @user_name = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the installState property value. A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
        ## @return a resultant_app_state
        ## 
        def install_state
            return @install_state
        end
        ## 
        ## Sets the installState property value. A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
        ## @param value Value to set for the installState property.
        ## @return a void
        ## 
        def install_state=(value)
            @install_state = value
        end
        ## 
        ## Gets the installStateDetail property value. Enum indicating additional details regarding why an application has a particular install state.
        ## @return a resultant_app_state_detail
        ## 
        def install_state_detail
            return @install_state_detail
        end
        ## 
        ## Sets the installStateDetail property value. Enum indicating additional details regarding why an application has a particular install state.
        ## @param value Value to set for the installStateDetail property.
        ## @return a void
        ## 
        def install_state_detail=(value)
            @install_state_detail = value
        end
        ## 
        ## Gets the lastSyncDateTime property value. Last sync date time
        ## @return a date_time
        ## 
        def last_sync_date_time
            return @last_sync_date_time
        end
        ## 
        ## Sets the lastSyncDateTime property value. Last sync date time
        ## @param value Value to set for the lastSyncDateTime property.
        ## @return a void
        ## 
        def last_sync_date_time=(value)
            @last_sync_date_time = value
        end
        ## 
        ## Gets the mobileAppInstallStatusValue property value. A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
        ## @return a resultant_app_state
        ## 
        def mobile_app_install_status_value
            return @mobile_app_install_status_value
        end
        ## 
        ## Sets the mobileAppInstallStatusValue property value. A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.
        ## @param value Value to set for the mobileAppInstallStatusValue property.
        ## @return a void
        ## 
        def mobile_app_install_status_value=(value)
            @mobile_app_install_status_value = value
        end
        ## 
        ## Gets the osDescription property value. OS Description
        ## @return a string
        ## 
        def os_description
            return @os_description
        end
        ## 
        ## Sets the osDescription property value. OS Description
        ## @param value Value to set for the osDescription property.
        ## @return a void
        ## 
        def os_description=(value)
            @os_description = value
        end
        ## 
        ## Gets the osVersion property value. OS Version
        ## @return a string
        ## 
        def os_version
            return @os_version
        end
        ## 
        ## Sets the osVersion property value. OS Version
        ## @param value Value to set for the osVersion property.
        ## @return a void
        ## 
        def os_version=(value)
            @os_version = value
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
            writer.write_string_value("deviceId", @device_id)
            writer.write_string_value("deviceName", @device_name)
            writer.write_string_value("displayVersion", @display_version)
            writer.write_number_value("errorCode", @error_code)
            writer.write_enum_value("installState", @install_state)
            writer.write_enum_value("installStateDetail", @install_state_detail)
            writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
            writer.write_enum_value("mobileAppInstallStatusValue", @mobile_app_install_status_value)
            writer.write_string_value("osDescription", @os_description)
            writer.write_string_value("osVersion", @os_version)
            writer.write_string_value("userName", @user_name)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the userName property value. Device User Name
        ## @return a string
        ## 
        def user_name
            return @user_name
        end
        ## 
        ## Sets the userName property value. Device User Name
        ## @param value Value to set for the userName property.
        ## @return a void
        ## 
        def user_name=(value)
            @user_name = value
        end
        ## 
        ## Gets the userPrincipalName property value. User Principal Name
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. User Principal Name
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
