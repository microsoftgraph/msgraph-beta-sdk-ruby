require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Single configuration item inside an Android application's custom configuration schema.
    class AndroidManagedStoreAppConfigurationSchemaItem
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Data type for a configuration item inside an Android application's custom configuration schema
        @data_type
        ## 
        # Default value for boolean type items, if specified by the app developer
        @default_bool_value
        ## 
        # Default value for integer type items, if specified by the app developer
        @default_int_value
        ## 
        # Default value for string array type items, if specified by the app developer
        @default_string_array_value
        ## 
        # Default value for string type items, if specified by the app developer
        @default_string_value
        ## 
        # Description of what the item controls within the application
        @description
        ## 
        # Human readable name
        @display_name
        ## 
        # Unique index the application uses to maintain nested schema items
        @index
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Index of parent schema item to track nested schema items
        @parent_index
        ## 
        # Unique key the application uses to identify the item
        @schema_item_key
        ## 
        # List of human readable name/value pairs for the valid values that can be set for this item (Choice and Multiselect items only)
        @selections
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
        ## Instantiates a new androidManagedStoreAppConfigurationSchemaItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_managed_store_app_configuration_schema_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidManagedStoreAppConfigurationSchemaItem.new
        end
        ## 
        ## Gets the dataType property value. Data type for a configuration item inside an Android application's custom configuration schema
        ## @return a android_managed_store_app_configuration_schema_item_data_type
        ## 
        def data_type
            return @data_type
        end
        ## 
        ## Sets the dataType property value. Data type for a configuration item inside an Android application's custom configuration schema
        ## @param value Value to set for the dataType property.
        ## @return a void
        ## 
        def data_type=(value)
            @data_type = value
        end
        ## 
        ## Gets the defaultBoolValue property value. Default value for boolean type items, if specified by the app developer
        ## @return a boolean
        ## 
        def default_bool_value
            return @default_bool_value
        end
        ## 
        ## Sets the defaultBoolValue property value. Default value for boolean type items, if specified by the app developer
        ## @param value Value to set for the defaultBoolValue property.
        ## @return a void
        ## 
        def default_bool_value=(value)
            @default_bool_value = value
        end
        ## 
        ## Gets the defaultIntValue property value. Default value for integer type items, if specified by the app developer
        ## @return a integer
        ## 
        def default_int_value
            return @default_int_value
        end
        ## 
        ## Sets the defaultIntValue property value. Default value for integer type items, if specified by the app developer
        ## @param value Value to set for the defaultIntValue property.
        ## @return a void
        ## 
        def default_int_value=(value)
            @default_int_value = value
        end
        ## 
        ## Gets the defaultStringArrayValue property value. Default value for string array type items, if specified by the app developer
        ## @return a string
        ## 
        def default_string_array_value
            return @default_string_array_value
        end
        ## 
        ## Sets the defaultStringArrayValue property value. Default value for string array type items, if specified by the app developer
        ## @param value Value to set for the defaultStringArrayValue property.
        ## @return a void
        ## 
        def default_string_array_value=(value)
            @default_string_array_value = value
        end
        ## 
        ## Gets the defaultStringValue property value. Default value for string type items, if specified by the app developer
        ## @return a string
        ## 
        def default_string_value
            return @default_string_value
        end
        ## 
        ## Sets the defaultStringValue property value. Default value for string type items, if specified by the app developer
        ## @param value Value to set for the defaultStringValue property.
        ## @return a void
        ## 
        def default_string_value=(value)
            @default_string_value = value
        end
        ## 
        ## Gets the description property value. Description of what the item controls within the application
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Description of what the item controls within the application
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Human readable name
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Human readable name
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "dataType" => lambda {|n| @data_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedStoreAppConfigurationSchemaItemDataType) },
                "defaultBoolValue" => lambda {|n| @default_bool_value = n.get_boolean_value() },
                "defaultIntValue" => lambda {|n| @default_int_value = n.get_number_value() },
                "defaultStringArrayValue" => lambda {|n| @default_string_array_value = n.get_collection_of_primitive_values(String) },
                "defaultStringValue" => lambda {|n| @default_string_value = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "index" => lambda {|n| @index = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "parentIndex" => lambda {|n| @parent_index = n.get_number_value() },
                "schemaItemKey" => lambda {|n| @schema_item_key = n.get_string_value() },
                "selections" => lambda {|n| @selections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the index property value. Unique index the application uses to maintain nested schema items
        ## @return a integer
        ## 
        def index
            return @index
        end
        ## 
        ## Sets the index property value. Unique index the application uses to maintain nested schema items
        ## @param value Value to set for the index property.
        ## @return a void
        ## 
        def index=(value)
            @index = value
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
        ## Gets the parentIndex property value. Index of parent schema item to track nested schema items
        ## @return a integer
        ## 
        def parent_index
            return @parent_index
        end
        ## 
        ## Sets the parentIndex property value. Index of parent schema item to track nested schema items
        ## @param value Value to set for the parentIndex property.
        ## @return a void
        ## 
        def parent_index=(value)
            @parent_index = value
        end
        ## 
        ## Gets the schemaItemKey property value. Unique key the application uses to identify the item
        ## @return a string
        ## 
        def schema_item_key
            return @schema_item_key
        end
        ## 
        ## Sets the schemaItemKey property value. Unique key the application uses to identify the item
        ## @param value Value to set for the schemaItemKey property.
        ## @return a void
        ## 
        def schema_item_key=(value)
            @schema_item_key = value
        end
        ## 
        ## Gets the selections property value. List of human readable name/value pairs for the valid values that can be set for this item (Choice and Multiselect items only)
        ## @return a key_value_pair
        ## 
        def selections
            return @selections
        end
        ## 
        ## Sets the selections property value. List of human readable name/value pairs for the valid values that can be set for this item (Choice and Multiselect items only)
        ## @param value Value to set for the selections property.
        ## @return a void
        ## 
        def selections=(value)
            @selections = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("dataType", @data_type)
            writer.write_boolean_value("defaultBoolValue", @default_bool_value)
            writer.write_number_value("defaultIntValue", @default_int_value)
            writer.write_collection_of_primitive_values("defaultStringArrayValue", @default_string_array_value)
            writer.write_string_value("defaultStringValue", @default_string_value)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_number_value("index", @index)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("parentIndex", @parent_index)
            writer.write_string_value("schemaItemKey", @schema_item_key)
            writer.write_collection_of_object_values("selections", @selections)
            writer.write_additional_data(@additional_data)
        end
    end
end
