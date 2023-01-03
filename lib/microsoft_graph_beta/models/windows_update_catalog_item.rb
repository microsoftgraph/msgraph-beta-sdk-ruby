require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Windows update catalog item entity
    class WindowsUpdateCatalogItem < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The display name for the catalog item.
        @display_name
        ## 
        # The last supported date for a catalog item
        @end_of_support_date
        ## 
        # The date the catalog item was released
        @release_date_time
        ## 
        ## Instantiates a new windowsUpdateCatalogItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_update_catalog_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windowsFeatureUpdateCatalogItem"
                        return WindowsFeatureUpdateCatalogItem.new
                    when "#microsoft.graph.windowsQualityUpdateCatalogItem"
                        return WindowsQualityUpdateCatalogItem.new
                end
            end
            return WindowsUpdateCatalogItem.new
        end
        ## 
        ## Gets the displayName property value. The display name for the catalog item.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name for the catalog item.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the endOfSupportDate property value. The last supported date for a catalog item
        ## @return a date_time
        ## 
        def end_of_support_date
            return @end_of_support_date
        end
        ## 
        ## Sets the endOfSupportDate property value. The last supported date for a catalog item
        ## @param value Value to set for the endOfSupportDate property.
        ## @return a void
        ## 
        def end_of_support_date=(value)
            @end_of_support_date = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "endOfSupportDate" => lambda {|n| @end_of_support_date = n.get_date_time_value() },
                "releaseDateTime" => lambda {|n| @release_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the releaseDateTime property value. The date the catalog item was released
        ## @return a date_time
        ## 
        def release_date_time
            return @release_date_time
        end
        ## 
        ## Sets the releaseDateTime property value. The date the catalog item was released
        ## @param value Value to set for the releaseDateTime property.
        ## @return a void
        ## 
        def release_date_time=(value)
            @release_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("endOfSupportDate", @end_of_support_date)
            writer.write_date_time_value("releaseDateTime", @release_date_time)
        end
    end
end
