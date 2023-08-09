require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlayPromptOperation < MicrosoftGraphBeta::Models::CommsOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values are: unknown, completedSuccessfully, mediaOperationCanceled.
            @completion_reason
            ## 
            ## Gets the completionReason property value. Possible values are: unknown, completedSuccessfully, mediaOperationCanceled.
            ## @return a play_prompt_completion_reason
            ## 
            def completion_reason
                return @completion_reason
            end
            ## 
            ## Sets the completionReason property value. Possible values are: unknown, completedSuccessfully, mediaOperationCanceled.
            ## @param value Value to set for the completionReason property.
            ## @return a void
            ## 
            def completion_reason=(value)
                @completion_reason = value
            end
            ## 
            ## Instantiates a new playPromptOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a play_prompt_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlayPromptOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completionReason" => lambda {|n| @completion_reason = n.get_enum_value(MicrosoftGraphBeta::Models::PlayPromptCompletionReason) },
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
                writer.write_enum_value("completionReason", @completion_reason)
            end
        end
    end
end
