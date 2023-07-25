require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/credential'
require_relative '../../service_principals'
require_relative '../item'
require_relative './create_password_single_sign_on_credentials'

module MicrosoftGraphBeta
    module ServicePrincipals
        module Item
            module CreatePasswordSingleSignOnCredentials
                class CreatePasswordSingleSignOnCredentialsPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The credentials property
                    @credentials
                    ## 
                    # The id property
                    @id
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
                    ## Instantiates a new createPasswordSingleSignOnCredentialsPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a create_password_single_sign_on_credentials_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return CreatePasswordSingleSignOnCredentialsPostRequestBody.new
                    end
                    ## 
                    ## Gets the credentials property value. The credentials property
                    ## @return a credential
                    ## 
                    def credentials
                        return @credentials
                    end
                    ## 
                    ## Sets the credentials property value. The credentials property
                    ## @param value Value to set for the credentials property.
                    ## @return a void
                    ## 
                    def credentials=(value)
                        @credentials = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "credentials" => lambda {|n| @credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Credential.create_from_discriminator_value(pn) }) },
                            "id" => lambda {|n| @id = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the id property value. The id property
                    ## @return a string
                    ## 
                    def id
                        return @id
                    end
                    ## 
                    ## Sets the id property value. The id property
                    ## @param value Value to set for the id property.
                    ## @return a void
                    ## 
                    def id=(value)
                        @id = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_object_values("credentials", @credentials)
                        writer.write_string_value("id", @id)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
