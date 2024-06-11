require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesProduct < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents an edition of a particular Windows product.
            @editions
            ## 
            # The friendly names of the product. For example, Version 22H2 (OS build 22621). Read-only.
            @friendly_names
            ## 
            # The name of the product group. For example, Windows 11. Read-only.
            @group_name
            ## 
            # Represents a known issue related to a Windows product.
            @known_issues
            ## 
            # The name of the product. For example, Windows 11, version 22H2. Read-only.
            @name
            ## 
            # Represents a product revision.
            @revisions
            ## 
            ## Instantiates a new WindowsUpdatesProduct and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_product
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesProduct.new
            end
            ## 
            ## Gets the editions property value. Represents an edition of a particular Windows product.
            ## @return a windows_updates_edition
            ## 
            def editions
                return @editions
            end
            ## 
            ## Sets the editions property value. Represents an edition of a particular Windows product.
            ## @param value Value to set for the editions property.
            ## @return a void
            ## 
            def editions=(value)
                @editions = value
            end
            ## 
            ## Gets the friendlyNames property value. The friendly names of the product. For example, Version 22H2 (OS build 22621). Read-only.
            ## @return a string
            ## 
            def friendly_names
                return @friendly_names
            end
            ## 
            ## Sets the friendlyNames property value. The friendly names of the product. For example, Version 22H2 (OS build 22621). Read-only.
            ## @param value Value to set for the friendlyNames property.
            ## @return a void
            ## 
            def friendly_names=(value)
                @friendly_names = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "editions" => lambda {|n| @editions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesEdition.create_from_discriminator_value(pn) }) },
                    "friendlyNames" => lambda {|n| @friendly_names = n.get_collection_of_primitive_values(String) },
                    "groupName" => lambda {|n| @group_name = n.get_string_value() },
                    "knownIssues" => lambda {|n| @known_issues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesKnownIssue.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "revisions" => lambda {|n| @revisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesProductRevision.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupName property value. The name of the product group. For example, Windows 11. Read-only.
            ## @return a string
            ## 
            def group_name
                return @group_name
            end
            ## 
            ## Sets the groupName property value. The name of the product group. For example, Windows 11. Read-only.
            ## @param value Value to set for the groupName property.
            ## @return a void
            ## 
            def group_name=(value)
                @group_name = value
            end
            ## 
            ## Gets the knownIssues property value. Represents a known issue related to a Windows product.
            ## @return a windows_updates_known_issue
            ## 
            def known_issues
                return @known_issues
            end
            ## 
            ## Sets the knownIssues property value. Represents a known issue related to a Windows product.
            ## @param value Value to set for the knownIssues property.
            ## @return a void
            ## 
            def known_issues=(value)
                @known_issues = value
            end
            ## 
            ## Gets the name property value. The name of the product. For example, Windows 11, version 22H2. Read-only.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the product. For example, Windows 11, version 22H2. Read-only.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the revisions property value. Represents a product revision.
            ## @return a windows_updates_product_revision
            ## 
            def revisions
                return @revisions
            end
            ## 
            ## Sets the revisions property value. Represents a product revision.
            ## @param value Value to set for the revisions property.
            ## @return a void
            ## 
            def revisions=(value)
                @revisions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("editions", @editions)
                writer.write_collection_of_primitive_values("friendlyNames", @friendly_names)
                writer.write_string_value("groupName", @group_name)
                writer.write_collection_of_object_values("knownIssues", @known_issues)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("revisions", @revisions)
            end
        end
    end
end
