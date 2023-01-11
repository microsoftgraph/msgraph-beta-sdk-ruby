require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class StrongAuthenticationPhoneAppDetail < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The authenticationType property
        @authentication_type
        ## 
        # The authenticatorFlavor property
        @authenticator_flavor
        ## 
        # The deviceId property
        @device_id
        ## 
        # The deviceName property
        @device_name
        ## 
        # The deviceTag property
        @device_tag
        ## 
        # The deviceToken property
        @device_token
        ## 
        # The hashFunction property
        @hash_function
        ## 
        # The lastAuthenticatedDateTime property
        @last_authenticated_date_time
        ## 
        # The notificationType property
        @notification_type
        ## 
        # The oathSecretKey property
        @oath_secret_key
        ## 
        # The oathTokenMetadata property
        @oath_token_metadata
        ## 
        # The oathTokenTimeDriftInSeconds property
        @oath_token_time_drift_in_seconds
        ## 
        # The phoneAppVersion property
        @phone_app_version
        ## 
        # The tenantDeviceId property
        @tenant_device_id
        ## 
        # The tokenGenerationIntervalInSeconds property
        @token_generation_interval_in_seconds
        ## 
        ## Gets the authenticationType property value. The authenticationType property
        ## @return a string
        ## 
        def authentication_type
            return @authentication_type
        end
        ## 
        ## Sets the authenticationType property value. The authenticationType property
        ## @param value Value to set for the authenticationType property.
        ## @return a void
        ## 
        def authentication_type=(value)
            @authentication_type = value
        end
        ## 
        ## Gets the authenticatorFlavor property value. The authenticatorFlavor property
        ## @return a string
        ## 
        def authenticator_flavor
            return @authenticator_flavor
        end
        ## 
        ## Sets the authenticatorFlavor property value. The authenticatorFlavor property
        ## @param value Value to set for the authenticatorFlavor property.
        ## @return a void
        ## 
        def authenticator_flavor=(value)
            @authenticator_flavor = value
        end
        ## 
        ## Instantiates a new StrongAuthenticationPhoneAppDetail and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a strong_authentication_phone_app_detail
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return StrongAuthenticationPhoneAppDetail.new
        end
        ## 
        ## Gets the deviceId property value. The deviceId property
        ## @return a guid
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The deviceId property
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the deviceName property value. The deviceName property
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. The deviceName property
        ## @param value Value to set for the deviceName property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## Gets the deviceTag property value. The deviceTag property
        ## @return a string
        ## 
        def device_tag
            return @device_tag
        end
        ## 
        ## Sets the deviceTag property value. The deviceTag property
        ## @param value Value to set for the deviceTag property.
        ## @return a void
        ## 
        def device_tag=(value)
            @device_tag = value
        end
        ## 
        ## Gets the deviceToken property value. The deviceToken property
        ## @return a string
        ## 
        def device_token
            return @device_token
        end
        ## 
        ## Sets the deviceToken property value. The deviceToken property
        ## @param value Value to set for the deviceToken property.
        ## @return a void
        ## 
        def device_token=(value)
            @device_token = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "authenticationType" => lambda {|n| @authentication_type = n.get_string_value() },
                "authenticatorFlavor" => lambda {|n| @authenticator_flavor = n.get_string_value() },
                "deviceId" => lambda {|n| @device_id = n.get_guid_value() },
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "deviceTag" => lambda {|n| @device_tag = n.get_string_value() },
                "deviceToken" => lambda {|n| @device_token = n.get_string_value() },
                "hashFunction" => lambda {|n| @hash_function = n.get_string_value() },
                "lastAuthenticatedDateTime" => lambda {|n| @last_authenticated_date_time = n.get_date_time_value() },
                "notificationType" => lambda {|n| @notification_type = n.get_string_value() },
                "oathSecretKey" => lambda {|n| @oath_secret_key = n.get_string_value() },
                "oathTokenMetadata" => lambda {|n| @oath_token_metadata = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OathTokenMetadata.create_from_discriminator_value(pn) }) },
                "oathTokenTimeDriftInSeconds" => lambda {|n| @oath_token_time_drift_in_seconds = n.get_number_value() },
                "phoneAppVersion" => lambda {|n| @phone_app_version = n.get_string_value() },
                "tenantDeviceId" => lambda {|n| @tenant_device_id = n.get_string_value() },
                "tokenGenerationIntervalInSeconds" => lambda {|n| @token_generation_interval_in_seconds = n.get_number_value() },
            })
        end
        ## 
        ## Gets the hashFunction property value. The hashFunction property
        ## @return a string
        ## 
        def hash_function
            return @hash_function
        end
        ## 
        ## Sets the hashFunction property value. The hashFunction property
        ## @param value Value to set for the hashFunction property.
        ## @return a void
        ## 
        def hash_function=(value)
            @hash_function = value
        end
        ## 
        ## Gets the lastAuthenticatedDateTime property value. The lastAuthenticatedDateTime property
        ## @return a date_time
        ## 
        def last_authenticated_date_time
            return @last_authenticated_date_time
        end
        ## 
        ## Sets the lastAuthenticatedDateTime property value. The lastAuthenticatedDateTime property
        ## @param value Value to set for the lastAuthenticatedDateTime property.
        ## @return a void
        ## 
        def last_authenticated_date_time=(value)
            @last_authenticated_date_time = value
        end
        ## 
        ## Gets the notificationType property value. The notificationType property
        ## @return a string
        ## 
        def notification_type
            return @notification_type
        end
        ## 
        ## Sets the notificationType property value. The notificationType property
        ## @param value Value to set for the notificationType property.
        ## @return a void
        ## 
        def notification_type=(value)
            @notification_type = value
        end
        ## 
        ## Gets the oathSecretKey property value. The oathSecretKey property
        ## @return a string
        ## 
        def oath_secret_key
            return @oath_secret_key
        end
        ## 
        ## Sets the oathSecretKey property value. The oathSecretKey property
        ## @param value Value to set for the oathSecretKey property.
        ## @return a void
        ## 
        def oath_secret_key=(value)
            @oath_secret_key = value
        end
        ## 
        ## Gets the oathTokenMetadata property value. The oathTokenMetadata property
        ## @return a oath_token_metadata
        ## 
        def oath_token_metadata
            return @oath_token_metadata
        end
        ## 
        ## Sets the oathTokenMetadata property value. The oathTokenMetadata property
        ## @param value Value to set for the oathTokenMetadata property.
        ## @return a void
        ## 
        def oath_token_metadata=(value)
            @oath_token_metadata = value
        end
        ## 
        ## Gets the oathTokenTimeDriftInSeconds property value. The oathTokenTimeDriftInSeconds property
        ## @return a integer
        ## 
        def oath_token_time_drift_in_seconds
            return @oath_token_time_drift_in_seconds
        end
        ## 
        ## Sets the oathTokenTimeDriftInSeconds property value. The oathTokenTimeDriftInSeconds property
        ## @param value Value to set for the oathTokenTimeDriftInSeconds property.
        ## @return a void
        ## 
        def oath_token_time_drift_in_seconds=(value)
            @oath_token_time_drift_in_seconds = value
        end
        ## 
        ## Gets the phoneAppVersion property value. The phoneAppVersion property
        ## @return a string
        ## 
        def phone_app_version
            return @phone_app_version
        end
        ## 
        ## Sets the phoneAppVersion property value. The phoneAppVersion property
        ## @param value Value to set for the phoneAppVersion property.
        ## @return a void
        ## 
        def phone_app_version=(value)
            @phone_app_version = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("authenticationType", @authentication_type)
            writer.write_string_value("authenticatorFlavor", @authenticator_flavor)
            writer.write_guid_value("deviceId", @device_id)
            writer.write_string_value("deviceName", @device_name)
            writer.write_string_value("deviceTag", @device_tag)
            writer.write_string_value("deviceToken", @device_token)
            writer.write_string_value("hashFunction", @hash_function)
            writer.write_date_time_value("lastAuthenticatedDateTime", @last_authenticated_date_time)
            writer.write_string_value("notificationType", @notification_type)
            writer.write_string_value("oathSecretKey", @oath_secret_key)
            writer.write_object_value("oathTokenMetadata", @oath_token_metadata)
            writer.write_number_value("oathTokenTimeDriftInSeconds", @oath_token_time_drift_in_seconds)
            writer.write_string_value("phoneAppVersion", @phone_app_version)
            writer.write_string_value("tenantDeviceId", @tenant_device_id)
            writer.write_number_value("tokenGenerationIntervalInSeconds", @token_generation_interval_in_seconds)
        end
        ## 
        ## Gets the tenantDeviceId property value. The tenantDeviceId property
        ## @return a string
        ## 
        def tenant_device_id
            return @tenant_device_id
        end
        ## 
        ## Sets the tenantDeviceId property value. The tenantDeviceId property
        ## @param value Value to set for the tenantDeviceId property.
        ## @return a void
        ## 
        def tenant_device_id=(value)
            @tenant_device_id = value
        end
        ## 
        ## Gets the tokenGenerationIntervalInSeconds property value. The tokenGenerationIntervalInSeconds property
        ## @return a integer
        ## 
        def token_generation_interval_in_seconds
            return @token_generation_interval_in_seconds
        end
        ## 
        ## Sets the tokenGenerationIntervalInSeconds property value. The tokenGenerationIntervalInSeconds property
        ## @param value Value to set for the tokenGenerationIntervalInSeconds property.
        ## @return a void
        ## 
        def token_generation_interval_in_seconds=(value)
            @token_generation_interval_in_seconds = value
        end
    end
end
