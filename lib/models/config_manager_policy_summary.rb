require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # A ConfigManager policy summary.
    class ConfigManagerPolicySummary
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The number of devices evaluated to be compliant by the policy.
        @compliant_device_count
        ## 
        # The number of devices that have have been remediated by the policy.
        @enforced_device_count
        ## 
        # The number of devices that failed to be evaluated by the policy.
        @failed_device_count
        ## 
        # The number of devices evaluated to be noncompliant by the policy.
        @non_compliant_device_count
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The number of devices that have acknowledged the policy but are pending evaluation.
        @pending_device_count
        ## 
        # The number of devices targeted by the policy.
        @targeted_device_count
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
        ## Gets the compliantDeviceCount property value. The number of devices evaluated to be compliant by the policy.
        ## @return a integer
        ## 
        def compliant_device_count
            return @compliant_device_count
        end
        ## 
        ## Sets the compliantDeviceCount property value. The number of devices evaluated to be compliant by the policy.
        ## @param value Value to set for the compliantDeviceCount property.
        ## @return a void
        ## 
        def compliant_device_count=(value)
            @compliant_device_count = value
        end
        ## 
        ## Instantiates a new configManagerPolicySummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a config_manager_policy_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ConfigManagerPolicySummary.new
        end
        ## 
        ## Gets the enforcedDeviceCount property value. The number of devices that have have been remediated by the policy.
        ## @return a integer
        ## 
        def enforced_device_count
            return @enforced_device_count
        end
        ## 
        ## Sets the enforcedDeviceCount property value. The number of devices that have have been remediated by the policy.
        ## @param value Value to set for the enforcedDeviceCount property.
        ## @return a void
        ## 
        def enforced_device_count=(value)
            @enforced_device_count = value
        end
        ## 
        ## Gets the failedDeviceCount property value. The number of devices that failed to be evaluated by the policy.
        ## @return a integer
        ## 
        def failed_device_count
            return @failed_device_count
        end
        ## 
        ## Sets the failedDeviceCount property value. The number of devices that failed to be evaluated by the policy.
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
            return {
                "compliantDeviceCount" => lambda {|n| @compliant_device_count = n.get_number_value() },
                "enforcedDeviceCount" => lambda {|n| @enforced_device_count = n.get_number_value() },
                "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                "nonCompliantDeviceCount" => lambda {|n| @non_compliant_device_count = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "pendingDeviceCount" => lambda {|n| @pending_device_count = n.get_number_value() },
                "targetedDeviceCount" => lambda {|n| @targeted_device_count = n.get_number_value() },
            }
        end
        ## 
        ## Gets the nonCompliantDeviceCount property value. The number of devices evaluated to be noncompliant by the policy.
        ## @return a integer
        ## 
        def non_compliant_device_count
            return @non_compliant_device_count
        end
        ## 
        ## Sets the nonCompliantDeviceCount property value. The number of devices evaluated to be noncompliant by the policy.
        ## @param value Value to set for the nonCompliantDeviceCount property.
        ## @return a void
        ## 
        def non_compliant_device_count=(value)
            @non_compliant_device_count = value
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
        ## Gets the pendingDeviceCount property value. The number of devices that have acknowledged the policy but are pending evaluation.
        ## @return a integer
        ## 
        def pending_device_count
            return @pending_device_count
        end
        ## 
        ## Sets the pendingDeviceCount property value. The number of devices that have acknowledged the policy but are pending evaluation.
        ## @param value Value to set for the pendingDeviceCount property.
        ## @return a void
        ## 
        def pending_device_count=(value)
            @pending_device_count = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_number_value("compliantDeviceCount", @compliant_device_count)
            writer.write_number_value("enforcedDeviceCount", @enforced_device_count)
            writer.write_number_value("failedDeviceCount", @failed_device_count)
            writer.write_number_value("nonCompliantDeviceCount", @non_compliant_device_count)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("pendingDeviceCount", @pending_device_count)
            writer.write_number_value("targetedDeviceCount", @targeted_device_count)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the targetedDeviceCount property value. The number of devices targeted by the policy.
        ## @return a integer
        ## 
        def targeted_device_count
            return @targeted_device_count
        end
        ## 
        ## Sets the targetedDeviceCount property value. The number of devices targeted by the policy.
        ## @param value Value to set for the targetedDeviceCount property.
        ## @return a void
        ## 
        def targeted_device_count=(value)
            @targeted_device_count = value
        end
    end
end
