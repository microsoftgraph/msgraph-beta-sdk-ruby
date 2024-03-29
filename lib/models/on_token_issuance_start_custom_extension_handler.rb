require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnTokenIssuanceStartCustomExtensionHandler < MicrosoftGraphBeta::Models::OnTokenIssuanceStartHandler
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configuration property
            @configuration
            ## 
            # The customExtension property
            @custom_extension
            ## 
            ## Gets the configuration property value. The configuration property
            ## @return a custom_extension_overwrite_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. The configuration property
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Instantiates a new onTokenIssuanceStartCustomExtensionHandler and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_token_issuance_start_custom_extension_handler
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnTokenIssuanceStartCustomExtensionHandler.new
            end
            ## 
            ## Gets the customExtension property value. The customExtension property
            ## @return a on_token_issuance_start_custom_extension
            ## 
            def custom_extension
                return @custom_extension
            end
            ## 
            ## Sets the customExtension property value. The customExtension property
            ## @param value Value to set for the customExtension property.
            ## @return a void
            ## 
            def custom_extension=(value)
                @custom_extension = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomExtensionOverwriteConfiguration.create_from_discriminator_value(pn) }) },
                    "customExtension" => lambda {|n| @custom_extension = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnTokenIssuanceStartCustomExtension.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("configuration", @configuration)
                writer.write_object_value("customExtension", @custom_extension)
            end
        end
    end
end
