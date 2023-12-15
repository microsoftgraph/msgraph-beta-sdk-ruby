require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The group policy configuration assignment entity assigns one or more AAD groups to a specific group policy configuration.
        class GroupPolicyConfigurationAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            # The type of groups targeted the group policy configuration.
            @target
            ## 
            ## Instantiates a new groupPolicyConfigurationAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_configuration_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyConfigurationAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("target", @target)
            end
            ## 
            ## Gets the target property value. The type of groups targeted the group policy configuration.
            ## @return a device_and_app_management_assignment_target
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The type of groups targeted the group policy configuration.
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
