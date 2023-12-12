require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceCompliancePolicyScript
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Device compliance script Id.
            @device_compliance_script_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Json of the rules.
            @rules_content
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
            ## Instantiates a new deviceCompliancePolicyScript and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_policy_script
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceCompliancePolicyScript.new
            end
            ## 
            ## Gets the deviceComplianceScriptId property value. Device compliance script Id.
            ## @return a string
            ## 
            def device_compliance_script_id
                return @device_compliance_script_id
            end
            ## 
            ## Sets the deviceComplianceScriptId property value. Device compliance script Id.
            ## @param value Value to set for the deviceComplianceScriptId property.
            ## @return a void
            ## 
            def device_compliance_script_id=(value)
                @device_compliance_script_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceComplianceScriptId" => lambda {|n| @device_compliance_script_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "rulesContent" => lambda {|n| @rules_content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                }
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
            ## Gets the rulesContent property value. Json of the rules.
            ## @return a base64url
            ## 
            def rules_content
                return @rules_content
            end
            ## 
            ## Sets the rulesContent property value. Json of the rules.
            ## @param value Value to set for the rulesContent property.
            ## @return a void
            ## 
            def rules_content=(value)
                @rules_content = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("deviceComplianceScriptId", @device_compliance_script_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("rulesContent", @rules_content)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
