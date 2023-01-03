require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OfficeClientConfiguration < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The list of group assignments for the policy.
        @assignments
        ## 
        # List of office Client check-in status.
        @checkin_statuses
        ## 
        # Not yet documented
        @description
        ## 
        # Admin provided description of the office client configuration policy.
        @display_name
        ## 
        # Policy settings JSON string in binary format, these values cannot be changed by the user.
        @policy_payload
        ## 
        # Priority value should be unique value for each policy under a tenant and will be used for conflict resolution, lower values mean priority is high.
        @priority
        ## 
        # User check-in summary for the policy.
        @user_checkin_summary
        ## 
        # Preference settings JSON string in binary format, these values can be overridden by the user.
        @user_preference_payload
        ## 
        ## Gets the assignments property value. The list of group assignments for the policy.
        ## @return a office_client_configuration_assignment
        ## 
        def assignments
            return @assignments
        end
        ## 
        ## Sets the assignments property value. The list of group assignments for the policy.
        ## @param value Value to set for the assignments property.
        ## @return a void
        ## 
        def assignments=(value)
            @assignments = value
        end
        ## 
        ## Gets the checkinStatuses property value. List of office Client check-in status.
        ## @return a office_client_checkin_status
        ## 
        def checkin_statuses
            return @checkin_statuses
        end
        ## 
        ## Sets the checkinStatuses property value. List of office Client check-in status.
        ## @param value Value to set for the checkinStatuses property.
        ## @return a void
        ## 
        def checkin_statuses=(value)
            @checkin_statuses = value
        end
        ## 
        ## Instantiates a new OfficeClientConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a office_client_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windowsOfficeClientConfiguration"
                        return WindowsOfficeClientConfiguration.new
                    when "#microsoft.graph.windowsOfficeClientSecurityConfiguration"
                        return WindowsOfficeClientSecurityConfiguration.new
                end
            end
            return OfficeClientConfiguration.new
        end
        ## 
        ## Gets the description property value. Not yet documented
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Not yet documented
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Admin provided description of the office client configuration policy.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Admin provided description of the office client configuration policy.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OfficeClientConfigurationAssignment.create_from_discriminator_value(pn) }) },
                "checkinStatuses" => lambda {|n| @checkin_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OfficeClientCheckinStatus.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "policyPayload" => lambda {|n| @policy_payload = n.get_string_value() },
                "priority" => lambda {|n| @priority = n.get_number_value() },
                "userCheckinSummary" => lambda {|n| @user_checkin_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OfficeUserCheckinSummary.create_from_discriminator_value(pn) }) },
                "userPreferencePayload" => lambda {|n| @user_preference_payload = n.get_string_value() },
            })
        end
        ## 
        ## Gets the policyPayload property value. Policy settings JSON string in binary format, these values cannot be changed by the user.
        ## @return a binary
        ## 
        def policy_payload
            return @policy_payload
        end
        ## 
        ## Sets the policyPayload property value. Policy settings JSON string in binary format, these values cannot be changed by the user.
        ## @param value Value to set for the policyPayload property.
        ## @return a void
        ## 
        def policy_payload=(value)
            @policy_payload = value
        end
        ## 
        ## Gets the priority property value. Priority value should be unique value for each policy under a tenant and will be used for conflict resolution, lower values mean priority is high.
        ## @return a integer
        ## 
        def priority
            return @priority
        end
        ## 
        ## Sets the priority property value. Priority value should be unique value for each policy under a tenant and will be used for conflict resolution, lower values mean priority is high.
        ## @param value Value to set for the priority property.
        ## @return a void
        ## 
        def priority=(value)
            @priority = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("assignments", @assignments)
            writer.write_collection_of_object_values("checkinStatuses", @checkin_statuses)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_object_value("policyPayload", @policy_payload)
            writer.write_number_value("priority", @priority)
            writer.write_object_value("userCheckinSummary", @user_checkin_summary)
            writer.write_object_value("userPreferencePayload", @user_preference_payload)
        end
        ## 
        ## Gets the userCheckinSummary property value. User check-in summary for the policy.
        ## @return a office_user_checkin_summary
        ## 
        def user_checkin_summary
            return @user_checkin_summary
        end
        ## 
        ## Sets the userCheckinSummary property value. User check-in summary for the policy.
        ## @param value Value to set for the userCheckinSummary property.
        ## @return a void
        ## 
        def user_checkin_summary=(value)
            @user_checkin_summary = value
        end
        ## 
        ## Gets the userPreferencePayload property value. Preference settings JSON string in binary format, these values can be overridden by the user.
        ## @return a binary
        ## 
        def user_preference_payload
            return @user_preference_payload
        end
        ## 
        ## Sets the userPreferencePayload property value. Preference settings JSON string in binary format, these values can be overridden by the user.
        ## @param value Value to set for the userPreferencePayload property.
        ## @return a void
        ## 
        def user_preference_payload=(value)
            @user_preference_payload = value
        end
    end
end
