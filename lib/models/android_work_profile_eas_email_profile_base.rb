require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base for Android Work Profile EAS Email profiles
        class AndroidWorkProfileEasEmailProfileBase < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Exchange Active Sync authentication method.
            @authentication_method
            ## 
            # Possible values for email sync duration.
            @duration_of_email_to_sync
            ## 
            # Possible values for username source or email source.
            @email_address_source
            ## 
            # Exchange location (URL) that the mail app connects to.
            @host_name
            ## 
            # Identity certificate.
            @identity_certificate
            ## 
            # Indicates whether or not to use SSL.
            @require_ssl
            ## 
            # Android username source.
            @username_source
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
            ## Instantiates a new AndroidWorkProfileEasEmailProfileBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidWorkProfileEasEmailProfileBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_work_profile_eas_email_profile_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidWorkProfileGmailEasConfiguration"
                            return AndroidWorkProfileGmailEasConfiguration.new
                        when "#microsoft.graph.androidWorkProfileNineWorkEasConfiguration"
                            return AndroidWorkProfileNineWorkEasConfiguration.new
                    end
                end
                return AndroidWorkProfileEasEmailProfileBase.new
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::EasAuthenticationMethod) },
                    "durationOfEmailToSync" => lambda {|n| @duration_of_email_to_sync = n.get_enum_value(MicrosoftGraphBeta::Models::EmailSyncDuration) },
                    "emailAddressSource" => lambda {|n| @email_address_source = n.get_enum_value(MicrosoftGraphBeta::Models::UserEmailSource) },
                    "hostName" => lambda {|n| @host_name = n.get_string_value() },
                    "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidWorkProfileCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "requireSsl" => lambda {|n| @require_ssl = n.get_boolean_value() },
                    "usernameSource" => lambda {|n| @username_source = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidUsernameSource) },
                })
            end
            ## 
            ## Gets the hostName property value. Exchange location (URL) that the mail app connects to.
            ## @return a string
            ## 
            def host_name
                return @host_name
            end
            ## 
            ## Sets the hostName property value. Exchange location (URL) that the mail app connects to.
            ## @param value Value to set for the hostName property.
            ## @return a void
            ## 
            def host_name=(value)
                @host_name = value
            end
            ## 
            ## Gets the identityCertificate property value. Identity certificate.
            ## @return a android_work_profile_certificate_profile_base
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
                writer.write_enum_value("authenticationMethod", @authentication_method)
                writer.write_enum_value("durationOfEmailToSync", @duration_of_email_to_sync)
                writer.write_enum_value("emailAddressSource", @email_address_source)
                writer.write_string_value("hostName", @host_name)
                writer.write_object_value("identityCertificate", @identity_certificate)
                writer.write_boolean_value("requireSsl", @require_ssl)
                writer.write_enum_value("usernameSource", @username_source)
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
end
