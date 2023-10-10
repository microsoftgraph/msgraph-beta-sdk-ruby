require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallRecordsSmsLogRow
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Amount of money or cost of the SMS that is charged.
            @call_charge
            ## 
            # Currency used to calculate the cost of the call. For details, see ISO 4217.
            @currency
            ## 
            # Indicates whether the SMS was Domestic (within a country or region) or International (outside a country or region) based on the user's location.
            @destination_context
            ## 
            # Country or region of a phone number that received the SMS.
            @destination_name
            ## 
            # Partially obfuscated phone number that received the SMS. For details, see E.164.
            @destination_number
            ## 
            # Unique identifier (GUID) for the SMS.
            @id
            ## 
            # The license used for the SMS.
            @license_capability
            ## 
            # The OdataType property
            @odata_type
            ## 
            # For an outbound SMS, the country code of the receiver; otherwise (inbound SMS) the country code of the sender. For details, see ISO 3166-1 alpha-2.
            @other_party_country_code
            ## 
            # The date and time when the SMS was sent.
            @sent_date_time
            ## 
            # SMS identifier. Not guaranteed to be unique.
            @sms_id
            ## 
            # Type of SMS such as outbound or inbound.
            @sms_type
            ## 
            # Number of SMS units sent/received.
            @sms_units
            ## 
            # Partially obfuscated phone number that sent the SMS. For details, see E.164.
            @source_number
            ## 
            # Country code of the tenant. For details, see ISO 3166-1 alpha-2.
            @tenant_country_code
            ## 
            # Country code of the user. For details, see ISO 3166-1 alpha-2.
            @user_country_code
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
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the callCharge property value. Amount of money or cost of the SMS that is charged.
            ## @return a decimal
            ## 
            def call_charge
                return @call_charge
            end
            ## 
            ## Sets the callCharge property value. Amount of money or cost of the SMS that is charged.
            ## @param value Value to set for the callCharge property.
            ## @return a void
            ## 
            def call_charge=(value)
                @call_charge = value
            end
            ## 
            ## Instantiates a new callRecordsSmsLogRow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_sms_log_row
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsSmsLogRow.new
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
            ## Gets the destinationContext property value. Indicates whether the SMS was Domestic (within a country or region) or International (outside a country or region) based on the user's location.
            ## @return a string
            ## 
            def destination_context
                return @destination_context
            end
            ## 
            ## Sets the destinationContext property value. Indicates whether the SMS was Domestic (within a country or region) or International (outside a country or region) based on the user's location.
            ## @param value Value to set for the destinationContext property.
            ## @return a void
            ## 
            def destination_context=(value)
                @destination_context = value
            end
            ## 
            ## Gets the destinationName property value. Country or region of a phone number that received the SMS.
            ## @return a string
            ## 
            def destination_name
                return @destination_name
            end
            ## 
            ## Sets the destinationName property value. Country or region of a phone number that received the SMS.
            ## @param value Value to set for the destinationName property.
            ## @return a void
            ## 
            def destination_name=(value)
                @destination_name = value
            end
            ## 
            ## Gets the destinationNumber property value. Partially obfuscated phone number that received the SMS. For details, see E.164.
            ## @return a string
            ## 
            def destination_number
                return @destination_number
            end
            ## 
            ## Sets the destinationNumber property value. Partially obfuscated phone number that received the SMS. For details, see E.164.
            ## @param value Value to set for the destinationNumber property.
            ## @return a void
            ## 
            def destination_number=(value)
                @destination_number = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "callCharge" => lambda {|n| @call_charge = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "currency" => lambda {|n| @currency = n.get_string_value() },
                    "destinationContext" => lambda {|n| @destination_context = n.get_string_value() },
                    "destinationName" => lambda {|n| @destination_name = n.get_string_value() },
                    "destinationNumber" => lambda {|n| @destination_number = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "licenseCapability" => lambda {|n| @license_capability = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "otherPartyCountryCode" => lambda {|n| @other_party_country_code = n.get_string_value() },
                    "sentDateTime" => lambda {|n| @sent_date_time = n.get_date_time_value() },
                    "smsId" => lambda {|n| @sms_id = n.get_string_value() },
                    "smsType" => lambda {|n| @sms_type = n.get_string_value() },
                    "smsUnits" => lambda {|n| @sms_units = n.get_number_value() },
                    "sourceNumber" => lambda {|n| @source_number = n.get_string_value() },
                    "tenantCountryCode" => lambda {|n| @tenant_country_code = n.get_string_value() },
                    "userCountryCode" => lambda {|n| @user_country_code = n.get_string_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Unique identifier (GUID) for the SMS.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Unique identifier (GUID) for the SMS.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the licenseCapability property value. The license used for the SMS.
            ## @return a string
            ## 
            def license_capability
                return @license_capability
            end
            ## 
            ## Sets the licenseCapability property value. The license used for the SMS.
            ## @param value Value to set for the licenseCapability property.
            ## @return a void
            ## 
            def license_capability=(value)
                @license_capability = value
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
            ## Gets the otherPartyCountryCode property value. For an outbound SMS, the country code of the receiver; otherwise (inbound SMS) the country code of the sender. For details, see ISO 3166-1 alpha-2.
            ## @return a string
            ## 
            def other_party_country_code
                return @other_party_country_code
            end
            ## 
            ## Sets the otherPartyCountryCode property value. For an outbound SMS, the country code of the receiver; otherwise (inbound SMS) the country code of the sender. For details, see ISO 3166-1 alpha-2.
            ## @param value Value to set for the otherPartyCountryCode property.
            ## @return a void
            ## 
            def other_party_country_code=(value)
                @other_party_country_code = value
            end
            ## 
            ## Gets the sentDateTime property value. The date and time when the SMS was sent.
            ## @return a date_time
            ## 
            def sent_date_time
                return @sent_date_time
            end
            ## 
            ## Sets the sentDateTime property value. The date and time when the SMS was sent.
            ## @param value Value to set for the sentDateTime property.
            ## @return a void
            ## 
            def sent_date_time=(value)
                @sent_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("callCharge", @call_charge)
                writer.write_string_value("currency", @currency)
                writer.write_string_value("destinationContext", @destination_context)
                writer.write_string_value("destinationName", @destination_name)
                writer.write_string_value("destinationNumber", @destination_number)
                writer.write_string_value("id", @id)
                writer.write_string_value("licenseCapability", @license_capability)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("otherPartyCountryCode", @other_party_country_code)
                writer.write_date_time_value("sentDateTime", @sent_date_time)
                writer.write_string_value("smsId", @sms_id)
                writer.write_string_value("smsType", @sms_type)
                writer.write_number_value("smsUnits", @sms_units)
                writer.write_string_value("sourceNumber", @source_number)
                writer.write_string_value("tenantCountryCode", @tenant_country_code)
                writer.write_string_value("userCountryCode", @user_country_code)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the smsId property value. SMS identifier. Not guaranteed to be unique.
            ## @return a string
            ## 
            def sms_id
                return @sms_id
            end
            ## 
            ## Sets the smsId property value. SMS identifier. Not guaranteed to be unique.
            ## @param value Value to set for the smsId property.
            ## @return a void
            ## 
            def sms_id=(value)
                @sms_id = value
            end
            ## 
            ## Gets the smsType property value. Type of SMS such as outbound or inbound.
            ## @return a string
            ## 
            def sms_type
                return @sms_type
            end
            ## 
            ## Sets the smsType property value. Type of SMS such as outbound or inbound.
            ## @param value Value to set for the smsType property.
            ## @return a void
            ## 
            def sms_type=(value)
                @sms_type = value
            end
            ## 
            ## Gets the smsUnits property value. Number of SMS units sent/received.
            ## @return a integer
            ## 
            def sms_units
                return @sms_units
            end
            ## 
            ## Sets the smsUnits property value. Number of SMS units sent/received.
            ## @param value Value to set for the smsUnits property.
            ## @return a void
            ## 
            def sms_units=(value)
                @sms_units = value
            end
            ## 
            ## Gets the sourceNumber property value. Partially obfuscated phone number that sent the SMS. For details, see E.164.
            ## @return a string
            ## 
            def source_number
                return @source_number
            end
            ## 
            ## Sets the sourceNumber property value. Partially obfuscated phone number that sent the SMS. For details, see E.164.
            ## @param value Value to set for the sourceNumber property.
            ## @return a void
            ## 
            def source_number=(value)
                @source_number = value
            end
            ## 
            ## Gets the tenantCountryCode property value. Country code of the tenant. For details, see ISO 3166-1 alpha-2.
            ## @return a string
            ## 
            def tenant_country_code
                return @tenant_country_code
            end
            ## 
            ## Sets the tenantCountryCode property value. Country code of the tenant. For details, see ISO 3166-1 alpha-2.
            ## @param value Value to set for the tenantCountryCode property.
            ## @return a void
            ## 
            def tenant_country_code=(value)
                @tenant_country_code = value
            end
            ## 
            ## Gets the userCountryCode property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
            ## @return a string
            ## 
            def user_country_code
                return @user_country_code
            end
            ## 
            ## Sets the userCountryCode property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
            ## @param value Value to set for the userCountryCode property.
            ## @return a void
            ## 
            def user_country_code=(value)
                @user_country_code = value
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
