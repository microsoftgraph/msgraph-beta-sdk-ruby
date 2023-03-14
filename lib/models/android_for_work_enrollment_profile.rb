require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidForWorkEnrollmentProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Tenant GUID the enrollment profile belongs to.
            @account_id
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
            # Date time the enrollment profile was last modified.
            @last_modified_date_time
            ## 
            # String used to generate a QR code for the token.
            @qr_code_content
            ## 
            # String used to generate a QR code for the token.
            @qr_code_image
            ## 
            # Date time the most recently created token will expire.
            @token_expiration_date_time
            ## 
            # Value of the most recently created token for this enrollment profile.
            @token_value
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
            ## Instantiates a new AndroidForWorkEnrollmentProfile and sets the default values.
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
            ## @return a android_for_work_enrollment_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidForWorkEnrollmentProfile.new
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountId" => lambda {|n| @account_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enrolledDeviceCount" => lambda {|n| @enrolled_device_count = n.get_number_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "qrCodeContent" => lambda {|n| @qr_code_content = n.get_string_value() },
                    "qrCodeImage" => lambda {|n| @qr_code_image = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "tokenExpirationDateTime" => lambda {|n| @token_expiration_date_time = n.get_date_time_value() },
                    "tokenValue" => lambda {|n| @token_value = n.get_string_value() },
                })
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("accountId", @account_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("enrolledDeviceCount", @enrolled_device_count)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("qrCodeContent", @qr_code_content)
                writer.write_object_value("qrCodeImage", @qr_code_image)
                writer.write_date_time_value("tokenExpirationDateTime", @token_expiration_date_time)
                writer.write_string_value("tokenValue", @token_value)
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
        end
    end
end
