require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/device_configuration_assignment'
require_relative '../../../../models/device_configuration_group_assignment'
require_relative '../../../device_management'
require_relative '../../device_configurations'
require_relative '../item'
require_relative './microsoft_graph_assign'

module MicrosoftGraphBeta
    module DeviceManagement
        module DeviceConfigurations
            module Item
                module MicrosoftGraphAssign
                    class AssignPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The assignments property
                        @assignments
                        ## 
                        # The deviceConfigurationGroupAssignments property
                        @device_configuration_group_assignments
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
                        ## Gets the assignments property value. The assignments property
                        ## @return a device_configuration_assignment
                        ## 
                        def assignments
                            return @assignments
                        end
                        ## 
                        ## Sets the assignments property value. The assignments property
                        ## @param value Value to set for the assignments property.
                        ## @return a void
                        ## 
                        def assignments=(value)
                            @assignments = value
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
                        ## Gets the deviceConfigurationGroupAssignments property value. The deviceConfigurationGroupAssignments property
                        ## @return a device_configuration_group_assignment
                        ## 
                        def device_configuration_group_assignments
                            return @device_configuration_group_assignments
                        end
                        ## 
                        ## Sets the deviceConfigurationGroupAssignments property value. The deviceConfigurationGroupAssignments property
                        ## @param value Value to set for the device_configuration_group_assignments property.
                        ## @return a void
                        ## 
                        def device_configuration_group_assignments=(value)
                            @device_configuration_group_assignments = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationAssignment.create_from_discriminator_value(pn) }) },
                                "deviceConfigurationGroupAssignments" => lambda {|n| @device_configuration_group_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationGroupAssignment.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("assignments", @assignments)
                            writer.write_collection_of_object_values("deviceConfigurationGroupAssignments", @device_configuration_group_assignments)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
