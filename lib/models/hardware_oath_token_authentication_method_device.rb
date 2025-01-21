require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HardwareOathTokenAuthenticationMethodDevice < MicrosoftGraphBeta::Models::AuthenticationMethodDevice
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Assign the hardware OATH token to a user.
            @assign_to
            ## 
            # User the token is assigned to. Nullable. Supports $filter (eq).
            @assigned_to
            ## 
            # Hash function of the hardrware token. The possible values are: hmacsha1 or hmacsha256. Default value is: hmacsha1. Supports $filter (eq).
            @hash_function
            ## 
            # Manufacturer name of the hardware token. Supports $filter (eq).
            @manufacturer
            ## 
            # Model name of the hardware token. Supports $filter (eq).
            @model
            ## 
            # Secret key of the specific hardware token, provided by the vendor.
            @secret_key
            ## 
            # Serial number of the specific hardware token, often found on the back of the device. Supports $select and $filter (eq).
            @serial_number
            ## 
            # Status of the hardware OATH token.The possible values are: available, assigned, activated, failedActivation. Supports $filter(eq).
            @status
            ## 
            # Refresh interval of the 6-digit verification code, in seconds. The possible values are: 30 or 60. Supports $filter (eq).
            @time_interval_in_seconds
            ## 
            ## Gets the assignTo property value. Assign the hardware OATH token to a user.
            ## @return a user
            ## 
            def assign_to
                return @assign_to
            end
            ## 
            ## Sets the assignTo property value. Assign the hardware OATH token to a user.
            ## @param value Value to set for the assignTo property.
            ## @return a void
            ## 
            def assign_to=(value)
                @assign_to = value
            end
            ## 
            ## Gets the assignedTo property value. User the token is assigned to. Nullable. Supports $filter (eq).
            ## @return a identity
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. User the token is assigned to. Nullable. Supports $filter (eq).
            ## @param value Value to set for the assignedTo property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Instantiates a new HardwareOathTokenAuthenticationMethodDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.hardwareOathTokenAuthenticationMethodDevice"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_oath_token_authentication_method_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwareOathTokenAuthenticationMethodDevice.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignTo" => lambda {|n| @assign_to = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::User.create_from_discriminator_value(pn) }) },
                    "assignedTo" => lambda {|n| @assigned_to = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Identity.create_from_discriminator_value(pn) }) },
                    "hashFunction" => lambda {|n| @hash_function = n.get_enum_value(MicrosoftGraphBeta::Models::HardwareOathTokenHashFunction) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "secretKey" => lambda {|n| @secret_key = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::HardwareOathTokenStatus) },
                    "timeIntervalInSeconds" => lambda {|n| @time_interval_in_seconds = n.get_number_value() },
                })
            end
            ## 
            ## Gets the hashFunction property value. Hash function of the hardrware token. The possible values are: hmacsha1 or hmacsha256. Default value is: hmacsha1. Supports $filter (eq).
            ## @return a hardware_oath_token_hash_function
            ## 
            def hash_function
                return @hash_function
            end
            ## 
            ## Sets the hashFunction property value. Hash function of the hardrware token. The possible values are: hmacsha1 or hmacsha256. Default value is: hmacsha1. Supports $filter (eq).
            ## @param value Value to set for the hashFunction property.
            ## @return a void
            ## 
            def hash_function=(value)
                @hash_function = value
            end
            ## 
            ## Gets the manufacturer property value. Manufacturer name of the hardware token. Supports $filter (eq).
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Manufacturer name of the hardware token. Supports $filter (eq).
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. Model name of the hardware token. Supports $filter (eq).
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. Model name of the hardware token. Supports $filter (eq).
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the secretKey property value. Secret key of the specific hardware token, provided by the vendor.
            ## @return a string
            ## 
            def secret_key
                return @secret_key
            end
            ## 
            ## Sets the secretKey property value. Secret key of the specific hardware token, provided by the vendor.
            ## @param value Value to set for the secretKey property.
            ## @return a void
            ## 
            def secret_key=(value)
                @secret_key = value
            end
            ## 
            ## Gets the serialNumber property value. Serial number of the specific hardware token, often found on the back of the device. Supports $select and $filter (eq).
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. Serial number of the specific hardware token, often found on the back of the device. Supports $select and $filter (eq).
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("assignTo", @assign_to)
                writer.write_object_value("assignedTo", @assigned_to)
                writer.write_enum_value("hashFunction", @hash_function)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_string_value("secretKey", @secret_key)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_enum_value("status", @status)
                writer.write_number_value("timeIntervalInSeconds", @time_interval_in_seconds)
            end
            ## 
            ## Gets the status property value. Status of the hardware OATH token.The possible values are: available, assigned, activated, failedActivation. Supports $filter(eq).
            ## @return a hardware_oath_token_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the hardware OATH token.The possible values are: available, assigned, activated, failedActivation. Supports $filter(eq).
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the timeIntervalInSeconds property value. Refresh interval of the 6-digit verification code, in seconds. The possible values are: 30 or 60. Supports $filter (eq).
            ## @return a integer
            ## 
            def time_interval_in_seconds
                return @time_interval_in_seconds
            end
            ## 
            ## Sets the timeIntervalInSeconds property value. Refresh interval of the 6-digit verification code, in seconds. The possible values are: 30 or 60. Supports $filter (eq).
            ## @param value Value to set for the timeIntervalInSeconds property.
            ## @return a void
            ## 
            def time_interval_in_seconds=(value)
                @time_interval_in_seconds = value
            end
        end
    end
end
