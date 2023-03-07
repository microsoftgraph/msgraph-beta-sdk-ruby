require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Log Collection request entity.
        class DeviceLogCollectionRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Enum for the template type used for collecting logs
            @template_type
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
            ## Instantiates a new deviceLogCollectionRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_log_collection_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceLogCollectionRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "templateType" => lambda {|n| @template_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceLogCollectionTemplateType) },
                }
            end
            ## 
            ## Gets the id property value. The unique identifier
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The unique identifier
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("templateType", @template_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the templateType property value. Enum for the template type used for collecting logs
            ## @return a device_log_collection_template_type
            ## 
            def template_type
                return @template_type
            end
            ## 
            ## Sets the templateType property value. Enum for the template type used for collecting logs
            ## @param value Value to set for the template_type property.
            ## @return a void
            ## 
            def template_type=(value)
                @template_type = value
            end
        end
    end
end
