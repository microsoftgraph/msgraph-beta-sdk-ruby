require 'date'
require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The Zebra FOTA deployment complex type that describes the settings required to create a FOTA deployment.
        class ZebraFotaDeploymentSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Minimum battery level (%) required for both download and installation. Default: -1 (System defaults). Maximum is 100.
            @battery_rule_minimum_battery_level_percentage
            ## 
            # Flag indicating if charger is required. When set to false, the client can install updates whether the device is in or out of the charger. Applied only for installation. Defaults to false.
            @battery_rule_require_charger
            ## 
            # Deploy update for devices with this model only.
            @device_model
            ## 
            # Represents various network types for Zebra FOTA deployment.
            @download_rule_network_type
            ## 
            # Date and time in the device time zone when the download will start (e.g., 2018-07-25T10:20:32). The default value is UTC now and the maximum is 10 days from deployment creation.
            @download_rule_start_date_time
            ## 
            # A description provided by Zebra for the the firmware artifact to update the device to (e.g.: LifeGuard Update 120 (released 29-June-2022).
            @firmware_target_artifact_description
            ## 
            # Deployment's Board Support Package (BSP. E.g.: '01.18.02.00'). Required only for custom update type.
            @firmware_target_board_support_package_version
            ## 
            # Target OS Version (e.g.: '8.1.0'). Required only for custom update type.
            @firmware_target_os_version
            ## 
            # Target patch name (e.g.: 'U06'). Required only for custom update type.
            @firmware_target_patch
            ## 
            # Date and time in device time zone when the install will start. Default - download startDate if configured, otherwise defaults to NOW. Ignored when deployment update type was set to auto.
            @install_rule_start_date_time
            ## 
            # Time of day after which the install cannot start. Possible range is 00:30:00 to 23:59:59. Should be greater than 'installRuleWindowStartTime' by 30 mins. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 23:59:59. Respected for all values of update type, including AUTO.
            @install_rule_window_end_time
            ## 
            # Time of day (00:00:00 - 23:30:00) when installation should begin. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 00:00:00. Respected for all values of update type, including AUTO.
            @install_rule_window_start_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Maximum 28 days. Default is 28 days. Sequence of dates are: 1) Download start date. 2) Install start date. 3) Schedule end date. If any of the values are not provided, the date provided in the preceding step of the sequence is used. If no values are provided, the string value of the current UTC is used.
            @schedule_duration_in_days
            ## 
            # Represents various schedule modes for Zebra FOTA deployment.
            @schedule_mode
            ## 
            # This attribute indicates the deployment time offset (e.g.180 represents an offset of +03:00, and -270 represents an offset of -04:30). The time offset is the time timezone where the devices are located. The deployment start and end data uses this timezone
            @time_zone_offset_in_minutes
            ## 
            # Represents various update types for Zebra FOTA deployment.
            @update_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the batteryRuleMinimumBatteryLevelPercentage property value. Minimum battery level (%) required for both download and installation. Default: -1 (System defaults). Maximum is 100.
            ## @return a integer
            ## 
            def battery_rule_minimum_battery_level_percentage
                return @battery_rule_minimum_battery_level_percentage
            end
            ## 
            ## Sets the batteryRuleMinimumBatteryLevelPercentage property value. Minimum battery level (%) required for both download and installation. Default: -1 (System defaults). Maximum is 100.
            ## @param value Value to set for the batteryRuleMinimumBatteryLevelPercentage property.
            ## @return a void
            ## 
            def battery_rule_minimum_battery_level_percentage=(value)
                @battery_rule_minimum_battery_level_percentage = value
            end
            ## 
            ## Gets the batteryRuleRequireCharger property value. Flag indicating if charger is required. When set to false, the client can install updates whether the device is in or out of the charger. Applied only for installation. Defaults to false.
            ## @return a boolean
            ## 
            def battery_rule_require_charger
                return @battery_rule_require_charger
            end
            ## 
            ## Sets the batteryRuleRequireCharger property value. Flag indicating if charger is required. When set to false, the client can install updates whether the device is in or out of the charger. Applied only for installation. Defaults to false.
            ## @param value Value to set for the batteryRuleRequireCharger property.
            ## @return a void
            ## 
            def battery_rule_require_charger=(value)
                @battery_rule_require_charger = value
            end
            ## 
            ## Instantiates a new ZebraFotaDeploymentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a zebra_fota_deployment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ZebraFotaDeploymentSettings.new
            end
            ## 
            ## Gets the deviceModel property value. Deploy update for devices with this model only.
            ## @return a string
            ## 
            def device_model
                return @device_model
            end
            ## 
            ## Sets the deviceModel property value. Deploy update for devices with this model only.
            ## @param value Value to set for the deviceModel property.
            ## @return a void
            ## 
            def device_model=(value)
                @device_model = value
            end
            ## 
            ## Gets the downloadRuleNetworkType property value. Represents various network types for Zebra FOTA deployment.
            ## @return a zebra_fota_network_type
            ## 
            def download_rule_network_type
                return @download_rule_network_type
            end
            ## 
            ## Sets the downloadRuleNetworkType property value. Represents various network types for Zebra FOTA deployment.
            ## @param value Value to set for the downloadRuleNetworkType property.
            ## @return a void
            ## 
            def download_rule_network_type=(value)
                @download_rule_network_type = value
            end
            ## 
            ## Gets the downloadRuleStartDateTime property value. Date and time in the device time zone when the download will start (e.g., 2018-07-25T10:20:32). The default value is UTC now and the maximum is 10 days from deployment creation.
            ## @return a date_time
            ## 
            def download_rule_start_date_time
                return @download_rule_start_date_time
            end
            ## 
            ## Sets the downloadRuleStartDateTime property value. Date and time in the device time zone when the download will start (e.g., 2018-07-25T10:20:32). The default value is UTC now and the maximum is 10 days from deployment creation.
            ## @param value Value to set for the downloadRuleStartDateTime property.
            ## @return a void
            ## 
            def download_rule_start_date_time=(value)
                @download_rule_start_date_time = value
            end
            ## 
            ## Gets the firmwareTargetArtifactDescription property value. A description provided by Zebra for the the firmware artifact to update the device to (e.g.: LifeGuard Update 120 (released 29-June-2022).
            ## @return a string
            ## 
            def firmware_target_artifact_description
                return @firmware_target_artifact_description
            end
            ## 
            ## Sets the firmwareTargetArtifactDescription property value. A description provided by Zebra for the the firmware artifact to update the device to (e.g.: LifeGuard Update 120 (released 29-June-2022).
            ## @param value Value to set for the firmwareTargetArtifactDescription property.
            ## @return a void
            ## 
            def firmware_target_artifact_description=(value)
                @firmware_target_artifact_description = value
            end
            ## 
            ## Gets the firmwareTargetBoardSupportPackageVersion property value. Deployment's Board Support Package (BSP. E.g.: '01.18.02.00'). Required only for custom update type.
            ## @return a string
            ## 
            def firmware_target_board_support_package_version
                return @firmware_target_board_support_package_version
            end
            ## 
            ## Sets the firmwareTargetBoardSupportPackageVersion property value. Deployment's Board Support Package (BSP. E.g.: '01.18.02.00'). Required only for custom update type.
            ## @param value Value to set for the firmwareTargetBoardSupportPackageVersion property.
            ## @return a void
            ## 
            def firmware_target_board_support_package_version=(value)
                @firmware_target_board_support_package_version = value
            end
            ## 
            ## Gets the firmwareTargetOsVersion property value. Target OS Version (e.g.: '8.1.0'). Required only for custom update type.
            ## @return a string
            ## 
            def firmware_target_os_version
                return @firmware_target_os_version
            end
            ## 
            ## Sets the firmwareTargetOsVersion property value. Target OS Version (e.g.: '8.1.0'). Required only for custom update type.
            ## @param value Value to set for the firmwareTargetOsVersion property.
            ## @return a void
            ## 
            def firmware_target_os_version=(value)
                @firmware_target_os_version = value
            end
            ## 
            ## Gets the firmwareTargetPatch property value. Target patch name (e.g.: 'U06'). Required only for custom update type.
            ## @return a string
            ## 
            def firmware_target_patch
                return @firmware_target_patch
            end
            ## 
            ## Sets the firmwareTargetPatch property value. Target patch name (e.g.: 'U06'). Required only for custom update type.
            ## @param value Value to set for the firmwareTargetPatch property.
            ## @return a void
            ## 
            def firmware_target_patch=(value)
                @firmware_target_patch = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "batteryRuleMinimumBatteryLevelPercentage" => lambda {|n| @battery_rule_minimum_battery_level_percentage = n.get_number_value() },
                    "batteryRuleRequireCharger" => lambda {|n| @battery_rule_require_charger = n.get_boolean_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "downloadRuleNetworkType" => lambda {|n| @download_rule_network_type = n.get_enum_value(MicrosoftGraphBeta::Models::ZebraFotaNetworkType) },
                    "downloadRuleStartDateTime" => lambda {|n| @download_rule_start_date_time = n.get_date_time_value() },
                    "firmwareTargetArtifactDescription" => lambda {|n| @firmware_target_artifact_description = n.get_string_value() },
                    "firmwareTargetBoardSupportPackageVersion" => lambda {|n| @firmware_target_board_support_package_version = n.get_string_value() },
                    "firmwareTargetOsVersion" => lambda {|n| @firmware_target_os_version = n.get_string_value() },
                    "firmwareTargetPatch" => lambda {|n| @firmware_target_patch = n.get_string_value() },
                    "installRuleStartDateTime" => lambda {|n| @install_rule_start_date_time = n.get_date_time_value() },
                    "installRuleWindowEndTime" => lambda {|n| @install_rule_window_end_time = n.get_time_value() },
                    "installRuleWindowStartTime" => lambda {|n| @install_rule_window_start_time = n.get_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scheduleDurationInDays" => lambda {|n| @schedule_duration_in_days = n.get_number_value() },
                    "scheduleMode" => lambda {|n| @schedule_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ZebraFotaScheduleMode) },
                    "timeZoneOffsetInMinutes" => lambda {|n| @time_zone_offset_in_minutes = n.get_number_value() },
                    "updateType" => lambda {|n| @update_type = n.get_enum_value(MicrosoftGraphBeta::Models::ZebraFotaUpdateType) },
                }
            end
            ## 
            ## Gets the installRuleStartDateTime property value. Date and time in device time zone when the install will start. Default - download startDate if configured, otherwise defaults to NOW. Ignored when deployment update type was set to auto.
            ## @return a date_time
            ## 
            def install_rule_start_date_time
                return @install_rule_start_date_time
            end
            ## 
            ## Sets the installRuleStartDateTime property value. Date and time in device time zone when the install will start. Default - download startDate if configured, otherwise defaults to NOW. Ignored when deployment update type was set to auto.
            ## @param value Value to set for the installRuleStartDateTime property.
            ## @return a void
            ## 
            def install_rule_start_date_time=(value)
                @install_rule_start_date_time = value
            end
            ## 
            ## Gets the installRuleWindowEndTime property value. Time of day after which the install cannot start. Possible range is 00:30:00 to 23:59:59. Should be greater than 'installRuleWindowStartTime' by 30 mins. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 23:59:59. Respected for all values of update type, including AUTO.
            ## @return a time
            ## 
            def install_rule_window_end_time
                return @install_rule_window_end_time
            end
            ## 
            ## Sets the installRuleWindowEndTime property value. Time of day after which the install cannot start. Possible range is 00:30:00 to 23:59:59. Should be greater than 'installRuleWindowStartTime' by 30 mins. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 23:59:59. Respected for all values of update type, including AUTO.
            ## @param value Value to set for the installRuleWindowEndTime property.
            ## @return a void
            ## 
            def install_rule_window_end_time=(value)
                @install_rule_window_end_time = value
            end
            ## 
            ## Gets the installRuleWindowStartTime property value. Time of day (00:00:00 - 23:30:00) when installation should begin. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 00:00:00. Respected for all values of update type, including AUTO.
            ## @return a time
            ## 
            def install_rule_window_start_time
                return @install_rule_window_start_time
            end
            ## 
            ## Sets the installRuleWindowStartTime property value. Time of day (00:00:00 - 23:30:00) when installation should begin. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 00:00:00. Respected for all values of update type, including AUTO.
            ## @param value Value to set for the installRuleWindowStartTime property.
            ## @return a void
            ## 
            def install_rule_window_start_time=(value)
                @install_rule_window_start_time = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the scheduleDurationInDays property value. Maximum 28 days. Default is 28 days. Sequence of dates are: 1) Download start date. 2) Install start date. 3) Schedule end date. If any of the values are not provided, the date provided in the preceding step of the sequence is used. If no values are provided, the string value of the current UTC is used.
            ## @return a integer
            ## 
            def schedule_duration_in_days
                return @schedule_duration_in_days
            end
            ## 
            ## Sets the scheduleDurationInDays property value. Maximum 28 days. Default is 28 days. Sequence of dates are: 1) Download start date. 2) Install start date. 3) Schedule end date. If any of the values are not provided, the date provided in the preceding step of the sequence is used. If no values are provided, the string value of the current UTC is used.
            ## @param value Value to set for the scheduleDurationInDays property.
            ## @return a void
            ## 
            def schedule_duration_in_days=(value)
                @schedule_duration_in_days = value
            end
            ## 
            ## Gets the scheduleMode property value. Represents various schedule modes for Zebra FOTA deployment.
            ## @return a zebra_fota_schedule_mode
            ## 
            def schedule_mode
                return @schedule_mode
            end
            ## 
            ## Sets the scheduleMode property value. Represents various schedule modes for Zebra FOTA deployment.
            ## @param value Value to set for the scheduleMode property.
            ## @return a void
            ## 
            def schedule_mode=(value)
                @schedule_mode = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("batteryRuleMinimumBatteryLevelPercentage", @battery_rule_minimum_battery_level_percentage)
                writer.write_boolean_value("batteryRuleRequireCharger", @battery_rule_require_charger)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_enum_value("downloadRuleNetworkType", @download_rule_network_type)
                writer.write_date_time_value("downloadRuleStartDateTime", @download_rule_start_date_time)
                writer.write_string_value("firmwareTargetArtifactDescription", @firmware_target_artifact_description)
                writer.write_string_value("firmwareTargetBoardSupportPackageVersion", @firmware_target_board_support_package_version)
                writer.write_string_value("firmwareTargetOsVersion", @firmware_target_os_version)
                writer.write_string_value("firmwareTargetPatch", @firmware_target_patch)
                writer.write_date_time_value("installRuleStartDateTime", @install_rule_start_date_time)
                writer.write_time_value("installRuleWindowEndTime", @install_rule_window_end_time)
                writer.write_time_value("installRuleWindowStartTime", @install_rule_window_start_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("scheduleDurationInDays", @schedule_duration_in_days)
                writer.write_enum_value("scheduleMode", @schedule_mode)
                writer.write_number_value("timeZoneOffsetInMinutes", @time_zone_offset_in_minutes)
                writer.write_enum_value("updateType", @update_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeZoneOffsetInMinutes property value. This attribute indicates the deployment time offset (e.g.180 represents an offset of +03:00, and -270 represents an offset of -04:30). The time offset is the time timezone where the devices are located. The deployment start and end data uses this timezone
            ## @return a integer
            ## 
            def time_zone_offset_in_minutes
                return @time_zone_offset_in_minutes
            end
            ## 
            ## Sets the timeZoneOffsetInMinutes property value. This attribute indicates the deployment time offset (e.g.180 represents an offset of +03:00, and -270 represents an offset of -04:30). The time offset is the time timezone where the devices are located. The deployment start and end data uses this timezone
            ## @param value Value to set for the timeZoneOffsetInMinutes property.
            ## @return a void
            ## 
            def time_zone_offset_in_minutes=(value)
                @time_zone_offset_in_minutes = value
            end
            ## 
            ## Gets the updateType property value. Represents various update types for Zebra FOTA deployment.
            ## @return a zebra_fota_update_type
            ## 
            def update_type
                return @update_type
            end
            ## 
            ## Sets the updateType property value. Represents various update types for Zebra FOTA deployment.
            ## @param value Value to set for the updateType property.
            ## @return a void
            ## 
            def update_type=(value)
                @update_type = value
            end
        end
    end
end
