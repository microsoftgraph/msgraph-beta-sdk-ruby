require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class Updates < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Catalog of content that can be approved for deployment by the deployment service. Read-only.
        @catalog
        ## 
        # Deployments created using the deployment service. Read-only.
        @deployments
        ## 
        # Service connections to external resources such as analytics workspaces.
        @resource_connections
        ## 
        # Assets registered with the deployment service that can receive updates. Read-only.
        @updatable_assets
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
        ## Instantiates a new updates and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a updates
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Updates.new
        end
        ## 
        ## Gets the deployments property value. Deployments created using the deployment service. Read-only.
        ## @return a deployment
        ## 
        def deployments
            return @deployments
        end
        ## 
        ## Sets the deployments property value. Deployments created using the deployment service. Read-only.
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
                "deployments" => lambda {|n| @deployments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::Deployment.create_from_discriminator_value(pn) }) },
                "resourceConnections" => lambda {|n| @resource_connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::ResourceConnection.create_from_discriminator_value(pn) }) },
                "updatableAssets" => lambda {|n| @updatable_assets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("deployments", @deployments)
            writer.write_collection_of_object_values("resourceConnections", @resource_connections)
            writer.write_collection_of_object_values("updatableAssets", @updatable_assets)
        end
        ## 
        ## Gets the updatableAssets property value. Assets registered with the deployment service that can receive updates. Read-only.
        ## @return a updatable_asset
        ## 
        def updatable_assets
            return @updatable_assets
        end
        ## 
        ## Sets the updatableAssets property value. Assets registered with the deployment service that can receive updates. Read-only.
        ## @param value Value to set for the updatableAssets property.
        ## @return a void
        ## 
        def updatable_assets=(value)
            @updatable_assets = value
        end
    end
end
