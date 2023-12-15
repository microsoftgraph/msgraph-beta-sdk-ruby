require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing configurations in this profile you can instruct the native email client on iOS devices to communicate with an Exchange server and get email, contacts, calendar, reminders, and notes. Furthermore, you can also specify how much email to sync and how often the device should sync.
        class IosEasEmailProfileConfiguration < MicrosoftGraphBeta::Models::EasEmailProfileConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Account name.
            @account_name
            ## 
            # Authentication method for this Email profile. Possible values are: usernameAndPassword, certificate, derivedCredential.
            @authentication_method
            ## 
            # Indicates whether or not to block moving messages to other email accounts.
            @block_moving_messages_to_other_email_accounts
            ## 
            # Indicates whether or not to block sending email from third party apps.
            @block_sending_email_from_third_party_apps
            ## 
            # Indicates whether or not to block syncing recently used email addresses, for instance - when composing new email.
            @block_syncing_recently_used_email_addresses
            ## 
            # Tenant level settings for the Derived Credentials to be used for authentication.
            @derived_credential_settings
            ## 
            # Possible values for email sync duration.
            @duration_of_email_to_sync
            ## 
            # Exchange data to sync. Possible values are: none, calendars, contacts, email, notes, reminders.
            @eas_services
            ## 
            # Allow users to change sync settings.
            @eas_services_user_override_enabled
            ## 
            # Possible values for username source or email source.
            @email_address_source
            ## 
            # Encryption Certificate type for this Email profile. Possible values are: none, certificate, derivedCredential.
            @encryption_certificate_type
            ## 
            # Exchange location that (URL) that the native mail app connects to.
            @host_name
            ## 
            # Identity certificate.
            @identity_certificate
            ## 
            # Profile ID of the Per-App VPN policy to be used to access emails from the native Mail client
            @per_app_v_p_n_profile_id
            ## 
            # Indicates whether or not to use S/MIME certificate.
            @require_smime
            ## 
            # Indicates whether or not to use SSL.
            @require_ssl
            ## 
            # Signing Certificate type for this Email profile. Possible values are: none, certificate, derivedCredential.
            @signing_certificate_type
            ## 
            # Indicates whether or not to allow unencrypted emails.
            @smime_enable_per_message_switch
            ## 
            # If set to true S/MIME encryption is enabled by default.
            @smime_encrypt_by_default_enabled
            ## 
            # If set to true, the user can toggle the encryption by default setting.
            @smime_encrypt_by_default_user_override_enabled
            ## 
            # S/MIME encryption certificate.
            @smime_encryption_certificate
            ## 
            # If set to true the user can select the S/MIME encryption identity.
            @smime_encryption_certificate_user_override_enabled
            ## 
            # S/MIME signing certificate.
            @smime_signing_certificate
            ## 
            # If set to true, the user can select the signing identity.
            @smime_signing_certificate_user_override_enabled
            ## 
            # If set to true S/MIME signing is enabled for this account
            @smime_signing_enabled
            ## 
            # If set to true, the user can toggle S/MIME signing on or off.
            @smime_signing_user_override_enabled
            ## 
            # Specifies whether the connection should use OAuth for authentication.
            @use_o_auth
            ## 
            ## Gets the accountName property value. Account name.
            ## @return a string
            ## 
            def account_name
                return @account_name
            end
            ## 
            ## Sets the accountName property value. Account name.
            ## @param value Value to set for the accountName property.
            ## @return a void
            ## 
            def account_name=(value)
                @account_name = value
            end
            ## 
            ## Gets the authenticationMethod property value. Authentication method for this Email profile. Possible values are: usernameAndPassword, certificate, derivedCredential.
            ## @return a eas_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. Authentication method for this Email profile. Possible values are: usernameAndPassword, certificate, derivedCredential.
            ## @param value Value to set for the authenticationMethod property.
            ## @return a void
            ## 
            def authentication_method=(value)
                @authentication_method = value
            end
            ## 
            ## Gets the blockMovingMessagesToOtherEmailAccounts property value. Indicates whether or not to block moving messages to other email accounts.
            ## @return a boolean
            ## 
            def block_moving_messages_to_other_email_accounts
                return @block_moving_messages_to_other_email_accounts
            end
            ## 
            ## Sets the blockMovingMessagesToOtherEmailAccounts property value. Indicates whether or not to block moving messages to other email accounts.
            ## @param value Value to set for the blockMovingMessagesToOtherEmailAccounts property.
            ## @return a void
            ## 
            def block_moving_messages_to_other_email_accounts=(value)
                @block_moving_messages_to_other_email_accounts = value
            end
            ## 
            ## Gets the blockSendingEmailFromThirdPartyApps property value. Indicates whether or not to block sending email from third party apps.
            ## @return a boolean
            ## 
            def block_sending_email_from_third_party_apps
                return @block_sending_email_from_third_party_apps
            end
            ## 
            ## Sets the blockSendingEmailFromThirdPartyApps property value. Indicates whether or not to block sending email from third party apps.
            ## @param value Value to set for the blockSendingEmailFromThirdPartyApps property.
            ## @return a void
            ## 
            def block_sending_email_from_third_party_apps=(value)
                @block_sending_email_from_third_party_apps = value
            end
            ## 
            ## Gets the blockSyncingRecentlyUsedEmailAddresses property value. Indicates whether or not to block syncing recently used email addresses, for instance - when composing new email.
            ## @return a boolean
            ## 
            def block_syncing_recently_used_email_addresses
                return @block_syncing_recently_used_email_addresses
            end
            ## 
            ## Sets the blockSyncingRecentlyUsedEmailAddresses property value. Indicates whether or not to block syncing recently used email addresses, for instance - when composing new email.
            ## @param value Value to set for the blockSyncingRecentlyUsedEmailAddresses property.
            ## @return a void
            ## 
            def block_syncing_recently_used_email_addresses=(value)
                @block_syncing_recently_used_email_addresses = value
            end
            ## 
            ## Instantiates a new iosEasEmailProfileConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosEasEmailProfileConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_eas_email_profile_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosEasEmailProfileConfiguration.new
            end
            ## 
            ## Gets the derivedCredentialSettings property value. Tenant level settings for the Derived Credentials to be used for authentication.
            ## @return a device_management_derived_credential_settings
            ## 
            def derived_credential_settings
                return @derived_credential_settings
            end
            ## 
            ## Sets the derivedCredentialSettings property value. Tenant level settings for the Derived Credentials to be used for authentication.
            ## @param value Value to set for the derivedCredentialSettings property.
            ## @return a void
            ## 
            def derived_credential_settings=(value)
                @derived_credential_settings = value
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
            ## Gets the easServices property value. Exchange data to sync. Possible values are: none, calendars, contacts, email, notes, reminders.
            ## @return a eas_services
            ## 
            def eas_services
                return @eas_services
            end
            ## 
            ## Sets the easServices property value. Exchange data to sync. Possible values are: none, calendars, contacts, email, notes, reminders.
            ## @param value Value to set for the easServices property.
            ## @return a void
            ## 
            def eas_services=(value)
                @eas_services = value
            end
            ## 
            ## Gets the easServicesUserOverrideEnabled property value. Allow users to change sync settings.
            ## @return a boolean
            ## 
            def eas_services_user_override_enabled
                return @eas_services_user_override_enabled
            end
            ## 
            ## Sets the easServicesUserOverrideEnabled property value. Allow users to change sync settings.
            ## @param value Value to set for the easServicesUserOverrideEnabled property.
            ## @return a void
            ## 
            def eas_services_user_override_enabled=(value)
                @eas_services_user_override_enabled = value
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
            ## Gets the encryptionCertificateType property value. Encryption Certificate type for this Email profile. Possible values are: none, certificate, derivedCredential.
            ## @return a email_certificate_type
            ## 
            def encryption_certificate_type
                return @encryption_certificate_type
            end
            ## 
            ## Sets the encryptionCertificateType property value. Encryption Certificate type for this Email profile. Possible values are: none, certificate, derivedCredential.
            ## @param value Value to set for the encryptionCertificateType property.
            ## @return a void
            ## 
            def encryption_certificate_type=(value)
                @encryption_certificate_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountName" => lambda {|n| @account_name = n.get_string_value() },
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::EasAuthenticationMethod) },
                    "blockMovingMessagesToOtherEmailAccounts" => lambda {|n| @block_moving_messages_to_other_email_accounts = n.get_boolean_value() },
                    "blockSendingEmailFromThirdPartyApps" => lambda {|n| @block_sending_email_from_third_party_apps = n.get_boolean_value() },
                    "blockSyncingRecentlyUsedEmailAddresses" => lambda {|n| @block_syncing_recently_used_email_addresses = n.get_boolean_value() },
                    "derivedCredentialSettings" => lambda {|n| @derived_credential_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialSettings.create_from_discriminator_value(pn) }) },
                    "durationOfEmailToSync" => lambda {|n| @duration_of_email_to_sync = n.get_enum_value(MicrosoftGraphBeta::Models::EmailSyncDuration) },
                    "easServices" => lambda {|n| @eas_services = n.get_enum_value(MicrosoftGraphBeta::Models::EasServices) },
                    "easServicesUserOverrideEnabled" => lambda {|n| @eas_services_user_override_enabled = n.get_boolean_value() },
                    "emailAddressSource" => lambda {|n| @email_address_source = n.get_enum_value(MicrosoftGraphBeta::Models::UserEmailSource) },
                    "encryptionCertificateType" => lambda {|n| @encryption_certificate_type = n.get_enum_value(MicrosoftGraphBeta::Models::EmailCertificateType) },
                    "hostName" => lambda {|n| @host_name = n.get_string_value() },
                    "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "perAppVPNProfileId" => lambda {|n| @per_app_v_p_n_profile_id = n.get_string_value() },
                    "requireSmime" => lambda {|n| @require_smime = n.get_boolean_value() },
                    "requireSsl" => lambda {|n| @require_ssl = n.get_boolean_value() },
                    "signingCertificateType" => lambda {|n| @signing_certificate_type = n.get_enum_value(MicrosoftGraphBeta::Models::EmailCertificateType) },
                    "smimeEnablePerMessageSwitch" => lambda {|n| @smime_enable_per_message_switch = n.get_boolean_value() },
                    "smimeEncryptByDefaultEnabled" => lambda {|n| @smime_encrypt_by_default_enabled = n.get_boolean_value() },
                    "smimeEncryptByDefaultUserOverrideEnabled" => lambda {|n| @smime_encrypt_by_default_user_override_enabled = n.get_boolean_value() },
                    "smimeEncryptionCertificate" => lambda {|n| @smime_encryption_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosCertificateProfile.create_from_discriminator_value(pn) }) },
                    "smimeEncryptionCertificateUserOverrideEnabled" => lambda {|n| @smime_encryption_certificate_user_override_enabled = n.get_boolean_value() },
                    "smimeSigningCertificate" => lambda {|n| @smime_signing_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosCertificateProfile.create_from_discriminator_value(pn) }) },
                    "smimeSigningCertificateUserOverrideEnabled" => lambda {|n| @smime_signing_certificate_user_override_enabled = n.get_boolean_value() },
                    "smimeSigningEnabled" => lambda {|n| @smime_signing_enabled = n.get_boolean_value() },
                    "smimeSigningUserOverrideEnabled" => lambda {|n| @smime_signing_user_override_enabled = n.get_boolean_value() },
                    "useOAuth" => lambda {|n| @use_o_auth = n.get_boolean_value() },
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
            ## @param value Value to set for the hostName property.
            ## @return a void
            ## 
            def host_name=(value)
                @host_name = value
            end
            ## 
            ## Gets the identityCertificate property value. Identity certificate.
            ## @return a ios_certificate_profile_base
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
            ## Gets the perAppVPNProfileId property value. Profile ID of the Per-App VPN policy to be used to access emails from the native Mail client
            ## @return a string
            ## 
            def per_app_v_p_n_profile_id
                return @per_app_v_p_n_profile_id
            end
            ## 
            ## Sets the perAppVPNProfileId property value. Profile ID of the Per-App VPN policy to be used to access emails from the native Mail client
            ## @param value Value to set for the perAppVPNProfileId property.
            ## @return a void
            ## 
            def per_app_v_p_n_profile_id=(value)
                @per_app_v_p_n_profile_id = value
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
                writer.write_boolean_value("blockMovingMessagesToOtherEmailAccounts", @block_moving_messages_to_other_email_accounts)
                writer.write_boolean_value("blockSendingEmailFromThirdPartyApps", @block_sending_email_from_third_party_apps)
                writer.write_boolean_value("blockSyncingRecentlyUsedEmailAddresses", @block_syncing_recently_used_email_addresses)
                writer.write_object_value("derivedCredentialSettings", @derived_credential_settings)
                writer.write_enum_value("durationOfEmailToSync", @duration_of_email_to_sync)
                writer.write_enum_value("easServices", @eas_services)
                writer.write_boolean_value("easServicesUserOverrideEnabled", @eas_services_user_override_enabled)
                writer.write_enum_value("emailAddressSource", @email_address_source)
                writer.write_enum_value("encryptionCertificateType", @encryption_certificate_type)
                writer.write_string_value("hostName", @host_name)
                writer.write_object_value("identityCertificate", @identity_certificate)
                writer.write_string_value("perAppVPNProfileId", @per_app_v_p_n_profile_id)
                writer.write_boolean_value("requireSmime", @require_smime)
                writer.write_boolean_value("requireSsl", @require_ssl)
                writer.write_enum_value("signingCertificateType", @signing_certificate_type)
                writer.write_boolean_value("smimeEnablePerMessageSwitch", @smime_enable_per_message_switch)
                writer.write_boolean_value("smimeEncryptByDefaultEnabled", @smime_encrypt_by_default_enabled)
                writer.write_boolean_value("smimeEncryptByDefaultUserOverrideEnabled", @smime_encrypt_by_default_user_override_enabled)
                writer.write_object_value("smimeEncryptionCertificate", @smime_encryption_certificate)
                writer.write_boolean_value("smimeEncryptionCertificateUserOverrideEnabled", @smime_encryption_certificate_user_override_enabled)
                writer.write_object_value("smimeSigningCertificate", @smime_signing_certificate)
                writer.write_boolean_value("smimeSigningCertificateUserOverrideEnabled", @smime_signing_certificate_user_override_enabled)
                writer.write_boolean_value("smimeSigningEnabled", @smime_signing_enabled)
                writer.write_boolean_value("smimeSigningUserOverrideEnabled", @smime_signing_user_override_enabled)
                writer.write_boolean_value("useOAuth", @use_o_auth)
            end
            ## 
            ## Gets the signingCertificateType property value. Signing Certificate type for this Email profile. Possible values are: none, certificate, derivedCredential.
            ## @return a email_certificate_type
            ## 
            def signing_certificate_type
                return @signing_certificate_type
            end
            ## 
            ## Sets the signingCertificateType property value. Signing Certificate type for this Email profile. Possible values are: none, certificate, derivedCredential.
            ## @param value Value to set for the signingCertificateType property.
            ## @return a void
            ## 
            def signing_certificate_type=(value)
                @signing_certificate_type = value
            end
            ## 
            ## Gets the smimeEnablePerMessageSwitch property value. Indicates whether or not to allow unencrypted emails.
            ## @return a boolean
            ## 
            def smime_enable_per_message_switch
                return @smime_enable_per_message_switch
            end
            ## 
            ## Sets the smimeEnablePerMessageSwitch property value. Indicates whether or not to allow unencrypted emails.
            ## @param value Value to set for the smimeEnablePerMessageSwitch property.
            ## @return a void
            ## 
            def smime_enable_per_message_switch=(value)
                @smime_enable_per_message_switch = value
            end
            ## 
            ## Gets the smimeEncryptByDefaultEnabled property value. If set to true S/MIME encryption is enabled by default.
            ## @return a boolean
            ## 
            def smime_encrypt_by_default_enabled
                return @smime_encrypt_by_default_enabled
            end
            ## 
            ## Sets the smimeEncryptByDefaultEnabled property value. If set to true S/MIME encryption is enabled by default.
            ## @param value Value to set for the smimeEncryptByDefaultEnabled property.
            ## @return a void
            ## 
            def smime_encrypt_by_default_enabled=(value)
                @smime_encrypt_by_default_enabled = value
            end
            ## 
            ## Gets the smimeEncryptByDefaultUserOverrideEnabled property value. If set to true, the user can toggle the encryption by default setting.
            ## @return a boolean
            ## 
            def smime_encrypt_by_default_user_override_enabled
                return @smime_encrypt_by_default_user_override_enabled
            end
            ## 
            ## Sets the smimeEncryptByDefaultUserOverrideEnabled property value. If set to true, the user can toggle the encryption by default setting.
            ## @param value Value to set for the smimeEncryptByDefaultUserOverrideEnabled property.
            ## @return a void
            ## 
            def smime_encrypt_by_default_user_override_enabled=(value)
                @smime_encrypt_by_default_user_override_enabled = value
            end
            ## 
            ## Gets the smimeEncryptionCertificate property value. S/MIME encryption certificate.
            ## @return a ios_certificate_profile
            ## 
            def smime_encryption_certificate
                return @smime_encryption_certificate
            end
            ## 
            ## Sets the smimeEncryptionCertificate property value. S/MIME encryption certificate.
            ## @param value Value to set for the smimeEncryptionCertificate property.
            ## @return a void
            ## 
            def smime_encryption_certificate=(value)
                @smime_encryption_certificate = value
            end
            ## 
            ## Gets the smimeEncryptionCertificateUserOverrideEnabled property value. If set to true the user can select the S/MIME encryption identity.
            ## @return a boolean
            ## 
            def smime_encryption_certificate_user_override_enabled
                return @smime_encryption_certificate_user_override_enabled
            end
            ## 
            ## Sets the smimeEncryptionCertificateUserOverrideEnabled property value. If set to true the user can select the S/MIME encryption identity.
            ## @param value Value to set for the smimeEncryptionCertificateUserOverrideEnabled property.
            ## @return a void
            ## 
            def smime_encryption_certificate_user_override_enabled=(value)
                @smime_encryption_certificate_user_override_enabled = value
            end
            ## 
            ## Gets the smimeSigningCertificate property value. S/MIME signing certificate.
            ## @return a ios_certificate_profile
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
            ## Gets the smimeSigningCertificateUserOverrideEnabled property value. If set to true, the user can select the signing identity.
            ## @return a boolean
            ## 
            def smime_signing_certificate_user_override_enabled
                return @smime_signing_certificate_user_override_enabled
            end
            ## 
            ## Sets the smimeSigningCertificateUserOverrideEnabled property value. If set to true, the user can select the signing identity.
            ## @param value Value to set for the smimeSigningCertificateUserOverrideEnabled property.
            ## @return a void
            ## 
            def smime_signing_certificate_user_override_enabled=(value)
                @smime_signing_certificate_user_override_enabled = value
            end
            ## 
            ## Gets the smimeSigningEnabled property value. If set to true S/MIME signing is enabled for this account
            ## @return a boolean
            ## 
            def smime_signing_enabled
                return @smime_signing_enabled
            end
            ## 
            ## Sets the smimeSigningEnabled property value. If set to true S/MIME signing is enabled for this account
            ## @param value Value to set for the smimeSigningEnabled property.
            ## @return a void
            ## 
            def smime_signing_enabled=(value)
                @smime_signing_enabled = value
            end
            ## 
            ## Gets the smimeSigningUserOverrideEnabled property value. If set to true, the user can toggle S/MIME signing on or off.
            ## @return a boolean
            ## 
            def smime_signing_user_override_enabled
                return @smime_signing_user_override_enabled
            end
            ## 
            ## Sets the smimeSigningUserOverrideEnabled property value. If set to true, the user can toggle S/MIME signing on or off.
            ## @param value Value to set for the smimeSigningUserOverrideEnabled property.
            ## @return a void
            ## 
            def smime_signing_user_override_enabled=(value)
                @smime_signing_user_override_enabled = value
            end
            ## 
            ## Gets the useOAuth property value. Specifies whether the connection should use OAuth for authentication.
            ## @return a boolean
            ## 
            def use_o_auth
                return @use_o_auth
            end
            ## 
            ## Sets the useOAuth property value. Specifies whether the connection should use OAuth for authentication.
            ## @param value Value to set for the useOAuth property.
            ## @return a void
            ## 
            def use_o_auth=(value)
                @use_o_auth = value
            end
        end
    end
end
