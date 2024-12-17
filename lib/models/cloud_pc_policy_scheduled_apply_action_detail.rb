require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcPolicyScheduledApplyActionDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The cronScheduleExpression property
            @cron_schedule_expression
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The reservePercentage property
            @reserve_percentage
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
            ## Instantiates a new CloudPcPolicyScheduledApplyActionDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_policy_scheduled_apply_action_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcPolicyScheduledApplyActionDetail.new
            end
            ## 
            ## Gets the cronScheduleExpression property value. The cronScheduleExpression property
            ## @return a string
            ## 
            def cron_schedule_expression
                return @cron_schedule_expression
            end
            ## 
            ## Sets the cronScheduleExpression property value. The cronScheduleExpression property
            ## @param value Value to set for the cronScheduleExpression property.
            ## @return a void
            ## 
            def cron_schedule_expression=(value)
                @cron_schedule_expression = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cronScheduleExpression" => lambda {|n| @cron_schedule_expression = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reservePercentage" => lambda {|n| @reserve_percentage = n.get_number_value() },
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
            ## Gets the reservePercentage property value. The reservePercentage property
            ## @return a integer
            ## 
            def reserve_percentage
                return @reserve_percentage
            end
            ## 
            ## Sets the reservePercentage property value. The reservePercentage property
            ## @param value Value to set for the reservePercentage property.
            ## @return a void
            ## 
            def reserve_percentage=(value)
                @reserve_percentage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("cronScheduleExpression", @cron_schedule_expression)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("reservePercentage", @reserve_percentage)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
