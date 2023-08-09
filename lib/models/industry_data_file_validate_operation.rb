require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './industry_data/industry_data'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataFileValidateOperation < MicrosoftGraphBeta::Models::IndustryDataValidateOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Set of files validated by the validate operation.
            @validated_files
            ## 
            ## Instantiates a new fileValidateOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.fileValidateOperation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_file_validate_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataFileValidateOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "validatedFiles" => lambda {|n| @validated_files = n.get_collection_of_primitive_values(String) },
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
            end
            ## 
            ## Gets the validatedFiles property value. Set of files validated by the validate operation.
            ## @return a string
            ## 
            def validated_files
                return @validated_files
            end
            ## 
            ## Sets the validatedFiles property value. Set of files validated by the validate operation.
            ## @param value Value to set for the validatedFiles property.
            ## @return a void
            ## 
            def validated_files=(value)
                @validated_files = value
            end
        end
    end
end
