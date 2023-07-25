require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Autopilot Deployment Profile
        class ActiveDirectoryWindowsAutopilotDeploymentProfile < MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Configuration to join Active Directory domain
            @domain_join_configuration
            ## 
            # The Autopilot Hybrid Azure AD join flow will continue even if it does not establish domain controller connectivity during OOBE.
            @hybrid_azure_a_d_join_skip_connectivity_check
            ## 
            ## Instantiates a new activeDirectoryWindowsAutopilotDeploymentProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.activeDirectoryWindowsAutopilotDeploymentProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a active_directory_windows_autopilot_deployment_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ActiveDirectoryWindowsAutopilotDeploymentProfile.new
            end
            ## 
            ## Gets the domainJoinConfiguration property value. Configuration to join Active Directory domain
            ## @return a windows_domain_join_configuration
            ## 
            def domain_join_configuration
                return @domain_join_configuration
            end
            ## 
            ## Sets the domainJoinConfiguration property value. Configuration to join Active Directory domain
            ## @param value Value to set for the domainJoinConfiguration property.
            ## @return a void
            ## 
            def domain_join_configuration=(value)
                @domain_join_configuration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "domainJoinConfiguration" => lambda {|n| @domain_join_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDomainJoinConfiguration.create_from_discriminator_value(pn) }) },
                    "hybridAzureADJoinSkipConnectivityCheck" => lambda {|n| @hybrid_azure_a_d_join_skip_connectivity_check = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the hybridAzureADJoinSkipConnectivityCheck property value. The Autopilot Hybrid Azure AD join flow will continue even if it does not establish domain controller connectivity during OOBE.
            ## @return a boolean
            ## 
            def hybrid_azure_a_d_join_skip_connectivity_check
                return @hybrid_azure_a_d_join_skip_connectivity_check
            end
            ## 
            ## Sets the hybridAzureADJoinSkipConnectivityCheck property value. The Autopilot Hybrid Azure AD join flow will continue even if it does not establish domain controller connectivity during OOBE.
            ## @param value Value to set for the hybridAzureADJoinSkipConnectivityCheck property.
            ## @return a void
            ## 
            def hybrid_azure_a_d_join_skip_connectivity_check=(value)
                @hybrid_azure_a_d_join_skip_connectivity_check = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("domainJoinConfiguration", @domain_join_configuration)
                writer.write_boolean_value("hybridAzureADJoinSkipConnectivityCheck", @hybrid_azure_a_d_join_skip_connectivity_check)
            end
        end
    end
end
