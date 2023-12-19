require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class LogonUser
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Domain of user account used to logon.
            @account_domain
            ## 
            # Account name of user account used to logon.
            @account_name
            ## 
            # User Account type, per Windows definition. Possible values are: unknown, standard, power, administrator.
            @account_type
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # User logon ID.
            @logon_id
            ## 
            # Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
            @logon_types
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the accountDomain property value. Domain of user account used to logon.
            ## @return a string
            ## 
            def account_domain
                return @account_domain
            end
            ## 
            ## Sets the accountDomain property value. Domain of user account used to logon.
            ## @param value Value to set for the accountDomain property.
            ## @return a void
            ## 
            def account_domain=(value)
                @account_domain = value
            end
            ## 
            ## Gets the accountName property value. Account name of user account used to logon.
            ## @return a string
            ## 
            def account_name
                return @account_name
            end
            ## 
            ## Sets the accountName property value. Account name of user account used to logon.
            ## @param value Value to set for the accountName property.
            ## @return a void
            ## 
            def account_name=(value)
                @account_name = value
            end
            ## 
            ## Gets the accountType property value. User Account type, per Windows definition. Possible values are: unknown, standard, power, administrator.
            ## @return a logon_user_account_type
            ## 
            def account_type
                return @account_type
            end
            ## 
            ## Sets the accountType property value. User Account type, per Windows definition. Possible values are: unknown, standard, power, administrator.
            ## @param value Value to set for the accountType property.
            ## @return a void
            ## 
            def account_type=(value)
                @account_type = value
            end
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
            ## Instantiates a new logonUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a logon_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LogonUser.new
            end
            ## 
            ## Gets the firstSeenDateTime property value. DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the firstSeenDateTime property.
            ## @return a void
            ## 
            def first_seen_date_time=(value)
                @first_seen_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accountDomain" => lambda {|n| @account_domain = n.get_string_value() },
                    "accountName" => lambda {|n| @account_name = n.get_string_value() },
                    "accountType" => lambda {|n| @account_type = n.get_enum_value(MicrosoftGraphBeta::Models::LogonUserAccountType) },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "logonId" => lambda {|n| @logon_id = n.get_string_value() },
                    "logonTypes" => lambda {|n| @logon_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LogonUserLogonTypes.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastSeenDateTime property value. DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the logonId property value. User logon ID.
            ## @return a string
            ## 
            def logon_id
                return @logon_id
            end
            ## 
            ## Sets the logonId property value. User logon ID.
            ## @param value Value to set for the logonId property.
            ## @return a void
            ## 
            def logon_id=(value)
                @logon_id = value
            end
            ## 
            ## Gets the logonTypes property value. Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
            ## @return a logon_user_logon_types
            ## 
            def logon_types
                return @logon_types
            end
            ## 
            ## Sets the logonTypes property value. Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: unknown, interactive, remoteInteractive, network, batch, service.
            ## @param value Value to set for the logonTypes property.
            ## @return a void
            ## 
            def logon_types=(value)
                @logon_types = value
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
                writer.write_string_value("accountDomain", @account_domain)
                writer.write_string_value("accountName", @account_name)
                writer.write_enum_value("accountType", @account_type)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_string_value("logonId", @logon_id)
                writer.write_collection_of_object_values("logonTypes", @logon_types)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
