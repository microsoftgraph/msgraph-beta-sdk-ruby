require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../android_managed_store_account_enterprise_settings'
require_relative './microsoft_graph_create_google_play_web_token'

module MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::MicrosoftGraphCreateGooglePlayWebToken
    class CreateGooglePlayWebTokenPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The parentUri property
        @parent_uri
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
        ## Instantiates a new createGooglePlayWebTokenPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a create_google_play_web_token_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CreateGooglePlayWebTokenPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "parentUri" => lambda {|n| @parent_uri = n.get_string_value() },
            }
        end
        ## 
        ## Gets the parentUri property value. The parentUri property
        ## @return a string
        ## 
        def parent_uri
            return @parent_uri
        end
        ## 
        ## Sets the parentUri property value. The parentUri property
        ## @param value Value to set for the parent_uri property.
        ## @return a void
        ## 
        def parent_uri=(value)
            @parent_uri = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("parentUri", @parent_uri)
            writer.write_additional_data(@additional_data)
        end
    end
end
