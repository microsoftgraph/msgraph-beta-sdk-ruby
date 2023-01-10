require 'microsoft_kiota_abstractions'
require_relative '../../../device_management'
require_relative '../../dep_onboarding_settings'
require_relative '../item'
require_relative './upload_dep_token'

module MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::UploadDepToken
    class UploadDepTokenPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The appleId property
        @apple_id
        ## 
        # The depToken property
        @dep_token
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
        ## Gets the appleId property value. The appleId property
        ## @return a string
        ## 
        def apple_id
            return @apple_id
        end
        ## 
        ## Sets the appleId property value. The appleId property
        ## @param value Value to set for the appleId property.
        ## @return a void
        ## 
        def apple_id=(value)
            @apple_id = value
        end
        ## 
        ## Instantiates a new uploadDepTokenPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a upload_dep_token_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UploadDepTokenPostRequestBody.new
        end
        ## 
        ## Gets the depToken property value. The depToken property
        ## @return a string
        ## 
        def dep_token
            return @dep_token
        end
        ## 
        ## Sets the depToken property value. The depToken property
        ## @param value Value to set for the depToken property.
        ## @return a void
        ## 
        def dep_token=(value)
            @dep_token = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "appleId" => lambda {|n| @apple_id = n.get_string_value() },
                "depToken" => lambda {|n| @dep_token = n.get_string_value() },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("appleId", @apple_id)
            writer.write_string_value("depToken", @dep_token)
            writer.write_additional_data(@additional_data)
        end
    end
end
