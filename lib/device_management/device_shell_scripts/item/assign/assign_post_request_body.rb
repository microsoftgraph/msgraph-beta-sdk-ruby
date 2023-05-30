require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/device_management_script_assignment'
require_relative '../../../../models/device_management_script_group_assignment'
require_relative '../../../device_management'
require_relative '../../device_shell_scripts'
require_relative '../item'
require_relative './assign'

module MicrosoftGraphBeta
    module DeviceManagement
        module DeviceShellScripts
            module Item
                module Assign
                    class AssignPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The deviceManagementScriptAssignments property
                        @device_management_script_assignments
                        ## 
                        # The deviceManagementScriptGroupAssignments property
                        @device_management_script_group_assignments
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
                        ## Instantiates a new assignPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a assign_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return AssignPostRequestBody.new
                        end
                        ## 
                        ## Gets the deviceManagementScriptAssignments property value. The deviceManagementScriptAssignments property
                        ## @return a device_management_script_assignment
                        ## 
                        def device_management_script_assignments
                            return @device_management_script_assignments
                        end
                        ## 
                        ## Sets the deviceManagementScriptAssignments property value. The deviceManagementScriptAssignments property
                        ## @param value Value to set for the device_management_script_assignments property.
                        ## @return a void
                        ## 
                        def device_management_script_assignments=(value)
                            @device_management_script_assignments = value
                        end
                        ## 
                        ## Gets the deviceManagementScriptGroupAssignments property value. The deviceManagementScriptGroupAssignments property
                        ## @return a device_management_script_group_assignment
                        ## 
                        def device_management_script_group_assignments
                            return @device_management_script_group_assignments
                        end
                        ## 
                        ## Sets the deviceManagementScriptGroupAssignments property value. The deviceManagementScriptGroupAssignments property
                        ## @param value Value to set for the device_management_script_group_assignments property.
                        ## @return a void
                        ## 
                        def device_management_script_group_assignments=(value)
                            @device_management_script_group_assignments = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "deviceManagementScriptAssignments" => lambda {|n| @device_management_script_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptAssignment.create_from_discriminator_value(pn) }) },
                                "deviceManagementScriptGroupAssignments" => lambda {|n| @device_management_script_group_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptGroupAssignment.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("deviceManagementScriptAssignments", @device_management_script_assignments)
                            writer.write_collection_of_object_values("deviceManagementScriptGroupAssignments", @device_management_script_group_assignments)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
