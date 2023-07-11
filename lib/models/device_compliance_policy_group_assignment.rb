require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device compliance policy group assignment.
        class DeviceCompliancePolicyGroupAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The navigation link to the  device compliance polic targeted.
            @device_compliance_policy
            ## 
            # Indicates if this group is should be excluded. Defaults that the group should be included
            @exclude_group
            ## 
            # The Id of the AAD group we are targeting the device compliance policy to.
            @target_group_id
            ## 
            ## Instantiates a new deviceCompliancePolicyGroupAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_policy_group_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceCompliancePolicyGroupAssignment.new
            end
            ## 
            ## Gets the deviceCompliancePolicy property value. The navigation link to the  device compliance polic targeted.
            ## @return a device_compliance_policy
            ## 
            def device_compliance_policy
                return @device_compliance_policy
            end
            ## 
            ## Sets the deviceCompliancePolicy property value. The navigation link to the  device compliance polic targeted.
            ## @param value Value to set for the device_compliance_policy property.
            ## @return a void
            ## 
            def device_compliance_policy=(value)
                @device_compliance_policy = value
            end
            ## 
            ## Gets the excludeGroup property value. Indicates if this group is should be excluded. Defaults that the group should be included
            ## @return a boolean
            ## 
            def exclude_group
                return @exclude_group
            end
            ## 
            ## Sets the excludeGroup property value. Indicates if this group is should be excluded. Defaults that the group should be included
            ## @param value Value to set for the exclude_group property.
            ## @return a void
            ## 
            def exclude_group=(value)
                @exclude_group = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceCompliancePolicy" => lambda {|n| @device_compliance_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCompliancePolicy.create_from_discriminator_value(pn) }) },
                    "excludeGroup" => lambda {|n| @exclude_group = n.get_boolean_value() },
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
                writer.write_object_value("deviceCompliancePolicy", @device_compliance_policy)
                writer.write_boolean_value("excludeGroup", @exclude_group)
                writer.write_string_value("targetGroupId", @target_group_id)
            end
            ## 
            ## Gets the targetGroupId property value. The Id of the AAD group we are targeting the device compliance policy to.
            ## @return a string
            ## 
            def target_group_id
                return @target_group_id
            end
            ## 
            ## Sets the targetGroupId property value. The Id of the AAD group we are targeting the device compliance policy to.
            ## @param value Value to set for the target_group_id property.
            ## @return a void
            ## 
            def target_group_id=(value)
                @target_group_id = value
            end
        end
    end
end
