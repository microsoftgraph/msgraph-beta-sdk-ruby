require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RecommendLabelAction < MicrosoftGraphBeta::Models::InformationProtectionAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionSource property
            @action_source
            ## 
            # Actions to take if the label is accepted by the user.
            @actions
            ## 
            # The label that is being recommended.
            @label
            ## 
            # The sensitive information type GUIDs that caused the recommendation to be given.
            @responsible_sensitive_type_ids
            ## 
            ## Gets the actionSource property value. The actionSource property
            ## @return a action_source
            ## 
            def action_source
                return @action_source
            end
            ## 
            ## Sets the actionSource property value. The actionSource property
            ## @param value Value to set for the action_source property.
            ## @return a void
            ## 
            def action_source=(value)
                @action_source = value
            end
            ## 
            ## Gets the actions property value. Actions to take if the label is accepted by the user.
            ## @return a information_protection_action
            ## 
            def actions
                return @actions
            end
            ## 
            ## Sets the actions property value. Actions to take if the label is accepted by the user.
            ## @param value Value to set for the actions property.
            ## @return a void
            ## 
            def actions=(value)
                @actions = value
            end
            ## 
            ## Instantiates a new RecommendLabelAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.recommendLabelAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a recommend_label_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecommendLabelAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionSource" => lambda {|n| @action_source = n.get_enum_value(MicrosoftGraphBeta::Models::ActionSource) },
                    "actions" => lambda {|n| @actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::InformationProtectionAction.create_from_discriminator_value(pn) }) },
                    "label" => lambda {|n| @label = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LabelDetails.create_from_discriminator_value(pn) }) },
                    "responsibleSensitiveTypeIds" => lambda {|n| @responsible_sensitive_type_ids = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                })
            end
            ## 
            ## Gets the label property value. The label that is being recommended.
            ## @return a label_details
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. The label that is being recommended.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
            end
            ## 
            ## Gets the responsibleSensitiveTypeIds property value. The sensitive information type GUIDs that caused the recommendation to be given.
            ## @return a guid
            ## 
            def responsible_sensitive_type_ids
                return @responsible_sensitive_type_ids
            end
            ## 
            ## Sets the responsibleSensitiveTypeIds property value. The sensitive information type GUIDs that caused the recommendation to be given.
            ## @param value Value to set for the responsible_sensitive_type_ids property.
            ## @return a void
            ## 
            def responsible_sensitive_type_ids=(value)
                @responsible_sensitive_type_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("actionSource", @action_source)
                writer.write_collection_of_object_values("actions", @actions)
                writer.write_object_value("label", @label)
                writer.write_collection_of_primitive_values("responsibleSensitiveTypeIds", @responsible_sensitive_type_ids)
            end
        end
    end
end
