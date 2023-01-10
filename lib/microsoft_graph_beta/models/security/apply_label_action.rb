require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class ApplyLabelAction < MicrosoftGraphBeta::Models::Security::InformationProtectionAction
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The collection of actions that should be implemented by the caller.
        @actions
        ## 
        # The actionSource property
        @action_source
        ## 
        # If the label was the result of an automatic classification, supply the list of sensitive info type GUIDs that resulted in the returned label.
        @responsible_sensitive_type_ids
        ## 
        # The sensitivityLabelId property
        @sensitivity_label_id
        ## 
        ## Gets the actions property value. The collection of actions that should be implemented by the caller.
        ## @return a information_protection_action
        ## 
        def actions
            return @actions
        end
        ## 
        ## Sets the actions property value. The collection of actions that should be implemented by the caller.
        ## @param value Value to set for the actions property.
        ## @return a void
        ## 
        def actions=(value)
            @actions = value
        end
        ## 
        ## Gets the actionSource property value. The actionSource property
        ## @return a action_source
        ## 
        def action_source
            return @action_source
        end
        ## 
        ## Sets the actionSource property value. The actionSource property
        ## @param value Value to set for the actionSource property.
        ## @return a void
        ## 
        def action_source=(value)
            @action_source = value
        end
        ## 
        ## Instantiates a new ApplyLabelAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.security.applyLabelAction"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a apply_label_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ApplyLabelAction.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "actions" => lambda {|n| @actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::InformationProtectionAction.create_from_discriminator_value(pn) }) },
                "actionSource" => lambda {|n| @action_source = n.get_enum_value(MicrosoftGraphBeta::Models::Security::ActionSource) },
                "responsibleSensitiveTypeIds" => lambda {|n| @responsible_sensitive_type_ids = n.get_collection_of_primitive_values(String) },
                "sensitivityLabelId" => lambda {|n| @sensitivity_label_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the responsibleSensitiveTypeIds property value. If the label was the result of an automatic classification, supply the list of sensitive info type GUIDs that resulted in the returned label.
        ## @return a string
        ## 
        def responsible_sensitive_type_ids
            return @responsible_sensitive_type_ids
        end
        ## 
        ## Sets the responsibleSensitiveTypeIds property value. If the label was the result of an automatic classification, supply the list of sensitive info type GUIDs that resulted in the returned label.
        ## @param value Value to set for the responsibleSensitiveTypeIds property.
        ## @return a void
        ## 
        def responsible_sensitive_type_ids=(value)
            @responsible_sensitive_type_ids = value
        end
        ## 
        ## Gets the sensitivityLabelId property value. The sensitivityLabelId property
        ## @return a string
        ## 
        def sensitivity_label_id
            return @sensitivity_label_id
        end
        ## 
        ## Sets the sensitivityLabelId property value. The sensitivityLabelId property
        ## @param value Value to set for the sensitivityLabelId property.
        ## @return a void
        ## 
        def sensitivity_label_id=(value)
            @sensitivity_label_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("actions", @actions)
            writer.write_enum_value("actionSource", @action_source)
            writer.write_collection_of_primitive_values("responsibleSensitiveTypeIds", @responsible_sensitive_type_ids)
            writer.write_string_value("sensitivityLabelId", @sensitivity_label_id)
        end
    end
end
