require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../android_device_owner_enrollment_profiles'
require_relative '../item'
require_relative './create_token'

module MicrosoftGraphBeta
    module DeviceManagement
        module AndroidDeviceOwnerEnrollmentProfiles
            module Item
                module CreateToken
                    class CreateTokenPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The tokenValidityInSeconds property
                        @token_validity_in_seconds
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
                        ## Instantiates a new createTokenPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a create_token_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return CreateTokenPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "tokenValidityInSeconds" => lambda {|n| @token_validity_in_seconds = n.get_number_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_number_value("tokenValidityInSeconds", @token_validity_in_seconds)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the tokenValidityInSeconds property value. The tokenValidityInSeconds property
                        ## @return a integer
                        ## 
                        def token_validity_in_seconds
                            return @token_validity_in_seconds
                        end
                        ## 
                        ## Sets the tokenValidityInSeconds property value. The tokenValidityInSeconds property
                        ## @param value Value to set for the token_validity_in_seconds property.
                        ## @return a void
                        ## 
                        def token_validity_in_seconds=(value)
                            @token_validity_in_seconds = value
                        end
                    end
                end
            end
        end
    end
end
