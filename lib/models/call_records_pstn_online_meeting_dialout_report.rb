require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './call_records/call_records'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallRecordsPstnOnlineMeetingDialoutReport
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Currency used to calculate the cost of the call. For details, see ISO 4217.
            @currency
            ## 
            # Indicates whether the call was Domestic (within a country or region) or International (outside a country or region) based on the user's location.
            @destination_context
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Total costs of all the calls within the selected time range, including call charges and connection fees.
            @total_call_charge
            ## 
            # Total duration of all the calls within the selected time range, in seconds.
            @total_call_seconds
            ## 
            # Total number of dial-out calls within the selected time range.
            @total_calls
            ## 
            # Country code of the user. For details, see ISO 3166-1 alpha-2.
            @usage_location
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
            ## Instantiates a new pstnOnlineMeetingDialoutReport and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_pstn_online_meeting_dialout_report
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsPstnOnlineMeetingDialoutReport.new
            end
            ## 
            ## Gets the currency property value. Currency used to calculate the cost of the call. For details, see ISO 4217.
            ## @return a string
            ## 
            def currency
                return @currency
            end
            ## 
            ## Sets the currency property value. Currency used to calculate the cost of the call. For details, see ISO 4217.
            ## @param value Value to set for the currency property.
            ## @return a void
            ## 
            def currency=(value)
                @currency = value
            end
            ## 
            ## Gets the destinationContext property value. Indicates whether the call was Domestic (within a country or region) or International (outside a country or region) based on the user's location.
            ## @return a string
            ## 
            def destination_context
                return @destination_context
            end
            ## 
            ## Sets the destinationContext property value. Indicates whether the call was Domestic (within a country or region) or International (outside a country or region) based on the user's location.
            ## @param value Value to set for the destinationContext property.
            ## @return a void
            ## 
            def destination_context=(value)
                @destination_context = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "currency" => lambda {|n| @currency = n.get_string_value() },
                    "destinationContext" => lambda {|n| @destination_context = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "totalCallCharge" => lambda {|n| @total_call_charge = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "totalCallSeconds" => lambda {|n| @total_call_seconds = n.get_number_value() },
                    "totalCalls" => lambda {|n| @total_calls = n.get_number_value() },
                    "usageLocation" => lambda {|n| @usage_location = n.get_string_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("currency", @currency)
                writer.write_string_value("destinationContext", @destination_context)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("totalCallCharge", @total_call_charge)
                writer.write_number_value("totalCallSeconds", @total_call_seconds)
                writer.write_number_value("totalCalls", @total_calls)
                writer.write_string_value("usageLocation", @usage_location)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalCallCharge property value. Total costs of all the calls within the selected time range, including call charges and connection fees.
            ## @return a decimal
            ## 
            def total_call_charge
                return @total_call_charge
            end
            ## 
            ## Sets the totalCallCharge property value. Total costs of all the calls within the selected time range, including call charges and connection fees.
            ## @param value Value to set for the totalCallCharge property.
            ## @return a void
            ## 
            def total_call_charge=(value)
                @total_call_charge = value
            end
            ## 
            ## Gets the totalCallSeconds property value. Total duration of all the calls within the selected time range, in seconds.
            ## @return a integer
            ## 
            def total_call_seconds
                return @total_call_seconds
            end
            ## 
            ## Sets the totalCallSeconds property value. Total duration of all the calls within the selected time range, in seconds.
            ## @param value Value to set for the totalCallSeconds property.
            ## @return a void
            ## 
            def total_call_seconds=(value)
                @total_call_seconds = value
            end
            ## 
            ## Gets the totalCalls property value. Total number of dial-out calls within the selected time range.
            ## @return a integer
            ## 
            def total_calls
                return @total_calls
            end
            ## 
            ## Sets the totalCalls property value. Total number of dial-out calls within the selected time range.
            ## @param value Value to set for the totalCalls property.
            ## @return a void
            ## 
            def total_calls=(value)
                @total_calls = value
            end
            ## 
            ## Gets the usageLocation property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
            ## @return a string
            ## 
            def usage_location
                return @usage_location
            end
            ## 
            ## Sets the usageLocation property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
            ## @param value Value to set for the usageLocation property.
            ## @return a void
            ## 
            def usage_location=(value)
                @usage_location = value
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
        end
    end
end
