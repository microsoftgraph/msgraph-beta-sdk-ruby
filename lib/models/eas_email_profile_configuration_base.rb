require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Apple device features configuration profile.
        class EasEmailProfileConfigurationBase < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Custom domain name value used while generating an email profile before installing on the device.
            @custom_domain_name
            ## 
            # UserDomainname attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: fullDomainName, netBiosDomainName.
            @user_domain_name_source
            ## 
            # Name of the AAD field, that will be used to retrieve UserName for email profile. Possible values are: userPrincipalName, primarySmtpAddress, samAccountName.
            @username_a_a_d_source
            ## 
            # Possible values for username source or email source.
            @username_source
            ## 
            ## Instantiates a new easEmailProfileConfigurationBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.easEmailProfileConfigurationBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a eas_email_profile_configuration_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.iosEasEmailProfileConfiguration"
                            return IosEasEmailProfileConfiguration.new
                        when "#microsoft.graph.windows10EasEmailProfileConfiguration"
                            return Windows10EasEmailProfileConfiguration.new
                        when "#microsoft.graph.windowsPhoneEASEmailProfileConfiguration"
                            return WindowsPhoneEASEmailProfileConfiguration.new
                    end
                end
                return EasEmailProfileConfigurationBase.new
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
            ## @param value Value to set for the custom_domain_name property.
            ## @return a void
            ## 
            def custom_domain_name=(value)
                @custom_domain_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customDomainName" => lambda {|n| @custom_domain_name = n.get_string_value() },
                    "userDomainNameSource" => lambda {|n| @user_domain_name_source = n.get_enum_value(MicrosoftGraphBeta::Models::DomainNameSource) },
                    "usernameAADSource" => lambda {|n| @username_a_a_d_source = n.get_enum_value(MicrosoftGraphBeta::Models::UsernameSource) },
                    "usernameSource" => lambda {|n| @username_source = n.get_enum_value(MicrosoftGraphBeta::Models::UserEmailSource) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("customDomainName", @custom_domain_name)
                writer.write_enum_value("userDomainNameSource", @user_domain_name_source)
                writer.write_enum_value("usernameAADSource", @username_a_a_d_source)
                writer.write_enum_value("usernameSource", @username_source)
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
            ## @param value Value to set for the user_domain_name_source property.
            ## @return a void
            ## 
            def user_domain_name_source=(value)
                @user_domain_name_source = value
            end
            ## 
            ## Gets the usernameAADSource property value. Name of the AAD field, that will be used to retrieve UserName for email profile. Possible values are: userPrincipalName, primarySmtpAddress, samAccountName.
            ## @return a username_source
            ## 
            def username_a_a_d_source
                return @username_a_a_d_source
            end
            ## 
            ## Sets the usernameAADSource property value. Name of the AAD field, that will be used to retrieve UserName for email profile. Possible values are: userPrincipalName, primarySmtpAddress, samAccountName.
            ## @param value Value to set for the username_a_a_d_source property.
            ## @return a void
            ## 
            def username_a_a_d_source=(value)
                @username_a_a_d_source = value
            end
            ## 
            ## Gets the usernameSource property value. Possible values for username source or email source.
            ## @return a user_email_source
            ## 
            def username_source
                return @username_source
            end
            ## 
            ## Sets the usernameSource property value. Possible values for username source or email source.
            ## @param value Value to set for the username_source property.
            ## @return a void
            ## 
            def username_source=(value)
                @username_source = value
            end
        end
    end
end
