require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallRecordsPstnCallLogRow < MicrosoftGraphBeta::Models::CallRecordsCallLogRow
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is operator. Otherwise, the value is microsoft.
            @call_duration_source
            ## 
            # Call identifier. Not guaranteed to be unique.
            @call_id
            ## 
            # Indicates whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.
            @call_type
            ## 
            # Number of the user or bot who received the call (E.164).
            @callee_number
            ## 
            # Number of the user or bot who made the call (E.164).
            @caller_number
            ## 
            # Amount of money or cost of the call that is charged to your account.
            @charge
            ## 
            # Local IPv4 of the client that is retrieved from the operating system of the client.
            @client_local_ip_v4_address
            ## 
            # Local IPv6 of the client that is retrieved from the operating system of the client.
            @client_local_ip_v6_address
            ## 
            # Public IPv4 of the client that can be used to determine the location of the client.
            @client_public_ip_v4_address
            ## 
            # Public IPv6 of the client that can be used to determine the location of the client.
            @client_public_ip_v6_address
            ## 
            # ID of the audio conference.
            @conference_id
            ## 
            # Connection fee price.
            @connection_charge
            ## 
            # Type of currency used to calculate the cost of the call (ISO 4217).
            @currency
            ## 
            # Indicates whether the call was Domestic (within a country or region) or International (outside a country or region) based on the user's location.
            @destination_context
            ## 
            # Country or region dialed.
            @destination_name
            ## 
            # How long the call was connected, in seconds.
            @duration
            ## 
            # Call end time.
            @end_date_time
            ## 
            # User's phone number type, such as a service of toll-free number.
            @inventory_type
            ## 
            # The license used for the call.
            @license_capability
            ## 
            # The telecommunications operator that provided PSTN services for this call. It may be Microsoft, or it may be a third-party operator via the Operator Connect Program.
            @operator
            ## 
            # Call start time.
            @start_date_time
            ## 
            # Country code of the tenant. For details, see ISO 3166-1 alpha-2.
            @tenant_country_code
            ## 
            # Country code of the user. For details, see ISO 3166-1 alpha-2.
            @usage_country_code
            ## 
            ## Gets the callDurationSource property value. The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is operator. Otherwise, the value is microsoft.
            ## @return a call_records_pstn_call_duration_source
            ## 
            def call_duration_source
                return @call_duration_source
            end
            ## 
            ## Sets the callDurationSource property value. The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is operator. Otherwise, the value is microsoft.
            ## @param value Value to set for the callDurationSource property.
            ## @return a void
            ## 
            def call_duration_source=(value)
                @call_duration_source = value
            end
            ## 
            ## Gets the callId property value. Call identifier. Not guaranteed to be unique.
            ## @return a string
            ## 
            def call_id
                return @call_id
            end
            ## 
            ## Sets the callId property value. Call identifier. Not guaranteed to be unique.
            ## @param value Value to set for the callId property.
            ## @return a void
            ## 
            def call_id=(value)
                @call_id = value
            end
            ## 
            ## Gets the callType property value. Indicates whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.
            ## @return a string
            ## 
            def call_type
                return @call_type
            end
            ## 
            ## Sets the callType property value. Indicates whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.
            ## @param value Value to set for the callType property.
            ## @return a void
            ## 
            def call_type=(value)
                @call_type = value
            end
            ## 
            ## Gets the calleeNumber property value. Number of the user or bot who received the call (E.164).
            ## @return a string
            ## 
            def callee_number
                return @callee_number
            end
            ## 
            ## Sets the calleeNumber property value. Number of the user or bot who received the call (E.164).
            ## @param value Value to set for the calleeNumber property.
            ## @return a void
            ## 
            def callee_number=(value)
                @callee_number = value
            end
            ## 
            ## Gets the callerNumber property value. Number of the user or bot who made the call (E.164).
            ## @return a string
            ## 
            def caller_number
                return @caller_number
            end
            ## 
            ## Sets the callerNumber property value. Number of the user or bot who made the call (E.164).
            ## @param value Value to set for the callerNumber property.
            ## @return a void
            ## 
            def caller_number=(value)
                @caller_number = value
            end
            ## 
            ## Gets the charge property value. Amount of money or cost of the call that is charged to your account.
            ## @return a decimal
            ## 
            def charge
                return @charge
            end
            ## 
            ## Sets the charge property value. Amount of money or cost of the call that is charged to your account.
            ## @param value Value to set for the charge property.
            ## @return a void
            ## 
            def charge=(value)
                @charge = value
            end
            ## 
            ## Gets the clientLocalIpV4Address property value. Local IPv4 of the client that is retrieved from the operating system of the client.
            ## @return a string
            ## 
            def client_local_ip_v4_address
                return @client_local_ip_v4_address
            end
            ## 
            ## Sets the clientLocalIpV4Address property value. Local IPv4 of the client that is retrieved from the operating system of the client.
            ## @param value Value to set for the clientLocalIpV4Address property.
            ## @return a void
            ## 
            def client_local_ip_v4_address=(value)
                @client_local_ip_v4_address = value
            end
            ## 
            ## Gets the clientLocalIpV6Address property value. Local IPv6 of the client that is retrieved from the operating system of the client.
            ## @return a string
            ## 
            def client_local_ip_v6_address
                return @client_local_ip_v6_address
            end
            ## 
            ## Sets the clientLocalIpV6Address property value. Local IPv6 of the client that is retrieved from the operating system of the client.
            ## @param value Value to set for the clientLocalIpV6Address property.
            ## @return a void
            ## 
            def client_local_ip_v6_address=(value)
                @client_local_ip_v6_address = value
            end
            ## 
            ## Gets the clientPublicIpV4Address property value. Public IPv4 of the client that can be used to determine the location of the client.
            ## @return a string
            ## 
            def client_public_ip_v4_address
                return @client_public_ip_v4_address
            end
            ## 
            ## Sets the clientPublicIpV4Address property value. Public IPv4 of the client that can be used to determine the location of the client.
            ## @param value Value to set for the clientPublicIpV4Address property.
            ## @return a void
            ## 
            def client_public_ip_v4_address=(value)
                @client_public_ip_v4_address = value
            end
            ## 
            ## Gets the clientPublicIpV6Address property value. Public IPv6 of the client that can be used to determine the location of the client.
            ## @return a string
            ## 
            def client_public_ip_v6_address
                return @client_public_ip_v6_address
            end
            ## 
            ## Sets the clientPublicIpV6Address property value. Public IPv6 of the client that can be used to determine the location of the client.
            ## @param value Value to set for the clientPublicIpV6Address property.
            ## @return a void
            ## 
            def client_public_ip_v6_address=(value)
                @client_public_ip_v6_address = value
            end
            ## 
            ## Gets the conferenceId property value. ID of the audio conference.
            ## @return a string
            ## 
            def conference_id
                return @conference_id
            end
            ## 
            ## Sets the conferenceId property value. ID of the audio conference.
            ## @param value Value to set for the conferenceId property.
            ## @return a void
            ## 
            def conference_id=(value)
                @conference_id = value
            end
            ## 
            ## Gets the connectionCharge property value. Connection fee price.
            ## @return a decimal
            ## 
            def connection_charge
                return @connection_charge
            end
            ## 
            ## Sets the connectionCharge property value. Connection fee price.
            ## @param value Value to set for the connectionCharge property.
            ## @return a void
            ## 
            def connection_charge=(value)
                @connection_charge = value
            end
            ## 
            ## Instantiates a new CallRecordsPstnCallLogRow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_pstn_call_log_row
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsPstnCallLogRow.new
            end
            ## 
            ## Gets the currency property value. Type of currency used to calculate the cost of the call (ISO 4217).
            ## @return a string
            ## 
            def currency
                return @currency
            end
            ## 
            ## Sets the currency property value. Type of currency used to calculate the cost of the call (ISO 4217).
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
            ## Gets the destinationName property value. Country or region dialed.
            ## @return a string
            ## 
            def destination_name
                return @destination_name
            end
            ## 
            ## Sets the destinationName property value. Country or region dialed.
            ## @param value Value to set for the destinationName property.
            ## @return a void
            ## 
            def destination_name=(value)
                @destination_name = value
            end
            ## 
            ## Gets the duration property value. How long the call was connected, in seconds.
            ## @return a integer
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. How long the call was connected, in seconds.
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## Gets the endDateTime property value. Call end time.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. Call end time.
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callDurationSource" => lambda {|n| @call_duration_source = n.get_enum_value(MicrosoftGraphBeta::Models::CallRecordsPstnCallDurationSource) },
                    "callId" => lambda {|n| @call_id = n.get_string_value() },
                    "callType" => lambda {|n| @call_type = n.get_string_value() },
                    "calleeNumber" => lambda {|n| @callee_number = n.get_string_value() },
                    "callerNumber" => lambda {|n| @caller_number = n.get_string_value() },
                    "charge" => lambda {|n| @charge = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "clientLocalIpV4Address" => lambda {|n| @client_local_ip_v4_address = n.get_string_value() },
                    "clientLocalIpV6Address" => lambda {|n| @client_local_ip_v6_address = n.get_string_value() },
                    "clientPublicIpV4Address" => lambda {|n| @client_public_ip_v4_address = n.get_string_value() },
                    "clientPublicIpV6Address" => lambda {|n| @client_public_ip_v6_address = n.get_string_value() },
                    "conferenceId" => lambda {|n| @conference_id = n.get_string_value() },
                    "connectionCharge" => lambda {|n| @connection_charge = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "currency" => lambda {|n| @currency = n.get_string_value() },
                    "destinationContext" => lambda {|n| @destination_context = n.get_string_value() },
                    "destinationName" => lambda {|n| @destination_name = n.get_string_value() },
                    "duration" => lambda {|n| @duration = n.get_number_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "inventoryType" => lambda {|n| @inventory_type = n.get_string_value() },
                    "licenseCapability" => lambda {|n| @license_capability = n.get_string_value() },
                    "operator" => lambda {|n| @operator = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "tenantCountryCode" => lambda {|n| @tenant_country_code = n.get_string_value() },
                    "usageCountryCode" => lambda {|n| @usage_country_code = n.get_string_value() },
                })
            end
            ## 
            ## Gets the inventoryType property value. User's phone number type, such as a service of toll-free number.
            ## @return a string
            ## 
            def inventory_type
                return @inventory_type
            end
            ## 
            ## Sets the inventoryType property value. User's phone number type, such as a service of toll-free number.
            ## @param value Value to set for the inventoryType property.
            ## @return a void
            ## 
            def inventory_type=(value)
                @inventory_type = value
            end
            ## 
            ## Gets the licenseCapability property value. The license used for the call.
            ## @return a string
            ## 
            def license_capability
                return @license_capability
            end
            ## 
            ## Sets the licenseCapability property value. The license used for the call.
            ## @param value Value to set for the licenseCapability property.
            ## @return a void
            ## 
            def license_capability=(value)
                @license_capability = value
            end
            ## 
            ## Gets the operator property value. The telecommunications operator that provided PSTN services for this call. It may be Microsoft, or it may be a third-party operator via the Operator Connect Program.
            ## @return a string
            ## 
            def operator
                return @operator
            end
            ## 
            ## Sets the operator property value. The telecommunications operator that provided PSTN services for this call. It may be Microsoft, or it may be a third-party operator via the Operator Connect Program.
            ## @param value Value to set for the operator property.
            ## @return a void
            ## 
            def operator=(value)
                @operator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("callDurationSource", @call_duration_source)
                writer.write_string_value("callId", @call_id)
                writer.write_string_value("callType", @call_type)
                writer.write_string_value("calleeNumber", @callee_number)
                writer.write_string_value("callerNumber", @caller_number)
                writer.write_object_value("charge", @charge)
                writer.write_string_value("clientLocalIpV4Address", @client_local_ip_v4_address)
                writer.write_string_value("clientLocalIpV6Address", @client_local_ip_v6_address)
                writer.write_string_value("clientPublicIpV4Address", @client_public_ip_v4_address)
                writer.write_string_value("clientPublicIpV6Address", @client_public_ip_v6_address)
                writer.write_string_value("conferenceId", @conference_id)
                writer.write_object_value("connectionCharge", @connection_charge)
                writer.write_string_value("currency", @currency)
                writer.write_string_value("destinationContext", @destination_context)
                writer.write_string_value("destinationName", @destination_name)
                writer.write_number_value("duration", @duration)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_string_value("inventoryType", @inventory_type)
                writer.write_string_value("licenseCapability", @license_capability)
                writer.write_string_value("operator", @operator)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("tenantCountryCode", @tenant_country_code)
                writer.write_string_value("usageCountryCode", @usage_country_code)
            end
            ## 
            ## Gets the startDateTime property value. Call start time.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Call start time.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
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
            ## Gets the usageCountryCode property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
            ## @return a string
            ## 
            def usage_country_code
                return @usage_country_code
            end
            ## 
            ## Sets the usageCountryCode property value. Country code of the user. For details, see ISO 3166-1 alpha-2.
            ## @param value Value to set for the usageCountryCode property.
            ## @return a void
            ## 
            def usage_country_code=(value)
                @usage_country_code = value
            end
        end
    end
end
