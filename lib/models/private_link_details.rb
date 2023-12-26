require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivateLinkDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier for the Private Link policy.
            @policy_id
            ## 
            # The name of the Private Link policy in Microsoft Entra ID.
            @policy_name
            ## 
            # The tenant identifier of the Microsoft Entra tenant the Private Link policy belongs to.
            @policy_tenant_id
            ## 
            # The Azure Resource Manager (ARM) path for the Private Link policy resource.
            @resource_id
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
            ## Instantiates a new privateLinkDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a private_link_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivateLinkDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                    "policyName" => lambda {|n| @policy_name = n.get_string_value() },
                    "policyTenantId" => lambda {|n| @policy_tenant_id = n.get_string_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
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
            ## Gets the policyId property value. The unique identifier for the Private Link policy.
            ## @return a string
            ## 
            def policy_id
                return @policy_id
            end
            ## 
            ## Sets the policyId property value. The unique identifier for the Private Link policy.
            ## @param value Value to set for the policyId property.
            ## @return a void
            ## 
            def policy_id=(value)
                @policy_id = value
            end
            ## 
            ## Gets the policyName property value. The name of the Private Link policy in Microsoft Entra ID.
            ## @return a string
            ## 
            def policy_name
                return @policy_name
            end
            ## 
            ## Sets the policyName property value. The name of the Private Link policy in Microsoft Entra ID.
            ## @param value Value to set for the policyName property.
            ## @return a void
            ## 
            def policy_name=(value)
                @policy_name = value
            end
            ## 
            ## Gets the policyTenantId property value. The tenant identifier of the Microsoft Entra tenant the Private Link policy belongs to.
            ## @return a string
            ## 
            def policy_tenant_id
                return @policy_tenant_id
            end
            ## 
            ## Sets the policyTenantId property value. The tenant identifier of the Microsoft Entra tenant the Private Link policy belongs to.
            ## @param value Value to set for the policyTenantId property.
            ## @return a void
            ## 
            def policy_tenant_id=(value)
                @policy_tenant_id = value
            end
            ## 
            ## Gets the resourceId property value. The Azure Resource Manager (ARM) path for the Private Link policy resource.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The Azure Resource Manager (ARM) path for the Private Link policy resource.
            ## @param value Value to set for the resourceId property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("policyId", @policy_id)
                writer.write_string_value("policyName", @policy_name)
                writer.write_string_value("policyTenantId", @policy_tenant_id)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
