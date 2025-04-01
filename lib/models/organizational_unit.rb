require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OrganizationalUnit < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The children property
            @children
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The organizationalUnitParent property
            @organizational_unit_parent
            ## 
            # The resources property
            @resources
            ## 
            # The transitiveChildren property
            @transitive_children
            ## 
            # The transitiveResources property
            @transitive_resources
            ## 
            ## Gets the children property value. The children property
            ## @return a organizational_unit
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. The children property
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Instantiates a new OrganizationalUnit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.organizationalUnit"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a organizational_unit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OrganizationalUnit.new
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
                    "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OrganizationalUnit.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "organizationalUnitParent" => lambda {|n| @organizational_unit_parent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OrganizationalUnit.create_from_discriminator_value(pn) }) },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "transitiveChildren" => lambda {|n| @transitive_children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OrganizationalUnit.create_from_discriminator_value(pn) }) },
                    "transitiveResources" => lambda {|n| @transitive_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the organizationalUnitParent property value. The organizationalUnitParent property
            ## @return a organizational_unit
            ## 
            def organizational_unit_parent
                return @organizational_unit_parent
            end
            ## 
            ## Sets the organizationalUnitParent property value. The organizationalUnitParent property
            ## @param value Value to set for the organizationalUnitParent property.
            ## @return a void
            ## 
            def organizational_unit_parent=(value)
                @organizational_unit_parent = value
            end
            ## 
            ## Gets the resources property value. The resources property
            ## @return a directory_object
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. The resources property
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("organizationalUnitParent", @organizational_unit_parent)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_collection_of_object_values("transitiveChildren", @transitive_children)
                writer.write_collection_of_object_values("transitiveResources", @transitive_resources)
            end
            ## 
            ## Gets the transitiveChildren property value. The transitiveChildren property
            ## @return a organizational_unit
            ## 
            def transitive_children
                return @transitive_children
            end
            ## 
            ## Sets the transitiveChildren property value. The transitiveChildren property
            ## @param value Value to set for the transitiveChildren property.
            ## @return a void
            ## 
            def transitive_children=(value)
                @transitive_children = value
            end
            ## 
            ## Gets the transitiveResources property value. The transitiveResources property
            ## @return a directory_object
            ## 
            def transitive_resources
                return @transitive_resources
            end
            ## 
            ## Sets the transitiveResources property value. The transitiveResources property
            ## @param value Value to set for the transitiveResources property.
            ## @return a void
            ## 
            def transitive_resources=(value)
                @transitive_resources = value
            end
        end
    end
end
