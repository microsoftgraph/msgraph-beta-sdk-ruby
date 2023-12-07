require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class containing the result of HasPayloadLinks action.
        class HasPayloadLinkResultItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Exception information indicates if check for this item was successful or not.Empty string for no error.
            @error
            ## 
            # Indicate whether a payload has any link or not.
            @has_link
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Key of the Payload, In the format of Guid.
            @payload_id
            ## 
            # The reason where the link comes from.
            @sources
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
            ## Instantiates a new hasPayloadLinkResultItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a has_payload_link_result_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HasPayloadLinkResultItem.new
            end
            ## 
            ## Gets the error property value. Exception information indicates if check for this item was successful or not.Empty string for no error.
            ## @return a string
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Exception information indicates if check for this item was successful or not.Empty string for no error.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "error" => lambda {|n| @error = n.get_string_value() },
                    "hasLink" => lambda {|n| @has_link = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "payloadId" => lambda {|n| @payload_id = n.get_string_value() },
                    "sources" => lambda {|n| @sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentSource.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the hasLink property value. Indicate whether a payload has any link or not.
            ## @return a boolean
            ## 
            def has_link
                return @has_link
            end
            ## 
            ## Sets the hasLink property value. Indicate whether a payload has any link or not.
            ## @param value Value to set for the hasLink property.
            ## @return a void
            ## 
            def has_link=(value)
                @has_link = value
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
            ## Gets the payloadId property value. Key of the Payload, In the format of Guid.
            ## @return a string
            ## 
            def payload_id
                return @payload_id
            end
            ## 
            ## Sets the payloadId property value. Key of the Payload, In the format of Guid.
            ## @param value Value to set for the payloadId property.
            ## @return a void
            ## 
            def payload_id=(value)
                @payload_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("error", @error)
                writer.write_boolean_value("hasLink", @has_link)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("payloadId", @payload_id)
                writer.write_collection_of_object_values("sources", @sources)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sources property value. The reason where the link comes from.
            ## @return a device_and_app_management_assignment_source
            ## 
            def sources
                return @sources
            end
            ## 
            ## Sets the sources property value. The reason where the link comes from.
            ## @param value Value to set for the sources property.
            ## @return a void
            ## 
            def sources=(value)
                @sources = value
            end
        end
    end
end
