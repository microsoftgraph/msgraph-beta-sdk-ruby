require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InformationalUrls
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The appSignUpUrl property
            @app_sign_up_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The singleSignOnDocumentationUrl property
            @single_sign_on_documentation_url
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
            ## Gets the appSignUpUrl property value. The appSignUpUrl property
            ## @return a string
            ## 
            def app_sign_up_url
                return @app_sign_up_url
            end
            ## 
            ## Sets the appSignUpUrl property value. The appSignUpUrl property
            ## @param value Value to set for the app_sign_up_url property.
            ## @return a void
            ## 
            def app_sign_up_url=(value)
                @app_sign_up_url = value
            end
            ## 
            ## Instantiates a new informationalUrls and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a informational_urls
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InformationalUrls.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appSignUpUrl" => lambda {|n| @app_sign_up_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "singleSignOnDocumentationUrl" => lambda {|n| @single_sign_on_documentation_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("appSignUpUrl", @app_sign_up_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("singleSignOnDocumentationUrl", @single_sign_on_documentation_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the singleSignOnDocumentationUrl property value. The singleSignOnDocumentationUrl property
            ## @return a string
            ## 
            def single_sign_on_documentation_url
                return @single_sign_on_documentation_url
            end
            ## 
            ## Sets the singleSignOnDocumentationUrl property value. The singleSignOnDocumentationUrl property
            ## @param value Value to set for the single_sign_on_documentation_url property.
            ## @return a void
            ## 
            def single_sign_on_documentation_url=(value)
                @single_sign_on_documentation_url = value
            end
        end
    end
end
