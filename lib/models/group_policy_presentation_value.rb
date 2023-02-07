require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The base presentation value entity that stores the value for a single group policy presentation.
    class GroupPolicyPresentationValue < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The date and time the object was created.
        @created_date_time
        ## 
        # The group policy definition value associated with the presentation value.
        @definition_value
        ## 
        # The date and time the object was last modified.
        @last_modified_date_time
        ## 
        # The group policy presentation associated with the presentation value.
        @presentation
        ## 
        ## Instantiates a new groupPolicyPresentationValue and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. The date and time the object was created.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time the object was created.
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a group_policy_presentation_value
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.groupPolicyPresentationValueBoolean"
                        return GroupPolicyPresentationValueBoolean.new
                    when "#microsoft.graph.groupPolicyPresentationValueDecimal"
                        return GroupPolicyPresentationValueDecimal.new
                    when "#microsoft.graph.groupPolicyPresentationValueList"
                        return GroupPolicyPresentationValueList.new
                    when "#microsoft.graph.groupPolicyPresentationValueLongDecimal"
                        return GroupPolicyPresentationValueLongDecimal.new
                    when "#microsoft.graph.groupPolicyPresentationValueMultiText"
                        return GroupPolicyPresentationValueMultiText.new
                    when "#microsoft.graph.groupPolicyPresentationValueText"
                        return GroupPolicyPresentationValueText.new
                end
            end
            return GroupPolicyPresentationValue.new
        end
        ## 
        ## Gets the definitionValue property value. The group policy definition value associated with the presentation value.
        ## @return a group_policy_definition_value
        ## 
        def definition_value
            return @definition_value
        end
        ## 
        ## Sets the definitionValue property value. The group policy definition value associated with the presentation value.
        ## @param value Value to set for the definition_value property.
        ## @return a void
        ## 
        def definition_value=(value)
            @definition_value = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "definitionValue" => lambda {|n| @definition_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinitionValue.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "presentation" => lambda {|n| @presentation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyPresentation.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The date and time the object was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The date and time the object was last modified.
        ## @param value Value to set for the last_modified_date_time property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the presentation property value. The group policy presentation associated with the presentation value.
        ## @return a group_policy_presentation
        ## 
        def presentation
            return @presentation
        end
        ## 
        ## Sets the presentation property value. The group policy presentation associated with the presentation value.
        ## @param value Value to set for the presentation property.
        ## @return a void
        ## 
        def presentation=(value)
            @presentation = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_object_value("definitionValue", @definition_value)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_object_value("presentation", @presentation)
        end
    end
end
