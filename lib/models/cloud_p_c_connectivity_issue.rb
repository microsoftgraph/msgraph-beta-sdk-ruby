require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analyte connectivity issue entity.
    class CloudPCConnectivityIssue < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Intune DeviceId of the device the connection is associated with.
        @device_id
        ## 
        # The error code of the connectivity issue.
        @error_code
        ## 
        # The time that the connection initiated. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time.
        @error_date_time
        ## 
        # The detailed description of what went wrong.
        @error_description
        ## 
        # The recommended action to fix the corresponding error.
        @recommended_action
        ## 
        # The unique id of user who initialize the connection.
        @user_id
        ## 
        ## Instantiates a new cloudPCConnectivityIssue and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_p_c_connectivity_issue
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPCConnectivityIssue.new
        end
        ## 
        ## Gets the deviceId property value. The Intune DeviceId of the device the connection is associated with.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The Intune DeviceId of the device the connection is associated with.
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the errorCode property value. The error code of the connectivity issue.
        ## @return a string
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. The error code of the connectivity issue.
        ## @param value Value to set for the errorCode property.
        ## @return a void
        ## 
        def error_code=(value)
            @error_code = value
        end
        ## 
        ## Gets the errorDateTime property value. The time that the connection initiated. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time.
        ## @return a date_time
        ## 
        def error_date_time
            return @error_date_time
        end
        ## 
        ## Sets the errorDateTime property value. The time that the connection initiated. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time.
        ## @param value Value to set for the errorDateTime property.
        ## @return a void
        ## 
        def error_date_time=(value)
            @error_date_time = value
        end
        ## 
        ## Gets the errorDescription property value. The detailed description of what went wrong.
        ## @return a string
        ## 
        def error_description
            return @error_description
        end
        ## 
        ## Sets the errorDescription property value. The detailed description of what went wrong.
        ## @param value Value to set for the errorDescription property.
        ## @return a void
        ## 
        def error_description=(value)
            @error_description = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "errorCode" => lambda {|n| @error_code = n.get_string_value() },
                "errorDateTime" => lambda {|n| @error_date_time = n.get_date_time_value() },
                "errorDescription" => lambda {|n| @error_description = n.get_string_value() },
                "recommendedAction" => lambda {|n| @recommended_action = n.get_string_value() },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the recommendedAction property value. The recommended action to fix the corresponding error.
        ## @return a string
        ## 
        def recommended_action
            return @recommended_action
        end
        ## 
        ## Sets the recommendedAction property value. The recommended action to fix the corresponding error.
        ## @param value Value to set for the recommendedAction property.
        ## @return a void
        ## 
        def recommended_action=(value)
            @recommended_action = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("deviceId", @device_id)
            writer.write_string_value("errorCode", @error_code)
            writer.write_date_time_value("errorDateTime", @error_date_time)
            writer.write_string_value("errorDescription", @error_description)
            writer.write_string_value("recommendedAction", @recommended_action)
            writer.write_string_value("userId", @user_id)
        end
        ## 
        ## Gets the userId property value. The unique id of user who initialize the connection.
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. The unique id of user who initialize the connection.
        ## @param value Value to set for the userId property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
    end
end
