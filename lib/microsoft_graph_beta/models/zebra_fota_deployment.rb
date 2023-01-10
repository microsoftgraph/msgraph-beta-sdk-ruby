require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The Zebra FOTA deployment entity that describes settings, deployment device groups required to create a FOTA deployment, and deployment status.
    class ZebraFotaDeployment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Collection of Android FOTA Assignment
        @deployment_assignments
        ## 
        # The Zebra FOTA deployment complex type that describes the settings required to create a FOTA deployment.
        @deployment_settings
        ## 
        # Represents the deployment status from Zebra. The status is a high level status of the deployment as opposed being a detailed status per device.
        @deployment_status
        ## 
        # A human readable description of the deployment.
        @description
        ## 
        # A human readable name of the deployment.
        @display_name
        ## 
        ## Instantiates a new zebraFotaDeployment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a zebra_fota_deployment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ZebraFotaDeployment.new
        end
        ## 
        ## Gets the deploymentAssignments property value. Collection of Android FOTA Assignment
        ## @return a android_fota_deployment_assignment
        ## 
        def deployment_assignments
            return @deployment_assignments
        end
        ## 
        ## Sets the deploymentAssignments property value. Collection of Android FOTA Assignment
        ## @param value Value to set for the deploymentAssignments property.
        ## @return a void
        ## 
        def deployment_assignments=(value)
            @deployment_assignments = value
        end
        ## 
        ## Gets the deploymentSettings property value. The Zebra FOTA deployment complex type that describes the settings required to create a FOTA deployment.
        ## @return a zebra_fota_deployment_settings
        ## 
        def deployment_settings
            return @deployment_settings
        end
        ## 
        ## Sets the deploymentSettings property value. The Zebra FOTA deployment complex type that describes the settings required to create a FOTA deployment.
        ## @param value Value to set for the deploymentSettings property.
        ## @return a void
        ## 
        def deployment_settings=(value)
            @deployment_settings = value
        end
        ## 
        ## Gets the deploymentStatus property value. Represents the deployment status from Zebra. The status is a high level status of the deployment as opposed being a detailed status per device.
        ## @return a zebra_fota_deployment_status
        ## 
        def deployment_status
            return @deployment_status
        end
        ## 
        ## Sets the deploymentStatus property value. Represents the deployment status from Zebra. The status is a high level status of the deployment as opposed being a detailed status per device.
        ## @param value Value to set for the deploymentStatus property.
        ## @return a void
        ## 
        def deployment_status=(value)
            @deployment_status = value
        end
        ## 
        ## Gets the description property value. A human readable description of the deployment.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. A human readable description of the deployment.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. A human readable name of the deployment.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. A human readable name of the deployment.
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
            return super.merge({
                "deploymentAssignments" => lambda {|n| @deployment_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidFotaDeploymentAssignment.create_from_discriminator_value(pn) }) },
                "deploymentSettings" => lambda {|n| @deployment_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ZebraFotaDeploymentSettings.create_from_discriminator_value(pn) }) },
                "deploymentStatus" => lambda {|n| @deployment_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ZebraFotaDeploymentStatus.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
            writer.write_collection_of_object_values("deploymentAssignments", @deployment_assignments)
            writer.write_object_value("deploymentSettings", @deployment_settings)
            writer.write_object_value("deploymentStatus", @deployment_status)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
        end
    end
end
