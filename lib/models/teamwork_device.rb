require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkDevice < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The activity properties that change based on the device usage.
        @activity
        ## 
        # The activity state of the device. The possible values are: unknown, busy, idle, unavailable, unknownFutureValue.
        @activity_state
        ## 
        # The company asset tag assigned by the admin on the device.
        @company_asset_tag
        ## 
        # The configuration properties of the device.
        @configuration
        ## 
        # Identity of the user who enrolled the device to the tenant.
        @created_by
        ## 
        # The UTC date and time when the device was enrolled to the tenant.
        @created_date_time
        ## 
        # The signed-in user on the device.
        @current_user
        ## 
        # The deviceType property
        @device_type
        ## 
        # The hardwareDetail property
        @hardware_detail
        ## 
        # The health properties of the device.
        @health
        ## 
        # The health status of the device. The possible values are: unknown, offline, critical, nonUrgent, healthy, unknownFutureValue.
        @health_status
        ## 
        # Identity of the user who last modified the device details.
        @last_modified_by
        ## 
        # The UTC date and time when the device detail was last modified.
        @last_modified_date_time
        ## 
        # The notes added by the admin to the device.
        @notes
        ## 
        # The async operations on the device.
        @operations
        ## 
        ## Gets the activity property value. The activity properties that change based on the device usage.
        ## @return a teamwork_device_activity
        ## 
        def activity
            return @activity
        end
        ## 
        ## Sets the activity property value. The activity properties that change based on the device usage.
        ## @param value Value to set for the activity property.
        ## @return a void
        ## 
        def activity=(value)
            @activity = value
        end
        ## 
        ## Gets the activityState property value. The activity state of the device. The possible values are: unknown, busy, idle, unavailable, unknownFutureValue.
        ## @return a teamwork_device_activity_state
        ## 
        def activity_state
            return @activity_state
        end
        ## 
        ## Sets the activityState property value. The activity state of the device. The possible values are: unknown, busy, idle, unavailable, unknownFutureValue.
        ## @param value Value to set for the activity_state property.
        ## @return a void
        ## 
        def activity_state=(value)
            @activity_state = value
        end
        ## 
        ## Gets the companyAssetTag property value. The company asset tag assigned by the admin on the device.
        ## @return a string
        ## 
        def company_asset_tag
            return @company_asset_tag
        end
        ## 
        ## Sets the companyAssetTag property value. The company asset tag assigned by the admin on the device.
        ## @param value Value to set for the company_asset_tag property.
        ## @return a void
        ## 
        def company_asset_tag=(value)
            @company_asset_tag = value
        end
        ## 
        ## Gets the configuration property value. The configuration properties of the device.
        ## @return a teamwork_device_configuration
        ## 
        def configuration
            return @configuration
        end
        ## 
        ## Sets the configuration property value. The configuration properties of the device.
        ## @param value Value to set for the configuration property.
        ## @return a void
        ## 
        def configuration=(value)
            @configuration = value
        end
        ## 
        ## Instantiates a new teamworkDevice and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. Identity of the user who enrolled the device to the tenant.
        ## @return a identity_set
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. Identity of the user who enrolled the device to the tenant.
        ## @param value Value to set for the created_by property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Gets the createdDateTime property value. The UTC date and time when the device was enrolled to the tenant.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The UTC date and time when the device was enrolled to the tenant.
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_device
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkDevice.new
        end
        ## 
        ## Gets the currentUser property value. The signed-in user on the device.
        ## @return a teamwork_user_identity
        ## 
        def current_user
            return @current_user
        end
        ## 
        ## Sets the currentUser property value. The signed-in user on the device.
        ## @param value Value to set for the current_user property.
        ## @return a void
        ## 
        def current_user=(value)
            @current_user = value
        end
        ## 
        ## Gets the deviceType property value. The deviceType property
        ## @return a teamwork_device_type
        ## 
        def device_type
            return @device_type
        end
        ## 
        ## Sets the deviceType property value. The deviceType property
        ## @param value Value to set for the device_type property.
        ## @return a void
        ## 
        def device_type=(value)
            @device_type = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "activity" => lambda {|n| @activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDeviceActivity.create_from_discriminator_value(pn) }) },
                "activityState" => lambda {|n| @activity_state = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkDeviceActivityState) },
                "companyAssetTag" => lambda {|n| @company_asset_tag = n.get_string_value() },
                "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDeviceConfiguration.create_from_discriminator_value(pn) }) },
                "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "currentUser" => lambda {|n| @current_user = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkUserIdentity.create_from_discriminator_value(pn) }) },
                "deviceType" => lambda {|n| @device_type = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkDeviceType) },
                "hardwareDetail" => lambda {|n| @hardware_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkHardwareDetail.create_from_discriminator_value(pn) }) },
                "health" => lambda {|n| @health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDeviceHealth.create_from_discriminator_value(pn) }) },
                "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkDeviceHealthStatus) },
                "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "notes" => lambda {|n| @notes = n.get_string_value() },
                "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDeviceOperation.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the hardwareDetail property value. The hardwareDetail property
        ## @return a teamwork_hardware_detail
        ## 
        def hardware_detail
            return @hardware_detail
        end
        ## 
        ## Sets the hardwareDetail property value. The hardwareDetail property
        ## @param value Value to set for the hardware_detail property.
        ## @return a void
        ## 
        def hardware_detail=(value)
            @hardware_detail = value
        end
        ## 
        ## Gets the health property value. The health properties of the device.
        ## @return a teamwork_device_health
        ## 
        def health
            return @health
        end
        ## 
        ## Sets the health property value. The health properties of the device.
        ## @param value Value to set for the health property.
        ## @return a void
        ## 
        def health=(value)
            @health = value
        end
        ## 
        ## Gets the healthStatus property value. The health status of the device. The possible values are: unknown, offline, critical, nonUrgent, healthy, unknownFutureValue.
        ## @return a teamwork_device_health_status
        ## 
        def health_status
            return @health_status
        end
        ## 
        ## Sets the healthStatus property value. The health status of the device. The possible values are: unknown, offline, critical, nonUrgent, healthy, unknownFutureValue.
        ## @param value Value to set for the health_status property.
        ## @return a void
        ## 
        def health_status=(value)
            @health_status = value
        end
        ## 
        ## Gets the lastModifiedBy property value. Identity of the user who last modified the device details.
        ## @return a identity_set
        ## 
        def last_modified_by
            return @last_modified_by
        end
        ## 
        ## Sets the lastModifiedBy property value. Identity of the user who last modified the device details.
        ## @param value Value to set for the last_modified_by property.
        ## @return a void
        ## 
        def last_modified_by=(value)
            @last_modified_by = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The UTC date and time when the device detail was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The UTC date and time when the device detail was last modified.
        ## @param value Value to set for the last_modified_date_time property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the notes property value. The notes added by the admin to the device.
        ## @return a string
        ## 
        def notes
            return @notes
        end
        ## 
        ## Sets the notes property value. The notes added by the admin to the device.
        ## @param value Value to set for the notes property.
        ## @return a void
        ## 
        def notes=(value)
            @notes = value
        end
        ## 
        ## Gets the operations property value. The async operations on the device.
        ## @return a teamwork_device_operation
        ## 
        def operations
            return @operations
        end
        ## 
        ## Sets the operations property value. The async operations on the device.
        ## @param value Value to set for the operations property.
        ## @return a void
        ## 
        def operations=(value)
            @operations = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("activity", @activity)
            writer.write_enum_value("activityState", @activity_state)
            writer.write_string_value("companyAssetTag", @company_asset_tag)
            writer.write_object_value("configuration", @configuration)
            writer.write_object_value("createdBy", @created_by)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_object_value("currentUser", @current_user)
            writer.write_enum_value("deviceType", @device_type)
            writer.write_object_value("hardwareDetail", @hardware_detail)
            writer.write_object_value("health", @health)
            writer.write_enum_value("healthStatus", @health_status)
            writer.write_object_value("lastModifiedBy", @last_modified_by)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("notes", @notes)
            writer.write_collection_of_object_values("operations", @operations)
        end
    end
end
