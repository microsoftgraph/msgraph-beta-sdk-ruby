require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows 10 Co-Management Authority Page Configuration
        class DeviceComanagementAuthorityConfiguration < MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # CoManagement Authority configuration ConfigurationManagerAgentCommandLineArgument
            @configuration_manager_agent_command_line_argument
            ## 
            # CoManagement Authority configuration InstallConfigurationManagerAgent
            @install_configuration_manager_agent
            ## 
            # CoManagement Authority configuration ManagedDeviceAuthority
            @managed_device_authority
            ## 
            ## Gets the configurationManagerAgentCommandLineArgument property value. CoManagement Authority configuration ConfigurationManagerAgentCommandLineArgument
            ## @return a string
            ## 
            def configuration_manager_agent_command_line_argument
                return @configuration_manager_agent_command_line_argument
            end
            ## 
            ## Sets the configurationManagerAgentCommandLineArgument property value. CoManagement Authority configuration ConfigurationManagerAgentCommandLineArgument
            ## @param value Value to set for the configuration_manager_agent_command_line_argument property.
            ## @return a void
            ## 
            def configuration_manager_agent_command_line_argument=(value)
                @configuration_manager_agent_command_line_argument = value
            end
            ## 
            ## Instantiates a new deviceComanagementAuthorityConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceComanagementAuthorityConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_comanagement_authority_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComanagementAuthorityConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configurationManagerAgentCommandLineArgument" => lambda {|n| @configuration_manager_agent_command_line_argument = n.get_string_value() },
                    "installConfigurationManagerAgent" => lambda {|n| @install_configuration_manager_agent = n.get_boolean_value() },
                    "managedDeviceAuthority" => lambda {|n| @managed_device_authority = n.get_number_value() },
                })
            end
            ## 
            ## Gets the installConfigurationManagerAgent property value. CoManagement Authority configuration InstallConfigurationManagerAgent
            ## @return a boolean
            ## 
            def install_configuration_manager_agent
                return @install_configuration_manager_agent
            end
            ## 
            ## Sets the installConfigurationManagerAgent property value. CoManagement Authority configuration InstallConfigurationManagerAgent
            ## @param value Value to set for the install_configuration_manager_agent property.
            ## @return a void
            ## 
            def install_configuration_manager_agent=(value)
                @install_configuration_manager_agent = value
            end
            ## 
            ## Gets the managedDeviceAuthority property value. CoManagement Authority configuration ManagedDeviceAuthority
            ## @return a integer
            ## 
            def managed_device_authority
                return @managed_device_authority
            end
            ## 
            ## Sets the managedDeviceAuthority property value. CoManagement Authority configuration ManagedDeviceAuthority
            ## @param value Value to set for the managed_device_authority property.
            ## @return a void
            ## 
            def managed_device_authority=(value)
                @managed_device_authority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("configurationManagerAgentCommandLineArgument", @configuration_manager_agent_command_line_argument)
                writer.write_boolean_value("installConfigurationManagerAgent", @install_configuration_manager_agent)
                writer.write_number_value("managedDeviceAuthority", @managed_device_authority)
            end
        end
    end
end
