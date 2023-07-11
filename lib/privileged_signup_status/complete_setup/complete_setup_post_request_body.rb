require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/tenant_setup_info'
require_relative '../privileged_signup_status'
require_relative './complete_setup'

module MicrosoftGraphBeta
    module PrivilegedSignupStatus
        module CompleteSetup
            class CompleteSetupPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The tenantSetupInfo property
                @tenant_setup_info
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
                ## Instantiates a new completeSetupPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a complete_setup_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CompleteSetupPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "tenantSetupInfo" => lambda {|n| @tenant_setup_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TenantSetupInfo.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("tenantSetupInfo", @tenant_setup_info)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the tenantSetupInfo property value. The tenantSetupInfo property
                ## @return a tenant_setup_info
                ## 
                def tenant_setup_info
                    return @tenant_setup_info
                end
                ## 
                ## Sets the tenantSetupInfo property value. The tenantSetupInfo property
                ## @param value Value to set for the tenant_setup_info property.
                ## @return a void
                ## 
                def tenant_setup_info=(value)
                    @tenant_setup_info = value
                end
            end
        end
    end
end
