require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MatchingLabel
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The applicationMode property
            @application_mode
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The id property
            @id
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
            # The OdataType property
            @odata_type
            ## 
            # The policyTip property
            @policy_tip
            ## 
            # The priority property
            @priority
            ## 
            # The toolTip property
            @tool_tip
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
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
            ## Instantiates a new MatchingLabel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a matching_label
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MatchingLabel.new
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
                return {
                    "applicationMode" => lambda {|n| @application_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationMode) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "isEndpointProtectionEnabled" => lambda {|n| @is_endpoint_protection_enabled = n.get_boolean_value() },
                    "labelActions" => lambda {|n| @label_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LabelActionBase.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyTip" => lambda {|n| @policy_tip = n.get_string_value() },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "toolTip" => lambda {|n| @tool_tip = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the policyTip property value. The policyTip property
            ## @return a string
            ## 
            def policy_tip
                return @policy_tip
            end
            ## 
            ## Sets the policyTip property value. The policyTip property
            ## @param value Value to set for the policyTip property.
            ## @return a void
            ## 
            def policy_tip=(value)
                @policy_tip = value
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
                writer.write_enum_value("applicationMode", @application_mode)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("id", @id)
                writer.write_boolean_value("isEndpointProtectionEnabled", @is_endpoint_protection_enabled)
                writer.write_collection_of_object_values("labelActions", @label_actions)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("policyTip", @policy_tip)
                writer.write_number_value("priority", @priority)
                writer.write_string_value("toolTip", @tool_tip)
                writer.write_additional_data(@additional_data)
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
end
