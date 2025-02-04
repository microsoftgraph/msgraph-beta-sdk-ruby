require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A ConfigManager defined collection of devices or users.
        class ConfigManagerCollection < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection identifier in SCCM.
            @collection_identifier
            ## 
            # The created date.
            @created_date_time
            ## 
            # The DisplayName.
            @display_name
            ## 
            # The Hierarchy Identifier.
            @hierarchy_identifier
            ## 
            # The HierarchyName.
            @hierarchy_name
            ## 
            # The last modified date.
            @last_modified_date_time
            ## 
            ## Gets the collectionIdentifier property value. The collection identifier in SCCM.
            ## @return a string
            ## 
            def collection_identifier
                return @collection_identifier
            end
            ## 
            ## Sets the collectionIdentifier property value. The collection identifier in SCCM.
            ## @param value Value to set for the collectionIdentifier property.
            ## @return a void
            ## 
            def collection_identifier=(value)
                @collection_identifier = value
            end
            ## 
            ## Instantiates a new ConfigManagerCollection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The created date.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The created date.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a config_manager_collection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConfigManagerCollection.new
            end
            ## 
            ## Gets the displayName property value. The DisplayName.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The DisplayName.
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
                    "collectionIdentifier" => lambda {|n| @collection_identifier = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "hierarchyIdentifier" => lambda {|n| @hierarchy_identifier = n.get_string_value() },
                    "hierarchyName" => lambda {|n| @hierarchy_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the hierarchyIdentifier property value. The Hierarchy Identifier.
            ## @return a string
            ## 
            def hierarchy_identifier
                return @hierarchy_identifier
            end
            ## 
            ## Sets the hierarchyIdentifier property value. The Hierarchy Identifier.
            ## @param value Value to set for the hierarchyIdentifier property.
            ## @return a void
            ## 
            def hierarchy_identifier=(value)
                @hierarchy_identifier = value
            end
            ## 
            ## Gets the hierarchyName property value. The HierarchyName.
            ## @return a string
            ## 
            def hierarchy_name
                return @hierarchy_name
            end
            ## 
            ## Sets the hierarchyName property value. The HierarchyName.
            ## @param value Value to set for the hierarchyName property.
            ## @return a void
            ## 
            def hierarchy_name=(value)
                @hierarchy_name = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The last modified date.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The last modified date.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("collectionIdentifier", @collection_identifier)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("hierarchyIdentifier", @hierarchy_identifier)
                writer.write_string_value("hierarchyName", @hierarchy_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            end
        end
    end
end
