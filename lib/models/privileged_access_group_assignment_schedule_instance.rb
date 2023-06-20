require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedAccessGroupAssignmentScheduleInstance < MicrosoftGraphBeta::Models::PrivilegedAccessScheduleInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the membership or ownership assignment relationship to the group. Required. The possible values are: owner, member,  unknownFutureValue.
            @access_id
            ## 
            # When the request activates a membership or ownership in PIM for groups, this object represents the eligibility request for the group. Otherwise, it is null.
            @activated_using
            ## 
            # The identifier of the privilegedAccessGroupAssignmentSchedule from which this instance was created. Required.
            @assignment_schedule_id
            ## 
            # Indicates whether the membership or ownership assignment is granted through activation of an eligibility or through direct assignment. Required. The possible values are: assigned, activated, unknownFutureValue.
            @assignment_type
            ## 
            # References the group that is the scope of the membership or ownership assignment through PIM for groups. Supports $expand.
            @group
            ## 
            # The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Optional.
            @group_id
            ## 
            # Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the assignment schedule. Required. The possible values are: direct, group, unknownFutureValue.
            @member_type
            ## 
            # References the principal that's in the scope of the membership or ownership assignment request through the group that's governed by PIM. Supports $expand.
            @principal
            ## 
            # The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Required.
            @principal_id
            ## 
            ## Gets the accessId property value. The identifier of the membership or ownership assignment relationship to the group. Required. The possible values are: owner, member,  unknownFutureValue.
            ## @return a privileged_access_group_relationships
            ## 
            def access_id
                return @access_id
            end
            ## 
            ## Sets the accessId property value. The identifier of the membership or ownership assignment relationship to the group. Required. The possible values are: owner, member,  unknownFutureValue.
            ## @param value Value to set for the access_id property.
            ## @return a void
            ## 
            def access_id=(value)
                @access_id = value
            end
            ## 
            ## Gets the activatedUsing property value. When the request activates a membership or ownership in PIM for groups, this object represents the eligibility request for the group. Otherwise, it is null.
            ## @return a privileged_access_group_eligibility_schedule_instance
            ## 
            def activated_using
                return @activated_using
            end
            ## 
            ## Sets the activatedUsing property value. When the request activates a membership or ownership in PIM for groups, this object represents the eligibility request for the group. Otherwise, it is null.
            ## @param value Value to set for the activated_using property.
            ## @return a void
            ## 
            def activated_using=(value)
                @activated_using = value
            end
            ## 
            ## Gets the assignmentScheduleId property value. The identifier of the privilegedAccessGroupAssignmentSchedule from which this instance was created. Required.
            ## @return a string
            ## 
            def assignment_schedule_id
                return @assignment_schedule_id
            end
            ## 
            ## Sets the assignmentScheduleId property value. The identifier of the privilegedAccessGroupAssignmentSchedule from which this instance was created. Required.
            ## @param value Value to set for the assignment_schedule_id property.
            ## @return a void
            ## 
            def assignment_schedule_id=(value)
                @assignment_schedule_id = value
            end
            ## 
            ## Gets the assignmentType property value. Indicates whether the membership or ownership assignment is granted through activation of an eligibility or through direct assignment. Required. The possible values are: assigned, activated, unknownFutureValue.
            ## @return a privileged_access_group_assignment_type
            ## 
            def assignment_type
                return @assignment_type
            end
            ## 
            ## Sets the assignmentType property value. Indicates whether the membership or ownership assignment is granted through activation of an eligibility or through direct assignment. Required. The possible values are: assigned, activated, unknownFutureValue.
            ## @param value Value to set for the assignment_type property.
            ## @return a void
            ## 
            def assignment_type=(value)
                @assignment_type = value
            end
            ## 
            ## Instantiates a new PrivilegedAccessGroupAssignmentScheduleInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_group_assignment_schedule_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccessGroupAssignmentScheduleInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessId" => lambda {|n| @access_id = n.get_enum_value(MicrosoftGraphBeta::Models::PrivilegedAccessGroupRelationships) },
                    "activatedUsing" => lambda {|n| @activated_using = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroupEligibilityScheduleInstance.create_from_discriminator_value(pn) }) },
                    "assignmentScheduleId" => lambda {|n| @assignment_schedule_id = n.get_string_value() },
                    "assignmentType" => lambda {|n| @assignment_type = n.get_enum_value(MicrosoftGraphBeta::Models::PrivilegedAccessGroupAssignmentType) },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Group.create_from_discriminator_value(pn) }) },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "memberType" => lambda {|n| @member_type = n.get_enum_value(MicrosoftGraphBeta::Models::PrivilegedAccessGroupMemberType) },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the group property value. References the group that is the scope of the membership or ownership assignment through PIM for groups. Supports $expand.
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. References the group that is the scope of the membership or ownership assignment through PIM for groups. Supports $expand.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the groupId property value. The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Optional.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Optional.
            ## @param value Value to set for the group_id property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the memberType property value. Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the assignment schedule. Required. The possible values are: direct, group, unknownFutureValue.
            ## @return a privileged_access_group_member_type
            ## 
            def member_type
                return @member_type
            end
            ## 
            ## Sets the memberType property value. Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the assignment schedule. Required. The possible values are: direct, group, unknownFutureValue.
            ## @param value Value to set for the member_type property.
            ## @return a void
            ## 
            def member_type=(value)
                @member_type = value
            end
            ## 
            ## Gets the principal property value. References the principal that's in the scope of the membership or ownership assignment request through the group that's governed by PIM. Supports $expand.
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. References the principal that's in the scope of the membership or ownership assignment request through the group that's governed by PIM. Supports $expand.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Required.
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Required.
            ## @param value Value to set for the principal_id property.
            ## @return a void
            ## 
            def principal_id=(value)
                @principal_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("accessId", @access_id)
                writer.write_object_value("activatedUsing", @activated_using)
                writer.write_string_value("assignmentScheduleId", @assignment_schedule_id)
                writer.write_enum_value("assignmentType", @assignment_type)
                writer.write_object_value("group", @group)
                writer.write_string_value("groupId", @group_id)
                writer.write_enum_value("memberType", @member_type)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
            end
        end
    end
end
