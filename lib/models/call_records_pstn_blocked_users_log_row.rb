require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallRecordsPstnBlockedUsersLogRow
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date and time when the user was blocked/unblocked from making PSTN calls. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @block_date_time
            ## 
            # The reason why the user is blocked/unblocked from making calls.
            @block_reason
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Unique identifier (GUID) for the blocking/unblocking action.
            @remediation_id
            ## 
            # Indicates whether the user is blocked or unblocked from making PSTN calls in Microsoft Teams. The possible values are: blocked, unblocked, unknownFutureValue.
            @user_block_mode
            ## 
            # Display name of the user.
            @user_display_name
            ## 
            # The unique identifier (GUID) of the user in Azure Active Directory.
            @user_id
            ## 
            # The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.
            @user_principal_name
            ## 
            # User's blocked number. For details, see E.164.
            @user_telephone_number
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the blockDateTime property value. The date and time when the user was blocked/unblocked from making PSTN calls. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def block_date_time
                return @block_date_time
            end
            ## 
            ## Sets the blockDateTime property value. The date and time when the user was blocked/unblocked from making PSTN calls. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the blockDateTime property.
            ## @return a void
            ## 
            def block_date_time=(value)
                @block_date_time = value
            end
            ## 
            ## Gets the blockReason property value. The reason why the user is blocked/unblocked from making calls.
            ## @return a string
            ## 
            def block_reason
                return @block_reason
            end
            ## 
            ## Sets the blockReason property value. The reason why the user is blocked/unblocked from making calls.
            ## @param value Value to set for the blockReason property.
            ## @return a void
            ## 
            def block_reason=(value)
                @block_reason = value
            end
            ## 
            ## Instantiates a new callRecordsPstnBlockedUsersLogRow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_pstn_blocked_users_log_row
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsPstnBlockedUsersLogRow.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "blockDateTime" => lambda {|n| @block_date_time = n.get_date_time_value() },
                    "blockReason" => lambda {|n| @block_reason = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remediationId" => lambda {|n| @remediation_id = n.get_string_value() },
                    "userBlockMode" => lambda {|n| @user_block_mode = n.get_enum_value(MicrosoftGraphBeta::Models::CallRecordsPstnUserBlockMode) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userTelephoneNumber" => lambda {|n| @user_telephone_number = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the remediationId property value. Unique identifier (GUID) for the blocking/unblocking action.
            ## @return a string
            ## 
            def remediation_id
                return @remediation_id
            end
            ## 
            ## Sets the remediationId property value. Unique identifier (GUID) for the blocking/unblocking action.
            ## @param value Value to set for the remediationId property.
            ## @return a void
            ## 
            def remediation_id=(value)
                @remediation_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("blockDateTime", @block_date_time)
                writer.write_string_value("blockReason", @block_reason)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("remediationId", @remediation_id)
                writer.write_enum_value("userBlockMode", @user_block_mode)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_string_value("userTelephoneNumber", @user_telephone_number)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userBlockMode property value. Indicates whether the user is blocked or unblocked from making PSTN calls in Microsoft Teams. The possible values are: blocked, unblocked, unknownFutureValue.
            ## @return a call_records_pstn_user_block_mode
            ## 
            def user_block_mode
                return @user_block_mode
            end
            ## 
            ## Sets the userBlockMode property value. Indicates whether the user is blocked or unblocked from making PSTN calls in Microsoft Teams. The possible values are: blocked, unblocked, unknownFutureValue.
            ## @param value Value to set for the userBlockMode property.
            ## @return a void
            ## 
            def user_block_mode=(value)
                @user_block_mode = value
            end
            ## 
            ## Gets the userDisplayName property value. Display name of the user.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. Display name of the user.
            ## @param value Value to set for the userDisplayName property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userId property value. The unique identifier (GUID) of the user in Azure Active Directory.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The unique identifier (GUID) of the user in Azure Active Directory.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userTelephoneNumber property value. User's blocked number. For details, see E.164.
            ## @return a string
            ## 
            def user_telephone_number
                return @user_telephone_number
            end
            ## 
            ## Sets the userTelephoneNumber property value. User's blocked number. For details, see E.164.
            ## @param value Value to set for the userTelephoneNumber property.
            ## @return a void
            ## 
            def user_telephone_number=(value)
                @user_telephone_number = value
            end
        end
    end
end
