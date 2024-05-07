require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an ADMX dropdownList element and an ADMX enum element.
        class GroupPolicyPresentationDropdownList < MicrosoftGraphBeta::Models::GroupPolicyUploadedPresentation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Localized string value identifying the default choice of the list of items.
            @default_item
            ## 
            # Represents a set of localized display names and their associated values.
            @items
            ## 
            # Requirement to enter a value in the parameter box. The default value is false.
            @required
            ## 
            ## Instantiates a new GroupPolicyPresentationDropdownList and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.groupPolicyPresentationDropdownList"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation_dropdown_list
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyPresentationDropdownList.new
            end
            ## 
            ## Gets the defaultItem property value. Localized string value identifying the default choice of the list of items.
            ## @return a group_policy_presentation_dropdown_list_item
            ## 
            def default_item
                return @default_item
            end
            ## 
            ## Sets the defaultItem property value. Localized string value identifying the default choice of the list of items.
            ## @param value Value to set for the defaultItem property.
            ## @return a void
            ## 
            def default_item=(value)
                @default_item = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultItem" => lambda {|n| @default_item = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyPresentationDropdownListItem.create_from_discriminator_value(pn) }) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyPresentationDropdownListItem.create_from_discriminator_value(pn) }) },
                    "required" => lambda {|n| @required = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the items property value. Represents a set of localized display names and their associated values.
            ## @return a group_policy_presentation_dropdown_list_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. Represents a set of localized display names and their associated values.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the required property value. Requirement to enter a value in the parameter box. The default value is false.
            ## @return a boolean
            ## 
            def required
                return @required
            end
            ## 
            ## Sets the required property value. Requirement to enter a value in the parameter box. The default value is false.
            ## @param value Value to set for the required property.
            ## @return a void
            ## 
            def required=(value)
                @required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("defaultItem", @default_item)
                writer.write_collection_of_object_values("items", @items)
                writer.write_boolean_value("required", @required)
            end
        end
    end
end
