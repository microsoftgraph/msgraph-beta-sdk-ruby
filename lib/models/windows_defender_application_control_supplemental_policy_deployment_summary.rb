require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for the deployment summary of a WindowsDefenderApplicationControl supplemental policy.
        class WindowsDefenderApplicationControlSupplementalPolicyDeploymentSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of Devices that have successfully deployed this WindowsDefenderApplicationControl supplemental policy.
            @deployed_device_count
            ## 
            # Number of Devices that have failed to deploy this WindowsDefenderApplicationControl supplemental policy.
            @failed_device_count
            ## 
            ## Instantiates a new WindowsDefenderApplicationControlSupplementalPolicyDeploymentSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_defender_application_control_supplemental_policy_deployment_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDefenderApplicationControlSupplementalPolicyDeploymentSummary.new
            end
            ## 
            ## Gets the deployedDeviceCount property value. Number of Devices that have successfully deployed this WindowsDefenderApplicationControl supplemental policy.
            ## @return a integer
            ## 
            def deployed_device_count
                return @deployed_device_count
            end
            ## 
            ## Sets the deployedDeviceCount property value. Number of Devices that have successfully deployed this WindowsDefenderApplicationControl supplemental policy.
            ## @param value Value to set for the deployedDeviceCount property.
            ## @return a void
            ## 
            def deployed_device_count=(value)
                @deployed_device_count = value
            end
            ## 
            ## Gets the failedDeviceCount property value. Number of Devices that have failed to deploy this WindowsDefenderApplicationControl supplemental policy.
            ## @return a integer
            ## 
            def failed_device_count
                return @failed_device_count
            end
            ## 
            ## Sets the failedDeviceCount property value. Number of Devices that have failed to deploy this WindowsDefenderApplicationControl supplemental policy.
            ## @param value Value to set for the failedDeviceCount property.
            ## @return a void
            ## 
            def failed_device_count=(value)
                @failed_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deployedDeviceCount" => lambda {|n| @deployed_device_count = n.get_number_value() },
                    "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
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
                writer.write_number_value("deployedDeviceCount", @deployed_device_count)
                writer.write_number_value("failedDeviceCount", @failed_device_count)
            end
        end
    end
end
