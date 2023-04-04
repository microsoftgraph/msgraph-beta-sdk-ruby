require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The endpoint privilege management elevation result entity representing a single elevation action on a client device.
        class PrivilegeManagementElevation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The certificate payload of the application. This is computed by hashing the certificate information on the client. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a50`
            @certificate_payload
            ## 
            # The company name of the application. This value is set by the creator of the application. Example: `Microsoft Corporation`
            @company_name
            ## 
            # The Intune deviceId. Unique identifier for the managed device. Example: `92ce5047-9553-4731-817f-9b401a999a1b`
            @device_id
            ## 
            # The name associated with the device in the intune database. Example: `JOHNDOE-LAPTOP`.
            @device_name
            ## 
            # Indicates the type of elevation occured
            @elevation_type
            ## 
            # The date and time when the application was elevated. Example:`2014-01-01T00:00:00Z`
            @event_date_time
            ## 
            # The file description of the application. This value is set by the creator of the application. Example: `Editor of multiple coding languages.`
            @file_description
            ## 
            # The full file path of the application including the filename and file extension. Example: `C:\Program Files\vscode.exe`
            @file_path
            ## 
            # The version of the application. This value is set by the creator of the application. Example: `6.2211.1035.1000`
            @file_version
            ## 
            # The sha256 hash of the application. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a57`
            @hash
            ## 
            # The internal name of the application. This value is set by the creator of the application. Example: `VS code`
            @internal_name
            ## 
            # The justification to elevate the application. This is an input by the user when the privilegeManagementElevationType is of type userConfirmedElevation or support approved elevation. This will be null in all other scenarios. The length is capped at 256 char, enforced on the client side. Example: `To install debug tool.`.
            @justification
            ## 
            # The product name of the application. This value is set by the creator of the application. Example: `Visual Studio`
            @product_name
            ## 
            # The result of the elevation action with 0 being success, and everything else being exit code if the elevation was unsuccessful. The value will always be 0 on all unmanaged elevation. Example: `0`. Valid values 0 to 2147483647
            @result
            ## 
            # The User Principal Name of the user who performed the elevation. Example: `john@domain.com`
            @upn
            ## 
            # The type of user account on Windows that was used to performed the elevation.
            @user_type
            ## 
            ## Gets the certificatePayload property value. The certificate payload of the application. This is computed by hashing the certificate information on the client. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a50`
            ## @return a string
            ## 
            def certificate_payload
                return @certificate_payload
            end
            ## 
            ## Sets the certificatePayload property value. The certificate payload of the application. This is computed by hashing the certificate information on the client. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a50`
            ## @param value Value to set for the certificate_payload property.
            ## @return a void
            ## 
            def certificate_payload=(value)
                @certificate_payload = value
            end
            ## 
            ## Gets the companyName property value. The company name of the application. This value is set by the creator of the application. Example: `Microsoft Corporation`
            ## @return a string
            ## 
            def company_name
                return @company_name
            end
            ## 
            ## Sets the companyName property value. The company name of the application. This value is set by the creator of the application. Example: `Microsoft Corporation`
            ## @param value Value to set for the company_name property.
            ## @return a void
            ## 
            def company_name=(value)
                @company_name = value
            end
            ## 
            ## Instantiates a new privilegeManagementElevation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privilege_management_elevation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegeManagementElevation.new
            end
            ## 
            ## Gets the deviceId property value. The Intune deviceId. Unique identifier for the managed device. Example: `92ce5047-9553-4731-817f-9b401a999a1b`
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The Intune deviceId. Unique identifier for the managed device. Example: `92ce5047-9553-4731-817f-9b401a999a1b`
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. The name associated with the device in the intune database. Example: `JOHNDOE-LAPTOP`.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The name associated with the device in the intune database. Example: `JOHNDOE-LAPTOP`.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the elevationType property value. Indicates the type of elevation occured
            ## @return a privilege_management_elevation_type
            ## 
            def elevation_type
                return @elevation_type
            end
            ## 
            ## Sets the elevationType property value. Indicates the type of elevation occured
            ## @param value Value to set for the elevation_type property.
            ## @return a void
            ## 
            def elevation_type=(value)
                @elevation_type = value
            end
            ## 
            ## Gets the eventDateTime property value. The date and time when the application was elevated. Example:`2014-01-01T00:00:00Z`
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. The date and time when the application was elevated. Example:`2014-01-01T00:00:00Z`
            ## @param value Value to set for the event_date_time property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## Gets the fileDescription property value. The file description of the application. This value is set by the creator of the application. Example: `Editor of multiple coding languages.`
            ## @return a string
            ## 
            def file_description
                return @file_description
            end
            ## 
            ## Sets the fileDescription property value. The file description of the application. This value is set by the creator of the application. Example: `Editor of multiple coding languages.`
            ## @param value Value to set for the file_description property.
            ## @return a void
            ## 
            def file_description=(value)
                @file_description = value
            end
            ## 
            ## Gets the filePath property value. The full file path of the application including the filename and file extension. Example: `C:#Program Files#vscode.exe`
            ## @return a string
            ## 
            def file_path
                return @file_path
            end
            ## 
            ## Sets the filePath property value. The full file path of the application including the filename and file extension. Example: `C:#Program Files#vscode.exe`
            ## @param value Value to set for the file_path property.
            ## @return a void
            ## 
            def file_path=(value)
                @file_path = value
            end
            ## 
            ## Gets the fileVersion property value. The version of the application. This value is set by the creator of the application. Example: `6.2211.1035.1000`
            ## @return a string
            ## 
            def file_version
                return @file_version
            end
            ## 
            ## Sets the fileVersion property value. The version of the application. This value is set by the creator of the application. Example: `6.2211.1035.1000`
            ## @param value Value to set for the file_version property.
            ## @return a void
            ## 
            def file_version=(value)
                @file_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificatePayload" => lambda {|n| @certificate_payload = n.get_string_value() },
                    "companyName" => lambda {|n| @company_name = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "elevationType" => lambda {|n| @elevation_type = n.get_enum_value(MicrosoftGraphBeta::Models::PrivilegeManagementElevationType) },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "fileDescription" => lambda {|n| @file_description = n.get_string_value() },
                    "filePath" => lambda {|n| @file_path = n.get_string_value() },
                    "fileVersion" => lambda {|n| @file_version = n.get_string_value() },
                    "hash" => lambda {|n| @hash = n.get_string_value() },
                    "internalName" => lambda {|n| @internal_name = n.get_string_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "result" => lambda {|n| @result = n.get_number_value() },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraphBeta::Models::PrivilegeManagementEndUserType) },
                })
            end
            ## 
            ## Gets the hash property value. The sha256 hash of the application. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a57`
            ## @return a string
            ## 
            def hash
                return @hash
            end
            ## 
            ## Sets the hash property value. The sha256 hash of the application. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a57`
            ## @param value Value to set for the hash property.
            ## @return a void
            ## 
            def hash=(value)
                @hash = value
            end
            ## 
            ## Gets the internalName property value. The internal name of the application. This value is set by the creator of the application. Example: `VS code`
            ## @return a string
            ## 
            def internal_name
                return @internal_name
            end
            ## 
            ## Sets the internalName property value. The internal name of the application. This value is set by the creator of the application. Example: `VS code`
            ## @param value Value to set for the internal_name property.
            ## @return a void
            ## 
            def internal_name=(value)
                @internal_name = value
            end
            ## 
            ## Gets the justification property value. The justification to elevate the application. This is an input by the user when the privilegeManagementElevationType is of type userConfirmedElevation or support approved elevation. This will be null in all other scenarios. The length is capped at 256 char, enforced on the client side. Example: `To install debug tool.`.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The justification to elevate the application. This is an input by the user when the privilegeManagementElevationType is of type userConfirmedElevation or support approved elevation. This will be null in all other scenarios. The length is capped at 256 char, enforced on the client side. Example: `To install debug tool.`.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the productName property value. The product name of the application. This value is set by the creator of the application. Example: `Visual Studio`
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The product name of the application. This value is set by the creator of the application. Example: `Visual Studio`
            ## @param value Value to set for the product_name property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the result property value. The result of the elevation action with 0 being success, and everything else being exit code if the elevation was unsuccessful. The value will always be 0 on all unmanaged elevation. Example: `0`. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. The result of the elevation action with 0 being success, and everything else being exit code if the elevation was unsuccessful. The value will always be 0 on all unmanaged elevation. Example: `0`. Valid values 0 to 2147483647
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("certificatePayload", @certificate_payload)
                writer.write_string_value("companyName", @company_name)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_enum_value("elevationType", @elevation_type)
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("fileDescription", @file_description)
                writer.write_string_value("filePath", @file_path)
                writer.write_string_value("fileVersion", @file_version)
                writer.write_string_value("hash", @hash)
                writer.write_string_value("internalName", @internal_name)
                writer.write_string_value("justification", @justification)
                writer.write_string_value("productName", @product_name)
                writer.write_number_value("result", @result)
                writer.write_string_value("upn", @upn)
                writer.write_enum_value("userType", @user_type)
            end
            ## 
            ## Gets the upn property value. The User Principal Name of the user who performed the elevation. Example: `john@domain.com`
            ## @return a string
            ## 
            def upn
                return @upn
            end
            ## 
            ## Sets the upn property value. The User Principal Name of the user who performed the elevation. Example: `john@domain.com`
            ## @param value Value to set for the upn property.
            ## @return a void
            ## 
            def upn=(value)
                @upn = value
            end
            ## 
            ## Gets the userType property value. The type of user account on Windows that was used to performed the elevation.
            ## @return a privilege_management_end_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. The type of user account on Windows that was used to performed the elevation.
            ## @param value Value to set for the user_type property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
