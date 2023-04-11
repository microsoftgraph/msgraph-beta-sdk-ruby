require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraphBeta
    module Models
        module CallRecords
            class SmsLogRow
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The callCharge property
                @call_charge
                ## 
                # The currency property
                @currency
                ## 
                # The destinationContext property
                @destination_context
                ## 
                # The destinationName property
                @destination_name
                ## 
                # The destinationNumber property
                @destination_number
                ## 
                # The id property
                @id
                ## 
                # The licenseCapability property
                @license_capability
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The otherPartyCountryCode property
                @other_party_country_code
                ## 
                # The sentDateTime property
                @sent_date_time
                ## 
                # The smsId property
                @sms_id
                ## 
                # The smsType property
                @sms_type
                ## 
                # The smsUnits property
                @sms_units
                ## 
                # The sourceNumber property
                @source_number
                ## 
                # The tenantCountryCode property
                @tenant_country_code
                ## 
                # The userCountryCode property
                @user_country_code
                ## 
                # The userDisplayName property
                @user_display_name
                ## 
                # The userId property
                @user_id
                ## 
                # The userPrincipalName property
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
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the callCharge property value. The callCharge property
                ## @return a decimal
                ## 
                def call_charge
                    return @call_charge
                end
                ## 
                ## Sets the callCharge property value. The callCharge property
                ## @param value Value to set for the call_charge property.
                ## @return a void
                ## 
                def call_charge=(value)
                    @call_charge = value
                end
                ## 
                ## Instantiates a new smsLogRow and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a sms_log_row
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SmsLogRow.new
                end
                ## 
                ## Gets the currency property value. The currency property
                ## @return a string
                ## 
                def currency
                    return @currency
                end
                ## 
                ## Sets the currency property value. The currency property
                ## @param value Value to set for the currency property.
                ## @return a void
                ## 
                def currency=(value)
                    @currency = value
                end
                ## 
                ## Gets the destinationContext property value. The destinationContext property
                ## @return a string
                ## 
                def destination_context
                    return @destination_context
                end
                ## 
                ## Sets the destinationContext property value. The destinationContext property
                ## @param value Value to set for the destination_context property.
                ## @return a void
                ## 
                def destination_context=(value)
                    @destination_context = value
                end
                ## 
                ## Gets the destinationName property value. The destinationName property
                ## @return a string
                ## 
                def destination_name
                    return @destination_name
                end
                ## 
                ## Sets the destinationName property value. The destinationName property
                ## @param value Value to set for the destination_name property.
                ## @return a void
                ## 
                def destination_name=(value)
                    @destination_name = value
                end
                ## 
                ## Gets the destinationNumber property value. The destinationNumber property
                ## @return a string
                ## 
                def destination_number
                    return @destination_number
                end
                ## 
                ## Sets the destinationNumber property value. The destinationNumber property
                ## @param value Value to set for the destination_number property.
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
                ## Gets the id property value. The id property
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. The id property
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the licenseCapability property value. The licenseCapability property
                ## @return a string
                ## 
                def license_capability
                    return @license_capability
                end
                ## 
                ## Sets the licenseCapability property value. The licenseCapability property
                ## @param value Value to set for the license_capability property.
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
                ## @param value Value to set for the odata_type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Gets the otherPartyCountryCode property value. The otherPartyCountryCode property
                ## @return a string
                ## 
                def other_party_country_code
                    return @other_party_country_code
                end
                ## 
                ## Sets the otherPartyCountryCode property value. The otherPartyCountryCode property
                ## @param value Value to set for the other_party_country_code property.
                ## @return a void
                ## 
                def other_party_country_code=(value)
                    @other_party_country_code = value
                end
                ## 
                ## Gets the sentDateTime property value. The sentDateTime property
                ## @return a date_time
                ## 
                def sent_date_time
                    return @sent_date_time
                end
                ## 
                ## Sets the sentDateTime property value. The sentDateTime property
                ## @param value Value to set for the sent_date_time property.
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
                ## Gets the smsId property value. The smsId property
                ## @return a string
                ## 
                def sms_id
                    return @sms_id
                end
                ## 
                ## Sets the smsId property value. The smsId property
                ## @param value Value to set for the sms_id property.
                ## @return a void
                ## 
                def sms_id=(value)
                    @sms_id = value
                end
                ## 
                ## Gets the smsType property value. The smsType property
                ## @return a string
                ## 
                def sms_type
                    return @sms_type
                end
                ## 
                ## Sets the smsType property value. The smsType property
                ## @param value Value to set for the sms_type property.
                ## @return a void
                ## 
                def sms_type=(value)
                    @sms_type = value
                end
                ## 
                ## Gets the smsUnits property value. The smsUnits property
                ## @return a integer
                ## 
                def sms_units
                    return @sms_units
                end
                ## 
                ## Sets the smsUnits property value. The smsUnits property
                ## @param value Value to set for the sms_units property.
                ## @return a void
                ## 
                def sms_units=(value)
                    @sms_units = value
                end
                ## 
                ## Gets the sourceNumber property value. The sourceNumber property
                ## @return a string
                ## 
                def source_number
                    return @source_number
                end
                ## 
                ## Sets the sourceNumber property value. The sourceNumber property
                ## @param value Value to set for the source_number property.
                ## @return a void
                ## 
                def source_number=(value)
                    @source_number = value
                end
                ## 
                ## Gets the tenantCountryCode property value. The tenantCountryCode property
                ## @return a string
                ## 
                def tenant_country_code
                    return @tenant_country_code
                end
                ## 
                ## Sets the tenantCountryCode property value. The tenantCountryCode property
                ## @param value Value to set for the tenant_country_code property.
                ## @return a void
                ## 
                def tenant_country_code=(value)
                    @tenant_country_code = value
                end
                ## 
                ## Gets the userCountryCode property value. The userCountryCode property
                ## @return a string
                ## 
                def user_country_code
                    return @user_country_code
                end
                ## 
                ## Sets the userCountryCode property value. The userCountryCode property
                ## @param value Value to set for the user_country_code property.
                ## @return a void
                ## 
                def user_country_code=(value)
                    @user_country_code = value
                end
                ## 
                ## Gets the userDisplayName property value. The userDisplayName property
                ## @return a string
                ## 
                def user_display_name
                    return @user_display_name
                end
                ## 
                ## Sets the userDisplayName property value. The userDisplayName property
                ## @param value Value to set for the user_display_name property.
                ## @return a void
                ## 
                def user_display_name=(value)
                    @user_display_name = value
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
            end
        end
    end
end
