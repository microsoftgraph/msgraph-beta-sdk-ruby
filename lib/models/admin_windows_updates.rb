require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

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
            # A collection of Windows products.
            @products
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
            ## @return a windows_updates_catalog
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
            ## Instantiates a new AdminWindowsUpdates and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a admin_windows_updates
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AdminWindowsUpdates.new
            end
            ## 
            ## Gets the deploymentAudiences property value. The set of updatableAsset resources to which a deployment can apply.
            ## @return a windows_updates_deployment_audience
            ## 
            def deployment_audiences
                return @deployment_audiences
            end
            ## 
            ## Sets the deploymentAudiences property value. The set of updatableAsset resources to which a deployment can apply.
            ## @param value Value to set for the deploymentAudiences property.
            ## @return a void
            ## 
            def deployment_audiences=(value)
                @deployment_audiences = value
            end
            ## 
            ## Gets the deployments property value. Deployments created using the deployment service.
            ## @return a windows_updates_deployment
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
                    "catalog" => lambda {|n| @catalog = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesCatalog.create_from_discriminator_value(pn) }) },
                    "deploymentAudiences" => lambda {|n| @deployment_audiences = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesDeploymentAudience.create_from_discriminator_value(pn) }) },
                    "deployments" => lambda {|n| @deployments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesDeployment.create_from_discriminator_value(pn) }) },
                    "products" => lambda {|n| @products = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesProduct.create_from_discriminator_value(pn) }) },
                    "resourceConnections" => lambda {|n| @resource_connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesResourceConnection.create_from_discriminator_value(pn) }) },
                    "updatableAssets" => lambda {|n| @updatable_assets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdatableAsset.create_from_discriminator_value(pn) }) },
                    "updatePolicies" => lambda {|n| @update_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdatePolicy.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the products property value. A collection of Windows products.
            ## @return a windows_updates_product
            ## 
            def products
                return @products
            end
            ## 
            ## Sets the products property value. A collection of Windows products.
            ## @param value Value to set for the products property.
            ## @return a void
            ## 
            def products=(value)
                @products = value
            end
            ## 
            ## Gets the resourceConnections property value. Service connections to external resources such as analytics workspaces.
            ## @return a windows_updates_resource_connection
            ## 
            def resource_connections
                return @resource_connections
            end
            ## 
            ## Sets the resourceConnections property value. Service connections to external resources such as analytics workspaces.
            ## @param value Value to set for the resourceConnections property.
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
                writer.write_collection_of_object_values("products", @products)
                writer.write_collection_of_object_values("resourceConnections", @resource_connections)
                writer.write_collection_of_object_values("updatableAssets", @updatable_assets)
                writer.write_collection_of_object_values("updatePolicies", @update_policies)
            end
            ## 
            ## Gets the updatableAssets property value. Assets registered with the deployment service that can receive updates.
            ## @return a windows_updates_updatable_asset
            ## 
            def updatable_assets
                return @updatable_assets
            end
            ## 
            ## Sets the updatableAssets property value. Assets registered with the deployment service that can receive updates.
            ## @param value Value to set for the updatableAssets property.
            ## @return a void
            ## 
            def updatable_assets=(value)
                @updatable_assets = value
            end
            ## 
            ## Gets the updatePolicies property value. A collection of policies for approving the deployment of different content to an audience over time.
            ## @return a windows_updates_update_policy
            ## 
            def update_policies
                return @update_policies
            end
            ## 
            ## Sets the updatePolicies property value. A collection of policies for approving the deployment of different content to an audience over time.
            ## @param value Value to set for the updatePolicies property.
            ## @return a void
            ## 
            def update_policies=(value)
                @update_policies = value
            end
        end
    end
end
