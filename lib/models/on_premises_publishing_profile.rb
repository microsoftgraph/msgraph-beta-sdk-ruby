require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OnPremisesPublishingProfile < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # List of existing onPremisesAgentGroup objects. Read-only. Nullable.
        @agent_groups
        ## 
        # List of existing onPremisesAgent objects. Read-only. Nullable.
        @agents
        ## 
        # List of existing connectorGroup objects for applications published through Application Proxy. Read-only. Nullable.
        @connector_groups
        ## 
        # List of existing connector objects for applications published through Application Proxy. Read-only. Nullable.
        @connectors
        ## 
        # Represents a hybridAgentUpdaterConfiguration object.
        @hybrid_agent_updater_configuration
        ## 
        # The isDefaultAccessEnabled property
        @is_default_access_enabled
        ## 
        # Represents if Azure AD Application Proxy is enabled for the tenant.
        @is_enabled
        ## 
        # List of existing publishedResource objects. Read-only. Nullable.
        @published_resources
        ## 
        ## Gets the agentGroups property value. List of existing onPremisesAgentGroup objects. Read-only. Nullable.
        ## @return a on_premises_agent_group
        ## 
        def agent_groups
            return @agent_groups
        end
        ## 
        ## Sets the agentGroups property value. List of existing onPremisesAgentGroup objects. Read-only. Nullable.
        ## @param value Value to set for the agentGroups property.
        ## @return a void
        ## 
        def agent_groups=(value)
            @agent_groups = value
        end
        ## 
        ## Gets the agents property value. List of existing onPremisesAgent objects. Read-only. Nullable.
        ## @return a on_premises_agent
        ## 
        def agents
            return @agents
        end
        ## 
        ## Sets the agents property value. List of existing onPremisesAgent objects. Read-only. Nullable.
        ## @param value Value to set for the agents property.
        ## @return a void
        ## 
        def agents=(value)
            @agents = value
        end
        ## 
        ## Gets the connectorGroups property value. List of existing connectorGroup objects for applications published through Application Proxy. Read-only. Nullable.
        ## @return a connector_group
        ## 
        def connector_groups
            return @connector_groups
        end
        ## 
        ## Sets the connectorGroups property value. List of existing connectorGroup objects for applications published through Application Proxy. Read-only. Nullable.
        ## @param value Value to set for the connectorGroups property.
        ## @return a void
        ## 
        def connector_groups=(value)
            @connector_groups = value
        end
        ## 
        ## Gets the connectors property value. List of existing connector objects for applications published through Application Proxy. Read-only. Nullable.
        ## @return a connector
        ## 
        def connectors
            return @connectors
        end
        ## 
        ## Sets the connectors property value. List of existing connector objects for applications published through Application Proxy. Read-only. Nullable.
        ## @param value Value to set for the connectors property.
        ## @return a void
        ## 
        def connectors=(value)
            @connectors = value
        end
        ## 
        ## Instantiates a new onPremisesPublishingProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a on_premises_publishing_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OnPremisesPublishingProfile.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "agentGroups" => lambda {|n| @agent_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesAgentGroup.create_from_discriminator_value(pn) }) },
                "agents" => lambda {|n| @agents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesAgent.create_from_discriminator_value(pn) }) },
                "connectorGroups" => lambda {|n| @connector_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConnectorGroup.create_from_discriminator_value(pn) }) },
                "connectors" => lambda {|n| @connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Connector.create_from_discriminator_value(pn) }) },
                "hybridAgentUpdaterConfiguration" => lambda {|n| @hybrid_agent_updater_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HybridAgentUpdaterConfiguration.create_from_discriminator_value(pn) }) },
                "isDefaultAccessEnabled" => lambda {|n| @is_default_access_enabled = n.get_boolean_value() },
                "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                "publishedResources" => lambda {|n| @published_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PublishedResource.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the hybridAgentUpdaterConfiguration property value. Represents a hybridAgentUpdaterConfiguration object.
        ## @return a hybrid_agent_updater_configuration
        ## 
        def hybrid_agent_updater_configuration
            return @hybrid_agent_updater_configuration
        end
        ## 
        ## Sets the hybridAgentUpdaterConfiguration property value. Represents a hybridAgentUpdaterConfiguration object.
        ## @param value Value to set for the hybridAgentUpdaterConfiguration property.
        ## @return a void
        ## 
        def hybrid_agent_updater_configuration=(value)
            @hybrid_agent_updater_configuration = value
        end
        ## 
        ## Gets the isDefaultAccessEnabled property value. The isDefaultAccessEnabled property
        ## @return a boolean
        ## 
        def is_default_access_enabled
            return @is_default_access_enabled
        end
        ## 
        ## Sets the isDefaultAccessEnabled property value. The isDefaultAccessEnabled property
        ## @param value Value to set for the isDefaultAccessEnabled property.
        ## @return a void
        ## 
        def is_default_access_enabled=(value)
            @is_default_access_enabled = value
        end
        ## 
        ## Gets the isEnabled property value. Represents if Azure AD Application Proxy is enabled for the tenant.
        ## @return a boolean
        ## 
        def is_enabled
            return @is_enabled
        end
        ## 
        ## Sets the isEnabled property value. Represents if Azure AD Application Proxy is enabled for the tenant.
        ## @param value Value to set for the isEnabled property.
        ## @return a void
        ## 
        def is_enabled=(value)
            @is_enabled = value
        end
        ## 
        ## Gets the publishedResources property value. List of existing publishedResource objects. Read-only. Nullable.
        ## @return a published_resource
        ## 
        def published_resources
            return @published_resources
        end
        ## 
        ## Sets the publishedResources property value. List of existing publishedResource objects. Read-only. Nullable.
        ## @param value Value to set for the publishedResources property.
        ## @return a void
        ## 
        def published_resources=(value)
            @published_resources = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("agentGroups", @agent_groups)
            writer.write_collection_of_object_values("agents", @agents)
            writer.write_collection_of_object_values("connectorGroups", @connector_groups)
            writer.write_collection_of_object_values("connectors", @connectors)
            writer.write_object_value("hybridAgentUpdaterConfiguration", @hybrid_agent_updater_configuration)
            writer.write_boolean_value("isDefaultAccessEnabled", @is_default_access_enabled)
            writer.write_boolean_value("isEnabled", @is_enabled)
            writer.write_collection_of_object_values("publishedResources", @published_resources)
        end
    end
end
