require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class LogicAppTriggerEndpointConfiguration < MicrosoftGraphBeta::Models::CustomExtensionEndpointConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The name of the logic app.
        @logic_app_workflow_name
        ## 
        # The Azure resource group name for the logic app.
        @resource_group_name
        ## 
        # Identifier of the Azure subscription for the logic app.
        @subscription_id
        ## 
        ## Instantiates a new LogicAppTriggerEndpointConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.logicAppTriggerEndpointConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a logic_app_trigger_endpoint_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return LogicAppTriggerEndpointConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "logicAppWorkflowName" => lambda {|n| @logic_app_workflow_name = n.get_string_value() },
                "resourceGroupName" => lambda {|n| @resource_group_name = n.get_string_value() },
                "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the logicAppWorkflowName property value. The name of the logic app.
        ## @return a string
        ## 
        def logic_app_workflow_name
            return @logic_app_workflow_name
        end
        ## 
        ## Sets the logicAppWorkflowName property value. The name of the logic app.
        ## @param value Value to set for the logicAppWorkflowName property.
        ## @return a void
        ## 
        def logic_app_workflow_name=(value)
            @logic_app_workflow_name = value
        end
        ## 
        ## Gets the resourceGroupName property value. The Azure resource group name for the logic app.
        ## @return a string
        ## 
        def resource_group_name
            return @resource_group_name
        end
        ## 
        ## Sets the resourceGroupName property value. The Azure resource group name for the logic app.
        ## @param value Value to set for the resourceGroupName property.
        ## @return a void
        ## 
        def resource_group_name=(value)
            @resource_group_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("logicAppWorkflowName", @logic_app_workflow_name)
            writer.write_string_value("resourceGroupName", @resource_group_name)
            writer.write_string_value("subscriptionId", @subscription_id)
        end
        ## 
        ## Gets the subscriptionId property value. Identifier of the Azure subscription for the logic app.
        ## @return a string
        ## 
        def subscription_id
            return @subscription_id
        end
        ## 
        ## Sets the subscriptionId property value. Identifier of the Azure subscription for the logic app.
        ## @param value Value to set for the subscriptionId property.
        ## @return a void
        ## 
        def subscription_id=(value)
            @subscription_id = value
        end
    end
end
