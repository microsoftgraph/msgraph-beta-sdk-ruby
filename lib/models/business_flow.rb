require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class BusinessFlow < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The customData property
            @custom_data
            ## 
            # The deDuplicationId property
            @de_duplication_id
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The policy property
            @policy
            ## 
            # The policyTemplateId property
            @policy_template_id
            ## 
            # The recordVersion property
            @record_version
            ## 
            # The schemaId property
            @schema_id
            ## 
            # The settings property
            @settings
            ## 
            ## Instantiates a new businessFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a business_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BusinessFlow.new
            end
            ## 
            ## Gets the customData property value. The customData property
            ## @return a string
            ## 
            def custom_data
                return @custom_data
            end
            ## 
            ## Sets the customData property value. The customData property
            ## @param value Value to set for the custom_data property.
            ## @return a void
            ## 
            def custom_data=(value)
                @custom_data = value
            end
            ## 
            ## Gets the deDuplicationId property value. The deDuplicationId property
            ## @return a string
            ## 
            def de_duplication_id
                return @de_duplication_id
            end
            ## 
            ## Sets the deDuplicationId property value. The deDuplicationId property
            ## @param value Value to set for the de_duplication_id property.
            ## @return a void
            ## 
            def de_duplication_id=(value)
                @de_duplication_id = value
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
            ## @param value Value to set for the display_name property.
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
                    "customData" => lambda {|n| @custom_data = n.get_string_value() },
                    "deDuplicationId" => lambda {|n| @de_duplication_id = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "policy" => lambda {|n| @policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernancePolicy.create_from_discriminator_value(pn) }) },
                    "policyTemplateId" => lambda {|n| @policy_template_id = n.get_string_value() },
                    "recordVersion" => lambda {|n| @record_version = n.get_string_value() },
                    "schemaId" => lambda {|n| @schema_id = n.get_string_value() },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BusinessFlowSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policy property value. The policy property
            ## @return a governance_policy
            ## 
            def policy
                return @policy
            end
            ## 
            ## Sets the policy property value. The policy property
            ## @param value Value to set for the policy property.
            ## @return a void
            ## 
            def policy=(value)
                @policy = value
            end
            ## 
            ## Gets the policyTemplateId property value. The policyTemplateId property
            ## @return a string
            ## 
            def policy_template_id
                return @policy_template_id
            end
            ## 
            ## Sets the policyTemplateId property value. The policyTemplateId property
            ## @param value Value to set for the policy_template_id property.
            ## @return a void
            ## 
            def policy_template_id=(value)
                @policy_template_id = value
            end
            ## 
            ## Gets the recordVersion property value. The recordVersion property
            ## @return a string
            ## 
            def record_version
                return @record_version
            end
            ## 
            ## Sets the recordVersion property value. The recordVersion property
            ## @param value Value to set for the record_version property.
            ## @return a void
            ## 
            def record_version=(value)
                @record_version = value
            end
            ## 
            ## Gets the schemaId property value. The schemaId property
            ## @return a string
            ## 
            def schema_id
                return @schema_id
            end
            ## 
            ## Sets the schemaId property value. The schemaId property
            ## @param value Value to set for the schema_id property.
            ## @return a void
            ## 
            def schema_id=(value)
                @schema_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("customData", @custom_data)
                writer.write_string_value("deDuplicationId", @de_duplication_id)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("policy", @policy)
                writer.write_string_value("policyTemplateId", @policy_template_id)
                writer.write_string_value("recordVersion", @record_version)
                writer.write_string_value("schemaId", @schema_id)
                writer.write_object_value("settings", @settings)
            end
            ## 
            ## Gets the settings property value. The settings property
            ## @return a business_flow_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings property
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
        end
    end
end
