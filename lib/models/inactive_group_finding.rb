require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InactiveGroupFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionSummary property
            @action_summary
            ## 
            # The group property
            @group
            ## 
            # The permissionsCreepIndex property
            @permissions_creep_index
            ## 
            ## Gets the actionSummary property value. The actionSummary property
            ## @return a action_summary
            ## 
            def action_summary
                return @action_summary
            end
            ## 
            ## Sets the actionSummary property value. The actionSummary property
            ## @param value Value to set for the actionSummary property.
            ## @return a void
            ## 
            def action_summary=(value)
                @action_summary = value
            end
            ## 
            ## Instantiates a new inactiveGroupFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a inactive_group_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InactiveGroupFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionSummary" => lambda {|n| @action_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ActionSummary.create_from_discriminator_value(pn) }) },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemIdentity.create_from_discriminator_value(pn) }) },
                    "permissionsCreepIndex" => lambda {|n| @permissions_creep_index = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsCreepIndex.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the group property value. The group property
            ## @return a authorization_system_identity
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The group property
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @return a permissions_creep_index
            ## 
            def permissions_creep_index
                return @permissions_creep_index
            end
            ## 
            ## Sets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @param value Value to set for the permissionsCreepIndex property.
            ## @return a void
            ## 
            def permissions_creep_index=(value)
                @permissions_creep_index = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("actionSummary", @action_summary)
                writer.write_object_value("group", @group)
                writer.write_object_value("permissionsCreepIndex", @permissions_creep_index)
            end
        end
    end
end
