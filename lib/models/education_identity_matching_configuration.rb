require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EducationIdentityMatchingConfiguration < MicrosoftGraphBeta::Models::EducationIdentitySynchronizationConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Mapping between the user account and the options to use to uniquely identify the user to update.
        @matching_options
        ## 
        ## Instantiates a new EducationIdentityMatchingConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.educationIdentityMatchingConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a education_identity_matching_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EducationIdentityMatchingConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "matchingOptions" => lambda {|n| @matching_options = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationIdentityMatchingOptions.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the matchingOptions property value. Mapping between the user account and the options to use to uniquely identify the user to update.
        ## @return a education_identity_matching_options
        ## 
        def matching_options
            return @matching_options
        end
        ## 
        ## Sets the matchingOptions property value. Mapping between the user account and the options to use to uniquely identify the user to update.
        ## @param value Value to set for the matching_options property.
        ## @return a void
        ## 
        def matching_options=(value)
            @matching_options = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("matchingOptions", @matching_options)
        end
    end
end
