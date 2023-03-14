require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Describes the embedded SIM activation code deployment state in relation to a device.
        class EmbeddedSIMDeviceState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The time the embedded SIM device status was created. Generated service side.
            @created_date_time
            ## 
            # Device name to which the subscription was provisioned e.g. DESKTOP-JOE
            @device_name
            ## 
            # The time the embedded SIM device last checked in. Updated service side.
            @last_sync_date_time
            ## 
            # The time the embedded SIM device status was last modified. Updated service side.
            @modified_date_time
            ## 
            # Describes the various states for an embedded SIM activation code.
            @state
            ## 
            # String description of the provisioning state.
            @state_details
            ## 
            # The Universal Integrated Circuit Card Identifier (UICCID) identifying the hardware onto which a profile is to be deployed.
            @universal_integrated_circuit_card_identifier
            ## 
            # Username which the subscription was provisioned to e.g. joe@contoso.com
            @user_name
            ## 
            ## Instantiates a new embeddedSIMDeviceState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The time the embedded SIM device status was created. Generated service side.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time the embedded SIM device status was created. Generated service side.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a embedded_s_i_m_device_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmbeddedSIMDeviceState.new
            end
            ## 
            ## Gets the deviceName property value. Device name to which the subscription was provisioned e.g. DESKTOP-JOE
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Device name to which the subscription was provisioned e.g. DESKTOP-JOE
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::EmbeddedSIMDeviceStateValue) },
                    "stateDetails" => lambda {|n| @state_details = n.get_string_value() },
                    "universalIntegratedCircuitCardIdentifier" => lambda {|n| @universal_integrated_circuit_card_identifier = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastSyncDateTime property value. The time the embedded SIM device last checked in. Updated service side.
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. The time the embedded SIM device last checked in. Updated service side.
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the modifiedDateTime property value. The time the embedded SIM device status was last modified. Updated service side.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The time the embedded SIM device status was last modified. Updated service side.
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("deviceName", @device_name)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_enum_value("state", @state)
                writer.write_string_value("stateDetails", @state_details)
                writer.write_string_value("universalIntegratedCircuitCardIdentifier", @universal_integrated_circuit_card_identifier)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the state property value. Describes the various states for an embedded SIM activation code.
            ## @return a embedded_s_i_m_device_state_value
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Describes the various states for an embedded SIM activation code.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the stateDetails property value. String description of the provisioning state.
            ## @return a string
            ## 
            def state_details
                return @state_details
            end
            ## 
            ## Sets the stateDetails property value. String description of the provisioning state.
            ## @param value Value to set for the state_details property.
            ## @return a void
            ## 
            def state_details=(value)
                @state_details = value
            end
            ## 
            ## Gets the universalIntegratedCircuitCardIdentifier property value. The Universal Integrated Circuit Card Identifier (UICCID) identifying the hardware onto which a profile is to be deployed.
            ## @return a string
            ## 
            def universal_integrated_circuit_card_identifier
                return @universal_integrated_circuit_card_identifier
            end
            ## 
            ## Sets the universalIntegratedCircuitCardIdentifier property value. The Universal Integrated Circuit Card Identifier (UICCID) identifying the hardware onto which a profile is to be deployed.
            ## @param value Value to set for the universal_integrated_circuit_card_identifier property.
            ## @return a void
            ## 
            def universal_integrated_circuit_card_identifier=(value)
                @universal_integrated_circuit_card_identifier = value
            end
            ## 
            ## Gets the userName property value. Username which the subscription was provisioned to e.g. joe@contoso.com
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. Username which the subscription was provisioned to e.g. joe@contoso.com
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
