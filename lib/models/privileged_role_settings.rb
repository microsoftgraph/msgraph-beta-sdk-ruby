require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedRoleSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The approvalOnElevation property
            @approval_on_elevation
            ## 
            # The approverIds property
            @approver_ids
            ## 
            # The elevationDuration property
            @elevation_duration
            ## 
            # The isMfaOnElevationConfigurable property
            @is_mfa_on_elevation_configurable
            ## 
            # The lastGlobalAdmin property
            @last_global_admin
            ## 
            # The maxElavationDuration property
            @max_elavation_duration
            ## 
            # The mfaOnElevation property
            @mfa_on_elevation
            ## 
            # The minElevationDuration property
            @min_elevation_duration
            ## 
            # The notificationToUserOnElevation property
            @notification_to_user_on_elevation
            ## 
            # The ticketingInfoOnElevation property
            @ticketing_info_on_elevation
            ## 
            ## Gets the approvalOnElevation property value. The approvalOnElevation property
            ## @return a boolean
            ## 
            def approval_on_elevation
                return @approval_on_elevation
            end
            ## 
            ## Sets the approvalOnElevation property value. The approvalOnElevation property
            ## @param value Value to set for the approvalOnElevation property.
            ## @return a void
            ## 
            def approval_on_elevation=(value)
                @approval_on_elevation = value
            end
            ## 
            ## Gets the approverIds property value. The approverIds property
            ## @return a string
            ## 
            def approver_ids
                return @approver_ids
            end
            ## 
            ## Sets the approverIds property value. The approverIds property
            ## @param value Value to set for the approverIds property.
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
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_role_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedRoleSettings.new
            end
            ## 
            ## Gets the elevationDuration property value. The elevationDuration property
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def elevation_duration
                return @elevation_duration
            end
            ## 
            ## Sets the elevationDuration property value. The elevationDuration property
            ## @param value Value to set for the elevationDuration property.
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
            ## Gets the isMfaOnElevationConfigurable property value. The isMfaOnElevationConfigurable property
            ## @return a boolean
            ## 
            def is_mfa_on_elevation_configurable
                return @is_mfa_on_elevation_configurable
            end
            ## 
            ## Sets the isMfaOnElevationConfigurable property value. The isMfaOnElevationConfigurable property
            ## @param value Value to set for the isMfaOnElevationConfigurable property.
            ## @return a void
            ## 
            def is_mfa_on_elevation_configurable=(value)
                @is_mfa_on_elevation_configurable = value
            end
            ## 
            ## Gets the lastGlobalAdmin property value. The lastGlobalAdmin property
            ## @return a boolean
            ## 
            def last_global_admin
                return @last_global_admin
            end
            ## 
            ## Sets the lastGlobalAdmin property value. The lastGlobalAdmin property
            ## @param value Value to set for the lastGlobalAdmin property.
            ## @return a void
            ## 
            def last_global_admin=(value)
                @last_global_admin = value
            end
            ## 
            ## Gets the maxElavationDuration property value. The maxElavationDuration property
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def max_elavation_duration
                return @max_elavation_duration
            end
            ## 
            ## Sets the maxElavationDuration property value. The maxElavationDuration property
            ## @param value Value to set for the maxElavationDuration property.
            ## @return a void
            ## 
            def max_elavation_duration=(value)
                @max_elavation_duration = value
            end
            ## 
            ## Gets the mfaOnElevation property value. The mfaOnElevation property
            ## @return a boolean
            ## 
            def mfa_on_elevation
                return @mfa_on_elevation
            end
            ## 
            ## Sets the mfaOnElevation property value. The mfaOnElevation property
            ## @param value Value to set for the mfaOnElevation property.
            ## @return a void
            ## 
            def mfa_on_elevation=(value)
                @mfa_on_elevation = value
            end
            ## 
            ## Gets the minElevationDuration property value. The minElevationDuration property
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def min_elevation_duration
                return @min_elevation_duration
            end
            ## 
            ## Sets the minElevationDuration property value. The minElevationDuration property
            ## @param value Value to set for the minElevationDuration property.
            ## @return a void
            ## 
            def min_elevation_duration=(value)
                @min_elevation_duration = value
            end
            ## 
            ## Gets the notificationToUserOnElevation property value. The notificationToUserOnElevation property
            ## @return a boolean
            ## 
            def notification_to_user_on_elevation
                return @notification_to_user_on_elevation
            end
            ## 
            ## Sets the notificationToUserOnElevation property value. The notificationToUserOnElevation property
            ## @param value Value to set for the notificationToUserOnElevation property.
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
            ## Gets the ticketingInfoOnElevation property value. The ticketingInfoOnElevation property
            ## @return a boolean
            ## 
            def ticketing_info_on_elevation
                return @ticketing_info_on_elevation
            end
            ## 
            ## Sets the ticketingInfoOnElevation property value. The ticketingInfoOnElevation property
            ## @param value Value to set for the ticketingInfoOnElevation property.
            ## @return a void
            ## 
            def ticketing_info_on_elevation=(value)
                @ticketing_info_on_elevation = value
            end
        end
    end
end
