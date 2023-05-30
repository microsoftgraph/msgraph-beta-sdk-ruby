require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExactDataMatchStoreColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The ignoredDelimiters property
            @ignored_delimiters
            ## 
            # The isCaseInsensitive property
            @is_case_insensitive
            ## 
            # The isSearchable property
            @is_searchable
            ## 
            # The name property
            @name
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
            ## Instantiates a new exactDataMatchStoreColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exact_data_match_store_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExactDataMatchStoreColumn.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "ignoredDelimiters" => lambda {|n| @ignored_delimiters = n.get_collection_of_primitive_values(String) },
                    "isCaseInsensitive" => lambda {|n| @is_case_insensitive = n.get_boolean_value() },
                    "isSearchable" => lambda {|n| @is_searchable = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the ignoredDelimiters property value. The ignoredDelimiters property
            ## @return a string
            ## 
            def ignored_delimiters
                return @ignored_delimiters
            end
            ## 
            ## Sets the ignoredDelimiters property value. The ignoredDelimiters property
            ## @param value Value to set for the ignored_delimiters property.
            ## @return a void
            ## 
            def ignored_delimiters=(value)
                @ignored_delimiters = value
            end
            ## 
            ## Gets the isCaseInsensitive property value. The isCaseInsensitive property
            ## @return a boolean
            ## 
            def is_case_insensitive
                return @is_case_insensitive
            end
            ## 
            ## Sets the isCaseInsensitive property value. The isCaseInsensitive property
            ## @param value Value to set for the is_case_insensitive property.
            ## @return a void
            ## 
            def is_case_insensitive=(value)
                @is_case_insensitive = value
            end
            ## 
            ## Gets the isSearchable property value. The isSearchable property
            ## @return a boolean
            ## 
            def is_searchable
                return @is_searchable
            end
            ## 
            ## Sets the isSearchable property value. The isSearchable property
            ## @param value Value to set for the is_searchable property.
            ## @return a void
            ## 
            def is_searchable=(value)
                @is_searchable = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
                writer.write_collection_of_primitive_values("ignoredDelimiters", @ignored_delimiters)
                writer.write_boolean_value("isCaseInsensitive", @is_case_insensitive)
                writer.write_boolean_value("isSearchable", @is_searchable)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
