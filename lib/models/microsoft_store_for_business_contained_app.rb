require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class that represents a contained app of a MicrosoftStoreForBusinessApp.
        class MicrosoftStoreForBusinessContainedApp < MicrosoftGraphBeta::Models::MobileContainedApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The app user model ID of the contained app of a MicrosoftStoreForBusinessApp.
            @app_user_model_id
            ## 
            ## Gets the appUserModelId property value. The app user model ID of the contained app of a MicrosoftStoreForBusinessApp.
            ## @return a string
            ## 
            def app_user_model_id
                return @app_user_model_id
            end
            ## 
            ## Sets the appUserModelId property value. The app user model ID of the contained app of a MicrosoftStoreForBusinessApp.
            ## @param value Value to set for the appUserModelId property.
            ## @return a void
            ## 
            def app_user_model_id=(value)
                @app_user_model_id = value
            end
            ## 
            ## Instantiates a new microsoftStoreForBusinessContainedApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftStoreForBusinessContainedApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_store_for_business_contained_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftStoreForBusinessContainedApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appUserModelId" => lambda {|n| @app_user_model_id = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appUserModelId", @app_user_model_id)
            end
        end
    end
end
