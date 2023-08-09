require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../trust_framework'
require_relative '../../key_sets'
require_relative '../item'
require_relative './upload_secret'

module MicrosoftGraphBeta
    module TrustFramework
        module KeySets
            module Item
                module UploadSecret
                    class UploadSecretPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The exp property
                        @exp
                        ## 
                        # The k property
                        @k
                        ## 
                        # The nbf property
                        @nbf
                        ## 
                        # The use property
                        @use
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
                        ## Instantiates a new uploadSecretPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a upload_secret_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UploadSecretPostRequestBody.new
                        end
                        ## 
                        ## Gets the exp property value. The exp property
                        ## @return a int64
                        ## 
                        def exp
                            return @exp
                        end
                        ## 
                        ## Sets the exp property value. The exp property
                        ## @param value Value to set for the exp property.
                        ## @return a void
                        ## 
                        def exp=(value)
                            @exp = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "exp" => lambda {|n| @exp = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                                "k" => lambda {|n| @k = n.get_string_value() },
                                "nbf" => lambda {|n| @nbf = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                                "use" => lambda {|n| @use = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the k property value. The k property
                        ## @return a string
                        ## 
                        def k
                            return @k
                        end
                        ## 
                        ## Sets the k property value. The k property
                        ## @param value Value to set for the k property.
                        ## @return a void
                        ## 
                        def k=(value)
                            @k = value
                        end
                        ## 
                        ## Gets the nbf property value. The nbf property
                        ## @return a int64
                        ## 
                        def nbf
                            return @nbf
                        end
                        ## 
                        ## Sets the nbf property value. The nbf property
                        ## @param value Value to set for the nbf property.
                        ## @return a void
                        ## 
                        def nbf=(value)
                            @nbf = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("exp", @exp)
                            writer.write_string_value("k", @k)
                            writer.write_object_value("nbf", @nbf)
                            writer.write_string_value("use", @use)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the use property value. The use property
                        ## @return a string
                        ## 
                        def use
                            return @use
                        end
                        ## 
                        ## Sets the use property value. The use property
                        ## @param value Value to set for the use property.
                        ## @return a void
                        ## 
                        def use=(value)
                            @use = value
                        end
                    end
                end
            end
        end
    end
end
