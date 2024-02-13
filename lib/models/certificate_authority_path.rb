require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CertificateAuthorityPath < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines the trusted certificate authorities for certificates that can be added to apps and service principals in the tenant.
            @certificate_based_application_configurations
            ## 
            ## Gets the certificateBasedApplicationConfigurations property value. Defines the trusted certificate authorities for certificates that can be added to apps and service principals in the tenant.
            ## @return a certificate_based_application_configuration
            ## 
            def certificate_based_application_configurations
                return @certificate_based_application_configurations
            end
            ## 
            ## Sets the certificateBasedApplicationConfigurations property value. Defines the trusted certificate authorities for certificates that can be added to apps and service principals in the tenant.
            ## @param value Value to set for the certificateBasedApplicationConfigurations property.
            ## @return a void
            ## 
            def certificate_based_application_configurations=(value)
                @certificate_based_application_configurations = value
            end
            ## 
            ## Instantiates a new CertificateAuthorityPath and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a certificate_authority_path
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateAuthorityPath.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateBasedApplicationConfigurations" => lambda {|n| @certificate_based_application_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CertificateBasedApplicationConfiguration.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("certificateBasedApplicationConfigurations", @certificate_based_application_configurations)
            end
        end
    end
end
