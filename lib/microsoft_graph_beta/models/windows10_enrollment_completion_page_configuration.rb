require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Windows10EnrollmentCompletionPageConfiguration < MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Allow or block device reset on installation failure
        @allow_device_reset_on_install_failure
        ## 
        # Allow the user to continue using the device on installation failure
        @allow_device_use_on_install_failure
        ## 
        # Allow or block log collection on installation failure
        @allow_log_collection_on_install_failure
        ## 
        # Install all required apps as non blocking apps during white glove
        @allow_non_blocking_app_installation
        ## 
        # Allow the user to retry the setup on installation failure
        @block_device_setup_retry_by_user
        ## 
        # Set custom error message to show upon installation failure
        @custom_error_message
        ## 
        # Only show installation progress for first user post enrollment
        @disable_user_status_tracking_after_first_user
        ## 
        # Set installation progress timeout in minutes
        @install_progress_timeout_in_minutes
        ## 
        # Allows quality updates installation during OOBE
        @install_quality_updates
        ## 
        # Selected applications to track the installation status
        @selected_mobile_app_ids
        ## 
        # Show or hide installation progress to user
        @show_installation_progress
        ## 
        # Only show installation progress for Autopilot enrollment scenarios
        @track_install_progress_for_autopilot_only
        ## 
        ## Gets the allowDeviceResetOnInstallFailure property value. Allow or block device reset on installation failure
        ## @return a boolean
        ## 
        def allow_device_reset_on_install_failure
            return @allow_device_reset_on_install_failure
        end
        ## 
        ## Sets the allowDeviceResetOnInstallFailure property value. Allow or block device reset on installation failure
        ## @param value Value to set for the allowDeviceResetOnInstallFailure property.
        ## @return a void
        ## 
        def allow_device_reset_on_install_failure=(value)
            @allow_device_reset_on_install_failure = value
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
        ## @param value Value to set for the allowDeviceUseOnInstallFailure property.
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
        ## @param value Value to set for the allowLogCollectionOnInstallFailure property.
        ## @return a void
        ## 
        def allow_log_collection_on_install_failure=(value)
            @allow_log_collection_on_install_failure = value
        end
        ## 
        ## Gets the allowNonBlockingAppInstallation property value. Install all required apps as non blocking apps during white glove
        ## @return a boolean
        ## 
        def allow_non_blocking_app_installation
            return @allow_non_blocking_app_installation
        end
        ## 
        ## Sets the allowNonBlockingAppInstallation property value. Install all required apps as non blocking apps during white glove
        ## @param value Value to set for the allowNonBlockingAppInstallation property.
        ## @return a void
        ## 
        def allow_non_blocking_app_installation=(value)
            @allow_non_blocking_app_installation = value
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
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows10_enrollment_completion_page_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Windows10EnrollmentCompletionPageConfiguration.new
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
        ## @param value Value to set for the customErrorMessage property.
        ## @return a void
        ## 
        def custom_error_message=(value)
            @custom_error_message = value
        end
        ## 
        ## Gets the disableUserStatusTrackingAfterFirstUser property value. Only show installation progress for first user post enrollment
        ## @return a boolean
        ## 
        def disable_user_status_tracking_after_first_user
            return @disable_user_status_tracking_after_first_user
        end
        ## 
        ## Sets the disableUserStatusTrackingAfterFirstUser property value. Only show installation progress for first user post enrollment
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
        ## Gets the installProgressTimeoutInMinutes property value. Set installation progress timeout in minutes
        ## @return a integer
        ## 
        def install_progress_timeout_in_minutes
            return @install_progress_timeout_in_minutes
        end
        ## 
        ## Sets the installProgressTimeoutInMinutes property value. Set installation progress timeout in minutes
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
        ## Gets the selectedMobileAppIds property value. Selected applications to track the installation status
        ## @return a string
        ## 
        def selected_mobile_app_ids
            return @selected_mobile_app_ids
        end
        ## 
        ## Sets the selectedMobileAppIds property value. Selected applications to track the installation status
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
        ## Gets the showInstallationProgress property value. Show or hide installation progress to user
        ## @return a boolean
        ## 
        def show_installation_progress
            return @show_installation_progress
        end
        ## 
        ## Sets the showInstallationProgress property value. Show or hide installation progress to user
        ## @param value Value to set for the showInstallationProgress property.
        ## @return a void
        ## 
        def show_installation_progress=(value)
            @show_installation_progress = value
        end
        ## 
        ## Gets the trackInstallProgressForAutopilotOnly property value. Only show installation progress for Autopilot enrollment scenarios
        ## @return a boolean
        ## 
        def track_install_progress_for_autopilot_only
            return @track_install_progress_for_autopilot_only
        end
        ## 
        ## Sets the trackInstallProgressForAutopilotOnly property value. Only show installation progress for Autopilot enrollment scenarios
        ## @param value Value to set for the trackInstallProgressForAutopilotOnly property.
        ## @return a void
        ## 
        def track_install_progress_for_autopilot_only=(value)
            @track_install_progress_for_autopilot_only = value
        end
    end
end
