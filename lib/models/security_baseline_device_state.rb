require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The security baseline compliance state summary of the security baseline for a device.
    class SecurityBaselineDeviceState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Display name of the device
        @device_display_name
        ## 
        # Last modified date time of the policy report
        @last_reported_date_time
        ## 
        # Intune device id
        @managed_device_id
        ## 
        # Security Baseline Compliance State
        @state
        ## 
        # User Principal Name
        @user_principal_name
        ## 
        ## Instantiates a new securityBaselineDeviceState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a security_baseline_device_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SecurityBaselineDeviceState.new
        end
        ## 
        ## Gets the deviceDisplayName property value. Display name of the device
        ## @return a string
        ## 
        def device_display_name
            return @device_display_name
        end
        ## 
        ## Sets the deviceDisplayName property value. Display name of the device
        ## @param value Value to set for the device_display_name property.
        ## @return a void
        ## 
        def device_display_name=(value)
            @device_display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityBaselineComplianceState) },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastReportedDateTime property value. Last modified date time of the policy report
        ## @return a date_time
        ## 
        def last_reported_date_time
            return @last_reported_date_time
        end
        ## 
        ## Sets the lastReportedDateTime property value. Last modified date time of the policy report
        ## @param value Value to set for the last_reported_date_time property.
        ## @return a void
        ## 
        def last_reported_date_time=(value)
            @last_reported_date_time = value
        end
        ## 
        ## Gets the managedDeviceId property value. Intune device id
        ## @return a string
        ## 
        def managed_device_id
            return @managed_device_id
        end
        ## 
        ## Sets the managedDeviceId property value. Intune device id
        ## @param value Value to set for the managed_device_id property.
        ## @return a void
        ## 
        def managed_device_id=(value)
            @managed_device_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("deviceDisplayName", @device_display_name)
            writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
            writer.write_string_value("managedDeviceId", @managed_device_id)
            writer.write_enum_value("state", @state)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the state property value. Security Baseline Compliance State
        ## @return a security_baseline_compliance_state
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. Security Baseline Compliance State
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
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
        ## @param value Value to set for the user_principal_name property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
