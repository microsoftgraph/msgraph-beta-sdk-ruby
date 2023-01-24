require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/device_compliance_policy_script'
require_relative '../../device_management'
require_relative '../device_compliance_policies'
require_relative './validate_compliance_script'

module MicrosoftGraphBeta::DeviceManagement::DeviceCompliancePolicies::ValidateComplianceScript
    class ValidateComplianceScriptPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The deviceCompliancePolicyScript property
        @device_compliance_policy_script
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
        ## Instantiates a new validateComplianceScriptPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a validate_compliance_script_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ValidateComplianceScriptPostRequestBody.new
        end
        ## 
        ## Gets the deviceCompliancePolicyScript property value. The deviceCompliancePolicyScript property
        ## @return a device_compliance_policy_script
        ## 
        def device_compliance_policy_script
            return @device_compliance_policy_script
        end
        ## 
        ## Sets the deviceCompliancePolicyScript property value. The deviceCompliancePolicyScript property
        ## @param value Value to set for the deviceCompliancePolicyScript property.
        ## @return a void
        ## 
        def device_compliance_policy_script=(value)
            @device_compliance_policy_script = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "deviceCompliancePolicyScript" => lambda {|n| @device_compliance_policy_script = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCompliancePolicyScript.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("deviceCompliancePolicyScript", @device_compliance_policy_script)
            writer.write_additional_data(@additional_data)
        end
    end
end
