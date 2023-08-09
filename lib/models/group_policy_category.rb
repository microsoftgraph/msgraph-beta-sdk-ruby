require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The category entity stores the category of a group policy definition
        class GroupPolicyCategory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The children categories
            @children
            ## 
            # The id of the definition file the category came from
            @definition_file
            ## 
            # The immediate GroupPolicyDefinition children of the category
            @definitions
            ## 
            # The string id of the category's display name
            @display_name
            ## 
            # Category Ingestion source
            @ingestion_source
            ## 
            # Defines if the category is a root category
            @is_root
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            # The parent category
            @parent
            ## 
            ## Gets the children property value. The children categories
            ## @return a group_policy_category
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. The children categories
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Instantiates a new groupPolicyCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyCategory.new
            end
            ## 
            ## Gets the definitionFile property value. The id of the definition file the category came from
            ## @return a group_policy_definition_file
            ## 
            def definition_file
                return @definition_file
            end
            ## 
            ## Sets the definitionFile property value. The id of the definition file the category came from
            ## @param value Value to set for the definitionFile property.
            ## @return a void
            ## 
            def definition_file=(value)
                @definition_file = value
            end
            ## 
            ## Gets the definitions property value. The immediate GroupPolicyDefinition children of the category
            ## @return a group_policy_definition
            ## 
            def definitions
                return @definitions
            end
            ## 
            ## Sets the definitions property value. The immediate GroupPolicyDefinition children of the category
            ## @param value Value to set for the definitions property.
            ## @return a void
            ## 
            def definitions=(value)
                @definitions = value
            end
            ## 
            ## Gets the displayName property value. The string id of the category's display name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The string id of the category's display name
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
                    "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyCategory.create_from_discriminator_value(pn) }) },
                    "definitionFile" => lambda {|n| @definition_file = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinitionFile.create_from_discriminator_value(pn) }) },
                    "definitions" => lambda {|n| @definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinition.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "ingestionSource" => lambda {|n| @ingestion_source = n.get_enum_value(MicrosoftGraphBeta::Models::IngestionSource) },
                    "isRoot" => lambda {|n| @is_root = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "parent" => lambda {|n| @parent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyCategory.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the ingestionSource property value. Category Ingestion source
            ## @return a ingestion_source
            ## 
            def ingestion_source
                return @ingestion_source
            end
            ## 
            ## Sets the ingestionSource property value. Category Ingestion source
            ## @param value Value to set for the ingestionSource property.
            ## @return a void
            ## 
            def ingestion_source=(value)
                @ingestion_source = value
            end
            ## 
            ## Gets the isRoot property value. Defines if the category is a root category
            ## @return a boolean
            ## 
            def is_root
                return @is_root
            end
            ## 
            ## Sets the isRoot property value. Defines if the category is a root category
            ## @param value Value to set for the isRoot property.
            ## @return a void
            ## 
            def is_root=(value)
                @is_root = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the parent property value. The parent category
            ## @return a group_policy_category
            ## 
            def parent
                return @parent
            end
            ## 
            ## Sets the parent property value. The parent category
            ## @param value Value to set for the parent property.
            ## @return a void
            ## 
            def parent=(value)
                @parent = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("children", @children)
                writer.write_object_value("definitionFile", @definition_file)
                writer.write_collection_of_object_values("definitions", @definitions)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("ingestionSource", @ingestion_source)
                writer.write_boolean_value("isRoot", @is_root)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("parent", @parent)
            end
        end
    end
end
