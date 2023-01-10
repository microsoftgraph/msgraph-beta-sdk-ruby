require 'microsoft_kiota_abstractions'
require_relative '../../../../models/ios_lob_app_provisioning_configuration_assignment'
require_relative '../../../../models/mobile_app_provisioning_config_group_assignment'
require_relative '../../../device_app_management'
require_relative '../../ios_lob_app_provisioning_configurations'
require_relative '../item'
require_relative './assign'

module MicrosoftGraphBeta::DeviceAppManagement::IosLobAppProvisioningConfigurations::Item::Assign
    class AssignPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The appProvisioningConfigurationGroupAssignments property
        @app_provisioning_configuration_group_assignments
        ## 
        # The iOSLobAppProvisioningConfigAssignments property
        @i_o_s_lob_app_provisioning_config_assignments
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the appProvisioningConfigurationGroupAssignments property value. The appProvisioningConfigurationGroupAssignments property
        ## @return a mobile_app_provisioning_config_group_assignment
        ## 
        def app_provisioning_configuration_group_assignments
            return @app_provisioning_configuration_group_assignments
        end
        ## 
        ## Sets the appProvisioningConfigurationGroupAssignments property value. The appProvisioningConfigurationGroupAssignments property
        ## @param value Value to set for the appProvisioningConfigurationGroupAssignments property.
        ## @return a void
        ## 
        def app_provisioning_configuration_group_assignments=(value)
            @app_provisioning_configuration_group_assignments = value
        end
        ## 
        ## Instantiates a new assignPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a assign_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AssignPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "appProvisioningConfigurationGroupAssignments" => lambda {|n| @app_provisioning_configuration_group_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppProvisioningConfigGroupAssignment.create_from_discriminator_value(pn) }) },
                "iOSLobAppProvisioningConfigAssignments" => lambda {|n| @i_o_s_lob_app_provisioning_config_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosLobAppProvisioningConfigurationAssignment.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the iOSLobAppProvisioningConfigAssignments property value. The iOSLobAppProvisioningConfigAssignments property
        ## @return a ios_lob_app_provisioning_configuration_assignment
        ## 
        def i_o_s_lob_app_provisioning_config_assignments
            return @i_o_s_lob_app_provisioning_config_assignments
        end
        ## 
        ## Sets the iOSLobAppProvisioningConfigAssignments property value. The iOSLobAppProvisioningConfigAssignments property
        ## @param value Value to set for the iOSLobAppProvisioningConfigAssignments property.
        ## @return a void
        ## 
        def i_o_s_lob_app_provisioning_config_assignments=(value)
            @i_o_s_lob_app_provisioning_config_assignments = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("appProvisioningConfigurationGroupAssignments", @app_provisioning_configuration_group_assignments)
            writer.write_collection_of_object_values("iOSLobAppProvisioningConfigAssignments", @i_o_s_lob_app_provisioning_config_assignments)
            writer.write_additional_data(@additional_data)
        end
    end
end
