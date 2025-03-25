require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomAppManagementApplicationConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Property to restrict creation or update of apps based on their target signInAudience types.
            @audiences
            ## 
            # Configuration for identifierUris restrictions.
            @identifier_uris
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the audiences property value. Property to restrict creation or update of apps based on their target signInAudience types.
            ## @return a audiences_configuration
            ## 
            def audiences
                return @audiences
            end
            ## 
            ## Sets the audiences property value. Property to restrict creation or update of apps based on their target signInAudience types.
            ## @param value Value to set for the audiences property.
            ## @return a void
            ## 
            def audiences=(value)
                @audiences = value
            end
            ## 
            ## Instantiates a new CustomAppManagementApplicationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_app_management_application_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomAppManagementApplicationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "audiences" => lambda {|n| @audiences = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AudiencesConfiguration.create_from_discriminator_value(pn) }) },
                    "identifierUris" => lambda {|n| @identifier_uris = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentifierUriConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identifierUris property value. Configuration for identifierUris restrictions.
            ## @return a identifier_uri_configuration
            ## 
            def identifier_uris
                return @identifier_uris
            end
            ## 
            ## Sets the identifierUris property value. Configuration for identifierUris restrictions.
            ## @param value Value to set for the identifierUris property.
            ## @return a void
            ## 
            def identifier_uris=(value)
                @identifier_uris = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_object_value("audiences", @audiences)
                writer.write_object_value("identifierUris", @identifier_uris)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
