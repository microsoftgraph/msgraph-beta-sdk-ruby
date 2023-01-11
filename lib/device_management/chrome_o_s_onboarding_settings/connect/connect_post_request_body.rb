require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../chrome_o_s_onboarding_settings'
require_relative './connect'

module MicrosoftGraphBeta::DeviceManagement::ChromeOSOnboardingSettings::Connect
    class ConnectPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The ownerAccessToken property
        @owner_access_token
        ## 
        # The ownerUserPrincipalName property
        @owner_user_principal_name
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
        ## Instantiates a new connectPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a connect_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ConnectPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "ownerAccessToken" => lambda {|n| @owner_access_token = n.get_string_value() },
                "ownerUserPrincipalName" => lambda {|n| @owner_user_principal_name = n.get_string_value() },
            }
        end
        ## 
        ## Gets the ownerAccessToken property value. The ownerAccessToken property
        ## @return a string
        ## 
        def owner_access_token
            return @owner_access_token
        end
        ## 
        ## Sets the ownerAccessToken property value. The ownerAccessToken property
        ## @param value Value to set for the ownerAccessToken property.
        ## @return a void
        ## 
        def owner_access_token=(value)
            @owner_access_token = value
        end
        ## 
        ## Gets the ownerUserPrincipalName property value. The ownerUserPrincipalName property
        ## @return a string
        ## 
        def owner_user_principal_name
            return @owner_user_principal_name
        end
        ## 
        ## Sets the ownerUserPrincipalName property value. The ownerUserPrincipalName property
        ## @param value Value to set for the ownerUserPrincipalName property.
        ## @return a void
        ## 
        def owner_user_principal_name=(value)
            @owner_user_principal_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("ownerAccessToken", @owner_access_token)
            writer.write_string_value("ownerUserPrincipalName", @owner_user_principal_name)
            writer.write_additional_data(@additional_data)
        end
    end
end
