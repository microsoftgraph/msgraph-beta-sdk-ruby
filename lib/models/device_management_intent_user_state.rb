require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Entity that represents user state for an intent
    class DeviceManagementIntentUserState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Count of Devices that belongs to a user for an intent
        @device_count
        ## 
        # Last modified date time of an intent report
        @last_reported_date_time
        ## 
        # The state property
        @state
        ## 
        # The user name that is being reported on a device
        @user_name
        ## 
        # The user principal name that is being reported on a device
        @user_principal_name
        ## 
        ## Instantiates a new deviceManagementIntentUserState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_intent_user_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementIntentUserState.new
        end
        ## 
        ## Gets the deviceCount property value. Count of Devices that belongs to a user for an intent
        ## @return a integer
        ## 
        def device_count
            return @device_count
        end
        ## 
        ## Sets the deviceCount property value. Count of Devices that belongs to a user for an intent
        ## @param value Value to set for the deviceCount property.
        ## @return a void
        ## 
        def device_count=(value)
            @device_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::ComplianceStatus) },
                "userName" => lambda {|n| @user_name = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastReportedDateTime property value. Last modified date time of an intent report
        ## @return a date_time
        ## 
        def last_reported_date_time
            return @last_reported_date_time
        end
        ## 
        ## Sets the lastReportedDateTime property value. Last modified date time of an intent report
        ## @param value Value to set for the lastReportedDateTime property.
        ## @return a void
        ## 
        def last_reported_date_time=(value)
            @last_reported_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("deviceCount", @device_count)
            writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
            writer.write_enum_value("state", @state)
            writer.write_string_value("userName", @user_name)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the state property value. The state property
        ## @return a compliance_status
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. The state property
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
        ## 
        ## Gets the userName property value. The user name that is being reported on a device
        ## @return a string
        ## 
        def user_name
            return @user_name
        end
        ## 
        ## Sets the userName property value. The user name that is being reported on a device
        ## @param value Value to set for the userName property.
        ## @return a void
        ## 
        def user_name=(value)
            @user_name = value
        end
        ## 
        ## Gets the userPrincipalName property value. The user principal name that is being reported on a device
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The user principal name that is being reported on a device
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
