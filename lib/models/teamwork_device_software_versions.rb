require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkDeviceSoftwareVersions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The software version for the admin agent running on the device.
            @admin_agent_software_version
            ## 
            # The software version for the firmware running on the device.
            @firmware_software_version
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The software version for the operating system on the device.
            @operating_system_software_version
            ## 
            # The software version for the partner agent running on the device.
            @partner_agent_software_version
            ## 
            # The software version for the Teams client running on the device.
            @teams_client_software_version
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the adminAgentSoftwareVersion property value. The software version for the admin agent running on the device.
            ## @return a string
            ## 
            def admin_agent_software_version
                return @admin_agent_software_version
            end
            ## 
            ## Sets the adminAgentSoftwareVersion property value. The software version for the admin agent running on the device.
            ## @param value Value to set for the adminAgentSoftwareVersion property.
            ## @return a void
            ## 
            def admin_agent_software_version=(value)
                @admin_agent_software_version = value
            end
            ## 
            ## Instantiates a new teamworkDeviceSoftwareVersions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_device_software_versions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkDeviceSoftwareVersions.new
            end
            ## 
            ## Gets the firmwareSoftwareVersion property value. The software version for the firmware running on the device.
            ## @return a string
            ## 
            def firmware_software_version
                return @firmware_software_version
            end
            ## 
            ## Sets the firmwareSoftwareVersion property value. The software version for the firmware running on the device.
            ## @param value Value to set for the firmwareSoftwareVersion property.
            ## @return a void
            ## 
            def firmware_software_version=(value)
                @firmware_software_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "adminAgentSoftwareVersion" => lambda {|n| @admin_agent_software_version = n.get_string_value() },
                    "firmwareSoftwareVersion" => lambda {|n| @firmware_software_version = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatingSystemSoftwareVersion" => lambda {|n| @operating_system_software_version = n.get_string_value() },
                    "partnerAgentSoftwareVersion" => lambda {|n| @partner_agent_software_version = n.get_string_value() },
                    "teamsClientSoftwareVersion" => lambda {|n| @teams_client_software_version = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the operatingSystemSoftwareVersion property value. The software version for the operating system on the device.
            ## @return a string
            ## 
            def operating_system_software_version
                return @operating_system_software_version
            end
            ## 
            ## Sets the operatingSystemSoftwareVersion property value. The software version for the operating system on the device.
            ## @param value Value to set for the operatingSystemSoftwareVersion property.
            ## @return a void
            ## 
            def operating_system_software_version=(value)
                @operating_system_software_version = value
            end
            ## 
            ## Gets the partnerAgentSoftwareVersion property value. The software version for the partner agent running on the device.
            ## @return a string
            ## 
            def partner_agent_software_version
                return @partner_agent_software_version
            end
            ## 
            ## Sets the partnerAgentSoftwareVersion property value. The software version for the partner agent running on the device.
            ## @param value Value to set for the partnerAgentSoftwareVersion property.
            ## @return a void
            ## 
            def partner_agent_software_version=(value)
                @partner_agent_software_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("adminAgentSoftwareVersion", @admin_agent_software_version)
                writer.write_string_value("firmwareSoftwareVersion", @firmware_software_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operatingSystemSoftwareVersion", @operating_system_software_version)
                writer.write_string_value("partnerAgentSoftwareVersion", @partner_agent_software_version)
                writer.write_string_value("teamsClientSoftwareVersion", @teams_client_software_version)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the teamsClientSoftwareVersion property value. The software version for the Teams client running on the device.
            ## @return a string
            ## 
            def teams_client_software_version
                return @teams_client_software_version
            end
            ## 
            ## Sets the teamsClientSoftwareVersion property value. The software version for the Teams client running on the device.
            ## @param value Value to set for the teamsClientSoftwareVersion property.
            ## @return a void
            ## 
            def teams_client_software_version=(value)
                @teams_client_software_version = value
            end
        end
    end
end
