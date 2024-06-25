require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RegexReplaceTransformation < MicrosoftGraphBeta::Models::CustomClaimTransformation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional attributes that can be referenced within the replacement string.
            @additional_attributes
            ## 
            # The regular expression to be applied on the input directory attribute or constant.
            @regex
            ## 
            # The transformation output replacement pattern with regular expression output group and input parameter group reference.
            @replacement
            ## 
            ## Gets the additionalAttributes property value. Additional attributes that can be referenced within the replacement string.
            ## @return a sourced_attribute
            ## 
            def additional_attributes
                return @additional_attributes
            end
            ## 
            ## Sets the additionalAttributes property value. Additional attributes that can be referenced within the replacement string.
            ## @param value Value to set for the additionalAttributes property.
            ## @return a void
            ## 
            def additional_attributes=(value)
                @additional_attributes = value
            end
            ## 
            ## Instantiates a new RegexReplaceTransformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.regexReplaceTransformation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a regex_replace_transformation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RegexReplaceTransformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalAttributes" => lambda {|n| @additional_attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SourcedAttribute.create_from_discriminator_value(pn) }) },
                    "regex" => lambda {|n| @regex = n.get_string_value() },
                    "replacement" => lambda {|n| @replacement = n.get_string_value() },
                })
            end
            ## 
            ## Gets the regex property value. The regular expression to be applied on the input directory attribute or constant.
            ## @return a string
            ## 
            def regex
                return @regex
            end
            ## 
            ## Sets the regex property value. The regular expression to be applied on the input directory attribute or constant.
            ## @param value Value to set for the regex property.
            ## @return a void
            ## 
            def regex=(value)
                @regex = value
            end
            ## 
            ## Gets the replacement property value. The transformation output replacement pattern with regular expression output group and input parameter group reference.
            ## @return a string
            ## 
            def replacement
                return @replacement
            end
            ## 
            ## Sets the replacement property value. The transformation output replacement pattern with regular expression output group and input parameter group reference.
            ## @param value Value to set for the replacement property.
            ## @return a void
            ## 
            def replacement=(value)
                @replacement = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("additionalAttributes", @additional_attributes)
                writer.write_string_value("regex", @regex)
                writer.write_string_value("replacement", @replacement)
            end
        end
    end
end
