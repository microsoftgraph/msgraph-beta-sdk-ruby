require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/ediscovery_additional_data_options'
require_relative '../../../../../../../models/ediscovery_source_collection'
require_relative '../../../../../../compliance'
require_relative '../../../../../ediscovery'
require_relative '../../../../cases'
require_relative '../../../item'
require_relative '../../review_sets'
require_relative '../item'
require_relative './microsoft_graph_ediscovery_add_to_review_set'

module MicrosoftGraphBeta
    module Compliance
        module Ediscovery
            module Cases
                module Item
                    module ReviewSets
                        module Item
                            module MicrosoftGraphEdiscoveryAddToReviewSet
                                class AddToReviewSetPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # The additionalDataOptions property
                                    @additional_data_options
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The sourceCollection property
                                    @source_collection
                                    ## 
                                    ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @return a i_dictionary
                                    ## 
                                    def additional_data
                                        return @additional_data
                                    end
                                    ## 
                                    ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @param value Value to set for the additionalData property.
                                    ## @return a void
                                    ## 
                                    def additional_data=(value)
                                        @additional_data = value
                                    end
                                    ## 
                                    ## Gets the additionalDataOptions property value. The additionalDataOptions property
                                    ## @return a ediscovery_additional_data_options
                                    ## 
                                    def additional_data_options
                                        return @additional_data_options
                                    end
                                    ## 
                                    ## Sets the additionalDataOptions property value. The additionalDataOptions property
                                    ## @param value Value to set for the additionalDataOptions property.
                                    ## @return a void
                                    ## 
                                    def additional_data_options=(value)
                                        @additional_data_options = value
                                    end
                                    ## 
                                    ## Instantiates a new addToReviewSetPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a add_to_review_set_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return AddToReviewSetPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "additionalDataOptions" => lambda {|n| @additional_data_options = n.get_enum_value(MicrosoftGraphBeta::Models::EdiscoveryAdditionalDataOptions) },
                                            "sourceCollection" => lambda {|n| @source_collection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoverySourceCollection.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_enum_value("additionalDataOptions", @additional_data_options)
                                        writer.write_object_value("sourceCollection", @source_collection)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the sourceCollection property value. The sourceCollection property
                                    ## @return a ediscovery_source_collection
                                    ## 
                                    def source_collection
                                        return @source_collection
                                    end
                                    ## 
                                    ## Sets the sourceCollection property value. The sourceCollection property
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
                end
            end
        end
    end
end
