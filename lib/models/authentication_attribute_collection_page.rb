require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationAttributeCollectionPage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The customStringsFileId property
            @custom_strings_file_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A collection of displays of the attribute collection page.
            @views
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
            ## Instantiates a new authenticationAttributeCollectionPage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_attribute_collection_page
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationAttributeCollectionPage.new
            end
            ## 
            ## Gets the customStringsFileId property value. The customStringsFileId property
            ## @return a string
            ## 
            def custom_strings_file_id
                return @custom_strings_file_id
            end
            ## 
            ## Sets the customStringsFileId property value. The customStringsFileId property
            ## @param value Value to set for the customStringsFileId property.
            ## @return a void
            ## 
            def custom_strings_file_id=(value)
                @custom_strings_file_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "customStringsFileId" => lambda {|n| @custom_strings_file_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "views" => lambda {|n| @views = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationAttributeCollectionPageViewConfiguration.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("customStringsFileId", @custom_strings_file_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("views", @views)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the views property value. A collection of displays of the attribute collection page.
            ## @return a authentication_attribute_collection_page_view_configuration
            ## 
            def views
                return @views
            end
            ## 
            ## Sets the views property value. A collection of displays of the attribute collection page.
            ## @param value Value to set for the views property.
            ## @return a void
            ## 
            def views=(value)
                @views = value
            end
        end
    end
end
