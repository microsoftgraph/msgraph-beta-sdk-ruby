require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Models and Manufactures meatadata for managed devices in the account
    class ManagedDeviceModelsAndManufacturers
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # List of Manufactures for managed devices in the account
        @device_manufacturers
        ## 
        # List of Models for managed devices in the account
        @device_models
        ## 
        # The OdataType property
        @odata_type
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
        ## Instantiates a new managedDeviceModelsAndManufacturers and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_device_models_and_manufacturers
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagedDeviceModelsAndManufacturers.new
        end
        ## 
        ## Gets the deviceManufacturers property value. List of Manufactures for managed devices in the account
        ## @return a string
        ## 
        def device_manufacturers
            return @device_manufacturers
        end
        ## 
        ## Sets the deviceManufacturers property value. List of Manufactures for managed devices in the account
        ## @param value Value to set for the deviceManufacturers property.
        ## @return a void
        ## 
        def device_manufacturers=(value)
            @device_manufacturers = value
        end
        ## 
        ## Gets the deviceModels property value. List of Models for managed devices in the account
        ## @return a string
        ## 
        def device_models
            return @device_models
        end
        ## 
        ## Sets the deviceModels property value. List of Models for managed devices in the account
        ## @param value Value to set for the deviceModels property.
        ## @return a void
        ## 
        def device_models=(value)
            @device_models = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "deviceManufacturers" => lambda {|n| @device_manufacturers = n.get_collection_of_primitive_values(String) },
                "deviceModels" => lambda {|n| @device_models = n.get_collection_of_primitive_values(String) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_collection_of_primitive_values("deviceManufacturers", @device_manufacturers)
            writer.write_collection_of_primitive_values("deviceModels", @device_models)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
