require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The base entity for the display presentation of any of the additional options in a group policy definition.
        class GroupPolicyPresentation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The group policy definition associated with the presentation.
            @definition
            ## 
            # Localized text label for any presentation entity. The default value is empty.
            @label
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            ## Instantiates a new groupPolicyPresentation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_presentation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.groupPolicyPresentationCheckBox"
                            return GroupPolicyPresentationCheckBox.new
                        when "#microsoft.graph.groupPolicyPresentationComboBox"
                            return GroupPolicyPresentationComboBox.new
                        when "#microsoft.graph.groupPolicyPresentationDecimalTextBox"
                            return GroupPolicyPresentationDecimalTextBox.new
                        when "#microsoft.graph.groupPolicyPresentationDropdownList"
                            return GroupPolicyPresentationDropdownList.new
                        when "#microsoft.graph.groupPolicyPresentationListBox"
                            return GroupPolicyPresentationListBox.new
                        when "#microsoft.graph.groupPolicyPresentationLongDecimalTextBox"
                            return GroupPolicyPresentationLongDecimalTextBox.new
                        when "#microsoft.graph.groupPolicyPresentationMultiTextBox"
                            return GroupPolicyPresentationMultiTextBox.new
                        when "#microsoft.graph.groupPolicyPresentationText"
                            return GroupPolicyPresentationText.new
                        when "#microsoft.graph.groupPolicyPresentationTextBox"
                            return GroupPolicyPresentationTextBox.new
                        when "#microsoft.graph.groupPolicyUploadedPresentation"
                            return GroupPolicyUploadedPresentation.new
                    end
                end
                return GroupPolicyPresentation.new
            end
            ## 
            ## Gets the definition property value. The group policy definition associated with the presentation.
            ## @return a group_policy_definition
            ## 
            def definition
                return @definition
            end
            ## 
            ## Sets the definition property value. The group policy definition associated with the presentation.
            ## @param value Value to set for the definition property.
            ## @return a void
            ## 
            def definition=(value)
                @definition = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "definition" => lambda {|n| @definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinition.create_from_discriminator_value(pn) }) },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the label property value. Localized text label for any presentation entity. The default value is empty.
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. Localized text label for any presentation entity. The default value is empty.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
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
            ## @param value Value to set for the last_modified_date_time property.
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
                writer.write_object_value("definition", @definition)
                writer.write_string_value("label", @label)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            end
        end
    end
end
