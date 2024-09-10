require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AppManagementApplicationConfiguration < MicrosoftGraphBeta::Models::AppManagementConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifierUris property
            @identifier_uris
            ## 
            ## Instantiates a new AppManagementApplicationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.appManagementApplicationConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_management_application_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppManagementApplicationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identifierUris" => lambda {|n| @identifier_uris = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentifierUriConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identifierUris property value. The identifierUris property
            ## @return a identifier_uri_configuration
            ## 
            def identifier_uris
                return @identifier_uris
            end
            ## 
            ## Sets the identifierUris property value. The identifierUris property
            ## @param value Value to set for the identifierUris property.
            ## @return a void
            ## 
            def identifier_uris=(value)
                @identifier_uris = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("identifierUris", @identifier_uris)
            end
        end
    end
end
