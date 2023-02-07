require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/governance_schedule'
require_relative '../../../../../../privileged_access'
require_relative '../../../../../item'
require_relative '../../../../resources'
require_relative '../../../item'
require_relative '../../role_assignment_requests'
require_relative '../item'
require_relative './microsoft_graph_update_request'

module MicrosoftGraphBeta::PrivilegedAccess::Item::Resources::Item::RoleAssignmentRequests::Item::MicrosoftGraphUpdateRequest
    class UpdateRequestPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The assignmentState property
        @assignment_state
        ## 
        # The decision property
        @decision
        ## 
        # The reason property
        @reason
        ## 
        # The schedule property
        @schedule
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
        ## Gets the assignmentState property value. The assignmentState property
        ## @return a string
        ## 
        def assignment_state
            return @assignment_state
        end
        ## 
        ## Sets the assignmentState property value. The assignmentState property
        ## @param value Value to set for the assignment_state property.
        ## @return a void
        ## 
        def assignment_state=(value)
            @assignment_state = value
        end
        ## 
        ## Instantiates a new updateRequestPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a update_request_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UpdateRequestPostRequestBody.new
        end
        ## 
        ## Gets the decision property value. The decision property
        ## @return a string
        ## 
        def decision
            return @decision
        end
        ## 
        ## Sets the decision property value. The decision property
        ## @param value Value to set for the decision property.
        ## @return a void
        ## 
        def decision=(value)
            @decision = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "assignmentState" => lambda {|n| @assignment_state = n.get_string_value() },
                "decision" => lambda {|n| @decision = n.get_string_value() },
                "reason" => lambda {|n| @reason = n.get_string_value() },
                "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceSchedule.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the reason property value. The reason property
        ## @return a string
        ## 
        def reason
            return @reason
        end
        ## 
        ## Sets the reason property value. The reason property
        ## @param value Value to set for the reason property.
        ## @return a void
        ## 
        def reason=(value)
            @reason = value
        end
        ## 
        ## Gets the schedule property value. The schedule property
        ## @return a governance_schedule
        ## 
        def schedule
            return @schedule
        end
        ## 
        ## Sets the schedule property value. The schedule property
        ## @param value Value to set for the schedule property.
        ## @return a void
        ## 
        def schedule=(value)
            @schedule = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("assignmentState", @assignment_state)
            writer.write_string_value("decision", @decision)
            writer.write_string_value("reason", @reason)
            writer.write_object_value("schedule", @schedule)
            writer.write_additional_data(@additional_data)
        end
    end
end
