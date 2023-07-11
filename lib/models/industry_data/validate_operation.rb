require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class ValidateOperation < MicrosoftGraphBeta::Models::LongRunningOperation
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Set of errors discovered through validation.
                @errors
                ## 
                # Set of warnings discovered through validation.
                @warnings
                ## 
                ## Instantiates a new validateOperation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a validate_operation
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.industryData.fileValidateOperation"
                                return FileValidateOperation.new
                        end
                    end
                    return ValidateOperation.new
                end
                ## 
                ## Gets the errors property value. Set of errors discovered through validation.
                ## @return a public_error
                ## 
                def errors
                    return @errors
                end
                ## 
                ## Sets the errors property value. Set of errors discovered through validation.
                ## @param value Value to set for the errors property.
                ## @return a void
                ## 
                def errors=(value)
                    @errors = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "errors" => lambda {|n| @errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PublicError.create_from_discriminator_value(pn) }) },
                        "warnings" => lambda {|n| @warnings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PublicError.create_from_discriminator_value(pn) }) },
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
                ## Gets the warnings property value. Set of warnings discovered through validation.
                ## @return a public_error
                ## 
                def warnings
                    return @warnings
                end
                ## 
                ## Sets the warnings property value. Set of warnings discovered through validation.
                ## @param value Value to set for the warnings property.
                ## @return a void
                ## 
                def warnings=(value)
                    @warnings = value
                end
            end
        end
    end
end
