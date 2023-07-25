require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CertificateAuthorityAsEntity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The certificate property
            @certificate
            ## 
            # The isRootAuthority property
            @is_root_authority
            ## 
            # The issuer property
            @issuer
            ## 
            # The issuerSubjectKeyIdentifier property
            @issuer_subject_key_identifier
            ## 
            ## Gets the certificate property value. The certificate property
            ## @return a base64url
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. The certificate property
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Instantiates a new certificateAuthorityAsEntity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a certificate_authority_as_entity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateAuthorityAsEntity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificate" => lambda {|n| @certificate = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "isRootAuthority" => lambda {|n| @is_root_authority = n.get_boolean_value() },
                    "issuer" => lambda {|n| @issuer = n.get_string_value() },
                    "issuerSubjectKeyIdentifier" => lambda {|n| @issuer_subject_key_identifier = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isRootAuthority property value. The isRootAuthority property
            ## @return a boolean
            ## 
            def is_root_authority
                return @is_root_authority
            end
            ## 
            ## Sets the isRootAuthority property value. The isRootAuthority property
            ## @param value Value to set for the isRootAuthority property.
            ## @return a void
            ## 
            def is_root_authority=(value)
                @is_root_authority = value
            end
            ## 
            ## Gets the issuer property value. The issuer property
            ## @return a string
            ## 
            def issuer
                return @issuer
            end
            ## 
            ## Sets the issuer property value. The issuer property
            ## @param value Value to set for the issuer property.
            ## @return a void
            ## 
            def issuer=(value)
                @issuer = value
            end
            ## 
            ## Gets the issuerSubjectKeyIdentifier property value. The issuerSubjectKeyIdentifier property
            ## @return a string
            ## 
            def issuer_subject_key_identifier
                return @issuer_subject_key_identifier
            end
            ## 
            ## Sets the issuerSubjectKeyIdentifier property value. The issuerSubjectKeyIdentifier property
            ## @param value Value to set for the issuerSubjectKeyIdentifier property.
            ## @return a void
            ## 
            def issuer_subject_key_identifier=(value)
                @issuer_subject_key_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("certificate", @certificate)
                writer.write_boolean_value("isRootAuthority", @is_root_authority)
                writer.write_string_value("issuer", @issuer)
                writer.write_string_value("issuerSubjectKeyIdentifier", @issuer_subject_key_identifier)
            end
        end
    end
end
