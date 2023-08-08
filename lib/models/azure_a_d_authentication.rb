require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AzureADAuthentication < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of monthly serviceLevelAgreementAttainment objects.
            @attainments
            ## 
            ## Gets the attainments property value. A list of monthly serviceLevelAgreementAttainment objects.
            ## @return a service_level_agreement_attainment
            ## 
            def attainments
                return @attainments
            end
            ## 
            ## Sets the attainments property value. A list of monthly serviceLevelAgreementAttainment objects.
            ## @param value Value to set for the attainments property.
            ## @return a void
            ## 
            def attainments=(value)
                @attainments = value
            end
            ## 
            ## Instantiates a new azureADAuthentication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_a_d_authentication
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureADAuthentication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attainments" => lambda {|n| @attainments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServiceLevelAgreementAttainment.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("attainments", @attainments)
            end
        end
    end
end
