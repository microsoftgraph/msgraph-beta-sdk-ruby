require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class Deployment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies the audience to which content is deployed.
        @audience
        ## 
        # Specifies what content to deploy. Cannot be changed. Returned by default.
        @content
        ## 
        # The date and time the deployment was created. Returned by default. Read-only.
        @created_date_time
        ## 
        # The date and time the deployment was last modified. Returned by default. Read-only.
        @last_modified_date_time
        ## 
        # Settings specified on the specific deployment governing how to deploy content. Returned by default.
        @settings
        ## 
        # Execution status of the deployment. Returned by default.
        @state
        ## 
        ## Gets the audience property value. Specifies the audience to which content is deployed.
        ## @return a deployment_audience
        ## 
        def audience
            return @audience
        end
        ## 
        ## Sets the audience property value. Specifies the audience to which content is deployed.
        ## @param value Value to set for the audience property.
        ## @return a void
        ## 
        def audience=(value)
            @audience = value
        end
        ## 
        ## Instantiates a new deployment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the content property value. Specifies what content to deploy. Cannot be changed. Returned by default.
        ## @return a deployable_content
        ## 
        def content
            return @content
        end
        ## 
        ## Sets the content property value. Specifies what content to deploy. Cannot be changed. Returned by default.
        ## @param value Value to set for the content property.
        ## @return a void
        ## 
        def content=(value)
            @content = value
        end
        ## 
        ## Gets the createdDateTime property value. The date and time the deployment was created. Returned by default. Read-only.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time the deployment was created. Returned by default. Read-only.
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a deployment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Deployment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "audience" => lambda {|n| @audience = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentAudience.create_from_discriminator_value(pn) }) },
                "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeployableContent.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentSettings.create_from_discriminator_value(pn) }) },
                "state" => lambda {|n| @state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentState.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The date and time the deployment was last modified. Returned by default. Read-only.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The date and time the deployment was last modified. Returned by default. Read-only.
        ## @param value Value to set for the last_modified_date_time property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("audience", @audience)
            writer.write_object_value("content", @content)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_object_value("settings", @settings)
            writer.write_object_value("state", @state)
        end
        ## 
        ## Gets the settings property value. Settings specified on the specific deployment governing how to deploy content. Returned by default.
        ## @return a deployment_settings
        ## 
        def settings
            return @settings
        end
        ## 
        ## Sets the settings property value. Settings specified on the specific deployment governing how to deploy content. Returned by default.
        ## @param value Value to set for the settings property.
        ## @return a void
        ## 
        def settings=(value)
            @settings = value
        end
        ## 
        ## Gets the state property value. Execution status of the deployment. Returned by default.
        ## @return a deployment_state
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. Execution status of the deployment. Returned by default.
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
    end
end
