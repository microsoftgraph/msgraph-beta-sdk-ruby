require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationWindowsSettingApplicability < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingApplicability
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Version of CSP setting is a part of
        @configuration_service_provider_version
        ## 
        # Maximum supported version of Windows
        @maximum_supported_version
        ## 
        # Minimum supported version of Windows
        @minimum_supported_version
        ## 
        # Required AAD Trust Type
        @required_azure_ad_trust_type
        ## 
        # AzureAD setting requirement
        @requires_azure_ad
        ## 
        # List of Windows SKUs that the setting is applicable for
        @windows_skus
        ## 
        ## Gets the configurationServiceProviderVersion property value. Version of CSP setting is a part of
        ## @return a string
        ## 
        def configuration_service_provider_version
            return @configuration_service_provider_version
        end
        ## 
        ## Sets the configurationServiceProviderVersion property value. Version of CSP setting is a part of
        ## @param value Value to set for the configuration_service_provider_version property.
        ## @return a void
        ## 
        def configuration_service_provider_version=(value)
            @configuration_service_provider_version = value
        end
        ## 
        ## Instantiates a new DeviceManagementConfigurationWindowsSettingApplicability and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementConfigurationWindowsSettingApplicability"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_windows_setting_applicability
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationWindowsSettingApplicability.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "configurationServiceProviderVersion" => lambda {|n| @configuration_service_provider_version = n.get_string_value() },
                "maximumSupportedVersion" => lambda {|n| @maximum_supported_version = n.get_string_value() },
                "minimumSupportedVersion" => lambda {|n| @minimum_supported_version = n.get_string_value() },
                "requiredAzureAdTrustType" => lambda {|n| @required_azure_ad_trust_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationAzureAdTrustType) },
                "requiresAzureAd" => lambda {|n| @requires_azure_ad = n.get_boolean_value() },
                "windowsSkus" => lambda {|n| @windows_skus = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationWindowsSkus.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the maximumSupportedVersion property value. Maximum supported version of Windows
        ## @return a string
        ## 
        def maximum_supported_version
            return @maximum_supported_version
        end
        ## 
        ## Sets the maximumSupportedVersion property value. Maximum supported version of Windows
        ## @param value Value to set for the maximum_supported_version property.
        ## @return a void
        ## 
        def maximum_supported_version=(value)
            @maximum_supported_version = value
        end
        ## 
        ## Gets the minimumSupportedVersion property value. Minimum supported version of Windows
        ## @return a string
        ## 
        def minimum_supported_version
            return @minimum_supported_version
        end
        ## 
        ## Sets the minimumSupportedVersion property value. Minimum supported version of Windows
        ## @param value Value to set for the minimum_supported_version property.
        ## @return a void
        ## 
        def minimum_supported_version=(value)
            @minimum_supported_version = value
        end
        ## 
        ## Gets the requiredAzureAdTrustType property value. Required AAD Trust Type
        ## @return a device_management_configuration_azure_ad_trust_type
        ## 
        def required_azure_ad_trust_type
            return @required_azure_ad_trust_type
        end
        ## 
        ## Sets the requiredAzureAdTrustType property value. Required AAD Trust Type
        ## @param value Value to set for the required_azure_ad_trust_type property.
        ## @return a void
        ## 
        def required_azure_ad_trust_type=(value)
            @required_azure_ad_trust_type = value
        end
        ## 
        ## Gets the requiresAzureAd property value. AzureAD setting requirement
        ## @return a boolean
        ## 
        def requires_azure_ad
            return @requires_azure_ad
        end
        ## 
        ## Sets the requiresAzureAd property value. AzureAD setting requirement
        ## @param value Value to set for the requires_azure_ad property.
        ## @return a void
        ## 
        def requires_azure_ad=(value)
            @requires_azure_ad = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("configurationServiceProviderVersion", @configuration_service_provider_version)
            writer.write_string_value("maximumSupportedVersion", @maximum_supported_version)
            writer.write_string_value("minimumSupportedVersion", @minimum_supported_version)
            writer.write_enum_value("requiredAzureAdTrustType", @required_azure_ad_trust_type)
            writer.write_boolean_value("requiresAzureAd", @requires_azure_ad)
            writer.write_collection_of_object_values("windowsSkus", @windows_skus)
        end
        ## 
        ## Gets the windowsSkus property value. List of Windows SKUs that the setting is applicable for
        ## @return a device_management_configuration_windows_skus
        ## 
        def windows_skus
            return @windows_skus
        end
        ## 
        ## Sets the windowsSkus property value. List of Windows SKUs that the setting is applicable for
        ## @param value Value to set for the windows_skus property.
        ## @return a void
        ## 
        def windows_skus=(value)
            @windows_skus = value
        end
    end
end
