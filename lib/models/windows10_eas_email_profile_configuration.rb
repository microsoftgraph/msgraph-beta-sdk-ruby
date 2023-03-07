require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Windows10EasEmailProfileConfiguration < MicrosoftGraphBeta::Models::EasEmailProfileConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Account name.
            @account_name
            ## 
            # Possible values for email sync duration.
            @duration_of_email_to_sync
            ## 
            # Possible values for username source or email source.
            @email_address_source
            ## 
            # Possible values for email sync schedule.
            @email_sync_schedule
            ## 
            # Exchange location that (URL) that the native mail app connects to.
            @host_name
            ## 
            # Indicates whether or not to use SSL.
            @require_ssl
            ## 
            # Whether or not to sync the calendar.
            @sync_calendar
            ## 
            # Whether or not to sync contacts.
            @sync_contacts
            ## 
            # Whether or not to sync tasks.
            @sync_tasks
            ## 
            ## Gets the accountName property value. Account name.
            ## @return a string
            ## 
            def account_name
                return @account_name
            end
            ## 
            ## Sets the accountName property value. Account name.
            ## @param value Value to set for the account_name property.
            ## @return a void
            ## 
            def account_name=(value)
                @account_name = value
            end
            ## 
            ## Instantiates a new Windows10EasEmailProfileConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10EasEmailProfileConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_eas_email_profile_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10EasEmailProfileConfiguration.new
            end
            ## 
            ## Gets the durationOfEmailToSync property value. Possible values for email sync duration.
            ## @return a email_sync_duration
            ## 
            def duration_of_email_to_sync
                return @duration_of_email_to_sync
            end
            ## 
            ## Sets the durationOfEmailToSync property value. Possible values for email sync duration.
            ## @param value Value to set for the duration_of_email_to_sync property.
            ## @return a void
            ## 
            def duration_of_email_to_sync=(value)
                @duration_of_email_to_sync = value
            end
            ## 
            ## Gets the emailAddressSource property value. Possible values for username source or email source.
            ## @return a user_email_source
            ## 
            def email_address_source
                return @email_address_source
            end
            ## 
            ## Sets the emailAddressSource property value. Possible values for username source or email source.
            ## @param value Value to set for the email_address_source property.
            ## @return a void
            ## 
            def email_address_source=(value)
                @email_address_source = value
            end
            ## 
            ## Gets the emailSyncSchedule property value. Possible values for email sync schedule.
            ## @return a email_sync_schedule
            ## 
            def email_sync_schedule
                return @email_sync_schedule
            end
            ## 
            ## Sets the emailSyncSchedule property value. Possible values for email sync schedule.
            ## @param value Value to set for the email_sync_schedule property.
            ## @return a void
            ## 
            def email_sync_schedule=(value)
                @email_sync_schedule = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountName" => lambda {|n| @account_name = n.get_string_value() },
                    "durationOfEmailToSync" => lambda {|n| @duration_of_email_to_sync = n.get_enum_value(MicrosoftGraphBeta::Models::EmailSyncDuration) },
                    "emailAddressSource" => lambda {|n| @email_address_source = n.get_enum_value(MicrosoftGraphBeta::Models::UserEmailSource) },
                    "emailSyncSchedule" => lambda {|n| @email_sync_schedule = n.get_enum_value(MicrosoftGraphBeta::Models::EmailSyncSchedule) },
                    "hostName" => lambda {|n| @host_name = n.get_string_value() },
                    "requireSsl" => lambda {|n| @require_ssl = n.get_boolean_value() },
                    "syncCalendar" => lambda {|n| @sync_calendar = n.get_boolean_value() },
                    "syncContacts" => lambda {|n| @sync_contacts = n.get_boolean_value() },
                    "syncTasks" => lambda {|n| @sync_tasks = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the hostName property value. Exchange location that (URL) that the native mail app connects to.
            ## @return a string
            ## 
            def host_name
                return @host_name
            end
            ## 
            ## Sets the hostName property value. Exchange location that (URL) that the native mail app connects to.
            ## @param value Value to set for the host_name property.
            ## @return a void
            ## 
            def host_name=(value)
                @host_name = value
            end
            ## 
            ## Gets the requireSsl property value. Indicates whether or not to use SSL.
            ## @return a boolean
            ## 
            def require_ssl
                return @require_ssl
            end
            ## 
            ## Sets the requireSsl property value. Indicates whether or not to use SSL.
            ## @param value Value to set for the require_ssl property.
            ## @return a void
            ## 
            def require_ssl=(value)
                @require_ssl = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("accountName", @account_name)
                writer.write_enum_value("durationOfEmailToSync", @duration_of_email_to_sync)
                writer.write_enum_value("emailAddressSource", @email_address_source)
                writer.write_enum_value("emailSyncSchedule", @email_sync_schedule)
                writer.write_string_value("hostName", @host_name)
                writer.write_boolean_value("requireSsl", @require_ssl)
                writer.write_boolean_value("syncCalendar", @sync_calendar)
                writer.write_boolean_value("syncContacts", @sync_contacts)
                writer.write_boolean_value("syncTasks", @sync_tasks)
            end
            ## 
            ## Gets the syncCalendar property value. Whether or not to sync the calendar.
            ## @return a boolean
            ## 
            def sync_calendar
                return @sync_calendar
            end
            ## 
            ## Sets the syncCalendar property value. Whether or not to sync the calendar.
            ## @param value Value to set for the sync_calendar property.
            ## @return a void
            ## 
            def sync_calendar=(value)
                @sync_calendar = value
            end
            ## 
            ## Gets the syncContacts property value. Whether or not to sync contacts.
            ## @return a boolean
            ## 
            def sync_contacts
                return @sync_contacts
            end
            ## 
            ## Sets the syncContacts property value. Whether or not to sync contacts.
            ## @param value Value to set for the sync_contacts property.
            ## @return a void
            ## 
            def sync_contacts=(value)
                @sync_contacts = value
            end
            ## 
            ## Gets the syncTasks property value. Whether or not to sync tasks.
            ## @return a boolean
            ## 
            def sync_tasks
                return @sync_tasks
            end
            ## 
            ## Sets the syncTasks property value. Whether or not to sync tasks.
            ## @param value Value to set for the sync_tasks property.
            ## @return a void
            ## 
            def sync_tasks=(value)
                @sync_tasks = value
            end
        end
    end
end
