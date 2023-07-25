require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class FederatedTokenValidationPolicy < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The validatingDomains property
            @validating_domains
            ## 
            ## Instantiates a new federatedTokenValidationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.federatedTokenValidationPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a federated_token_validation_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FederatedTokenValidationPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "validatingDomains" => lambda {|n| @validating_domains = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ValidatingDomains.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("validatingDomains", @validating_domains)
            end
            ## 
            ## Gets the validatingDomains property value. The validatingDomains property
            ## @return a validating_domains
            ## 
            def validating_domains
                return @validating_domains
            end
            ## 
            ## Sets the validatingDomains property value. The validatingDomains property
            ## @param value Value to set for the validatingDomains property.
            ## @return a void
            ## 
            def validating_domains=(value)
                @validating_domains = value
            end
        end
    end
end
