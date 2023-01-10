require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkSoftwareUpdateHealth
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The software update available for the admin agent.
        @admin_agent_software_update_status
        ## 
        # The software update available for the company portal.
        @company_portal_software_update_status
        ## 
        # The software update available for the firmware.
        @firmware_software_update_status
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The software update available for the operating system.
        @operating_system_software_update_status
        ## 
        # The software update available for the partner agent.
        @partner_agent_software_update_status
        ## 
        # The software update available for the Teams client.
        @teams_client_software_update_status
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the adminAgentSoftwareUpdateStatus property value. The software update available for the admin agent.
        ## @return a teamwork_software_update_status
        ## 
        def admin_agent_software_update_status
            return @admin_agent_software_update_status
        end
        ## 
        ## Sets the adminAgentSoftwareUpdateStatus property value. The software update available for the admin agent.
        ## @param value Value to set for the adminAgentSoftwareUpdateStatus property.
        ## @return a void
        ## 
        def admin_agent_software_update_status=(value)
            @admin_agent_software_update_status = value
        end
        ## 
        ## Gets the companyPortalSoftwareUpdateStatus property value. The software update available for the company portal.
        ## @return a teamwork_software_update_status
        ## 
        def company_portal_software_update_status
            return @company_portal_software_update_status
        end
        ## 
        ## Sets the companyPortalSoftwareUpdateStatus property value. The software update available for the company portal.
        ## @param value Value to set for the companyPortalSoftwareUpdateStatus property.
        ## @return a void
        ## 
        def company_portal_software_update_status=(value)
            @company_portal_software_update_status = value
        end
        ## 
        ## Instantiates a new teamworkSoftwareUpdateHealth and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_software_update_health
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkSoftwareUpdateHealth.new
        end
        ## 
        ## Gets the firmwareSoftwareUpdateStatus property value. The software update available for the firmware.
        ## @return a teamwork_software_update_status
        ## 
        def firmware_software_update_status
            return @firmware_software_update_status
        end
        ## 
        ## Sets the firmwareSoftwareUpdateStatus property value. The software update available for the firmware.
        ## @param value Value to set for the firmwareSoftwareUpdateStatus property.
        ## @return a void
        ## 
        def firmware_software_update_status=(value)
            @firmware_software_update_status = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "adminAgentSoftwareUpdateStatus" => lambda {|n| @admin_agent_software_update_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSoftwareUpdateStatus.create_from_discriminator_value(pn) }) },
                "companyPortalSoftwareUpdateStatus" => lambda {|n| @company_portal_software_update_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSoftwareUpdateStatus.create_from_discriminator_value(pn) }) },
                "firmwareSoftwareUpdateStatus" => lambda {|n| @firmware_software_update_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSoftwareUpdateStatus.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "operatingSystemSoftwareUpdateStatus" => lambda {|n| @operating_system_software_update_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSoftwareUpdateStatus.create_from_discriminator_value(pn) }) },
                "partnerAgentSoftwareUpdateStatus" => lambda {|n| @partner_agent_software_update_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSoftwareUpdateStatus.create_from_discriminator_value(pn) }) },
                "teamsClientSoftwareUpdateStatus" => lambda {|n| @teams_client_software_update_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSoftwareUpdateStatus.create_from_discriminator_value(pn) }) },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the operatingSystemSoftwareUpdateStatus property value. The software update available for the operating system.
        ## @return a teamwork_software_update_status
        ## 
        def operating_system_software_update_status
            return @operating_system_software_update_status
        end
        ## 
        ## Sets the operatingSystemSoftwareUpdateStatus property value. The software update available for the operating system.
        ## @param value Value to set for the operatingSystemSoftwareUpdateStatus property.
        ## @return a void
        ## 
        def operating_system_software_update_status=(value)
            @operating_system_software_update_status = value
        end
        ## 
        ## Gets the partnerAgentSoftwareUpdateStatus property value. The software update available for the partner agent.
        ## @return a teamwork_software_update_status
        ## 
        def partner_agent_software_update_status
            return @partner_agent_software_update_status
        end
        ## 
        ## Sets the partnerAgentSoftwareUpdateStatus property value. The software update available for the partner agent.
        ## @param value Value to set for the partnerAgentSoftwareUpdateStatus property.
        ## @return a void
        ## 
        def partner_agent_software_update_status=(value)
            @partner_agent_software_update_status = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("adminAgentSoftwareUpdateStatus", @admin_agent_software_update_status)
            writer.write_object_value("companyPortalSoftwareUpdateStatus", @company_portal_software_update_status)
            writer.write_object_value("firmwareSoftwareUpdateStatus", @firmware_software_update_status)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("operatingSystemSoftwareUpdateStatus", @operating_system_software_update_status)
            writer.write_object_value("partnerAgentSoftwareUpdateStatus", @partner_agent_software_update_status)
            writer.write_object_value("teamsClientSoftwareUpdateStatus", @teams_client_software_update_status)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the teamsClientSoftwareUpdateStatus property value. The software update available for the Teams client.
        ## @return a teamwork_software_update_status
        ## 
        def teams_client_software_update_status
            return @teams_client_software_update_status
        end
        ## 
        ## Sets the teamsClientSoftwareUpdateStatus property value. The software update available for the Teams client.
        ## @param value Value to set for the teamsClientSoftwareUpdateStatus property.
        ## @return a void
        ## 
        def teams_client_software_update_status=(value)
            @teams_client_software_update_status = value
        end
    end
end
