require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class ContentApproval < MicrosoftGraphBeta::Models::WindowsUpdates::ComplianceChange
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The content property
        @content
        ## 
        # Settings for governing how to deploy content.
        @deployment_settings
        ## 
        # Deployments created as a result of applying the approval.
        @deployments
        ## 
        ## Instantiates a new ContentApproval and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.contentApproval"
        end
        ## 
        ## Gets the content property value. The content property
        ## @return a deployable_content
        ## 
        def content
            return @content
        end
        ## 
        ## Sets the content property value. The content property
        ## @param value Value to set for the content property.
        ## @return a void
        ## 
        def content=(value)
            @content = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a content_approval
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ContentApproval.new
        end
        ## 
        ## Gets the deploymentSettings property value. Settings for governing how to deploy content.
        ## @return a deployment_settings
        ## 
        def deployment_settings
            return @deployment_settings
        end
        ## 
        ## Sets the deploymentSettings property value. Settings for governing how to deploy content.
        ## @param value Value to set for the deployment_settings property.
        ## @return a void
        ## 
        def deployment_settings=(value)
            @deployment_settings = value
        end
        ## 
        ## Gets the deployments property value. Deployments created as a result of applying the approval.
        ## @return a deployment
        ## 
        def deployments
            return @deployments
        end
        ## 
        ## Sets the deployments property value. Deployments created as a result of applying the approval.
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
                "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeployableContent.create_from_discriminator_value(pn) }) },
                "deploymentSettings" => lambda {|n| @deployment_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentSettings.create_from_discriminator_value(pn) }) },
                "deployments" => lambda {|n| @deployments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::Deployment.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("content", @content)
            writer.write_object_value("deploymentSettings", @deployment_settings)
            writer.write_collection_of_object_values("deployments", @deployments)
        end
    end
end
