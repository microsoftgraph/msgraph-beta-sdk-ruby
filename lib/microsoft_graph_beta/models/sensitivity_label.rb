require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class SensitivityLabel < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The applicableTo property
        @applicable_to
        ## 
        # The applicationMode property
        @application_mode
        ## 
        # The assignedPolicies property
        @assigned_policies
        ## 
        # The autoLabeling property
        @auto_labeling
        ## 
        # The description property
        @description
        ## 
        # The displayName property
        @display_name
        ## 
        # The isDefault property
        @is_default
        ## 
        # The isEndpointProtectionEnabled property
        @is_endpoint_protection_enabled
        ## 
        # The labelActions property
        @label_actions
        ## 
        # The name property
        @name
        ## 
        # The priority property
        @priority
        ## 
        # The sublabels property
        @sublabels
        ## 
        # The toolTip property
        @tool_tip
        ## 
        ## Gets the applicableTo property value. The applicableTo property
        ## @return a sensitivity_label_target
        ## 
        def applicable_to
            return @applicable_to
        end
        ## 
        ## Sets the applicableTo property value. The applicableTo property
        ## @param value Value to set for the applicableTo property.
        ## @return a void
        ## 
        def applicable_to=(value)
            @applicable_to = value
        end
        ## 
        ## Gets the applicationMode property value. The applicationMode property
        ## @return a application_mode
        ## 
        def application_mode
            return @application_mode
        end
        ## 
        ## Sets the applicationMode property value. The applicationMode property
        ## @param value Value to set for the applicationMode property.
        ## @return a void
        ## 
        def application_mode=(value)
            @application_mode = value
        end
        ## 
        ## Gets the assignedPolicies property value. The assignedPolicies property
        ## @return a label_policy
        ## 
        def assigned_policies
            return @assigned_policies
        end
        ## 
        ## Sets the assignedPolicies property value. The assignedPolicies property
        ## @param value Value to set for the assignedPolicies property.
        ## @return a void
        ## 
        def assigned_policies=(value)
            @assigned_policies = value
        end
        ## 
        ## Gets the autoLabeling property value. The autoLabeling property
        ## @return a auto_labeling
        ## 
        def auto_labeling
            return @auto_labeling
        end
        ## 
        ## Sets the autoLabeling property value. The autoLabeling property
        ## @param value Value to set for the autoLabeling property.
        ## @return a void
        ## 
        def auto_labeling=(value)
            @auto_labeling = value
        end
        ## 
        ## Instantiates a new sensitivityLabel and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a sensitivity_label
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SensitivityLabel.new
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
                "applicableTo" => lambda {|n| @applicable_to = n.get_enum_value(MicrosoftGraphBeta::Models::SensitivityLabelTarget) },
                "applicationMode" => lambda {|n| @application_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationMode) },
                "assignedPolicies" => lambda {|n| @assigned_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LabelPolicy.create_from_discriminator_value(pn) }) },
                "autoLabeling" => lambda {|n| @auto_labeling = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AutoLabeling.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                "isEndpointProtectionEnabled" => lambda {|n| @is_endpoint_protection_enabled = n.get_boolean_value() },
                "labelActions" => lambda {|n| @label_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LabelActionBase.create_from_discriminator_value(pn) }) },
                "name" => lambda {|n| @name = n.get_string_value() },
                "priority" => lambda {|n| @priority = n.get_number_value() },
                "sublabels" => lambda {|n| @sublabels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SensitivityLabel.create_from_discriminator_value(pn) }) },
                "toolTip" => lambda {|n| @tool_tip = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isDefault property value. The isDefault property
        ## @return a boolean
        ## 
        def is_default
            return @is_default
        end
        ## 
        ## Sets the isDefault property value. The isDefault property
        ## @param value Value to set for the isDefault property.
        ## @return a void
        ## 
        def is_default=(value)
            @is_default = value
        end
        ## 
        ## Gets the isEndpointProtectionEnabled property value. The isEndpointProtectionEnabled property
        ## @return a boolean
        ## 
        def is_endpoint_protection_enabled
            return @is_endpoint_protection_enabled
        end
        ## 
        ## Sets the isEndpointProtectionEnabled property value. The isEndpointProtectionEnabled property
        ## @param value Value to set for the isEndpointProtectionEnabled property.
        ## @return a void
        ## 
        def is_endpoint_protection_enabled=(value)
            @is_endpoint_protection_enabled = value
        end
        ## 
        ## Gets the labelActions property value. The labelActions property
        ## @return a label_action_base
        ## 
        def label_actions
            return @label_actions
        end
        ## 
        ## Sets the labelActions property value. The labelActions property
        ## @param value Value to set for the labelActions property.
        ## @return a void
        ## 
        def label_actions=(value)
            @label_actions = value
        end
        ## 
        ## Gets the name property value. The name property
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name property
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Gets the priority property value. The priority property
        ## @return a integer
        ## 
        def priority
            return @priority
        end
        ## 
        ## Sets the priority property value. The priority property
        ## @param value Value to set for the priority property.
        ## @return a void
        ## 
        def priority=(value)
            @priority = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("applicableTo", @applicable_to)
            writer.write_enum_value("applicationMode", @application_mode)
            writer.write_collection_of_object_values("assignedPolicies", @assigned_policies)
            writer.write_object_value("autoLabeling", @auto_labeling)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("isDefault", @is_default)
            writer.write_boolean_value("isEndpointProtectionEnabled", @is_endpoint_protection_enabled)
            writer.write_collection_of_object_values("labelActions", @label_actions)
            writer.write_string_value("name", @name)
            writer.write_number_value("priority", @priority)
            writer.write_collection_of_object_values("sublabels", @sublabels)
            writer.write_string_value("toolTip", @tool_tip)
        end
        ## 
        ## Gets the sublabels property value. The sublabels property
        ## @return a sensitivity_label
        ## 
        def sublabels
            return @sublabels
        end
        ## 
        ## Sets the sublabels property value. The sublabels property
        ## @param value Value to set for the sublabels property.
        ## @return a void
        ## 
        def sublabels=(value)
            @sublabels = value
        end
        ## 
        ## Gets the toolTip property value. The toolTip property
        ## @return a string
        ## 
        def tool_tip
            return @tool_tip
        end
        ## 
        ## Sets the toolTip property value. The toolTip property
        ## @param value Value to set for the toolTip property.
        ## @return a void
        ## 
        def tool_tip=(value)
            @tool_tip = value
        end
    end
end
