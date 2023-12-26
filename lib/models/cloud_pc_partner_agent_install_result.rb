require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcPartnerAgentInstallResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The errorMessage property
            @error_message
            ## 
            # The status of a partner agent installation. Possible values are: installed, installFailed, installing, uninstalling, uninstallFailed and licensed. Read-Only.
            @install_status
            ## 
            # Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known.  The default value is 'FALSE'
            @is_third_party_partner
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The name of the first-party or third-party partner agent. Possible values for third-party partners are Citrix, VMware and HP. Read-Only.
            @partner_agent_name
            ## 
            # Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known. The default value is 'FALSE'
            @retriable
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new cloudPcPartnerAgentInstallResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_partner_agent_install_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcPartnerAgentInstallResult.new
            end
            ## 
            ## Gets the errorMessage property value. The errorMessage property
            ## @return a string
            ## 
            def error_message
                return @error_message
            end
            ## 
            ## Sets the errorMessage property value. The errorMessage property
            ## @param value Value to set for the errorMessage property.
            ## @return a void
            ## 
            def error_message=(value)
                @error_message = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "errorMessage" => lambda {|n| @error_message = n.get_string_value() },
                    "installStatus" => lambda {|n| @install_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcPartnerAgentInstallStatus) },
                    "isThirdPartyPartner" => lambda {|n| @is_third_party_partner = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "partnerAgentName" => lambda {|n| @partner_agent_name = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcPartnerAgentName) },
                    "retriable" => lambda {|n| @retriable = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the installStatus property value. The status of a partner agent installation. Possible values are: installed, installFailed, installing, uninstalling, uninstallFailed and licensed. Read-Only.
            ## @return a cloud_pc_partner_agent_install_status
            ## 
            def install_status
                return @install_status
            end
            ## 
            ## Sets the installStatus property value. The status of a partner agent installation. Possible values are: installed, installFailed, installing, uninstalling, uninstallFailed and licensed. Read-Only.
            ## @param value Value to set for the installStatus property.
            ## @return a void
            ## 
            def install_status=(value)
                @install_status = value
            end
            ## 
            ## Gets the isThirdPartyPartner property value. Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known.  The default value is 'FALSE'
            ## @return a boolean
            ## 
            def is_third_party_partner
                return @is_third_party_partner
            end
            ## 
            ## Sets the isThirdPartyPartner property value. Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known.  The default value is 'FALSE'
            ## @param value Value to set for the isThirdPartyPartner property.
            ## @return a void
            ## 
            def is_third_party_partner=(value)
                @is_third_party_partner = value
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
            ## Gets the partnerAgentName property value. The name of the first-party or third-party partner agent. Possible values for third-party partners are Citrix, VMware and HP. Read-Only.
            ## @return a cloud_pc_partner_agent_name
            ## 
            def partner_agent_name
                return @partner_agent_name
            end
            ## 
            ## Sets the partnerAgentName property value. The name of the first-party or third-party partner agent. Possible values for third-party partners are Citrix, VMware and HP. Read-Only.
            ## @param value Value to set for the partnerAgentName property.
            ## @return a void
            ## 
            def partner_agent_name=(value)
                @partner_agent_name = value
            end
            ## 
            ## Gets the retriable property value. Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known. The default value is 'FALSE'
            ## @return a boolean
            ## 
            def retriable
                return @retriable
            end
            ## 
            ## Sets the retriable property value. Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known. The default value is 'FALSE'
            ## @param value Value to set for the retriable property.
            ## @return a void
            ## 
            def retriable=(value)
                @retriable = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("errorMessage", @error_message)
                writer.write_enum_value("installStatus", @install_status)
                writer.write_boolean_value("isThirdPartyPartner", @is_third_party_partner)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("partnerAgentName", @partner_agent_name)
                writer.write_boolean_value("retriable", @retriable)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
