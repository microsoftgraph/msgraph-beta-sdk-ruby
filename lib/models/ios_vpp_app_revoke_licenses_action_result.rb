require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Defines results for actions on iOS Vpp Apps, contains inherited properties for ActionResult.
        class IosVppAppRevokeLicensesActionResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible types of reasons for an Apple Volume Purchase Program token action failure.
            @action_failure_reason
            ## 
            # Action name
            @action_name
            ## 
            # The actionState property
            @action_state
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A count of the number of licenses for which revoke failed.
            @failed_licenses_count
            ## 
            # Time the action state was last updated
            @last_updated_date_time
            ## 
            # DeviceId associated with the action.
            @managed_device_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Time the action was initiated
            @start_date_time
            ## 
            # A count of the number of licenses for which revoke was attempted.
            @total_licenses_count
            ## 
            # UserId associated with the action.
            @user_id
            ## 
            ## Gets the actionFailureReason property value. Possible types of reasons for an Apple Volume Purchase Program token action failure.
            ## @return a vpp_token_action_failure_reason
            ## 
            def action_failure_reason
                return @action_failure_reason
            end
            ## 
            ## Sets the actionFailureReason property value. Possible types of reasons for an Apple Volume Purchase Program token action failure.
            ## @param value Value to set for the action_failure_reason property.
            ## @return a void
            ## 
            def action_failure_reason=(value)
                @action_failure_reason = value
            end
            ## 
            ## Gets the actionName property value. Action name
            ## @return a string
            ## 
            def action_name
                return @action_name
            end
            ## 
            ## Sets the actionName property value. Action name
            ## @param value Value to set for the action_name property.
            ## @return a void
            ## 
            def action_name=(value)
                @action_name = value
            end
            ## 
            ## Gets the actionState property value. The actionState property
            ## @return a action_state
            ## 
            def action_state
                return @action_state
            end
            ## 
            ## Sets the actionState property value. The actionState property
            ## @param value Value to set for the action_state property.
            ## @return a void
            ## 
            def action_state=(value)
                @action_state = value
            end
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
            ## Instantiates a new iosVppAppRevokeLicensesActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_vpp_app_revoke_licenses_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosVppAppRevokeLicensesActionResult.new
            end
            ## 
            ## Gets the failedLicensesCount property value. A count of the number of licenses for which revoke failed.
            ## @return a integer
            ## 
            def failed_licenses_count
                return @failed_licenses_count
            end
            ## 
            ## Sets the failedLicensesCount property value. A count of the number of licenses for which revoke failed.
            ## @param value Value to set for the failed_licenses_count property.
            ## @return a void
            ## 
            def failed_licenses_count=(value)
                @failed_licenses_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionFailureReason" => lambda {|n| @action_failure_reason = n.get_enum_value(MicrosoftGraphBeta::Models::VppTokenActionFailureReason) },
                    "actionName" => lambda {|n| @action_name = n.get_string_value() },
                    "actionState" => lambda {|n| @action_state = n.get_enum_value(MicrosoftGraphBeta::Models::ActionState) },
                    "failedLicensesCount" => lambda {|n| @failed_licenses_count = n.get_number_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "totalLicensesCount" => lambda {|n| @total_licenses_count = n.get_number_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. Time the action state was last updated
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. Time the action state was last updated
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the managedDeviceId property value. DeviceId associated with the action.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. DeviceId associated with the action.
            ## @param value Value to set for the managed_device_id property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
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
                writer.write_enum_value("actionFailureReason", @action_failure_reason)
                writer.write_string_value("actionName", @action_name)
                writer.write_enum_value("actionState", @action_state)
                writer.write_number_value("failedLicensesCount", @failed_licenses_count)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_number_value("totalLicensesCount", @total_licenses_count)
                writer.write_string_value("userId", @user_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. Time the action was initiated
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Time the action was initiated
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the totalLicensesCount property value. A count of the number of licenses for which revoke was attempted.
            ## @return a integer
            ## 
            def total_licenses_count
                return @total_licenses_count
            end
            ## 
            ## Sets the totalLicensesCount property value. A count of the number of licenses for which revoke was attempted.
            ## @param value Value to set for the total_licenses_count property.
            ## @return a void
            ## 
            def total_licenses_count=(value)
                @total_licenses_count = value
            end
            ## 
            ## Gets the userId property value. UserId associated with the action.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. UserId associated with the action.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
