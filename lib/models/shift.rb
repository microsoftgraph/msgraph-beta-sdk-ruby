require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Shift < MicrosoftGraphBeta::Models::ChangeTrackedEntity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The draft version of this shift that is viewable by managers. Required.
        @draft_shift
        ## 
        # The isStagedForDeletion property
        @is_staged_for_deletion
        ## 
        # The schedulingGroupId property
        @scheduling_group_id
        ## 
        # The sharedShift property
        @shared_shift
        ## 
        # The userId property
        @user_id
        ## 
        ## Instantiates a new Shift and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.shift"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a shift
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Shift.new
        end
        ## 
        ## Gets the draftShift property value. The draft version of this shift that is viewable by managers. Required.
        ## @return a shift_item
        ## 
        def draft_shift
            return @draft_shift
        end
        ## 
        ## Sets the draftShift property value. The draft version of this shift that is viewable by managers. Required.
        ## @param value Value to set for the draft_shift property.
        ## @return a void
        ## 
        def draft_shift=(value)
            @draft_shift = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "draftShift" => lambda {|n| @draft_shift = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ShiftItem.create_from_discriminator_value(pn) }) },
                "isStagedForDeletion" => lambda {|n| @is_staged_for_deletion = n.get_boolean_value() },
                "schedulingGroupId" => lambda {|n| @scheduling_group_id = n.get_string_value() },
                "sharedShift" => lambda {|n| @shared_shift = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ShiftItem.create_from_discriminator_value(pn) }) },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isStagedForDeletion property value. The isStagedForDeletion property
        ## @return a boolean
        ## 
        def is_staged_for_deletion
            return @is_staged_for_deletion
        end
        ## 
        ## Sets the isStagedForDeletion property value. The isStagedForDeletion property
        ## @param value Value to set for the is_staged_for_deletion property.
        ## @return a void
        ## 
        def is_staged_for_deletion=(value)
            @is_staged_for_deletion = value
        end
        ## 
        ## Gets the schedulingGroupId property value. The schedulingGroupId property
        ## @return a string
        ## 
        def scheduling_group_id
            return @scheduling_group_id
        end
        ## 
        ## Sets the schedulingGroupId property value. The schedulingGroupId property
        ## @param value Value to set for the scheduling_group_id property.
        ## @return a void
        ## 
        def scheduling_group_id=(value)
            @scheduling_group_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("draftShift", @draft_shift)
            writer.write_boolean_value("isStagedForDeletion", @is_staged_for_deletion)
            writer.write_string_value("schedulingGroupId", @scheduling_group_id)
            writer.write_object_value("sharedShift", @shared_shift)
            writer.write_string_value("userId", @user_id)
        end
        ## 
        ## Gets the sharedShift property value. The sharedShift property
        ## @return a shift_item
        ## 
        def shared_shift
            return @shared_shift
        end
        ## 
        ## Sets the sharedShift property value. The sharedShift property
        ## @param value Value to set for the shared_shift property.
        ## @return a void
        ## 
        def shared_shift=(value)
            @shared_shift = value
        end
        ## 
        ## Gets the userId property value. The userId property
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. The userId property
        ## @param value Value to set for the user_id property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
    end
end
