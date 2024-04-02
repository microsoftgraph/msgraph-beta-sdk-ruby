require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows 10 Enrollment Status Page Configuration
        class Windows10EnrollmentCompletionPageConfiguration < MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, allows device reset on installation failure. When false, reset is blocked. The default is false.
            @allow_device_reset_on_install_failure
            ## 
            # When TRUE, allows the user to continue using the device on installation failure. When false, blocks the user on installation failure. The default is false.
            @allow_device_use_on_install_failure
            ## 
            # When TRUE, allows log collection on installation failure. When false, log collection is not allowed. The default is false.
            @allow_log_collection_on_install_failure
            ## 
            # When TRUE, ESP (Enrollment Status Page) installs all required apps targeted during technician phase and ignores any failures for non-blocking apps. When FALSE, ESP fails on any error during app install. The default is false.
            @allow_non_blocking_app_installation
            ## 
            # When TRUE, blocks user from retrying the setup on installation failure. When false, user is allowed to retry. The default is false.
            @block_device_setup_retry_by_user
            ## 
            # The custom error message to show upon installation failure. Max length is 10000. example: 'Setup could not be completed. Please try again or contact your support person for help.'
            @custom_error_message
            ## 
            # When TRUE, disables showing installation progress for first user post enrollment. When false, enables showing progress. The default is false.
            @disable_user_status_tracking_after_first_user
            ## 
            # The installation progress timeout in minutes. Default is 60 minutes.
            @install_progress_timeout_in_minutes
            ## 
            # Allows quality updates installation during OOBE
            @install_quality_updates
            ## 
            # Selected applications to track the installation status. It is in the form of an array of GUIDs.
            @selected_mobile_app_ids
            ## 
            # When TRUE, shows installation progress to user. When false, hides installation progress. The default is false.
            @show_installation_progress
            ## 
            # When TRUE, installation progress is tracked for only Autopilot enrollment scenarios. When false, other scenarios are tracked as well. The default is false.
            @track_install_progress_for_autopilot_only
            ## 
            ## Gets the allowDeviceResetOnInstallFailure property value. When TRUE, allows device reset on installation failure. When false, reset is blocked. The default is false.
            ## @return a boolean
            ## 
            def allow_device_reset_on_install_failure
                return @allow_device_reset_on_install_failure
            end
            ## 
            ## Sets the allowDeviceResetOnInstallFailure property value. When TRUE, allows device reset on installation failure. When false, reset is blocked. The default is false.
            ## @param value Value to set for the allowDeviceResetOnInstallFailure property.
            ## @return a void
            ## 
            def allow_device_reset_on_install_failure=(value)
                @allow_device_reset_on_install_failure = value
            end
            ## 
            ## Gets the allowDeviceUseOnInstallFailure property value. When TRUE, allows the user to continue using the device on installation failure. When false, blocks the user on installation failure. The default is false.
            ## @return a boolean
            ## 
            def allow_device_use_on_install_failure
                return @allow_device_use_on_install_failure
            end
            ## 
            ## Sets the allowDeviceUseOnInstallFailure property value. When TRUE, allows the user to continue using the device on installation failure. When false, blocks the user on installation failure. The default is false.
            ## @param value Value to set for the allowDeviceUseOnInstallFailure property.
            ## @return a void
            ## 
            def allow_device_use_on_install_failure=(value)
                @allow_device_use_on_install_failure = value
            end
            ## 
            ## Gets the allowLogCollectionOnInstallFailure property value. When TRUE, allows log collection on installation failure. When false, log collection is not allowed. The default is false.
            ## @return a boolean
            ## 
            def allow_log_collection_on_install_failure
                return @allow_log_collection_on_install_failure
            end
            ## 
            ## Sets the allowLogCollectionOnInstallFailure property value. When TRUE, allows log collection on installation failure. When false, log collection is not allowed. The default is false.
            ## @param value Value to set for the allowLogCollectionOnInstallFailure property.
            ## @return a void
            ## 
            def allow_log_collection_on_install_failure=(value)
                @allow_log_collection_on_install_failure = value
            end
            ## 
            ## Gets the allowNonBlockingAppInstallation property value. When TRUE, ESP (Enrollment Status Page) installs all required apps targeted during technician phase and ignores any failures for non-blocking apps. When FALSE, ESP fails on any error during app install. The default is false.
            ## @return a boolean
            ## 
            def allow_non_blocking_app_installation
                return @allow_non_blocking_app_installation
            end
            ## 
            ## Sets the allowNonBlockingAppInstallation property value. When TRUE, ESP (Enrollment Status Page) installs all required apps targeted during technician phase and ignores any failures for non-blocking apps. When FALSE, ESP fails on any error during app install. The default is false.
            ## @param value Value to set for the allowNonBlockingAppInstallation property.
            ## @return a void
            ## 
            def allow_non_blocking_app_installation=(value)
                @allow_non_blocking_app_installation = value
            end
            ## 
            ## Gets the blockDeviceSetupRetryByUser property value. When TRUE, blocks user from retrying the setup on installation failure. When false, user is allowed to retry. The default is false.
            ## @return a boolean
            ## 
            def block_device_setup_retry_by_user
                return @block_device_setup_retry_by_user
            end
            ## 
            ## Sets the blockDeviceSetupRetryByUser property value. When TRUE, blocks user from retrying the setup on installation failure. When false, user is allowed to retry. The default is false.
            ## @param value Value to set for the blockDeviceSetupRetryByUser property.
            ## @return a void
            ## 
            def block_device_setup_retry_by_user=(value)
                @block_device_setup_retry_by_user = value
            end
            ## 
            ## Instantiates a new Windows10EnrollmentCompletionPageConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10EnrollmentCompletionPageConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows10_enrollment_completion_page_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10EnrollmentCompletionPageConfiguration.new
            end
            ## 
            ## Gets the customErrorMessage property value. The custom error message to show upon installation failure. Max length is 10000. example: 'Setup could not be completed. Please try again or contact your support person for help.'
            ## @return a string
            ## 
            def custom_error_message
                return @custom_error_message
            end
            ## 
            ## Sets the customErrorMessage property value. The custom error message to show upon installation failure. Max length is 10000. example: 'Setup could not be completed. Please try again or contact your support person for help.'
            ## @param value Value to set for the customErrorMessage property.
            ## @return a void
            ## 
            def custom_error_message=(value)
                @custom_error_message = value
            end
            ## 
            ## Gets the disableUserStatusTrackingAfterFirstUser property value. When TRUE, disables showing installation progress for first user post enrollment. When false, enables showing progress. The default is false.
            ## @return a boolean
            ## 
            def disable_user_status_tracking_after_first_user
                return @disable_user_status_tracking_after_first_user
            end
            ## 
            ## Sets the disableUserStatusTrackingAfterFirstUser property value. When TRUE, disables showing installation progress for first user post enrollment. When false, enables showing progress. The default is false.
            ## @param value Value to set for the disableUserStatusTrackingAfterFirstUser property.
            ## @return a void
            ## 
            def disable_user_status_tracking_after_first_user=(value)
                @disable_user_status_tracking_after_first_user = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowDeviceResetOnInstallFailure" => lambda {|n| @allow_device_reset_on_install_failure = n.get_boolean_value() },
                    "allowDeviceUseOnInstallFailure" => lambda {|n| @allow_device_use_on_install_failure = n.get_boolean_value() },
                    "allowLogCollectionOnInstallFailure" => lambda {|n| @allow_log_collection_on_install_failure = n.get_boolean_value() },
                    "allowNonBlockingAppInstallation" => lambda {|n| @allow_non_blocking_app_installation = n.get_boolean_value() },
                    "blockDeviceSetupRetryByUser" => lambda {|n| @block_device_setup_retry_by_user = n.get_boolean_value() },
                    "customErrorMessage" => lambda {|n| @custom_error_message = n.get_string_value() },
                    "disableUserStatusTrackingAfterFirstUser" => lambda {|n| @disable_user_status_tracking_after_first_user = n.get_boolean_value() },
                    "installProgressTimeoutInMinutes" => lambda {|n| @install_progress_timeout_in_minutes = n.get_number_value() },
                    "installQualityUpdates" => lambda {|n| @install_quality_updates = n.get_boolean_value() },
                    "selectedMobileAppIds" => lambda {|n| @selected_mobile_app_ids = n.get_collection_of_primitive_values(String) },
                    "showInstallationProgress" => lambda {|n| @show_installation_progress = n.get_boolean_value() },
                    "trackInstallProgressForAutopilotOnly" => lambda {|n| @track_install_progress_for_autopilot_only = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the installProgressTimeoutInMinutes property value. The installation progress timeout in minutes. Default is 60 minutes.
            ## @return a integer
            ## 
            def install_progress_timeout_in_minutes
                return @install_progress_timeout_in_minutes
            end
            ## 
            ## Sets the installProgressTimeoutInMinutes property value. The installation progress timeout in minutes. Default is 60 minutes.
            ## @param value Value to set for the installProgressTimeoutInMinutes property.
            ## @return a void
            ## 
            def install_progress_timeout_in_minutes=(value)
                @install_progress_timeout_in_minutes = value
            end
            ## 
            ## Gets the installQualityUpdates property value. Allows quality updates installation during OOBE
            ## @return a boolean
            ## 
            def install_quality_updates
                return @install_quality_updates
            end
            ## 
            ## Sets the installQualityUpdates property value. Allows quality updates installation during OOBE
            ## @param value Value to set for the installQualityUpdates property.
            ## @return a void
            ## 
            def install_quality_updates=(value)
                @install_quality_updates = value
            end
            ## 
            ## Gets the selectedMobileAppIds property value. Selected applications to track the installation status. It is in the form of an array of GUIDs.
            ## @return a string
            ## 
            def selected_mobile_app_ids
                return @selected_mobile_app_ids
            end
            ## 
            ## Sets the selectedMobileAppIds property value. Selected applications to track the installation status. It is in the form of an array of GUIDs.
            ## @param value Value to set for the selectedMobileAppIds property.
            ## @return a void
            ## 
            def selected_mobile_app_ids=(value)
                @selected_mobile_app_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowDeviceResetOnInstallFailure", @allow_device_reset_on_install_failure)
                writer.write_boolean_value("allowDeviceUseOnInstallFailure", @allow_device_use_on_install_failure)
                writer.write_boolean_value("allowLogCollectionOnInstallFailure", @allow_log_collection_on_install_failure)
                writer.write_boolean_value("allowNonBlockingAppInstallation", @allow_non_blocking_app_installation)
                writer.write_boolean_value("blockDeviceSetupRetryByUser", @block_device_setup_retry_by_user)
                writer.write_string_value("customErrorMessage", @custom_error_message)
                writer.write_boolean_value("disableUserStatusTrackingAfterFirstUser", @disable_user_status_tracking_after_first_user)
                writer.write_number_value("installProgressTimeoutInMinutes", @install_progress_timeout_in_minutes)
                writer.write_boolean_value("installQualityUpdates", @install_quality_updates)
                writer.write_collection_of_primitive_values("selectedMobileAppIds", @selected_mobile_app_ids)
                writer.write_boolean_value("showInstallationProgress", @show_installation_progress)
                writer.write_boolean_value("trackInstallProgressForAutopilotOnly", @track_install_progress_for_autopilot_only)
            end
            ## 
            ## Gets the showInstallationProgress property value. When TRUE, shows installation progress to user. When false, hides installation progress. The default is false.
            ## @return a boolean
            ## 
            def show_installation_progress
                return @show_installation_progress
            end
            ## 
            ## Sets the showInstallationProgress property value. When TRUE, shows installation progress to user. When false, hides installation progress. The default is false.
            ## @param value Value to set for the showInstallationProgress property.
            ## @return a void
            ## 
            def show_installation_progress=(value)
                @show_installation_progress = value
            end
            ## 
            ## Gets the trackInstallProgressForAutopilotOnly property value. When TRUE, installation progress is tracked for only Autopilot enrollment scenarios. When false, other scenarios are tracked as well. The default is false.
            ## @return a boolean
            ## 
            def track_install_progress_for_autopilot_only
                return @track_install_progress_for_autopilot_only
            end
            ## 
            ## Sets the trackInstallProgressForAutopilotOnly property value. When TRUE, installation progress is tracked for only Autopilot enrollment scenarios. When false, other scenarios are tracked as well. The default is false.
            ## @param value Value to set for the trackInstallProgressForAutopilotOnly property.
            ## @return a void
            ## 
            def track_install_progress_for_autopilot_only=(value)
                @track_install_progress_for_autopilot_only = value
            end
        end
    end
end
