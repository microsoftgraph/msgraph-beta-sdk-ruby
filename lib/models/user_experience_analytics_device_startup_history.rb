require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics device startup history entity contains device boot performance history details.
    class UserExperienceAnalyticsDeviceStartupHistory < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The user experience analytics device core boot time in milliseconds.
        @core_boot_time_in_ms
        ## 
        # The user experience analytics device core login time in milliseconds.
        @core_login_time_in_ms
        ## 
        # The user experience analytics device id.
        @device_id
        ## 
        # The user experience analytics device feature update time in milliseconds.
        @feature_update_boot_time_in_ms
        ## 
        # The User experience analytics Device group policy boot time in milliseconds.
        @group_policy_boot_time_in_ms
        ## 
        # The User experience analytics Device group policy login time in milliseconds.
        @group_policy_login_time_in_ms
        ## 
        # The user experience analytics device boot record is a feature update.
        @is_feature_update
        ## 
        # The user experience analytics device first login.
        @is_first_login
        ## 
        # The user experience analytics device boot record's operating system version.
        @operating_system_version
        ## 
        # The user experience analytics responsive desktop time in milliseconds.
        @responsive_desktop_time_in_ms
        ## 
        # Operating System restart category
        @restart_category
        ## 
        # OS restart fault bucket. The fault bucket is used to find additional information about a system crash.
        @restart_fault_bucket
        ## 
        # OS restart stop code. This shows the bug check code which can be used to look up the blue screen reason.
        @restart_stop_code
        ## 
        # The user experience analytics device boot start time.
        @start_time
        ## 
        # The user experience analytics device total boot time in milliseconds.
        @total_boot_time_in_ms
        ## 
        # The user experience analytics device total login time in milliseconds.
        @total_login_time_in_ms
        ## 
        ## Instantiates a new userExperienceAnalyticsDeviceStartupHistory and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the coreBootTimeInMs property value. The user experience analytics device core boot time in milliseconds.
        ## @return a integer
        ## 
        def core_boot_time_in_ms
            return @core_boot_time_in_ms
        end
        ## 
        ## Sets the coreBootTimeInMs property value. The user experience analytics device core boot time in milliseconds.
        ## @param value Value to set for the coreBootTimeInMs property.
        ## @return a void
        ## 
        def core_boot_time_in_ms=(value)
            @core_boot_time_in_ms = value
        end
        ## 
        ## Gets the coreLoginTimeInMs property value. The user experience analytics device core login time in milliseconds.
        ## @return a integer
        ## 
        def core_login_time_in_ms
            return @core_login_time_in_ms
        end
        ## 
        ## Sets the coreLoginTimeInMs property value. The user experience analytics device core login time in milliseconds.
        ## @param value Value to set for the coreLoginTimeInMs property.
        ## @return a void
        ## 
        def core_login_time_in_ms=(value)
            @core_login_time_in_ms = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_device_startup_history
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsDeviceStartupHistory.new
        end
        ## 
        ## Gets the deviceId property value. The user experience analytics device id.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The user experience analytics device id.
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the featureUpdateBootTimeInMs property value. The user experience analytics device feature update time in milliseconds.
        ## @return a integer
        ## 
        def feature_update_boot_time_in_ms
            return @feature_update_boot_time_in_ms
        end
        ## 
        ## Sets the featureUpdateBootTimeInMs property value. The user experience analytics device feature update time in milliseconds.
        ## @param value Value to set for the featureUpdateBootTimeInMs property.
        ## @return a void
        ## 
        def feature_update_boot_time_in_ms=(value)
            @feature_update_boot_time_in_ms = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "coreBootTimeInMs" => lambda {|n| @core_boot_time_in_ms = n.get_number_value() },
                "coreLoginTimeInMs" => lambda {|n| @core_login_time_in_ms = n.get_number_value() },
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "featureUpdateBootTimeInMs" => lambda {|n| @feature_update_boot_time_in_ms = n.get_number_value() },
                "groupPolicyBootTimeInMs" => lambda {|n| @group_policy_boot_time_in_ms = n.get_number_value() },
                "groupPolicyLoginTimeInMs" => lambda {|n| @group_policy_login_time_in_ms = n.get_number_value() },
                "isFeatureUpdate" => lambda {|n| @is_feature_update = n.get_boolean_value() },
                "isFirstLogin" => lambda {|n| @is_first_login = n.get_boolean_value() },
                "operatingSystemVersion" => lambda {|n| @operating_system_version = n.get_string_value() },
                "responsiveDesktopTimeInMs" => lambda {|n| @responsive_desktop_time_in_ms = n.get_number_value() },
                "restartCategory" => lambda {|n| @restart_category = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsOperatingSystemRestartCategory) },
                "restartFaultBucket" => lambda {|n| @restart_fault_bucket = n.get_string_value() },
                "restartStopCode" => lambda {|n| @restart_stop_code = n.get_string_value() },
                "startTime" => lambda {|n| @start_time = n.get_date_time_value() },
                "totalBootTimeInMs" => lambda {|n| @total_boot_time_in_ms = n.get_number_value() },
                "totalLoginTimeInMs" => lambda {|n| @total_login_time_in_ms = n.get_number_value() },
            })
        end
        ## 
        ## Gets the groupPolicyBootTimeInMs property value. The User experience analytics Device group policy boot time in milliseconds.
        ## @return a integer
        ## 
        def group_policy_boot_time_in_ms
            return @group_policy_boot_time_in_ms
        end
        ## 
        ## Sets the groupPolicyBootTimeInMs property value. The User experience analytics Device group policy boot time in milliseconds.
        ## @param value Value to set for the groupPolicyBootTimeInMs property.
        ## @return a void
        ## 
        def group_policy_boot_time_in_ms=(value)
            @group_policy_boot_time_in_ms = value
        end
        ## 
        ## Gets the groupPolicyLoginTimeInMs property value. The User experience analytics Device group policy login time in milliseconds.
        ## @return a integer
        ## 
        def group_policy_login_time_in_ms
            return @group_policy_login_time_in_ms
        end
        ## 
        ## Sets the groupPolicyLoginTimeInMs property value. The User experience analytics Device group policy login time in milliseconds.
        ## @param value Value to set for the groupPolicyLoginTimeInMs property.
        ## @return a void
        ## 
        def group_policy_login_time_in_ms=(value)
            @group_policy_login_time_in_ms = value
        end
        ## 
        ## Gets the isFeatureUpdate property value. The user experience analytics device boot record is a feature update.
        ## @return a boolean
        ## 
        def is_feature_update
            return @is_feature_update
        end
        ## 
        ## Sets the isFeatureUpdate property value. The user experience analytics device boot record is a feature update.
        ## @param value Value to set for the isFeatureUpdate property.
        ## @return a void
        ## 
        def is_feature_update=(value)
            @is_feature_update = value
        end
        ## 
        ## Gets the isFirstLogin property value. The user experience analytics device first login.
        ## @return a boolean
        ## 
        def is_first_login
            return @is_first_login
        end
        ## 
        ## Sets the isFirstLogin property value. The user experience analytics device first login.
        ## @param value Value to set for the isFirstLogin property.
        ## @return a void
        ## 
        def is_first_login=(value)
            @is_first_login = value
        end
        ## 
        ## Gets the operatingSystemVersion property value. The user experience analytics device boot record's operating system version.
        ## @return a string
        ## 
        def operating_system_version
            return @operating_system_version
        end
        ## 
        ## Sets the operatingSystemVersion property value. The user experience analytics device boot record's operating system version.
        ## @param value Value to set for the operatingSystemVersion property.
        ## @return a void
        ## 
        def operating_system_version=(value)
            @operating_system_version = value
        end
        ## 
        ## Gets the responsiveDesktopTimeInMs property value. The user experience analytics responsive desktop time in milliseconds.
        ## @return a integer
        ## 
        def responsive_desktop_time_in_ms
            return @responsive_desktop_time_in_ms
        end
        ## 
        ## Sets the responsiveDesktopTimeInMs property value. The user experience analytics responsive desktop time in milliseconds.
        ## @param value Value to set for the responsiveDesktopTimeInMs property.
        ## @return a void
        ## 
        def responsive_desktop_time_in_ms=(value)
            @responsive_desktop_time_in_ms = value
        end
        ## 
        ## Gets the restartCategory property value. Operating System restart category
        ## @return a user_experience_analytics_operating_system_restart_category
        ## 
        def restart_category
            return @restart_category
        end
        ## 
        ## Sets the restartCategory property value. Operating System restart category
        ## @param value Value to set for the restartCategory property.
        ## @return a void
        ## 
        def restart_category=(value)
            @restart_category = value
        end
        ## 
        ## Gets the restartFaultBucket property value. OS restart fault bucket. The fault bucket is used to find additional information about a system crash.
        ## @return a string
        ## 
        def restart_fault_bucket
            return @restart_fault_bucket
        end
        ## 
        ## Sets the restartFaultBucket property value. OS restart fault bucket. The fault bucket is used to find additional information about a system crash.
        ## @param value Value to set for the restartFaultBucket property.
        ## @return a void
        ## 
        def restart_fault_bucket=(value)
            @restart_fault_bucket = value
        end
        ## 
        ## Gets the restartStopCode property value. OS restart stop code. This shows the bug check code which can be used to look up the blue screen reason.
        ## @return a string
        ## 
        def restart_stop_code
            return @restart_stop_code
        end
        ## 
        ## Sets the restartStopCode property value. OS restart stop code. This shows the bug check code which can be used to look up the blue screen reason.
        ## @param value Value to set for the restartStopCode property.
        ## @return a void
        ## 
        def restart_stop_code=(value)
            @restart_stop_code = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("coreBootTimeInMs", @core_boot_time_in_ms)
            writer.write_number_value("coreLoginTimeInMs", @core_login_time_in_ms)
            writer.write_string_value("deviceId", @device_id)
            writer.write_number_value("featureUpdateBootTimeInMs", @feature_update_boot_time_in_ms)
            writer.write_number_value("groupPolicyBootTimeInMs", @group_policy_boot_time_in_ms)
            writer.write_number_value("groupPolicyLoginTimeInMs", @group_policy_login_time_in_ms)
            writer.write_boolean_value("isFeatureUpdate", @is_feature_update)
            writer.write_boolean_value("isFirstLogin", @is_first_login)
            writer.write_string_value("operatingSystemVersion", @operating_system_version)
            writer.write_number_value("responsiveDesktopTimeInMs", @responsive_desktop_time_in_ms)
            writer.write_enum_value("restartCategory", @restart_category)
            writer.write_string_value("restartFaultBucket", @restart_fault_bucket)
            writer.write_string_value("restartStopCode", @restart_stop_code)
            writer.write_date_time_value("startTime", @start_time)
            writer.write_number_value("totalBootTimeInMs", @total_boot_time_in_ms)
            writer.write_number_value("totalLoginTimeInMs", @total_login_time_in_ms)
        end
        ## 
        ## Gets the startTime property value. The user experience analytics device boot start time.
        ## @return a date_time
        ## 
        def start_time
            return @start_time
        end
        ## 
        ## Sets the startTime property value. The user experience analytics device boot start time.
        ## @param value Value to set for the startTime property.
        ## @return a void
        ## 
        def start_time=(value)
            @start_time = value
        end
        ## 
        ## Gets the totalBootTimeInMs property value. The user experience analytics device total boot time in milliseconds.
        ## @return a integer
        ## 
        def total_boot_time_in_ms
            return @total_boot_time_in_ms
        end
        ## 
        ## Sets the totalBootTimeInMs property value. The user experience analytics device total boot time in milliseconds.
        ## @param value Value to set for the totalBootTimeInMs property.
        ## @return a void
        ## 
        def total_boot_time_in_ms=(value)
            @total_boot_time_in_ms = value
        end
        ## 
        ## Gets the totalLoginTimeInMs property value. The user experience analytics device total login time in milliseconds.
        ## @return a integer
        ## 
        def total_login_time_in_ms
            return @total_login_time_in_ms
        end
        ## 
        ## Sets the totalLoginTimeInMs property value. The user experience analytics device total login time in milliseconds.
        ## @param value Value to set for the totalLoginTimeInMs property.
        ## @return a void
        ## 
        def total_login_time_in_ms=(value)
            @total_login_time_in_ms = value
        end
    end
end
