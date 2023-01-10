require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The depOnboardingSetting represents an instance of the Apple DEP service being onboarded to Intune. The onboarded service instance manages an Apple Token used to synchronize data between Apple and Intune.
    class DepOnboardingSetting < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Apple ID used to obtain the current token.
        @apple_identifier
        ## 
        # Consent granted for data sharing with Apple Dep Service
        @data_sharing_consent_granted
        ## 
        # Default iOS Enrollment Profile
        @default_ios_enrollment_profile
        ## 
        # Default MacOs Enrollment Profile
        @default_mac_os_enrollment_profile
        ## 
        # The enrollment profiles.
        @enrollment_profiles
        ## 
        # The imported Apple device identities.
        @imported_apple_device_identities
        ## 
        # When the service was onboarded.
        @last_modified_date_time
        ## 
        # When the service last syned with Intune
        @last_successful_sync_date_time
        ## 
        # Error code reported by Apple during last dep sync.
        @last_sync_error_code
        ## 
        # When Intune last requested a sync.
        @last_sync_triggered_date_time
        ## 
        # List of Scope Tags for this Entity instance.
        @role_scope_tag_ids
        ## 
        # Whether or not the Dep token sharing is enabled with the School Data Sync service.
        @share_token_with_school_data_sync_service
        ## 
        # Gets synced device count
        @synced_device_count
        ## 
        # When the token will expire.
        @token_expiration_date_time
        ## 
        # Friendly Name for Dep Token
        @token_name
        ## 
        # The tokenType property
        @token_type
        ## 
        ## Gets the appleIdentifier property value. The Apple ID used to obtain the current token.
        ## @return a string
        ## 
        def apple_identifier
            return @apple_identifier
        end
        ## 
        ## Sets the appleIdentifier property value. The Apple ID used to obtain the current token.
        ## @param value Value to set for the appleIdentifier property.
        ## @return a void
        ## 
        def apple_identifier=(value)
            @apple_identifier = value
        end
        ## 
        ## Instantiates a new depOnboardingSetting and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a dep_onboarding_setting
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DepOnboardingSetting.new
        end
        ## 
        ## Gets the dataSharingConsentGranted property value. Consent granted for data sharing with Apple Dep Service
        ## @return a boolean
        ## 
        def data_sharing_consent_granted
            return @data_sharing_consent_granted
        end
        ## 
        ## Sets the dataSharingConsentGranted property value. Consent granted for data sharing with Apple Dep Service
        ## @param value Value to set for the dataSharingConsentGranted property.
        ## @return a void
        ## 
        def data_sharing_consent_granted=(value)
            @data_sharing_consent_granted = value
        end
        ## 
        ## Gets the defaultIosEnrollmentProfile property value. Default iOS Enrollment Profile
        ## @return a dep_i_o_s_enrollment_profile
        ## 
        def default_ios_enrollment_profile
            return @default_ios_enrollment_profile
        end
        ## 
        ## Sets the defaultIosEnrollmentProfile property value. Default iOS Enrollment Profile
        ## @param value Value to set for the defaultIosEnrollmentProfile property.
        ## @return a void
        ## 
        def default_ios_enrollment_profile=(value)
            @default_ios_enrollment_profile = value
        end
        ## 
        ## Gets the defaultMacOsEnrollmentProfile property value. Default MacOs Enrollment Profile
        ## @return a dep_mac_o_s_enrollment_profile
        ## 
        def default_mac_os_enrollment_profile
            return @default_mac_os_enrollment_profile
        end
        ## 
        ## Sets the defaultMacOsEnrollmentProfile property value. Default MacOs Enrollment Profile
        ## @param value Value to set for the defaultMacOsEnrollmentProfile property.
        ## @return a void
        ## 
        def default_mac_os_enrollment_profile=(value)
            @default_mac_os_enrollment_profile = value
        end
        ## 
        ## Gets the enrollmentProfiles property value. The enrollment profiles.
        ## @return a enrollment_profile
        ## 
        def enrollment_profiles
            return @enrollment_profiles
        end
        ## 
        ## Sets the enrollmentProfiles property value. The enrollment profiles.
        ## @param value Value to set for the enrollmentProfiles property.
        ## @return a void
        ## 
        def enrollment_profiles=(value)
            @enrollment_profiles = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appleIdentifier" => lambda {|n| @apple_identifier = n.get_string_value() },
                "dataSharingConsentGranted" => lambda {|n| @data_sharing_consent_granted = n.get_boolean_value() },
                "defaultIosEnrollmentProfile" => lambda {|n| @default_ios_enrollment_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DepIOSEnrollmentProfile.create_from_discriminator_value(pn) }) },
                "defaultMacOsEnrollmentProfile" => lambda {|n| @default_mac_os_enrollment_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DepMacOSEnrollmentProfile.create_from_discriminator_value(pn) }) },
                "enrollmentProfiles" => lambda {|n| @enrollment_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EnrollmentProfile.create_from_discriminator_value(pn) }) },
                "importedAppleDeviceIdentities" => lambda {|n| @imported_apple_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ImportedAppleDeviceIdentity.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "lastSuccessfulSyncDateTime" => lambda {|n| @last_successful_sync_date_time = n.get_date_time_value() },
                "lastSyncErrorCode" => lambda {|n| @last_sync_error_code = n.get_number_value() },
                "lastSyncTriggeredDateTime" => lambda {|n| @last_sync_triggered_date_time = n.get_date_time_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                "shareTokenWithSchoolDataSyncService" => lambda {|n| @share_token_with_school_data_sync_service = n.get_boolean_value() },
                "syncedDeviceCount" => lambda {|n| @synced_device_count = n.get_number_value() },
                "tokenExpirationDateTime" => lambda {|n| @token_expiration_date_time = n.get_date_time_value() },
                "tokenName" => lambda {|n| @token_name = n.get_string_value() },
                "tokenType" => lambda {|n| @token_type = n.get_enum_value(MicrosoftGraphBeta::Models::DepTokenType) },
            })
        end
        ## 
        ## Gets the importedAppleDeviceIdentities property value. The imported Apple device identities.
        ## @return a imported_apple_device_identity
        ## 
        def imported_apple_device_identities
            return @imported_apple_device_identities
        end
        ## 
        ## Sets the importedAppleDeviceIdentities property value. The imported Apple device identities.
        ## @param value Value to set for the importedAppleDeviceIdentities property.
        ## @return a void
        ## 
        def imported_apple_device_identities=(value)
            @imported_apple_device_identities = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. When the service was onboarded.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. When the service was onboarded.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the lastSuccessfulSyncDateTime property value. When the service last syned with Intune
        ## @return a date_time
        ## 
        def last_successful_sync_date_time
            return @last_successful_sync_date_time
        end
        ## 
        ## Sets the lastSuccessfulSyncDateTime property value. When the service last syned with Intune
        ## @param value Value to set for the lastSuccessfulSyncDateTime property.
        ## @return a void
        ## 
        def last_successful_sync_date_time=(value)
            @last_successful_sync_date_time = value
        end
        ## 
        ## Gets the lastSyncErrorCode property value. Error code reported by Apple during last dep sync.
        ## @return a integer
        ## 
        def last_sync_error_code
            return @last_sync_error_code
        end
        ## 
        ## Sets the lastSyncErrorCode property value. Error code reported by Apple during last dep sync.
        ## @param value Value to set for the lastSyncErrorCode property.
        ## @return a void
        ## 
        def last_sync_error_code=(value)
            @last_sync_error_code = value
        end
        ## 
        ## Gets the lastSyncTriggeredDateTime property value. When Intune last requested a sync.
        ## @return a date_time
        ## 
        def last_sync_triggered_date_time
            return @last_sync_triggered_date_time
        end
        ## 
        ## Sets the lastSyncTriggeredDateTime property value. When Intune last requested a sync.
        ## @param value Value to set for the lastSyncTriggeredDateTime property.
        ## @return a void
        ## 
        def last_sync_triggered_date_time=(value)
            @last_sync_triggered_date_time = value
        end
        ## 
        ## Gets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
        ## @return a string
        ## 
        def role_scope_tag_ids
            return @role_scope_tag_ids
        end
        ## 
        ## Sets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
        ## @param value Value to set for the roleScopeTagIds property.
        ## @return a void
        ## 
        def role_scope_tag_ids=(value)
            @role_scope_tag_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("appleIdentifier", @apple_identifier)
            writer.write_boolean_value("dataSharingConsentGranted", @data_sharing_consent_granted)
            writer.write_object_value("defaultIosEnrollmentProfile", @default_ios_enrollment_profile)
            writer.write_object_value("defaultMacOsEnrollmentProfile", @default_mac_os_enrollment_profile)
            writer.write_collection_of_object_values("enrollmentProfiles", @enrollment_profiles)
            writer.write_collection_of_object_values("importedAppleDeviceIdentities", @imported_apple_device_identities)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_date_time_value("lastSuccessfulSyncDateTime", @last_successful_sync_date_time)
            writer.write_number_value("lastSyncErrorCode", @last_sync_error_code)
            writer.write_date_time_value("lastSyncTriggeredDateTime", @last_sync_triggered_date_time)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_boolean_value("shareTokenWithSchoolDataSyncService", @share_token_with_school_data_sync_service)
            writer.write_number_value("syncedDeviceCount", @synced_device_count)
            writer.write_date_time_value("tokenExpirationDateTime", @token_expiration_date_time)
            writer.write_string_value("tokenName", @token_name)
            writer.write_enum_value("tokenType", @token_type)
        end
        ## 
        ## Gets the shareTokenWithSchoolDataSyncService property value. Whether or not the Dep token sharing is enabled with the School Data Sync service.
        ## @return a boolean
        ## 
        def share_token_with_school_data_sync_service
            return @share_token_with_school_data_sync_service
        end
        ## 
        ## Sets the shareTokenWithSchoolDataSyncService property value. Whether or not the Dep token sharing is enabled with the School Data Sync service.
        ## @param value Value to set for the shareTokenWithSchoolDataSyncService property.
        ## @return a void
        ## 
        def share_token_with_school_data_sync_service=(value)
            @share_token_with_school_data_sync_service = value
        end
        ## 
        ## Gets the syncedDeviceCount property value. Gets synced device count
        ## @return a integer
        ## 
        def synced_device_count
            return @synced_device_count
        end
        ## 
        ## Sets the syncedDeviceCount property value. Gets synced device count
        ## @param value Value to set for the syncedDeviceCount property.
        ## @return a void
        ## 
        def synced_device_count=(value)
            @synced_device_count = value
        end
        ## 
        ## Gets the tokenExpirationDateTime property value. When the token will expire.
        ## @return a date_time
        ## 
        def token_expiration_date_time
            return @token_expiration_date_time
        end
        ## 
        ## Sets the tokenExpirationDateTime property value. When the token will expire.
        ## @param value Value to set for the tokenExpirationDateTime property.
        ## @return a void
        ## 
        def token_expiration_date_time=(value)
            @token_expiration_date_time = value
        end
        ## 
        ## Gets the tokenName property value. Friendly Name for Dep Token
        ## @return a string
        ## 
        def token_name
            return @token_name
        end
        ## 
        ## Sets the tokenName property value. Friendly Name for Dep Token
        ## @param value Value to set for the tokenName property.
        ## @return a void
        ## 
        def token_name=(value)
            @token_name = value
        end
        ## 
        ## Gets the tokenType property value. The tokenType property
        ## @return a dep_token_type
        ## 
        def token_type
            return @token_type
        end
        ## 
        ## Sets the tokenType property value. The tokenType property
        ## @param value Value to set for the tokenType property.
        ## @return a void
        ## 
        def token_type=(value)
            @token_type = value
        end
    end
end
