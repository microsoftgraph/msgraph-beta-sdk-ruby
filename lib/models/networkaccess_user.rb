require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessUser
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # User display Name.
            @display_name
            ## 
            # The firstAccessDateTime property
            @first_access_date_time
            ## 
            # The date and time of the most recent access.
            @last_access_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The totalBytesReceived property
            @total_bytes_received
            ## 
            # The totalBytesSent property
            @total_bytes_sent
            ## 
            # The trafficType property
            @traffic_type
            ## 
            # The transactionCount property
            @transaction_count
            ## 
            # The ID for the user.
            @user_id
            ## 
            # A unique identifier that is associated with a user in a system or directory. Typically, this value is an email address that is used for user authentication and identification.
            @user_principal_name
            ## 
            # The userType property
            @user_type
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
            ## Instantiates a new NetworkaccessUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessUser.new
            end
            ## 
            ## Gets the displayName property value. User display Name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. User display Name.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the firstAccessDateTime property value. The firstAccessDateTime property
            ## @return a date_time
            ## 
            def first_access_date_time
                return @first_access_date_time
            end
            ## 
            ## Sets the firstAccessDateTime property value. The firstAccessDateTime property
            ## @param value Value to set for the firstAccessDateTime property.
            ## @return a void
            ## 
            def first_access_date_time=(value)
                @first_access_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "firstAccessDateTime" => lambda {|n| @first_access_date_time = n.get_date_time_value() },
                    "lastAccessDateTime" => lambda {|n| @last_access_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "totalBytesReceived" => lambda {|n| @total_bytes_received = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "totalBytesSent" => lambda {|n| @total_bytes_sent = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessTrafficType) },
                    "transactionCount" => lambda {|n| @transaction_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessUserType) },
                }
            end
            ## 
            ## Gets the lastAccessDateTime property value. The date and time of the most recent access.
            ## @return a date_time
            ## 
            def last_access_date_time
                return @last_access_date_time
            end
            ## 
            ## Sets the lastAccessDateTime property value. The date and time of the most recent access.
            ## @param value Value to set for the lastAccessDateTime property.
            ## @return a void
            ## 
            def last_access_date_time=(value)
                @last_access_date_time = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("firstAccessDateTime", @first_access_date_time)
                writer.write_date_time_value("lastAccessDateTime", @last_access_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("totalBytesReceived", @total_bytes_received)
                writer.write_object_value("totalBytesSent", @total_bytes_sent)
                writer.write_enum_value("trafficType", @traffic_type)
                writer.write_object_value("transactionCount", @transaction_count)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_enum_value("userType", @user_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalBytesReceived property value. The totalBytesReceived property
            ## @return a int64
            ## 
            def total_bytes_received
                return @total_bytes_received
            end
            ## 
            ## Sets the totalBytesReceived property value. The totalBytesReceived property
            ## @param value Value to set for the totalBytesReceived property.
            ## @return a void
            ## 
            def total_bytes_received=(value)
                @total_bytes_received = value
            end
            ## 
            ## Gets the totalBytesSent property value. The totalBytesSent property
            ## @return a int64
            ## 
            def total_bytes_sent
                return @total_bytes_sent
            end
            ## 
            ## Sets the totalBytesSent property value. The totalBytesSent property
            ## @param value Value to set for the totalBytesSent property.
            ## @return a void
            ## 
            def total_bytes_sent=(value)
                @total_bytes_sent = value
            end
            ## 
            ## Gets the trafficType property value. The trafficType property
            ## @return a networkaccess_traffic_type
            ## 
            def traffic_type
                return @traffic_type
            end
            ## 
            ## Sets the trafficType property value. The trafficType property
            ## @param value Value to set for the trafficType property.
            ## @return a void
            ## 
            def traffic_type=(value)
                @traffic_type = value
            end
            ## 
            ## Gets the transactionCount property value. The transactionCount property
            ## @return a int64
            ## 
            def transaction_count
                return @transaction_count
            end
            ## 
            ## Sets the transactionCount property value. The transactionCount property
            ## @param value Value to set for the transactionCount property.
            ## @return a void
            ## 
            def transaction_count=(value)
                @transaction_count = value
            end
            ## 
            ## Gets the userId property value. The ID for the user.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The ID for the user.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. A unique identifier that is associated with a user in a system or directory. Typically, this value is an email address that is used for user authentication and identification.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. A unique identifier that is associated with a user in a system or directory. Typically, this value is an email address that is used for user authentication and identification.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. The userType property
            ## @return a networkaccess_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. The userType property
            ## @param value Value to set for the userType property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
