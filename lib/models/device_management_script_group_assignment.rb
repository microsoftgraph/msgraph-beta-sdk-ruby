require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties used to assign a device management script to a group.
        class DeviceManagementScriptGroupAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Id of the Azure Active Directory group we are targeting the script to.
            @target_group_id
            ## 
            ## Instantiates a new deviceManagementScriptGroupAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_script_group_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementScriptGroupAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "targetGroupId" => lambda {|n| @target_group_id = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("targetGroupId", @target_group_id)
            end
            ## 
            ## Gets the targetGroupId property value. The Id of the Azure Active Directory group we are targeting the script to.
            ## @return a string
            ## 
            def target_group_id
                return @target_group_id
            end
            ## 
            ## Sets the targetGroupId property value. The Id of the Azure Active Directory group we are targeting the script to.
            ## @param value Value to set for the target_group_id property.
            ## @return a void
            ## 
            def target_group_id=(value)
                @target_group_id = value
            end
        end
    end
end
