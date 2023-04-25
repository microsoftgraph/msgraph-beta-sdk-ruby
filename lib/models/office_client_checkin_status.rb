require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OfficeClientCheckinStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The appliedPolicies property
            @applied_policies
            ## 
            # The checkinDateTime property
            @checkin_date_time
            ## 
            # The deviceName property
            @device_name
            ## 
            # The devicePlatform property
            @device_platform
            ## 
            # The devicePlatformVersion property
            @device_platform_version
            ## 
            # The errorMessage property
            @error_message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The userId property
            @user_id
            ## 
            # The userPrincipalName property
            @user_principal_name
            ## 
            # The wasSuccessful property
            @was_successful
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appliedPolicies property value. The appliedPolicies property
            ## @return a string
            ## 
            def applied_policies
                return @applied_policies
            end
            ## 
            ## Sets the appliedPolicies property value. The appliedPolicies property
            ## @param value Value to set for the applied_policies property.
            ## @return a void
            ## 
            def applied_policies=(value)
                @applied_policies = value
            end
            ## 
            ## Gets the checkinDateTime property value. The checkinDateTime property
            ## @return a date_time
            ## 
            def checkin_date_time
                return @checkin_date_time
            end
            ## 
            ## Sets the checkinDateTime property value. The checkinDateTime property
            ## @param value Value to set for the checkin_date_time property.
            ## @return a void
            ## 
            def checkin_date_time=(value)
                @checkin_date_time = value
            end
            ## 
            ## Instantiates a new officeClientCheckinStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a office_client_checkin_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OfficeClientCheckinStatus.new
            end
            ## 
            ## Gets the deviceName property value. The deviceName property
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The deviceName property
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the devicePlatform property value. The devicePlatform property
            ## @return a string
            ## 
            def device_platform
                return @device_platform
            end
            ## 
            ## Sets the devicePlatform property value. The devicePlatform property
            ## @param value Value to set for the device_platform property.
            ## @return a void
            ## 
            def device_platform=(value)
                @device_platform = value
            end
            ## 
            ## Gets the devicePlatformVersion property value. The devicePlatformVersion property
            ## @return a string
            ## 
            def device_platform_version
                return @device_platform_version
            end
            ## 
            ## Sets the devicePlatformVersion property value. The devicePlatformVersion property
            ## @param value Value to set for the device_platform_version property.
            ## @return a void
            ## 
            def device_platform_version=(value)
                @device_platform_version = value
            end
            ## 
            ## Gets the errorMessage property value. The errorMessage property
            ## @return a string
            ## 
            def error_message
                return @error_message
            end
            ## 
            ## Sets the errorMessage property value. The errorMessage property
            ## @param value Value to set for the error_message property.
            ## @return a void
            ## 
            def error_message=(value)
                @error_message = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appliedPolicies" => lambda {|n| @applied_policies = n.get_collection_of_primitive_values(String) },
                    "checkinDateTime" => lambda {|n| @checkin_date_time = n.get_date_time_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "devicePlatform" => lambda {|n| @device_platform = n.get_string_value() },
                    "devicePlatformVersion" => lambda {|n| @device_platform_version = n.get_string_value() },
                    "errorMessage" => lambda {|n| @error_message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "wasSuccessful" => lambda {|n| @was_successful = n.get_boolean_value() },
                }
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("appliedPolicies", @applied_policies)
                writer.write_date_time_value("checkinDateTime", @checkin_date_time)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("devicePlatform", @device_platform)
                writer.write_string_value("devicePlatformVersion", @device_platform_version)
                writer.write_string_value("errorMessage", @error_message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_boolean_value("wasSuccessful", @was_successful)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userId property value. The userId property
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The userId property
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName property
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName property
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the wasSuccessful property value. The wasSuccessful property
            ## @return a boolean
            ## 
            def was_successful
                return @was_successful
            end
            ## 
            ## Sets the wasSuccessful property value. The wasSuccessful property
            ## @param value Value to set for the was_successful property.
            ## @return a void
            ## 
            def was_successful=(value)
                @was_successful = value
            end
        end
    end
end
