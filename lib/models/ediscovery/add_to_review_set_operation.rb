require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './ediscovery'

module MicrosoftGraphBeta
    module Models
        module Ediscovery
            class AddToReviewSetOperation < MicrosoftGraphBeta::Models::Ediscovery::CaseOperation
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The review set to which items matching the source collection query are added to.
                @review_set
                ## 
                # The sourceCollection that items are being added from.
                @source_collection
                ## 
                ## Instantiates a new addToReviewSetOperation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a add_to_review_set_operation
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AddToReviewSetOperation.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "reviewSet" => lambda {|n| @review_set = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::ReviewSet.create_from_discriminator_value(pn) }) },
                        "sourceCollection" => lambda {|n| @source_collection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::SourceCollection.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the reviewSet property value. The review set to which items matching the source collection query are added to.
                ## @return a review_set
                ## 
                def review_set
                    return @review_set
                end
                ## 
                ## Sets the reviewSet property value. The review set to which items matching the source collection query are added to.
                ## @param value Value to set for the reviewSet property.
                ## @return a void
                ## 
                def review_set=(value)
                    @review_set = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("reviewSet", @review_set)
                    writer.write_object_value("sourceCollection", @source_collection)
                end
                ## 
                ## Gets the sourceCollection property value. The sourceCollection that items are being added from.
                ## @return a source_collection
                ## 
                def source_collection
                    return @source_collection
                end
                ## 
                ## Sets the sourceCollection property value. The sourceCollection that items are being added from.
                ## @param value Value to set for the sourceCollection property.
                ## @return a void
                ## 
                def source_collection=(value)
                    @source_collection = value
                end
            end
        end
    end
end
