require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../me'
require_relative './activate_service_plan'

module MicrosoftGraphBeta::Me::ActivateServicePlan
    class ActivateServicePlanPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The servicePlanId property
        @service_plan_id
        ## 
        # The skuId property
        @sku_id
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
        ## Instantiates a new activateServicePlanPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a activate_service_plan_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ActivateServicePlanPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "servicePlanId" => lambda {|n| @service_plan_id = n.get_guid_value() },
                "skuId" => lambda {|n| @sku_id = n.get_guid_value() },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_guid_value("servicePlanId", @service_plan_id)
            writer.write_guid_value("skuId", @sku_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the servicePlanId property value. The servicePlanId property
        ## @return a guid
        ## 
        def service_plan_id
            return @service_plan_id
        end
        ## 
        ## Sets the servicePlanId property value. The servicePlanId property
        ## @param value Value to set for the servicePlanId property.
        ## @return a void
        ## 
        def service_plan_id=(value)
            @service_plan_id = value
        end
        ## 
        ## Gets the skuId property value. The skuId property
        ## @return a guid
        ## 
        def sku_id
            return @sku_id
        end
        ## 
        ## Sets the skuId property value. The skuId property
        ## @param value Value to set for the skuId property.
        ## @return a void
        ## 
        def sku_id=(value)
            @sku_id = value
        end
    end
end
