require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class ExactMatchDataStoreBase < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The columns property
        @columns
        ## 
        # The dataLastUpdatedDateTime property
        @data_last_updated_date_time
        ## 
        # The description property
        @description
        ## 
        # The displayName property
        @display_name
        ## 
        ## Gets the columns property value. The columns property
        ## @return a exact_data_match_store_column
        ## 
        def columns
            return @columns
        end
        ## 
        ## Sets the columns property value. The columns property
        ## @param value Value to set for the columns property.
        ## @return a void
        ## 
        def columns=(value)
            @columns = value
        end
        ## 
        ## Instantiates a new exactMatchDataStoreBase and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a exact_match_data_store_base
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.exactMatchDataStore"
                        return ExactMatchDataStore.new
                end
            end
            return ExactMatchDataStoreBase.new
        end
        ## 
        ## Gets the dataLastUpdatedDateTime property value. The dataLastUpdatedDateTime property
        ## @return a date_time
        ## 
        def data_last_updated_date_time
            return @data_last_updated_date_time
        end
        ## 
        ## Sets the dataLastUpdatedDateTime property value. The dataLastUpdatedDateTime property
        ## @param value Value to set for the dataLastUpdatedDateTime property.
        ## @return a void
        ## 
        def data_last_updated_date_time=(value)
            @data_last_updated_date_time = value
        end
        ## 
        ## Gets the description property value. The description property
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description property
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The displayName property
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The displayName property
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
            return super.merge({
                "columns" => lambda {|n| @columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExactDataMatchStoreColumn.create_from_discriminator_value(pn) }) },
                "dataLastUpdatedDateTime" => lambda {|n| @data_last_updated_date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
            writer.write_collection_of_object_values("columns", @columns)
            writer.write_date_time_value("dataLastUpdatedDateTime", @data_last_updated_date_time)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
        end
    end
end
