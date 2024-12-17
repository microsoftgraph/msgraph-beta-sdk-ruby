require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Define the rule when the admin wants the devices to be cleaned up.
        class ManagedDeviceCleanupRule < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the description for the device clean up rule.
            @description
            ## 
            # Define the platform type for which the admin wants to create the device clean up rule
            @device_cleanup_rule_platform_type
            ## 
            # Indicates the number of days when the device has not contacted Intune. Valid values 0 to 2147483647
            @device_inactivity_before_retirement_in_days
            ## 
            # Indicates the display name of the device cleanup rule.
            @display_name
            ## 
            # Indicates the date and time when the device cleanup rule was last modified. This property is read-only.
            @last_modified_date_time
            ## 
            ## Instantiates a new ManagedDeviceCleanupRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_cleanup_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceCleanupRule.new
            end
            ## 
            ## Gets the description property value. Indicates the description for the device clean up rule.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Indicates the description for the device clean up rule.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceCleanupRulePlatformType property value. Define the platform type for which the admin wants to create the device clean up rule
            ## @return a device_cleanup_rule_platform_type
            ## 
            def device_cleanup_rule_platform_type
                return @device_cleanup_rule_platform_type
            end
            ## 
            ## Sets the deviceCleanupRulePlatformType property value. Define the platform type for which the admin wants to create the device clean up rule
            ## @param value Value to set for the deviceCleanupRulePlatformType property.
            ## @return a void
            ## 
            def device_cleanup_rule_platform_type=(value)
                @device_cleanup_rule_platform_type = value
            end
            ## 
            ## Gets the deviceInactivityBeforeRetirementInDays property value. Indicates the number of days when the device has not contacted Intune. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def device_inactivity_before_retirement_in_days
                return @device_inactivity_before_retirement_in_days
            end
            ## 
            ## Sets the deviceInactivityBeforeRetirementInDays property value. Indicates the number of days when the device has not contacted Intune. Valid values 0 to 2147483647
            ## @param value Value to set for the deviceInactivityBeforeRetirementInDays property.
            ## @return a void
            ## 
            def device_inactivity_before_retirement_in_days=(value)
                @device_inactivity_before_retirement_in_days = value
            end
            ## 
            ## Gets the displayName property value. Indicates the display name of the device cleanup rule.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Indicates the display name of the device cleanup rule.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceCleanupRulePlatformType" => lambda {|n| @device_cleanup_rule_platform_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceCleanupRulePlatformType) },
                    "deviceInactivityBeforeRetirementInDays" => lambda {|n| @device_inactivity_before_retirement_in_days = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Indicates the date and time when the device cleanup rule was last modified. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Indicates the date and time when the device cleanup rule was last modified. This property is read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_enum_value("deviceCleanupRulePlatformType", @device_cleanup_rule_platform_type)
                writer.write_number_value("deviceInactivityBeforeRetirementInDays", @device_inactivity_before_retirement_in_days)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
