require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/administrator_configured_device_compliance_state'
require_relative '../../../device_management'
require_relative '../../comanaged_devices'
require_relative '../item'
require_relative './override_compliance_state'

module MicrosoftGraphBeta
    module DeviceManagement
        module ComanagedDevices
            module Item
                module OverrideComplianceState
                    class OverrideComplianceStatePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # Administrator configured device compliance state Enum
                        @compliance_state
                        ## 
                        # The remediationUrl property
                        @remediation_url
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
                        ## Gets the complianceState property value. Administrator configured device compliance state Enum
                        ## @return a administrator_configured_device_compliance_state
                        ## 
                        def compliance_state
                            return @compliance_state
                        end
                        ## 
                        ## Sets the complianceState property value. Administrator configured device compliance state Enum
                        ## @param value Value to set for the complianceState property.
                        ## @return a void
                        ## 
                        def compliance_state=(value)
                            @compliance_state = value
                        end
                        ## 
                        ## Instantiates a new OverrideComplianceStatePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a override_compliance_state_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return OverrideComplianceStatePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "complianceState" => lambda {|n| @compliance_state = n.get_enum_value(MicrosoftGraphBeta::Models::AdministratorConfiguredDeviceComplianceState) },
                                "remediationUrl" => lambda {|n| @remediation_url = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the remediationUrl property value. The remediationUrl property
                        ## @return a string
                        ## 
                        def remediation_url
                            return @remediation_url
                        end
                        ## 
                        ## Sets the remediationUrl property value. The remediationUrl property
                        ## @param value Value to set for the remediationUrl property.
                        ## @return a void
                        ## 
                        def remediation_url=(value)
                            @remediation_url = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_enum_value("complianceState", @compliance_state)
                            writer.write_string_value("remediationUrl", @remediation_url)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
