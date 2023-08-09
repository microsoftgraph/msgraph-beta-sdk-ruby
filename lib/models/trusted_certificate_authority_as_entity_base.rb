require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrustedCertificateAuthorityAsEntityBase < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The trustedCertificateAuthorities property
            @trusted_certificate_authorities
            ## 
            ## Instantiates a new trustedCertificateAuthorityAsEntityBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.trustedCertificateAuthorityAsEntityBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a trusted_certificate_authority_as_entity_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.certificateBasedApplicationConfiguration"
                            return CertificateBasedApplicationConfiguration.new
                    end
                end
                return TrustedCertificateAuthorityAsEntityBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "trustedCertificateAuthorities" => lambda {|n| @trusted_certificate_authorities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CertificateAuthorityAsEntity.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("trustedCertificateAuthorities", @trusted_certificate_authorities)
            end
            ## 
            ## Gets the trustedCertificateAuthorities property value. The trustedCertificateAuthorities property
            ## @return a certificate_authority_as_entity
            ## 
            def trusted_certificate_authorities
                return @trusted_certificate_authorities
            end
            ## 
            ## Sets the trustedCertificateAuthorities property value. The trustedCertificateAuthorities property
            ## @param value Value to set for the trustedCertificateAuthorities property.
            ## @return a void
            ## 
            def trusted_certificate_authorities=(value)
                @trusted_certificate_authorities = value
            end
        end
    end
end
