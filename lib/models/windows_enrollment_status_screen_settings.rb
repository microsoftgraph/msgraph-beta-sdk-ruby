require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Enrollment status screen setting
        class WindowsEnrollmentStatusScreenSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Allow or block user to use device before profile and app installation complete
            @allow_device_use_before_profile_and_app_install_complete
            ## 
            # Allow the user to continue using the device on installation failure
            @allow_device_use_on_install_failure
            ## 
            # Allow or block log collection on installation failure
            @allow_log_collection_on_install_failure
            ## 
            # Allow the user to retry the setup on installation failure
            @block_device_setup_retry_by_user
            ## 
            # Set custom error message to show upon installation failure
            @custom_error_message
            ## 
            # Show or hide installation progress to user
            @hide_installation_progress
            ## 
            # Set installation progress timeout in minutes
            @install_progress_timeout_in_minutes
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
            ## Gets the allowDeviceUseBeforeProfileAndAppInstallComplete property value. Allow or block user to use device before profile and app installation complete
            ## @return a boolean
            ## 
            def allow_device_use_before_profile_and_app_install_complete
                return @allow_device_use_before_profile_and_app_install_complete
            end
            ## 
            ## Sets the allowDeviceUseBeforeProfileAndAppInstallComplete property value. Allow or block user to use device before profile and app installation complete
            ## @param value Value to set for the allow_device_use_before_profile_and_app_install_complete property.
            ## @return a void
            ## 
            def allow_device_use_before_profile_and_app_install_complete=(value)
                @allow_device_use_before_profile_and_app_install_complete = value
            end
            ## 
            ## Gets the allowDeviceUseOnInstallFailure property value. Allow the user to continue using the device on installation failure
            ## @return a boolean
            ## 
            def allow_device_use_on_install_failure
                return @allow_device_use_on_install_failure
            end
            ## 
            ## Sets the allowDeviceUseOnInstallFailure property value. Allow the user to continue using the device on installation failure
            ## @param value Value to set for the allow_device_use_on_install_failure property.
            ## @return a void
            ## 
            def allow_device_use_on_install_failure=(value)
                @allow_device_use_on_install_failure = value
            end
            ## 
            ## Gets the allowLogCollectionOnInstallFailure property value. Allow or block log collection on installation failure
            ## @return a boolean
            ## 
            def allow_log_collection_on_install_failure
                return @allow_log_collection_on_install_failure
            end
            ## 
            ## Sets the allowLogCollectionOnInstallFailure property value. Allow or block log collection on installation failure
            ## @param value Value to set for the allow_log_collection_on_install_failure property.
            ## @return a void
            ## 
            def allow_log_collection_on_install_failure=(value)
                @allow_log_collection_on_install_failure = value
            end
            ## 
            ## Gets the blockDeviceSetupRetryByUser property value. Allow the user to retry the setup on installation failure
            ## @return a boolean
            ## 
            def block_device_setup_retry_by_user
                return @block_device_setup_retry_by_user
            end
            ## 
            ## Sets the blockDeviceSetupRetryByUser property value. Allow the user to retry the setup on installation failure
            ## @param value Value to set for the block_device_setup_retry_by_user property.
            ## @return a void
            ## 
            def block_device_setup_retry_by_user=(value)
                @block_device_setup_retry_by_user = value
            end
            ## 
            ## Instantiates a new windowsEnrollmentStatusScreenSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_enrollment_status_screen_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsEnrollmentStatusScreenSettings.new
            end
            ## 
            ## Gets the customErrorMessage property value. Set custom error message to show upon installation failure
            ## @return a string
            ## 
            def custom_error_message
                return @custom_error_message
            end
            ## 
            ## Sets the customErrorMessage property value. Set custom error message to show upon installation failure
            ## @param value Value to set for the custom_error_message property.
            ## @return a void
            ## 
            def custom_error_message=(value)
                @custom_error_message = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowDeviceUseBeforeProfileAndAppInstallComplete" => lambda {|n| @allow_device_use_before_profile_and_app_install_complete = n.get_boolean_value() },
                    "allowDeviceUseOnInstallFailure" => lambda {|n| @allow_device_use_on_install_failure = n.get_boolean_value() },
                    "allowLogCollectionOnInstallFailure" => lambda {|n| @allow_log_collection_on_install_failure = n.get_boolean_value() },
                    "blockDeviceSetupRetryByUser" => lambda {|n| @block_device_setup_retry_by_user = n.get_boolean_value() },
                    "customErrorMessage" => lambda {|n| @custom_error_message = n.get_string_value() },
                    "hideInstallationProgress" => lambda {|n| @hide_installation_progress = n.get_boolean_value() },
                    "installProgressTimeoutInMinutes" => lambda {|n| @install_progress_timeout_in_minutes = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the hideInstallationProgress property value. Show or hide installation progress to user
            ## @return a boolean
            ## 
            def hide_installation_progress
                return @hide_installation_progress
            end
            ## 
            ## Sets the hideInstallationProgress property value. Show or hide installation progress to user
            ## @param value Value to set for the hide_installation_progress property.
            ## @return a void
            ## 
            def hide_installation_progress=(value)
                @hide_installation_progress = value
            end
            ## 
            ## Gets the installProgressTimeoutInMinutes property value. Set installation progress timeout in minutes
            ## @return a integer
            ## 
            def install_progress_timeout_in_minutes
                return @install_progress_timeout_in_minutes
            end
            ## 
            ## Sets the installProgressTimeoutInMinutes property value. Set installation progress timeout in minutes
            ## @param value Value to set for the install_progress_timeout_in_minutes property.
            ## @return a void
            ## 
            def install_progress_timeout_in_minutes=(value)
                @install_progress_timeout_in_minutes = value
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
                writer.write_boolean_value("allowDeviceUseBeforeProfileAndAppInstallComplete", @allow_device_use_before_profile_and_app_install_complete)
                writer.write_boolean_value("allowDeviceUseOnInstallFailure", @allow_device_use_on_install_failure)
                writer.write_boolean_value("allowLogCollectionOnInstallFailure", @allow_log_collection_on_install_failure)
                writer.write_boolean_value("blockDeviceSetupRetryByUser", @block_device_setup_retry_by_user)
                writer.write_string_value("customErrorMessage", @custom_error_message)
                writer.write_boolean_value("hideInstallationProgress", @hide_installation_progress)
                writer.write_number_value("installProgressTimeoutInMinutes", @install_progress_timeout_in_minutes)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
