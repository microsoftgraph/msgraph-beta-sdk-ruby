require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RemoteActionAudit < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Remote actions Intune supports.
            @action
            ## 
            # The actionState property
            @action_state
            ## 
            # Intune device name.
            @device_display_name
            ## 
            # IMEI of the device.
            @device_i_m_e_i
            ## 
            # Upn of the device owner.
            @device_owner_user_principal_name
            ## 
            # User who initiated the device action, format is UPN.
            @initiated_by_user_principal_name
            ## 
            # Action target.
            @managed_device_id
            ## 
            # Time when the action was issued, given in UTC.
            @request_date_time
            ## 
            # [deprecated] Please use InitiatedByUserPrincipalName instead.
            @user_name
            ## 
            ## Gets the action property value. Remote actions Intune supports.
            ## @return a remote_action
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. Remote actions Intune supports.
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Gets the actionState property value. The actionState property
            ## @return a action_state
            ## 
            def action_state
                return @action_state
            end
            ## 
            ## Sets the actionState property value. The actionState property
            ## @param value Value to set for the action_state property.
            ## @return a void
            ## 
            def action_state=(value)
                @action_state = value
            end
            ## 
            ## Instantiates a new RemoteActionAudit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a remote_action_audit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RemoteActionAudit.new
            end
            ## 
            ## Gets the deviceDisplayName property value. Intune device name.
            ## @return a string
            ## 
            def device_display_name
                return @device_display_name
            end
            ## 
            ## Sets the deviceDisplayName property value. Intune device name.
            ## @param value Value to set for the device_display_name property.
            ## @return a void
            ## 
            def device_display_name=(value)
                @device_display_name = value
            end
            ## 
            ## Gets the deviceIMEI property value. IMEI of the device.
            ## @return a string
            ## 
            def device_i_m_e_i
                return @device_i_m_e_i
            end
            ## 
            ## Sets the deviceIMEI property value. IMEI of the device.
            ## @param value Value to set for the device_i_m_e_i property.
            ## @return a void
            ## 
            def device_i_m_e_i=(value)
                @device_i_m_e_i = value
            end
            ## 
            ## Gets the deviceOwnerUserPrincipalName property value. Upn of the device owner.
            ## @return a string
            ## 
            def device_owner_user_principal_name
                return @device_owner_user_principal_name
            end
            ## 
            ## Sets the deviceOwnerUserPrincipalName property value. Upn of the device owner.
            ## @param value Value to set for the device_owner_user_principal_name property.
            ## @return a void
            ## 
            def device_owner_user_principal_name=(value)
                @device_owner_user_principal_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::RemoteAction) },
                    "actionState" => lambda {|n| @action_state = n.get_enum_value(MicrosoftGraphBeta::Models::ActionState) },
                    "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                    "deviceIMEI" => lambda {|n| @device_i_m_e_i = n.get_string_value() },
                    "deviceOwnerUserPrincipalName" => lambda {|n| @device_owner_user_principal_name = n.get_string_value() },
                    "initiatedByUserPrincipalName" => lambda {|n| @initiated_by_user_principal_name = n.get_string_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "requestDateTime" => lambda {|n| @request_date_time = n.get_date_time_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the initiatedByUserPrincipalName property value. User who initiated the device action, format is UPN.
            ## @return a string
            ## 
            def initiated_by_user_principal_name
                return @initiated_by_user_principal_name
            end
            ## 
            ## Sets the initiatedByUserPrincipalName property value. User who initiated the device action, format is UPN.
            ## @param value Value to set for the initiated_by_user_principal_name property.
            ## @return a void
            ## 
            def initiated_by_user_principal_name=(value)
                @initiated_by_user_principal_name = value
            end
            ## 
            ## Gets the managedDeviceId property value. Action target.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. Action target.
            ## @param value Value to set for the managed_device_id property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the requestDateTime property value. Time when the action was issued, given in UTC.
            ## @return a date_time
            ## 
            def request_date_time
                return @request_date_time
            end
            ## 
            ## Sets the requestDateTime property value. Time when the action was issued, given in UTC.
            ## @param value Value to set for the request_date_time property.
            ## @return a void
            ## 
            def request_date_time=(value)
                @request_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("action", @action)
                writer.write_enum_value("actionState", @action_state)
                writer.write_string_value("deviceDisplayName", @device_display_name)
                writer.write_string_value("deviceIMEI", @device_i_m_e_i)
                writer.write_string_value("deviceOwnerUserPrincipalName", @device_owner_user_principal_name)
                writer.write_string_value("initiatedByUserPrincipalName", @initiated_by_user_principal_name)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_date_time_value("requestDateTime", @request_date_time)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the userName property value. [deprecated] Please use InitiatedByUserPrincipalName instead.
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. [deprecated] Please use InitiatedByUserPrincipalName instead.
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
