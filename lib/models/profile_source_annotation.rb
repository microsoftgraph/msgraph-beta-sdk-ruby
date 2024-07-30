require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ProfileSourceAnnotation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the source is the default one.
            @is_default_source
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Names of properties that have data from this source.
            @properties
            ## 
            # The sourceId property
            @source_id
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
            ## Instantiates a new ProfileSourceAnnotation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a profile_source_annotation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProfileSourceAnnotation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isDefaultSource" => lambda {|n| @is_default_source = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "properties" => lambda {|n| @properties = n.get_collection_of_primitive_values(String) },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isDefaultSource property value. Indicates whether the source is the default one.
            ## @return a boolean
            ## 
            def is_default_source
                return @is_default_source
            end
            ## 
            ## Sets the isDefaultSource property value. Indicates whether the source is the default one.
            ## @param value Value to set for the isDefaultSource property.
            ## @return a void
            ## 
            def is_default_source=(value)
                @is_default_source = value
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
            ## Gets the properties property value. Names of properties that have data from this source.
            ## @return a string
            ## 
            def properties
                return @properties
            end
            ## 
            ## Sets the properties property value. Names of properties that have data from this source.
            ## @param value Value to set for the properties property.
            ## @return a void
            ## 
            def properties=(value)
                @properties = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isDefaultSource", @is_default_source)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("properties", @properties)
                writer.write_string_value("sourceId", @source_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceId property value. The sourceId property
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. The sourceId property
            ## @param value Value to set for the sourceId property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
        end
    end
end
