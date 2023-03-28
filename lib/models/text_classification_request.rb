require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TextClassificationRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The fileExtension property
            @file_extension
            ## 
            # The matchTolerancesToInclude property
            @match_tolerances_to_include
            ## 
            # The scopesToRun property
            @scopes_to_run
            ## 
            # The sensitiveTypeIds property
            @sensitive_type_ids
            ## 
            # The text property
            @text
            ## 
            ## Instantiates a new TextClassificationRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a text_classification_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TextClassificationRequest.new
            end
            ## 
            ## Gets the fileExtension property value. The fileExtension property
            ## @return a string
            ## 
            def file_extension
                return @file_extension
            end
            ## 
            ## Sets the fileExtension property value. The fileExtension property
            ## @param value Value to set for the file_extension property.
            ## @return a void
            ## 
            def file_extension=(value)
                @file_extension = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fileExtension" => lambda {|n| @file_extension = n.get_string_value() },
                    "matchTolerancesToInclude" => lambda {|n| @match_tolerances_to_include = n.get_enum_value(MicrosoftGraphBeta::Models::MlClassificationMatchTolerance) },
                    "scopesToRun" => lambda {|n| @scopes_to_run = n.get_enum_value(MicrosoftGraphBeta::Models::SensitiveTypeScope) },
                    "sensitiveTypeIds" => lambda {|n| @sensitive_type_ids = n.get_collection_of_primitive_values(String) },
                    "text" => lambda {|n| @text = n.get_string_value() },
                })
            end
            ## 
            ## Gets the matchTolerancesToInclude property value. The matchTolerancesToInclude property
            ## @return a ml_classification_match_tolerance
            ## 
            def match_tolerances_to_include
                return @match_tolerances_to_include
            end
            ## 
            ## Sets the matchTolerancesToInclude property value. The matchTolerancesToInclude property
            ## @param value Value to set for the match_tolerances_to_include property.
            ## @return a void
            ## 
            def match_tolerances_to_include=(value)
                @match_tolerances_to_include = value
            end
            ## 
            ## Gets the scopesToRun property value. The scopesToRun property
            ## @return a sensitive_type_scope
            ## 
            def scopes_to_run
                return @scopes_to_run
            end
            ## 
            ## Sets the scopesToRun property value. The scopesToRun property
            ## @param value Value to set for the scopes_to_run property.
            ## @return a void
            ## 
            def scopes_to_run=(value)
                @scopes_to_run = value
            end
            ## 
            ## Gets the sensitiveTypeIds property value. The sensitiveTypeIds property
            ## @return a string
            ## 
            def sensitive_type_ids
                return @sensitive_type_ids
            end
            ## 
            ## Sets the sensitiveTypeIds property value. The sensitiveTypeIds property
            ## @param value Value to set for the sensitive_type_ids property.
            ## @return a void
            ## 
            def sensitive_type_ids=(value)
                @sensitive_type_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("fileExtension", @file_extension)
                writer.write_enum_value("matchTolerancesToInclude", @match_tolerances_to_include)
                writer.write_enum_value("scopesToRun", @scopes_to_run)
                writer.write_collection_of_primitive_values("sensitiveTypeIds", @sensitive_type_ids)
                writer.write_string_value("text", @text)
            end
            ## 
            ## Gets the text property value. The text property
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. The text property
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
        end
    end
end
