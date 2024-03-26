require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InvalidLicenseAlertIncident < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertIncident
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Status of the tenant's Microsoft Entra ID P2 license.
            @tenant_license_status
            ## 
            ## Instantiates a new InvalidLicenseAlertIncident and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.invalidLicenseAlertIncident"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a invalid_license_alert_incident
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InvalidLicenseAlertIncident.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "tenantLicenseStatus" => lambda {|n| @tenant_license_status = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("tenantLicenseStatus", @tenant_license_status)
            end
            ## 
            ## Gets the tenantLicenseStatus property value. Status of the tenant's Microsoft Entra ID P2 license.
            ## @return a string
            ## 
            def tenant_license_status
                return @tenant_license_status
            end
            ## 
            ## Sets the tenantLicenseStatus property value. Status of the tenant's Microsoft Entra ID P2 license.
            ## @param value Value to set for the tenantLicenseStatus property.
            ## @return a void
            ## 
            def tenant_license_status=(value)
                @tenant_license_status = value
            end
        end
    end
end
