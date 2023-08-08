require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing the configurations in this profile you can instruct the Mac device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.
        class MacOSVpnConfiguration < MicrosoftGraphBeta::Models::AppleVpnConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identity certificate for client authentication when authentication method is certificate.
            @identity_certificate
            ## 
            ## Instantiates a new macOSVpnConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSVpnConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_vpn_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSVpnConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MacOSCertificateProfileBase.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @return a mac_o_s_certificate_profile_base
            ## 
            def identity_certificate
                return @identity_certificate
            end
            ## 
            ## Sets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @param value Value to set for the identityCertificate property.
            ## @return a void
            ## 
            def identity_certificate=(value)
                @identity_certificate = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("identityCertificate", @identity_certificate)
            end
        end
    end
end
