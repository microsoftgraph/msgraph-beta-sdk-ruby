require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Endpoint privilege management (EPM) tenant provisioning status contains tenant level license and onboarding state information.
        class EndpointPrivilegeManagementProvisioningStatus < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid .
            @license_type
            ## 
            # Indicates whether tenant is onboarded to Microsoft Managed Platform - Cloud (MMPC). When set to true, implies tenant is onboarded and when set to false, implies tenant is not onboarded. Default set to false.
            @onboarded_to_microsoft_managed_platform
            ## 
            ## Instantiates a new EndpointPrivilegeManagementProvisioningStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a endpoint_privilege_management_provisioning_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EndpointPrivilegeManagementProvisioningStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "licenseType" => lambda {|n| @license_type = n.get_enum_value(MicrosoftGraphBeta::Models::LicenseType) },
                    "onboardedToMicrosoftManagedPlatform" => lambda {|n| @onboarded_to_microsoft_managed_platform = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the licenseType property value. Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid .
            ## @return a license_type
            ## 
            def license_type
                return @license_type
            end
            ## 
            ## Sets the licenseType property value. Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid .
            ## @param value Value to set for the licenseType property.
            ## @return a void
            ## 
            def license_type=(value)
                @license_type = value
            end
            ## 
            ## Gets the onboardedToMicrosoftManagedPlatform property value. Indicates whether tenant is onboarded to Microsoft Managed Platform - Cloud (MMPC). When set to true, implies tenant is onboarded and when set to false, implies tenant is not onboarded. Default set to false.
            ## @return a boolean
            ## 
            def onboarded_to_microsoft_managed_platform
                return @onboarded_to_microsoft_managed_platform
            end
            ## 
            ## Sets the onboardedToMicrosoftManagedPlatform property value. Indicates whether tenant is onboarded to Microsoft Managed Platform - Cloud (MMPC). When set to true, implies tenant is onboarded and when set to false, implies tenant is not onboarded. Default set to false.
            ## @param value Value to set for the onboardedToMicrosoftManagedPlatform property.
            ## @return a void
            ## 
            def onboarded_to_microsoft_managed_platform=(value)
                @onboarded_to_microsoft_managed_platform = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("licenseType", @license_type)
                writer.write_boolean_value("onboardedToMicrosoftManagedPlatform", @onboarded_to_microsoft_managed_platform)
            end
        end
    end
end
