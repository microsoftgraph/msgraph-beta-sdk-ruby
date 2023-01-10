require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class OperationalInsightsConnection < MicrosoftGraphBeta::Models::WindowsUpdates::ResourceConnection
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The name of the Azure resource group that contains the Log Analytics workspace.
        @azure_resource_group_name
        ## 
        # The Azure subscription ID that contains the Log Analytics workspace.
        @azure_subscription_id
        ## 
        # The name of the Log Analytics workspace.
        @workspace_name
        ## 
        ## Gets the azureResourceGroupName property value. The name of the Azure resource group that contains the Log Analytics workspace.
        ## @return a string
        ## 
        def azure_resource_group_name
            return @azure_resource_group_name
        end
        ## 
        ## Sets the azureResourceGroupName property value. The name of the Azure resource group that contains the Log Analytics workspace.
        ## @param value Value to set for the azureResourceGroupName property.
        ## @return a void
        ## 
        def azure_resource_group_name=(value)
            @azure_resource_group_name = value
        end
        ## 
        ## Gets the azureSubscriptionId property value. The Azure subscription ID that contains the Log Analytics workspace.
        ## @return a string
        ## 
        def azure_subscription_id
            return @azure_subscription_id
        end
        ## 
        ## Sets the azureSubscriptionId property value. The Azure subscription ID that contains the Log Analytics workspace.
        ## @param value Value to set for the azureSubscriptionId property.
        ## @return a void
        ## 
        def azure_subscription_id=(value)
            @azure_subscription_id = value
        end
        ## 
        ## Instantiates a new OperationalInsightsConnection and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.operationalInsightsConnection"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a operational_insights_connection
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OperationalInsightsConnection.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "azureResourceGroupName" => lambda {|n| @azure_resource_group_name = n.get_string_value() },
                "azureSubscriptionId" => lambda {|n| @azure_subscription_id = n.get_string_value() },
                "workspaceName" => lambda {|n| @workspace_name = n.get_string_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("azureResourceGroupName", @azure_resource_group_name)
            writer.write_string_value("azureSubscriptionId", @azure_subscription_id)
            writer.write_string_value("workspaceName", @workspace_name)
        end
        ## 
        ## Gets the workspaceName property value. The name of the Log Analytics workspace.
        ## @return a string
        ## 
        def workspace_name
            return @workspace_name
        end
        ## 
        ## Sets the workspaceName property value. The name of the Log Analytics workspace.
        ## @param value Value to set for the workspaceName property.
        ## @return a void
        ## 
        def workspace_name=(value)
            @workspace_name = value
        end
    end
end
