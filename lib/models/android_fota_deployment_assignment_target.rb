require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The AAD Group we are deploying firmware updates to
        class AndroidFotaDeploymentAssignmentTarget < MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # AAD Group Id.
            @group_id
            ## 
            ## Instantiates a new androidFotaDeploymentAssignmentTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidFotaDeploymentAssignmentTarget"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_fota_deployment_assignment_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidFotaDeploymentAssignmentTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupId property value. AAD Group Id.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. AAD Group Id.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("groupId", @group_id)
            end
        end
    end
end
