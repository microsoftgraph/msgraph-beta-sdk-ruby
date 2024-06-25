require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcBulkResize < MicrosoftGraphBeta::Models::CloudPcBulkAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The target service plan ID of the resize configuration with new vCPU and storage size.
            @target_service_plan_id
            ## 
            ## Instantiates a new CloudPcBulkResize and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcBulkResize"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_bulk_resize
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcBulkResize.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "targetServicePlanId" => lambda {|n| @target_service_plan_id = n.get_string_value() },
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
                writer.write_string_value("targetServicePlanId", @target_service_plan_id)
            end
            ## 
            ## Gets the targetServicePlanId property value. The target service plan ID of the resize configuration with new vCPU and storage size.
            ## @return a string
            ## 
            def target_service_plan_id
                return @target_service_plan_id
            end
            ## 
            ## Sets the targetServicePlanId property value. The target service plan ID of the resize configuration with new vCPU and storage size.
            ## @param value Value to set for the targetServicePlanId property.
            ## @return a void
            ## 
            def target_service_plan_id=(value)
                @target_service_plan_id = value
            end
        end
    end
end
