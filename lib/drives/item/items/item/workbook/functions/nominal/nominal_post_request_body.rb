require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './nominal'

module MicrosoftGraphBeta
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Nominal
                                class NominalPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The effectRate property
                                    @effect_rate
                                    ## 
                                    # The npery property
                                    @npery
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
                                    ## Instantiates a new nominalPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a nominal_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return NominalPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the effectRate property value. The effectRate property
                                    ## @return a json
                                    ## 
                                    def effect_rate
                                        return @effect_rate
                                    end
                                    ## 
                                    ## Sets the effectRate property value. The effectRate property
                                    ## @param value Value to set for the effectRate property.
                                    ## @return a void
                                    ## 
                                    def effect_rate=(value)
                                        @effect_rate = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "effectRate" => lambda {|n| @effect_rate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Json.create_from_discriminator_value(pn) }) },
                                            "npery" => lambda {|n| @npery = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the npery property value. The npery property
                                    ## @return a json
                                    ## 
                                    def npery
                                        return @npery
                                    end
                                    ## 
                                    ## Sets the npery property value. The npery property
                                    ## @param value Value to set for the npery property.
                                    ## @return a void
                                    ## 
                                    def npery=(value)
                                        @npery = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("effectRate", @effect_rate)
                                        writer.write_object_value("npery", @npery)
                                        writer.write_additional_data(@additional_data)
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
