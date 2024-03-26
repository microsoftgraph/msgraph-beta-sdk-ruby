require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/device_management_configuration_just_in_time_assignment_policy'
require_relative '../../../device_management'
require_relative '../../configuration_policies'
require_relative '../item'
require_relative './assign_just_in_time_configuration'

module MicrosoftGraphBeta
    module DeviceManagement
        module ConfigurationPolicies
            module Item
                module AssignJustInTimeConfiguration
                    class AssignJustInTimeConfigurationPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The justInTimeAssignments property
                        @just_in_time_assignments
                        ## 
                        ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new AssignJustInTimeConfigurationPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a assign_just_in_time_configuration_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return AssignJustInTimeConfigurationPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "justInTimeAssignments" => lambda {|n| @just_in_time_assignments = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationJustInTimeAssignmentPolicy.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the justInTimeAssignments property value. The justInTimeAssignments property
                        ## @return a device_management_configuration_just_in_time_assignment_policy
                        ## 
                        def just_in_time_assignments
                            return @just_in_time_assignments
                        end
                        ## 
                        ## Sets the justInTimeAssignments property value. The justInTimeAssignments property
                        ## @param value Value to set for the justInTimeAssignments property.
                        ## @return a void
                        ## 
                        def just_in_time_assignments=(value)
                            @just_in_time_assignments = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("justInTimeAssignments", @just_in_time_assignments)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
