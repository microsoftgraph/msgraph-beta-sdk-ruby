require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidEasEmailProfileConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Exchange ActiveSync account name, displayed to users as name of EAS (this) profile.
        @account_name
        ## 
        # Exchange Active Sync authentication method.
        @authentication_method
        ## 
        # Custom domain name value used while generating an email profile before installing on the device.
        @custom_domain_name
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
        # Exchange location (URL) that the native mail app connects to.
        @host_name
        ## 
        # Identity certificate.
        @identity_certificate
        ## 
        # Indicates whether or not to use S/MIME certificate.
        @require_smime
        ## 
        # Indicates whether or not to use SSL.
        @require_ssl
        ## 
        # S/MIME signing certificate.
        @smime_signing_certificate
        ## 
        # Toggles syncing the calendar. If set to false calendar is turned off on the device.
        @sync_calendar
        ## 
        # Toggles syncing contacts. If set to false contacts are turned off on the device.
        @sync_contacts
        ## 
        # Toggles syncing notes. If set to false notes are turned off on the device.
        @sync_notes
        ## 
        # Toggles syncing tasks. If set to false tasks are turned off on the device.
        @sync_tasks
        ## 
        # UserDomainname attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: fullDomainName, netBiosDomainName.
        @user_domain_name_source
        ## 
        # Android username source.
        @username_source
        ## 
        ## Gets the accountName property value. Exchange ActiveSync account name, displayed to users as name of EAS (this) profile.
        ## @return a string
        ## 
        def account_name
            return @account_name
        end
        ## 
        ## Sets the accountName property value. Exchange ActiveSync account name, displayed to users as name of EAS (this) profile.
        ## @param value Value to set for the accountName property.
        ## @return a void
        ## 
        def account_name=(value)
            @account_name = value
        end
        ## 
        ## Gets the authenticationMethod property value. Exchange Active Sync authentication method.
        ## @return a eas_authentication_method
        ## 
        def authentication_method
            return @authentication_method
        end
        ## 
        ## Sets the authenticationMethod property value. Exchange Active Sync authentication method.
        ## @param value Value to set for the authenticationMethod property.
        ## @return a void
        ## 
        def authentication_method=(value)
            @authentication_method = value
        end
        ## 
        ## Instantiates a new AndroidEasEmailProfileConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidEasEmailProfileConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_eas_email_profile_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidEasEmailProfileConfiguration.new
        end
        ## 
        ## Gets the customDomainName property value. Custom domain name value used while generating an email profile before installing on the device.
        ## @return a string
        ## 
        def custom_domain_name
            return @custom_domain_name
        end
        ## 
        ## Sets the customDomainName property value. Custom domain name value used while generating an email profile before installing on the device.
        ## @param value Value to set for the customDomainName property.
        ## @return a void
        ## 
        def custom_domain_name=(value)
            @custom_domain_name = value
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
        ## @param value Value to set for the durationOfEmailToSync property.
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
        ## @param value Value to set for the emailAddressSource property.
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
        ## @param value Value to set for the emailSyncSchedule property.
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
                "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::EasAuthenticationMethod) },
                "customDomainName" => lambda {|n| @custom_domain_name = n.get_string_value() },
                "durationOfEmailToSync" => lambda {|n| @duration_of_email_to_sync = n.get_enum_value(MicrosoftGraphBeta::Models::EmailSyncDuration) },
                "emailAddressSource" => lambda {|n| @email_address_source = n.get_enum_value(MicrosoftGraphBeta::Models::UserEmailSource) },
                "emailSyncSchedule" => lambda {|n| @email_sync_schedule = n.get_enum_value(MicrosoftGraphBeta::Models::EmailSyncSchedule) },
                "hostName" => lambda {|n| @host_name = n.get_string_value() },
                "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidCertificateProfileBase.create_from_discriminator_value(pn) }) },
                "requireSmime" => lambda {|n| @require_smime = n.get_boolean_value() },
                "requireSsl" => lambda {|n| @require_ssl = n.get_boolean_value() },
                "smimeSigningCertificate" => lambda {|n| @smime_signing_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidCertificateProfileBase.create_from_discriminator_value(pn) }) },
                "syncCalendar" => lambda {|n| @sync_calendar = n.get_boolean_value() },
                "syncContacts" => lambda {|n| @sync_contacts = n.get_boolean_value() },
                "syncNotes" => lambda {|n| @sync_notes = n.get_boolean_value() },
                "syncTasks" => lambda {|n| @sync_tasks = n.get_boolean_value() },
                "userDomainNameSource" => lambda {|n| @user_domain_name_source = n.get_enum_value(MicrosoftGraphBeta::Models::DomainNameSource) },
                "usernameSource" => lambda {|n| @username_source = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidUsernameSource) },
            })
        end
        ## 
        ## Gets the hostName property value. Exchange location (URL) that the native mail app connects to.
        ## @return a string
        ## 
        def host_name
            return @host_name
        end
        ## 
        ## Sets the hostName property value. Exchange location (URL) that the native mail app connects to.
        ## @param value Value to set for the hostName property.
        ## @return a void
        ## 
        def host_name=(value)
            @host_name = value
        end
        ## 
        ## Gets the identityCertificate property value. Identity certificate.
        ## @return a android_certificate_profile_base
        ## 
        def identity_certificate
            return @identity_certificate
        end
        ## 
        ## Sets the identityCertificate property value. Identity certificate.
        ## @param value Value to set for the identityCertificate property.
        ## @return a void
        ## 
        def identity_certificate=(value)
            @identity_certificate = value
        end
        ## 
        ## Gets the requireSmime property value. Indicates whether or not to use S/MIME certificate.
        ## @return a boolean
        ## 
        def require_smime
            return @require_smime
        end
        ## 
        ## Sets the requireSmime property value. Indicates whether or not to use S/MIME certificate.
        ## @param value Value to set for the requireSmime property.
        ## @return a void
        ## 
        def require_smime=(value)
            @require_smime = value
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
        ## @param value Value to set for the requireSsl property.
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
            writer.write_enum_value("authenticationMethod", @authentication_method)
            writer.write_string_value("customDomainName", @custom_domain_name)
            writer.write_enum_value("durationOfEmailToSync", @duration_of_email_to_sync)
            writer.write_enum_value("emailAddressSource", @email_address_source)
            writer.write_enum_value("emailSyncSchedule", @email_sync_schedule)
            writer.write_string_value("hostName", @host_name)
            writer.write_object_value("identityCertificate", @identity_certificate)
            writer.write_boolean_value("requireSmime", @require_smime)
            writer.write_boolean_value("requireSsl", @require_ssl)
            writer.write_object_value("smimeSigningCertificate", @smime_signing_certificate)
            writer.write_boolean_value("syncCalendar", @sync_calendar)
            writer.write_boolean_value("syncContacts", @sync_contacts)
            writer.write_boolean_value("syncNotes", @sync_notes)
            writer.write_boolean_value("syncTasks", @sync_tasks)
            writer.write_enum_value("userDomainNameSource", @user_domain_name_source)
            writer.write_enum_value("usernameSource", @username_source)
        end
        ## 
        ## Gets the smimeSigningCertificate property value. S/MIME signing certificate.
        ## @return a android_certificate_profile_base
        ## 
        def smime_signing_certificate
            return @smime_signing_certificate
        end
        ## 
        ## Sets the smimeSigningCertificate property value. S/MIME signing certificate.
        ## @param value Value to set for the smimeSigningCertificate property.
        ## @return a void
        ## 
        def smime_signing_certificate=(value)
            @smime_signing_certificate = value
        end
        ## 
        ## Gets the syncCalendar property value. Toggles syncing the calendar. If set to false calendar is turned off on the device.
        ## @return a boolean
        ## 
        def sync_calendar
            return @sync_calendar
        end
        ## 
        ## Sets the syncCalendar property value. Toggles syncing the calendar. If set to false calendar is turned off on the device.
        ## @param value Value to set for the syncCalendar property.
        ## @return a void
        ## 
        def sync_calendar=(value)
            @sync_calendar = value
        end
        ## 
        ## Gets the syncContacts property value. Toggles syncing contacts. If set to false contacts are turned off on the device.
        ## @return a boolean
        ## 
        def sync_contacts
            return @sync_contacts
        end
        ## 
        ## Sets the syncContacts property value. Toggles syncing contacts. If set to false contacts are turned off on the device.
        ## @param value Value to set for the syncContacts property.
        ## @return a void
        ## 
        def sync_contacts=(value)
            @sync_contacts = value
        end
        ## 
        ## Gets the syncNotes property value. Toggles syncing notes. If set to false notes are turned off on the device.
        ## @return a boolean
        ## 
        def sync_notes
            return @sync_notes
        end
        ## 
        ## Sets the syncNotes property value. Toggles syncing notes. If set to false notes are turned off on the device.
        ## @param value Value to set for the syncNotes property.
        ## @return a void
        ## 
        def sync_notes=(value)
            @sync_notes = value
        end
        ## 
        ## Gets the syncTasks property value. Toggles syncing tasks. If set to false tasks are turned off on the device.
        ## @return a boolean
        ## 
        def sync_tasks
            return @sync_tasks
        end
        ## 
        ## Sets the syncTasks property value. Toggles syncing tasks. If set to false tasks are turned off on the device.
        ## @param value Value to set for the syncTasks property.
        ## @return a void
        ## 
        def sync_tasks=(value)
            @sync_tasks = value
        end
        ## 
        ## Gets the userDomainNameSource property value. UserDomainname attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: fullDomainName, netBiosDomainName.
        ## @return a domain_name_source
        ## 
        def user_domain_name_source
            return @user_domain_name_source
        end
        ## 
        ## Sets the userDomainNameSource property value. UserDomainname attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: fullDomainName, netBiosDomainName.
        ## @param value Value to set for the userDomainNameSource property.
        ## @return a void
        ## 
        def user_domain_name_source=(value)
            @user_domain_name_source = value
        end
        ## 
        ## Gets the usernameSource property value. Android username source.
        ## @return a android_username_source
        ## 
        def username_source
            return @username_source
        end
        ## 
        ## Sets the usernameSource property value. Android username source.
        ## @param value Value to set for the usernameSource property.
        ## @return a void
        ## 
        def username_source=(value)
            @username_source = value
        end
    end
end
