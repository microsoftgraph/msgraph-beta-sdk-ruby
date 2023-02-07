require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Enrollment Profile used to enroll Android Enterprise devices using Google's Cloud Management.
    class AndroidDeviceOwnerEnrollmentProfile < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Tenant GUID the enrollment profile belongs to.
        @account_id
        ## 
        # Boolean that indicates that the Wi-Fi network should be configured during device provisioning. When set to TRUE, device provisioning will use Wi-Fi related properties to automatically connect to Wi-Fi networks. When set to FALSE or undefined, other Wi-Fi related properties will be ignored. Default value is TRUE. Returned by default.
        @configure_wifi
        ## 
        # Date time the enrollment profile was created.
        @created_date_time
        ## 
        # Description for the enrollment profile.
        @description
        ## 
        # Display name for the enrollment profile.
        @display_name
        ## 
        # Total number of Android devices that have enrolled using this enrollment profile.
        @enrolled_device_count
        ## 
        # The enrollment mode for an enrollment profile.
        @enrollment_mode
        ## 
        # The enrollment token type for an enrollment profile.
        @enrollment_token_type
        ## 
        # Total number of AOSP devices that have enrolled using the current token.
        @enrollment_token_usage_count
        ## 
        # Boolean indicating if this profile is an Android AOSP for Teams device profile.
        @is_teams_device_profile
        ## 
        # Date time the enrollment profile was last modified.
        @last_modified_date_time
        ## 
        # String used to generate a QR code for the token.
        @qr_code_content
        ## 
        # String used to generate a QR code for the token.
        @qr_code_image
        ## 
        # List of Scope Tags for this Entity instance.
        @role_scope_tag_ids
        ## 
        # Date time the most recently created token was created.
        @token_creation_date_time
        ## 
        # Date time the most recently created token will expire.
        @token_expiration_date_time
        ## 
        # Value of the most recently created token for this enrollment profile.
        @token_value
        ## 
        # Boolean that indicates if hidden wifi networks are enabled
        @wifi_hidden
        ## 
        # String that contains the wi-fi login password
        @wifi_password
        ## 
        # This enum represents Wi-Fi Security Types for Android Device Owner AOSP Scenarios.
        @wifi_security_type
        ## 
        # String that contains the wi-fi login ssid
        @wifi_ssid
        ## 
        ## Gets the accountId property value. Tenant GUID the enrollment profile belongs to.
        ## @return a string
        ## 
        def account_id
            return @account_id
        end
        ## 
        ## Sets the accountId property value. Tenant GUID the enrollment profile belongs to.
        ## @param value Value to set for the account_id property.
        ## @return a void
        ## 
        def account_id=(value)
            @account_id = value
        end
        ## 
        ## Gets the configureWifi property value. Boolean that indicates that the Wi-Fi network should be configured during device provisioning. When set to TRUE, device provisioning will use Wi-Fi related properties to automatically connect to Wi-Fi networks. When set to FALSE or undefined, other Wi-Fi related properties will be ignored. Default value is TRUE. Returned by default.
        ## @return a boolean
        ## 
        def configure_wifi
            return @configure_wifi
        end
        ## 
        ## Sets the configureWifi property value. Boolean that indicates that the Wi-Fi network should be configured during device provisioning. When set to TRUE, device provisioning will use Wi-Fi related properties to automatically connect to Wi-Fi networks. When set to FALSE or undefined, other Wi-Fi related properties will be ignored. Default value is TRUE. Returned by default.
        ## @param value Value to set for the configure_wifi property.
        ## @return a void
        ## 
        def configure_wifi=(value)
            @configure_wifi = value
        end
        ## 
        ## Instantiates a new androidDeviceOwnerEnrollmentProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. Date time the enrollment profile was created.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. Date time the enrollment profile was created.
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_enrollment_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerEnrollmentProfile.new
        end
        ## 
        ## Gets the description property value. Description for the enrollment profile.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Description for the enrollment profile.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Display name for the enrollment profile.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Display name for the enrollment profile.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the enrolledDeviceCount property value. Total number of Android devices that have enrolled using this enrollment profile.
        ## @return a integer
        ## 
        def enrolled_device_count
            return @enrolled_device_count
        end
        ## 
        ## Sets the enrolledDeviceCount property value. Total number of Android devices that have enrolled using this enrollment profile.
        ## @param value Value to set for the enrolled_device_count property.
        ## @return a void
        ## 
        def enrolled_device_count=(value)
            @enrolled_device_count = value
        end
        ## 
        ## Gets the enrollmentMode property value. The enrollment mode for an enrollment profile.
        ## @return a android_device_owner_enrollment_mode
        ## 
        def enrollment_mode
            return @enrollment_mode
        end
        ## 
        ## Sets the enrollmentMode property value. The enrollment mode for an enrollment profile.
        ## @param value Value to set for the enrollment_mode property.
        ## @return a void
        ## 
        def enrollment_mode=(value)
            @enrollment_mode = value
        end
        ## 
        ## Gets the enrollmentTokenType property value. The enrollment token type for an enrollment profile.
        ## @return a android_device_owner_enrollment_token_type
        ## 
        def enrollment_token_type
            return @enrollment_token_type
        end
        ## 
        ## Sets the enrollmentTokenType property value. The enrollment token type for an enrollment profile.
        ## @param value Value to set for the enrollment_token_type property.
        ## @return a void
        ## 
        def enrollment_token_type=(value)
            @enrollment_token_type = value
        end
        ## 
        ## Gets the enrollmentTokenUsageCount property value. Total number of AOSP devices that have enrolled using the current token.
        ## @return a integer
        ## 
        def enrollment_token_usage_count
            return @enrollment_token_usage_count
        end
        ## 
        ## Sets the enrollmentTokenUsageCount property value. Total number of AOSP devices that have enrolled using the current token.
        ## @param value Value to set for the enrollment_token_usage_count property.
        ## @return a void
        ## 
        def enrollment_token_usage_count=(value)
            @enrollment_token_usage_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "accountId" => lambda {|n| @account_id = n.get_string_value() },
                "configureWifi" => lambda {|n| @configure_wifi = n.get_boolean_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "enrolledDeviceCount" => lambda {|n| @enrolled_device_count = n.get_number_value() },
                "enrollmentMode" => lambda {|n| @enrollment_mode = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerEnrollmentMode) },
                "enrollmentTokenType" => lambda {|n| @enrollment_token_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerEnrollmentTokenType) },
                "enrollmentTokenUsageCount" => lambda {|n| @enrollment_token_usage_count = n.get_number_value() },
                "isTeamsDeviceProfile" => lambda {|n| @is_teams_device_profile = n.get_boolean_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "qrCodeContent" => lambda {|n| @qr_code_content = n.get_string_value() },
                "qrCodeImage" => lambda {|n| @qr_code_image = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                "tokenCreationDateTime" => lambda {|n| @token_creation_date_time = n.get_date_time_value() },
                "tokenExpirationDateTime" => lambda {|n| @token_expiration_date_time = n.get_date_time_value() },
                "tokenValue" => lambda {|n| @token_value = n.get_string_value() },
                "wifiHidden" => lambda {|n| @wifi_hidden = n.get_boolean_value() },
                "wifiPassword" => lambda {|n| @wifi_password = n.get_string_value() },
                "wifiSecurityType" => lambda {|n| @wifi_security_type = n.get_enum_value(MicrosoftGraphBeta::Models::AospWifiSecurityType) },
                "wifiSsid" => lambda {|n| @wifi_ssid = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isTeamsDeviceProfile property value. Boolean indicating if this profile is an Android AOSP for Teams device profile.
        ## @return a boolean
        ## 
        def is_teams_device_profile
            return @is_teams_device_profile
        end
        ## 
        ## Sets the isTeamsDeviceProfile property value. Boolean indicating if this profile is an Android AOSP for Teams device profile.
        ## @param value Value to set for the is_teams_device_profile property.
        ## @return a void
        ## 
        def is_teams_device_profile=(value)
            @is_teams_device_profile = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. Date time the enrollment profile was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. Date time the enrollment profile was last modified.
        ## @param value Value to set for the last_modified_date_time property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the qrCodeContent property value. String used to generate a QR code for the token.
        ## @return a string
        ## 
        def qr_code_content
            return @qr_code_content
        end
        ## 
        ## Sets the qrCodeContent property value. String used to generate a QR code for the token.
        ## @param value Value to set for the qr_code_content property.
        ## @return a void
        ## 
        def qr_code_content=(value)
            @qr_code_content = value
        end
        ## 
        ## Gets the qrCodeImage property value. String used to generate a QR code for the token.
        ## @return a mime_content
        ## 
        def qr_code_image
            return @qr_code_image
        end
        ## 
        ## Sets the qrCodeImage property value. String used to generate a QR code for the token.
        ## @param value Value to set for the qr_code_image property.
        ## @return a void
        ## 
        def qr_code_image=(value)
            @qr_code_image = value
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
        ## @param value Value to set for the role_scope_tag_ids property.
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
            writer.write_string_value("accountId", @account_id)
            writer.write_boolean_value("configureWifi", @configure_wifi)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_number_value("enrolledDeviceCount", @enrolled_device_count)
            writer.write_enum_value("enrollmentMode", @enrollment_mode)
            writer.write_enum_value("enrollmentTokenType", @enrollment_token_type)
            writer.write_number_value("enrollmentTokenUsageCount", @enrollment_token_usage_count)
            writer.write_boolean_value("isTeamsDeviceProfile", @is_teams_device_profile)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("qrCodeContent", @qr_code_content)
            writer.write_object_value("qrCodeImage", @qr_code_image)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_date_time_value("tokenCreationDateTime", @token_creation_date_time)
            writer.write_date_time_value("tokenExpirationDateTime", @token_expiration_date_time)
            writer.write_string_value("tokenValue", @token_value)
            writer.write_boolean_value("wifiHidden", @wifi_hidden)
            writer.write_string_value("wifiPassword", @wifi_password)
            writer.write_enum_value("wifiSecurityType", @wifi_security_type)
            writer.write_string_value("wifiSsid", @wifi_ssid)
        end
        ## 
        ## Gets the tokenCreationDateTime property value. Date time the most recently created token was created.
        ## @return a date_time
        ## 
        def token_creation_date_time
            return @token_creation_date_time
        end
        ## 
        ## Sets the tokenCreationDateTime property value. Date time the most recently created token was created.
        ## @param value Value to set for the token_creation_date_time property.
        ## @return a void
        ## 
        def token_creation_date_time=(value)
            @token_creation_date_time = value
        end
        ## 
        ## Gets the tokenExpirationDateTime property value. Date time the most recently created token will expire.
        ## @return a date_time
        ## 
        def token_expiration_date_time
            return @token_expiration_date_time
        end
        ## 
        ## Sets the tokenExpirationDateTime property value. Date time the most recently created token will expire.
        ## @param value Value to set for the token_expiration_date_time property.
        ## @return a void
        ## 
        def token_expiration_date_time=(value)
            @token_expiration_date_time = value
        end
        ## 
        ## Gets the tokenValue property value. Value of the most recently created token for this enrollment profile.
        ## @return a string
        ## 
        def token_value
            return @token_value
        end
        ## 
        ## Sets the tokenValue property value. Value of the most recently created token for this enrollment profile.
        ## @param value Value to set for the token_value property.
        ## @return a void
        ## 
        def token_value=(value)
            @token_value = value
        end
        ## 
        ## Gets the wifiHidden property value. Boolean that indicates if hidden wifi networks are enabled
        ## @return a boolean
        ## 
        def wifi_hidden
            return @wifi_hidden
        end
        ## 
        ## Sets the wifiHidden property value. Boolean that indicates if hidden wifi networks are enabled
        ## @param value Value to set for the wifi_hidden property.
        ## @return a void
        ## 
        def wifi_hidden=(value)
            @wifi_hidden = value
        end
        ## 
        ## Gets the wifiPassword property value. String that contains the wi-fi login password
        ## @return a string
        ## 
        def wifi_password
            return @wifi_password
        end
        ## 
        ## Sets the wifiPassword property value. String that contains the wi-fi login password
        ## @param value Value to set for the wifi_password property.
        ## @return a void
        ## 
        def wifi_password=(value)
            @wifi_password = value
        end
        ## 
        ## Gets the wifiSecurityType property value. This enum represents Wi-Fi Security Types for Android Device Owner AOSP Scenarios.
        ## @return a aosp_wifi_security_type
        ## 
        def wifi_security_type
            return @wifi_security_type
        end
        ## 
        ## Sets the wifiSecurityType property value. This enum represents Wi-Fi Security Types for Android Device Owner AOSP Scenarios.
        ## @param value Value to set for the wifi_security_type property.
        ## @return a void
        ## 
        def wifi_security_type=(value)
            @wifi_security_type = value
        end
        ## 
        ## Gets the wifiSsid property value. String that contains the wi-fi login ssid
        ## @return a string
        ## 
        def wifi_ssid
            return @wifi_ssid
        end
        ## 
        ## Sets the wifiSsid property value. String that contains the wi-fi login ssid
        ## @param value Value to set for the wifi_ssid property.
        ## @return a void
        ## 
        def wifi_ssid=(value)
            @wifi_ssid = value
        end
    end
end
