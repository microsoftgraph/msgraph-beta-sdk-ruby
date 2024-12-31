require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../directory'
require_relative '../../impacted_resources'
require_relative '../item'
require_relative './dismiss'

module MicrosoftGraphBeta
    module Directory
        module ImpactedResources
            module Item
                module Dismiss
                    class DismissPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The dismissReason property
                        @dismiss_reason
                        ## 
                        ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new DismissPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a dismiss_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return DismissPostRequestBody.new
                        end
                        ## 
                        ## Gets the dismissReason property value. The dismissReason property
                        ## @return a string
                        ## 
                        def dismiss_reason
                            return @dismiss_reason
                        end
                        ## 
                        ## Sets the dismissReason property value. The dismissReason property
                        ## @param value Value to set for the dismissReason property.
                        ## @return a void
                        ## 
                        def dismiss_reason=(value)
                            @dismiss_reason = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "dismissReason" => lambda {|n| @dismiss_reason = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("dismissReason", @dismiss_reason)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
