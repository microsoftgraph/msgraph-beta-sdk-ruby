require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/windows_defender_application_control_supplemental_policy_assignment'
require_relative '../../../device_app_management'
require_relative '../../wdac_supplemental_policies'
require_relative '../item'
require_relative './assign'

module MicrosoftGraphBeta
    module DeviceAppManagement
        module WdacSupplementalPolicies
            module Item
                module Assign
                    class AssignPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The wdacPolicyAssignments property
                        @wdac_policy_assignments
                        ## 
                        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the additionalData property.
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
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "wdacPolicyAssignments" => lambda {|n| @wdac_policy_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDefenderApplicationControlSupplementalPolicyAssignment.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("wdacPolicyAssignments", @wdac_policy_assignments)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the wdacPolicyAssignments property value. The wdacPolicyAssignments property
                        ## @return a windows_defender_application_control_supplemental_policy_assignment
                        ## 
                        def wdac_policy_assignments
                            return @wdac_policy_assignments
                        end
                        ## 
                        ## Sets the wdacPolicyAssignments property value. The wdacPolicyAssignments property
                        ## @param value Value to set for the wdacPolicyAssignments property.
                        ## @return a void
                        ## 
                        def wdac_policy_assignments=(value)
                            @wdac_policy_assignments = value
                        end
                    end
                end
            end
        end
    end
end
