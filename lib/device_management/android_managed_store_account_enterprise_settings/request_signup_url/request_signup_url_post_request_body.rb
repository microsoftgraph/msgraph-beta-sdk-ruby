require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../android_managed_store_account_enterprise_settings'
require_relative './request_signup_url'

module MicrosoftGraphBeta
    module DeviceManagement
        module AndroidManagedStoreAccountEnterpriseSettings
            module RequestSignupUrl
                class RequestSignupUrlPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The hostName property
                    @host_name
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
                    ## Instantiates a new requestSignupUrlPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a request_signup_url_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return RequestSignupUrlPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "hostName" => lambda {|n| @host_name = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the hostName property value. The hostName property
                    ## @return a string
                    ## 
                    def host_name
                        return @host_name
                    end
                    ## 
                    ## Sets the hostName property value. The hostName property
                    ## @param value Value to set for the host_name property.
                    ## @return a void
                    ## 
                    def host_name=(value)
                        @host_name = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("hostName", @host_name)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
