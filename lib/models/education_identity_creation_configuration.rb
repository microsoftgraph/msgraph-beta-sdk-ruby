require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationIdentityCreationConfiguration < MicrosoftGraphBeta::Models::EducationIdentitySynchronizationConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The userDomains property
            @user_domains
            ## 
            ## Instantiates a new EducationIdentityCreationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationIdentityCreationConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_identity_creation_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationIdentityCreationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userDomains" => lambda {|n| @user_domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationIdentityDomain.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("userDomains", @user_domains)
            end
            ## 
            ## Gets the userDomains property value. The userDomains property
            ## @return a education_identity_domain
            ## 
            def user_domains
                return @user_domains
            end
            ## 
            ## Sets the userDomains property value. The userDomains property
            ## @param value Value to set for the user_domains property.
            ## @return a void
            ## 
            def user_domains=(value)
                @user_domains = value
            end
        end
    end
end
