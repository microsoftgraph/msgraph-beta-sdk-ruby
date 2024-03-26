require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for the installation summary of a mobile app. This will be deprecated starting May, 2023 (Intune Release 2305).
        class MobileAppInstallSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of Devices that have failed to install this app.
            @failed_device_count
            ## 
            # Number of Users that have 1 or more device that failed to install this app.
            @failed_user_count
            ## 
            # Number of Devices that have successfully installed this app.
            @installed_device_count
            ## 
            # Number of Users whose devices have all succeeded to install this app.
            @installed_user_count
            ## 
            # Number of Devices that are not applicable for this app.
            @not_applicable_device_count
            ## 
            # Number of Users whose devices were all not applicable for this app.
            @not_applicable_user_count
            ## 
            # Number of Devices that does not have this app installed.
            @not_installed_device_count
            ## 
            # Number of Users that have 1 or more devices that did not install this app.
            @not_installed_user_count
            ## 
            # Number of Devices that have been notified to install this app.
            @pending_install_device_count
            ## 
            # Number of Users that have 1 or more device that have been notified to install this app and have 0 devices with failures.
            @pending_install_user_count
            ## 
            ## Instantiates a new MobileAppInstallSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_install_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppInstallSummary.new
            end
            ## 
            ## Gets the failedDeviceCount property value. Number of Devices that have failed to install this app.
            ## @return a integer
            ## 
            def failed_device_count
                return @failed_device_count
            end
            ## 
            ## Sets the failedDeviceCount property value. Number of Devices that have failed to install this app.
            ## @param value Value to set for the failedDeviceCount property.
            ## @return a void
            ## 
            def failed_device_count=(value)
                @failed_device_count = value
            end
            ## 
            ## Gets the failedUserCount property value. Number of Users that have 1 or more device that failed to install this app.
            ## @return a integer
            ## 
            def failed_user_count
                return @failed_user_count
            end
            ## 
            ## Sets the failedUserCount property value. Number of Users that have 1 or more device that failed to install this app.
            ## @param value Value to set for the failedUserCount property.
            ## @return a void
            ## 
            def failed_user_count=(value)
                @failed_user_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                    "failedUserCount" => lambda {|n| @failed_user_count = n.get_number_value() },
                    "installedDeviceCount" => lambda {|n| @installed_device_count = n.get_number_value() },
                    "installedUserCount" => lambda {|n| @installed_user_count = n.get_number_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "notApplicableUserCount" => lambda {|n| @not_applicable_user_count = n.get_number_value() },
                    "notInstalledDeviceCount" => lambda {|n| @not_installed_device_count = n.get_number_value() },
                    "notInstalledUserCount" => lambda {|n| @not_installed_user_count = n.get_number_value() },
                    "pendingInstallDeviceCount" => lambda {|n| @pending_install_device_count = n.get_number_value() },
                    "pendingInstallUserCount" => lambda {|n| @pending_install_user_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the installedDeviceCount property value. Number of Devices that have successfully installed this app.
            ## @return a integer
            ## 
            def installed_device_count
                return @installed_device_count
            end
            ## 
            ## Sets the installedDeviceCount property value. Number of Devices that have successfully installed this app.
            ## @param value Value to set for the installedDeviceCount property.
            ## @return a void
            ## 
            def installed_device_count=(value)
                @installed_device_count = value
            end
            ## 
            ## Gets the installedUserCount property value. Number of Users whose devices have all succeeded to install this app.
            ## @return a integer
            ## 
            def installed_user_count
                return @installed_user_count
            end
            ## 
            ## Sets the installedUserCount property value. Number of Users whose devices have all succeeded to install this app.
            ## @param value Value to set for the installedUserCount property.
            ## @return a void
            ## 
            def installed_user_count=(value)
                @installed_user_count = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. Number of Devices that are not applicable for this app.
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. Number of Devices that are not applicable for this app.
            ## @param value Value to set for the notApplicableDeviceCount property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the notApplicableUserCount property value. Number of Users whose devices were all not applicable for this app.
            ## @return a integer
            ## 
            def not_applicable_user_count
                return @not_applicable_user_count
            end
            ## 
            ## Sets the notApplicableUserCount property value. Number of Users whose devices were all not applicable for this app.
            ## @param value Value to set for the notApplicableUserCount property.
            ## @return a void
            ## 
            def not_applicable_user_count=(value)
                @not_applicable_user_count = value
            end
            ## 
            ## Gets the notInstalledDeviceCount property value. Number of Devices that does not have this app installed.
            ## @return a integer
            ## 
            def not_installed_device_count
                return @not_installed_device_count
            end
            ## 
            ## Sets the notInstalledDeviceCount property value. Number of Devices that does not have this app installed.
            ## @param value Value to set for the notInstalledDeviceCount property.
            ## @return a void
            ## 
            def not_installed_device_count=(value)
                @not_installed_device_count = value
            end
            ## 
            ## Gets the notInstalledUserCount property value. Number of Users that have 1 or more devices that did not install this app.
            ## @return a integer
            ## 
            def not_installed_user_count
                return @not_installed_user_count
            end
            ## 
            ## Sets the notInstalledUserCount property value. Number of Users that have 1 or more devices that did not install this app.
            ## @param value Value to set for the notInstalledUserCount property.
            ## @return a void
            ## 
            def not_installed_user_count=(value)
                @not_installed_user_count = value
            end
            ## 
            ## Gets the pendingInstallDeviceCount property value. Number of Devices that have been notified to install this app.
            ## @return a integer
            ## 
            def pending_install_device_count
                return @pending_install_device_count
            end
            ## 
            ## Sets the pendingInstallDeviceCount property value. Number of Devices that have been notified to install this app.
            ## @param value Value to set for the pendingInstallDeviceCount property.
            ## @return a void
            ## 
            def pending_install_device_count=(value)
                @pending_install_device_count = value
            end
            ## 
            ## Gets the pendingInstallUserCount property value. Number of Users that have 1 or more device that have been notified to install this app and have 0 devices with failures.
            ## @return a integer
            ## 
            def pending_install_user_count
                return @pending_install_user_count
            end
            ## 
            ## Sets the pendingInstallUserCount property value. Number of Users that have 1 or more device that have been notified to install this app and have 0 devices with failures.
            ## @param value Value to set for the pendingInstallUserCount property.
            ## @return a void
            ## 
            def pending_install_user_count=(value)
                @pending_install_user_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
            end
        end
    end
end
