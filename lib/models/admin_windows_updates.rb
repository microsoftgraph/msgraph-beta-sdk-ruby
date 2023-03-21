require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './windows_updates/catalog'
require_relative './windows_updates/deployment'
require_relative './windows_updates/deployment_audience'
require_relative './windows_updates/resource_connection'
require_relative './windows_updates/updatable_asset'
require_relative './windows_updates/update_policy'

module MicrosoftGraphBeta
    module Models
        class AdminWindowsUpdates < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Catalog of content that can be approved for deployment by the deployment service. Read-only.
            @catalog
            ## 
            # The set of updatableAsset resources to which a deployment can apply.
            @deployment_audiences
            ## 
            # Deployments created using the deployment service.
            @deployments
            ## 
            # Service connections to external resources such as analytics workspaces.
            @resource_connections
            ## 
            # Assets registered with the deployment service that can receive updates.
            @updatable_assets
            ## 
            # A collection of policies for approving the deployment of different content to an audience over time.
            @update_policies
            ## 
            ## Gets the catalog property value. Catalog of content that can be approved for deployment by the deployment service. Read-only.
            ## @return a catalog
            ## 
            def catalog
                return @catalog
            end
            ## 
            ## Sets the catalog property value. Catalog of content that can be approved for deployment by the deployment service. Read-only.
            ## @param value Value to set for the catalog property.
            ## @return a void
            ## 
            def catalog=(value)
                @catalog = value
            end
            ## 
            ## Instantiates a new adminWindowsUpdates and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a admin_windows_updates
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AdminWindowsUpdates.new
            end
            ## 
            ## Gets the deploymentAudiences property value. The set of updatableAsset resources to which a deployment can apply.
            ## @return a deployment_audience
            ## 
            def deployment_audiences
                return @deployment_audiences
            end
            ## 
            ## Sets the deploymentAudiences property value. The set of updatableAsset resources to which a deployment can apply.
            ## @param value Value to set for the deployment_audiences property.
            ## @return a void
            ## 
            def deployment_audiences=(value)
                @deployment_audiences = value
            end
            ## 
            ## Gets the deployments property value. Deployments created using the deployment service.
            ## @return a deployment
            ## 
            def deployments
                return @deployments
            end
            ## 
            ## Sets the deployments property value. Deployments created using the deployment service.
            ## @param value Value to set for the deployments property.
            ## @return a void
            ## 
            def deployments=(value)
                @deployments = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "catalog" => lambda {|n| @catalog = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::Catalog.create_from_discriminator_value(pn) }) },
                    "deploymentAudiences" => lambda {|n| @deployment_audiences = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentAudience.create_from_discriminator_value(pn) }) },
                    "deployments" => lambda {|n| @deployments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::Deployment.create_from_discriminator_value(pn) }) },
                    "resourceConnections" => lambda {|n| @resource_connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::ResourceConnection.create_from_discriminator_value(pn) }) },
                    "updatableAssets" => lambda {|n| @updatable_assets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset.create_from_discriminator_value(pn) }) },
                    "updatePolicies" => lambda {|n| @update_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatePolicy.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resourceConnections property value. Service connections to external resources such as analytics workspaces.
            ## @return a resource_connection
            ## 
            def resource_connections
                return @resource_connections
            end
            ## 
            ## Sets the resourceConnections property value. Service connections to external resources such as analytics workspaces.
            ## @param value Value to set for the resource_connections property.
            ## @return a void
            ## 
            def resource_connections=(value)
                @resource_connections = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("catalog", @catalog)
                writer.write_collection_of_object_values("deploymentAudiences", @deployment_audiences)
                writer.write_collection_of_object_values("deployments", @deployments)
                writer.write_collection_of_object_values("resourceConnections", @resource_connections)
                writer.write_collection_of_object_values("updatableAssets", @updatable_assets)
                writer.write_collection_of_object_values("updatePolicies", @update_policies)
            end
            ## 
            ## Gets the updatableAssets property value. Assets registered with the deployment service that can receive updates.
            ## @return a updatable_asset
            ## 
            def updatable_assets
                return @updatable_assets
            end
            ## 
            ## Sets the updatableAssets property value. Assets registered with the deployment service that can receive updates.
            ## @param value Value to set for the updatable_assets property.
            ## @return a void
            ## 
            def updatable_assets=(value)
                @updatable_assets = value
            end
            ## 
            ## Gets the updatePolicies property value. A collection of policies for approving the deployment of different content to an audience over time.
            ## @return a update_policy
            ## 
            def update_policies
                return @update_policies
            end
            ## 
            ## Sets the updatePolicies property value. A collection of policies for approving the deployment of different content to an audience over time.
            ## @param value Value to set for the update_policies property.
            ## @return a void
            ## 
            def update_policies=(value)
                @update_policies = value
            end
        end
    end
end
