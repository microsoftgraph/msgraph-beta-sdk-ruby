require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../android_for_work_settings'
require_relative './complete_signup'

module MicrosoftGraphBeta
    module DeviceManagement
        module AndroidForWorkSettings
            module CompleteSignup
                class CompleteSignupPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The enterpriseToken property
                    @enterprise_token
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
                    ## Instantiates a new CompleteSignupPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a complete_signup_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return CompleteSignupPostRequestBody.new
                    end
                    ## 
                    ## Gets the enterpriseToken property value. The enterpriseToken property
                    ## @return a string
                    ## 
                    def enterprise_token
                        return @enterprise_token
                    end
                    ## 
                    ## Sets the enterpriseToken property value. The enterpriseToken property
                    ## @param value Value to set for the enterpriseToken property.
                    ## @return a void
                    ## 
                    def enterprise_token=(value)
                        @enterprise_token = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "enterpriseToken" => lambda {|n| @enterprise_token = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("enterpriseToken", @enterprise_token)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
