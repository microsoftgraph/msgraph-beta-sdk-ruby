require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OfficeClientConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignments property
            @assignments
            ## 
            # The checkinStatuses property
            @checkin_statuses
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The policyPayload property
            @policy_payload
            ## 
            # The priority property
            @priority
            ## 
            # The userCheckinSummary property
            @user_checkin_summary
            ## 
            # The userPreferencePayload property
            @user_preference_payload
            ## 
            ## Gets the assignments property value. The assignments property
            ## @return a office_client_configuration_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The assignments property
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the checkinStatuses property value. The checkinStatuses property
            ## @return a office_client_checkin_status
            ## 
            def checkin_statuses
                return @checkin_statuses
            end
            ## 
            ## Sets the checkinStatuses property value. The checkinStatuses property
            ## @param value Value to set for the checkin_statuses property.
            ## @return a void
            ## 
            def checkin_statuses=(value)
                @checkin_statuses = value
            end
            ## 
            ## Instantiates a new officeClientConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
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
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
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
                    "policyPayload" => lambda {|n| @policy_payload = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "userCheckinSummary" => lambda {|n| @user_checkin_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OfficeUserCheckinSummary.create_from_discriminator_value(pn) }) },
                    "userPreferencePayload" => lambda {|n| @user_preference_payload = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policyPayload property value. The policyPayload property
            ## @return a base64url
            ## 
            def policy_payload
                return @policy_payload
            end
            ## 
            ## Sets the policyPayload property value. The policyPayload property
            ## @param value Value to set for the policy_payload property.
            ## @return a void
            ## 
            def policy_payload=(value)
                @policy_payload = value
            end
            ## 
            ## Gets the priority property value. The priority property
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. The priority property
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
            ## Gets the userCheckinSummary property value. The userCheckinSummary property
            ## @return a office_user_checkin_summary
            ## 
            def user_checkin_summary
                return @user_checkin_summary
            end
            ## 
            ## Sets the userCheckinSummary property value. The userCheckinSummary property
            ## @param value Value to set for the user_checkin_summary property.
            ## @return a void
            ## 
            def user_checkin_summary=(value)
                @user_checkin_summary = value
            end
            ## 
            ## Gets the userPreferencePayload property value. The userPreferencePayload property
            ## @return a base64url
            ## 
            def user_preference_payload
                return @user_preference_payload
            end
            ## 
            ## Sets the userPreferencePayload property value. The userPreferencePayload property
            ## @param value Value to set for the user_preference_payload property.
            ## @return a void
            ## 
            def user_preference_payload=(value)
                @user_preference_payload = value
            end
        end
    end
end
