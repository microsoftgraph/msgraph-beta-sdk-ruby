require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PrivilegedRoleSettings < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # true if the approval is required when activate the role. false if the approval is not required when activate the role.
        @approval_on_elevation
        ## 
        # List of Approval ids, if approval is required for activation.
        @approver_ids
        ## 
        # The duration when the role is activated.
        @elevation_duration
        ## 
        # true if mfaOnElevation is configurable. false if mfaOnElevation is not configurable.
        @is_mfa_on_elevation_configurable
        ## 
        # Internal used only.
        @last_global_admin
        ## 
        # Maximal duration for the activated role.
        @max_elavation_duration
        ## 
        # true if MFA is required to activate the role. false if MFA is not required to activate the role.
        @mfa_on_elevation
        ## 
        # Minimal duration for the activated role.
        @min_elevation_duration
        ## 
        # true if send notification to the end user when the role is activated. false if do not send notification when the role is activated.
        @notification_to_user_on_elevation
        ## 
        # true if the ticketing information is required when activate the role. false if the ticketing information is not required when activate the role.
        @ticketing_info_on_elevation
        ## 
        ## Gets the approvalOnElevation property value. true if the approval is required when activate the role. false if the approval is not required when activate the role.
        ## @return a boolean
        ## 
        def approval_on_elevation
            return @approval_on_elevation
        end
        ## 
        ## Sets the approvalOnElevation property value. true if the approval is required when activate the role. false if the approval is not required when activate the role.
        ## @param value Value to set for the approval_on_elevation property.
        ## @return a void
        ## 
        def approval_on_elevation=(value)
            @approval_on_elevation = value
        end
        ## 
        ## Gets the approverIds property value. List of Approval ids, if approval is required for activation.
        ## @return a string
        ## 
        def approver_ids
            return @approver_ids
        end
        ## 
        ## Sets the approverIds property value. List of Approval ids, if approval is required for activation.
        ## @param value Value to set for the approver_ids property.
        ## @return a void
        ## 
        def approver_ids=(value)
            @approver_ids = value
        end
        ## 
        ## Instantiates a new privilegedRoleSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a privileged_role_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PrivilegedRoleSettings.new
        end
        ## 
        ## Gets the elevationDuration property value. The duration when the role is activated.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def elevation_duration
            return @elevation_duration
        end
        ## 
        ## Sets the elevationDuration property value. The duration when the role is activated.
        ## @param value Value to set for the elevation_duration property.
        ## @return a void
        ## 
        def elevation_duration=(value)
            @elevation_duration = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "approvalOnElevation" => lambda {|n| @approval_on_elevation = n.get_boolean_value() },
                "approverIds" => lambda {|n| @approver_ids = n.get_collection_of_primitive_values(String) },
                "elevationDuration" => lambda {|n| @elevation_duration = n.get_duration_value() },
                "isMfaOnElevationConfigurable" => lambda {|n| @is_mfa_on_elevation_configurable = n.get_boolean_value() },
                "lastGlobalAdmin" => lambda {|n| @last_global_admin = n.get_boolean_value() },
                "maxElavationDuration" => lambda {|n| @max_elavation_duration = n.get_duration_value() },
                "mfaOnElevation" => lambda {|n| @mfa_on_elevation = n.get_boolean_value() },
                "minElevationDuration" => lambda {|n| @min_elevation_duration = n.get_duration_value() },
                "notificationToUserOnElevation" => lambda {|n| @notification_to_user_on_elevation = n.get_boolean_value() },
                "ticketingInfoOnElevation" => lambda {|n| @ticketing_info_on_elevation = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the isMfaOnElevationConfigurable property value. true if mfaOnElevation is configurable. false if mfaOnElevation is not configurable.
        ## @return a boolean
        ## 
        def is_mfa_on_elevation_configurable
            return @is_mfa_on_elevation_configurable
        end
        ## 
        ## Sets the isMfaOnElevationConfigurable property value. true if mfaOnElevation is configurable. false if mfaOnElevation is not configurable.
        ## @param value Value to set for the is_mfa_on_elevation_configurable property.
        ## @return a void
        ## 
        def is_mfa_on_elevation_configurable=(value)
            @is_mfa_on_elevation_configurable = value
        end
        ## 
        ## Gets the lastGlobalAdmin property value. Internal used only.
        ## @return a boolean
        ## 
        def last_global_admin
            return @last_global_admin
        end
        ## 
        ## Sets the lastGlobalAdmin property value. Internal used only.
        ## @param value Value to set for the last_global_admin property.
        ## @return a void
        ## 
        def last_global_admin=(value)
            @last_global_admin = value
        end
        ## 
        ## Gets the maxElavationDuration property value. Maximal duration for the activated role.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def max_elavation_duration
            return @max_elavation_duration
        end
        ## 
        ## Sets the maxElavationDuration property value. Maximal duration for the activated role.
        ## @param value Value to set for the max_elavation_duration property.
        ## @return a void
        ## 
        def max_elavation_duration=(value)
            @max_elavation_duration = value
        end
        ## 
        ## Gets the mfaOnElevation property value. true if MFA is required to activate the role. false if MFA is not required to activate the role.
        ## @return a boolean
        ## 
        def mfa_on_elevation
            return @mfa_on_elevation
        end
        ## 
        ## Sets the mfaOnElevation property value. true if MFA is required to activate the role. false if MFA is not required to activate the role.
        ## @param value Value to set for the mfa_on_elevation property.
        ## @return a void
        ## 
        def mfa_on_elevation=(value)
            @mfa_on_elevation = value
        end
        ## 
        ## Gets the minElevationDuration property value. Minimal duration for the activated role.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def min_elevation_duration
            return @min_elevation_duration
        end
        ## 
        ## Sets the minElevationDuration property value. Minimal duration for the activated role.
        ## @param value Value to set for the min_elevation_duration property.
        ## @return a void
        ## 
        def min_elevation_duration=(value)
            @min_elevation_duration = value
        end
        ## 
        ## Gets the notificationToUserOnElevation property value. true if send notification to the end user when the role is activated. false if do not send notification when the role is activated.
        ## @return a boolean
        ## 
        def notification_to_user_on_elevation
            return @notification_to_user_on_elevation
        end
        ## 
        ## Sets the notificationToUserOnElevation property value. true if send notification to the end user when the role is activated. false if do not send notification when the role is activated.
        ## @param value Value to set for the notification_to_user_on_elevation property.
        ## @return a void
        ## 
        def notification_to_user_on_elevation=(value)
            @notification_to_user_on_elevation = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("approvalOnElevation", @approval_on_elevation)
            writer.write_collection_of_primitive_values("approverIds", @approver_ids)
            writer.write_duration_value("elevationDuration", @elevation_duration)
            writer.write_boolean_value("isMfaOnElevationConfigurable", @is_mfa_on_elevation_configurable)
            writer.write_boolean_value("lastGlobalAdmin", @last_global_admin)
            writer.write_duration_value("maxElavationDuration", @max_elavation_duration)
            writer.write_boolean_value("mfaOnElevation", @mfa_on_elevation)
            writer.write_duration_value("minElevationDuration", @min_elevation_duration)
            writer.write_boolean_value("notificationToUserOnElevation", @notification_to_user_on_elevation)
            writer.write_boolean_value("ticketingInfoOnElevation", @ticketing_info_on_elevation)
        end
        ## 
        ## Gets the ticketingInfoOnElevation property value. true if the ticketing information is required when activate the role. false if the ticketing information is not required when activate the role.
        ## @return a boolean
        ## 
        def ticketing_info_on_elevation
            return @ticketing_info_on_elevation
        end
        ## 
        ## Sets the ticketingInfoOnElevation property value. true if the ticketing information is required when activate the role. false if the ticketing information is not required when activate the role.
        ## @param value Value to set for the ticketing_info_on_elevation property.
        ## @return a void
        ## 
        def ticketing_info_on_elevation=(value)
            @ticketing_info_on_elevation = value
        end
    end
end
