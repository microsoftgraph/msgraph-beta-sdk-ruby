require 'microsoft_kiota_abstractions'
require_relative '../../../../models/content_info'
require_relative '../../../information_protection'
require_relative '../../policy'
require_relative '../labels'
require_relative './extract_label'

module MicrosoftGraphBeta::InformationProtection::Policy::Labels::ExtractLabel
    ## 
    # Provides operations to call the extractLabel method.
    class ExtractLabelPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The contentInfo property
        @content_info
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new extractLabelPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the contentInfo property value. The contentInfo property
        ## @return a content_info
        ## 
        def content_info
            return @content_info
        end
        ## 
        ## Sets the contentInfo property value. The contentInfo property
        ## @param value Value to set for the contentInfo property.
        ## @return a void
        ## 
        def content_info=(value)
            @content_info = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a extract_label_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ExtractLabelPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "contentInfo" => lambda {|n| @content_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ContentInfo.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("contentInfo", @content_info)
            writer.write_additional_data(@additional_data)
        end
    end
end
