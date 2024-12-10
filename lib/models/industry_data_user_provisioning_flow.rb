require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataUserProvisioningFlow < MicrosoftGraphBeta::Models::IndustryDataProvisioningFlow
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A Boolean choice indicating whether unmatched users should be created or ignored.
            @create_unmatched_users
            ## 
            # The different management choices for the new users to be provisioned.
            @creation_options
            ## 
            # The managementOptions property
            @management_options
            ## 
            ## Instantiates a new IndustryDataUserProvisioningFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.userProvisioningFlow"
            end
            ## 
            ## Gets the createUnmatchedUsers property value. A Boolean choice indicating whether unmatched users should be created or ignored.
            ## @return a boolean
            ## 
            def create_unmatched_users
                return @create_unmatched_users
            end
            ## 
            ## Sets the createUnmatchedUsers property value. A Boolean choice indicating whether unmatched users should be created or ignored.
            ## @param value Value to set for the createUnmatchedUsers property.
            ## @return a void
            ## 
            def create_unmatched_users=(value)
                @create_unmatched_users = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_user_provisioning_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataUserProvisioningFlow.new
            end
            ## 
            ## Gets the creationOptions property value. The different management choices for the new users to be provisioned.
            ## @return a industry_data_user_creation_options
            ## 
            def creation_options
                return @creation_options
            end
            ## 
            ## Sets the creationOptions property value. The different management choices for the new users to be provisioned.
            ## @param value Value to set for the creationOptions property.
            ## @return a void
            ## 
            def creation_options=(value)
                @creation_options = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createUnmatchedUsers" => lambda {|n| @create_unmatched_users = n.get_boolean_value() },
                    "creationOptions" => lambda {|n| @creation_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataUserCreationOptions.create_from_discriminator_value(pn) }) },
                    "managementOptions" => lambda {|n| @management_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataUserManagementOptions.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the managementOptions property value. The managementOptions property
            ## @return a industry_data_user_management_options
            ## 
            def management_options
                return @management_options
            end
            ## 
            ## Sets the managementOptions property value. The managementOptions property
            ## @param value Value to set for the managementOptions property.
            ## @return a void
            ## 
            def management_options=(value)
                @management_options = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("createUnmatchedUsers", @create_unmatched_users)
                writer.write_object_value("creationOptions", @creation_options)
                writer.write_object_value("managementOptions", @management_options)
            end
        end
    end
end
