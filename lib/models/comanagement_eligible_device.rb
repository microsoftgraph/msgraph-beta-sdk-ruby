require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Co-Management eligibility state
        class ComanagementEligibleDevice < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Device registration status.
            @client_registration_status
            ## 
            # DeviceName
            @device_name
            ## 
            # Device type.
            @device_type
            ## 
            # EntitySource
            @entity_source
            ## 
            # Management agent type.
            @management_agents
            ## 
            # Management state of device in Microsoft Intune.
            @management_state
            ## 
            # Manufacturer
            @manufacturer
            ## 
            # MDMStatus
            @mdm_status
            ## 
            # Model
            @model
            ## 
            # OSDescription
            @os_description
            ## 
            # OSVersion
            @os_version
            ## 
            # Owner type of device.
            @owner_type
            ## 
            # ReferenceId
            @reference_id
            ## 
            # SerialNumber
            @serial_number
            ## 
            # The status property
            @status
            ## 
            # UPN
            @upn
            ## 
            # UserEmail
            @user_email
            ## 
            # UserId
            @user_id
            ## 
            # UserName
            @user_name
            ## 
            ## Gets the clientRegistrationStatus property value. Device registration status.
            ## @return a device_registration_state
            ## 
            def client_registration_status
                return @client_registration_status
            end
            ## 
            ## Sets the clientRegistrationStatus property value. Device registration status.
            ## @param value Value to set for the clientRegistrationStatus property.
            ## @return a void
            ## 
            def client_registration_status=(value)
                @client_registration_status = value
            end
            ## 
            ## Instantiates a new comanagementEligibleDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a comanagement_eligible_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ComanagementEligibleDevice.new
            end
            ## 
            ## Gets the deviceName property value. DeviceName
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. DeviceName
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the deviceType property value. Device type.
            ## @return a device_type
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. Device type.
            ## @param value Value to set for the deviceType property.
            ## @return a void
            ## 
            def device_type=(value)
                @device_type = value
            end
            ## 
            ## Gets the entitySource property value. EntitySource
            ## @return a integer
            ## 
            def entity_source
                return @entity_source
            end
            ## 
            ## Sets the entitySource property value. EntitySource
            ## @param value Value to set for the entitySource property.
            ## @return a void
            ## 
            def entity_source=(value)
                @entity_source = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientRegistrationStatus" => lambda {|n| @client_registration_status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceRegistrationState) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceType" => lambda {|n| @device_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceType) },
                    "entitySource" => lambda {|n| @entity_source = n.get_number_value() },
                    "managementAgents" => lambda {|n| @management_agents = n.get_enum_value(MicrosoftGraphBeta::Models::ManagementAgentType) },
                    "managementState" => lambda {|n| @management_state = n.get_enum_value(MicrosoftGraphBeta::Models::ManagementState) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "mdmStatus" => lambda {|n| @mdm_status = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "osDescription" => lambda {|n| @os_description = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "ownerType" => lambda {|n| @owner_type = n.get_enum_value(MicrosoftGraphBeta::Models::OwnerType) },
                    "referenceId" => lambda {|n| @reference_id = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ComanagementEligibleType) },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                    "userEmail" => lambda {|n| @user_email = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managementAgents property value. Management agent type.
            ## @return a management_agent_type
            ## 
            def management_agents
                return @management_agents
            end
            ## 
            ## Sets the managementAgents property value. Management agent type.
            ## @param value Value to set for the managementAgents property.
            ## @return a void
            ## 
            def management_agents=(value)
                @management_agents = value
            end
            ## 
            ## Gets the managementState property value. Management state of device in Microsoft Intune.
            ## @return a management_state
            ## 
            def management_state
                return @management_state
            end
            ## 
            ## Sets the managementState property value. Management state of device in Microsoft Intune.
            ## @param value Value to set for the managementState property.
            ## @return a void
            ## 
            def management_state=(value)
                @management_state = value
            end
            ## 
            ## Gets the manufacturer property value. Manufacturer
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Manufacturer
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the mdmStatus property value. MDMStatus
            ## @return a string
            ## 
            def mdm_status
                return @mdm_status
            end
            ## 
            ## Sets the mdmStatus property value. MDMStatus
            ## @param value Value to set for the mdmStatus property.
            ## @return a void
            ## 
            def mdm_status=(value)
                @mdm_status = value
            end
            ## 
            ## Gets the model property value. Model
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. Model
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the osDescription property value. OSDescription
            ## @return a string
            ## 
            def os_description
                return @os_description
            end
            ## 
            ## Sets the osDescription property value. OSDescription
            ## @param value Value to set for the osDescription property.
            ## @return a void
            ## 
            def os_description=(value)
                @os_description = value
            end
            ## 
            ## Gets the osVersion property value. OSVersion
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. OSVersion
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the ownerType property value. Owner type of device.
            ## @return a owner_type
            ## 
            def owner_type
                return @owner_type
            end
            ## 
            ## Sets the ownerType property value. Owner type of device.
            ## @param value Value to set for the ownerType property.
            ## @return a void
            ## 
            def owner_type=(value)
                @owner_type = value
            end
            ## 
            ## Gets the referenceId property value. ReferenceId
            ## @return a string
            ## 
            def reference_id
                return @reference_id
            end
            ## 
            ## Sets the referenceId property value. ReferenceId
            ## @param value Value to set for the referenceId property.
            ## @return a void
            ## 
            def reference_id=(value)
                @reference_id = value
            end
            ## 
            ## Gets the serialNumber property value. SerialNumber
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. SerialNumber
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("clientRegistrationStatus", @client_registration_status)
                writer.write_string_value("deviceName", @device_name)
                writer.write_enum_value("deviceType", @device_type)
                writer.write_number_value("entitySource", @entity_source)
                writer.write_enum_value("managementAgents", @management_agents)
                writer.write_enum_value("managementState", @management_state)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("mdmStatus", @mdm_status)
                writer.write_string_value("model", @model)
                writer.write_string_value("osDescription", @os_description)
                writer.write_string_value("osVersion", @os_version)
                writer.write_enum_value("ownerType", @owner_type)
                writer.write_string_value("referenceId", @reference_id)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_enum_value("status", @status)
                writer.write_string_value("upn", @upn)
                writer.write_string_value("userEmail", @user_email)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a comanagement_eligible_type
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the upn property value. UPN
            ## @return a string
            ## 
            def upn
                return @upn
            end
            ## 
            ## Sets the upn property value. UPN
            ## @param value Value to set for the upn property.
            ## @return a void
            ## 
            def upn=(value)
                @upn = value
            end
            ## 
            ## Gets the userEmail property value. UserEmail
            ## @return a string
            ## 
            def user_email
                return @user_email
            end
            ## 
            ## Sets the userEmail property value. UserEmail
            ## @param value Value to set for the userEmail property.
            ## @return a void
            ## 
            def user_email=(value)
                @user_email = value
            end
            ## 
            ## Gets the userId property value. UserId
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. UserId
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userName property value. UserName
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. UserName
            ## @param value Value to set for the userName property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
