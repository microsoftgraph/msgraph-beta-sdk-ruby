require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OpenShift < MicrosoftGraphBeta::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An unpublished open shift.
            @draft_open_shift
            ## 
            # The isStagedForDeletion property
            @is_staged_for_deletion
            ## 
            # ID for the scheduling group that the open shift belongs to.
            @scheduling_group_id
            ## 
            # A published open shift.
            @shared_open_shift
            ## 
            ## Instantiates a new openShift and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.openShift"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a open_shift
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OpenShift.new
            end
            ## 
            ## Gets the draftOpenShift property value. An unpublished open shift.
            ## @return a open_shift_item
            ## 
            def draft_open_shift
                return @draft_open_shift
            end
            ## 
            ## Sets the draftOpenShift property value. An unpublished open shift.
            ## @param value Value to set for the draft_open_shift property.
            ## @return a void
            ## 
            def draft_open_shift=(value)
                @draft_open_shift = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "draftOpenShift" => lambda {|n| @draft_open_shift = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OpenShiftItem.create_from_discriminator_value(pn) }) },
                    "isStagedForDeletion" => lambda {|n| @is_staged_for_deletion = n.get_boolean_value() },
                    "schedulingGroupId" => lambda {|n| @scheduling_group_id = n.get_string_value() },
                    "sharedOpenShift" => lambda {|n| @shared_open_shift = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OpenShiftItem.create_from_discriminator_value(pn) }) },
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
            ## Gets the schedulingGroupId property value. ID for the scheduling group that the open shift belongs to.
            ## @return a string
            ## 
            def scheduling_group_id
                return @scheduling_group_id
            end
            ## 
            ## Sets the schedulingGroupId property value. ID for the scheduling group that the open shift belongs to.
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
                writer.write_object_value("draftOpenShift", @draft_open_shift)
                writer.write_boolean_value("isStagedForDeletion", @is_staged_for_deletion)
                writer.write_string_value("schedulingGroupId", @scheduling_group_id)
                writer.write_object_value("sharedOpenShift", @shared_open_shift)
            end
            ## 
            ## Gets the sharedOpenShift property value. A published open shift.
            ## @return a open_shift_item
            ## 
            def shared_open_shift
                return @shared_open_shift
            end
            ## 
            ## Sets the sharedOpenShift property value. A published open shift.
            ## @param value Value to set for the shared_open_shift property.
            ## @return a void
            ## 
            def shared_open_shift=(value)
                @shared_open_shift = value
            end
        end
    end
end
