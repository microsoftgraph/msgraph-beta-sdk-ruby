require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationMethod < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            ## Instantiates a new AuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.emailAuthenticationMethod"
                            return EmailAuthenticationMethod.new
                        when "#microsoft.graph.fido2AuthenticationMethod"
                            return Fido2AuthenticationMethod.new
                        when "#microsoft.graph.microsoftAuthenticatorAuthenticationMethod"
                            return MicrosoftAuthenticatorAuthenticationMethod.new
                        when "#microsoft.graph.passwordAuthenticationMethod"
                            return PasswordAuthenticationMethod.new
                        when "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethod"
                            return PasswordlessMicrosoftAuthenticatorAuthenticationMethod.new
                        when "#microsoft.graph.phoneAuthenticationMethod"
                            return PhoneAuthenticationMethod.new
                        when "#microsoft.graph.platformCredentialAuthenticationMethod"
                            return PlatformCredentialAuthenticationMethod.new
                        when "#microsoft.graph.softwareOathAuthenticationMethod"
                            return SoftwareOathAuthenticationMethod.new
                        when "#microsoft.graph.temporaryAccessPassAuthenticationMethod"
                            return TemporaryAccessPassAuthenticationMethod.new
                        when "#microsoft.graph.windowsHelloForBusinessAuthenticationMethod"
                            return WindowsHelloForBusinessAuthenticationMethod.new
                    end
                end
                return AuthenticationMethod.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
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
                writer.write_date_time_value("createdDateTime", @created_date_time)
            end
        end
    end
end
