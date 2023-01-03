require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../directory'
require_relative '../../recommendations'
require_relative '../item'
require_relative './postpone'

module MicrosoftGraphBeta::Directory::Recommendations::Item::Postpone
    ## 
    # Provides operations to call the postpone method.
    class PostponePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The postponeUntilDateTime property
        @postpone_until_date_time
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
        ## Instantiates a new postponePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a postpone_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PostponePostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "postponeUntilDateTime" => lambda {|n| @postpone_until_date_time = n.get_date_time_value() },
            }
        end
        ## 
        ## Gets the postponeUntilDateTime property value. The postponeUntilDateTime property
        ## @return a date_time
        ## 
        def postpone_until_date_time
            return @postpone_until_date_time
        end
        ## 
        ## Sets the postponeUntilDateTime property value. The postponeUntilDateTime property
        ## @param value Value to set for the postponeUntilDateTime property.
        ## @return a void
        ## 
        def postpone_until_date_time=(value)
            @postpone_until_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_date_time_value("postponeUntilDateTime", @postpone_until_date_time)
            writer.write_additional_data(@additional_data)
        end
    end
end
