require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcPolicyScheduledApplyActionDetail < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An expression that specifies the cron schedule. (For example, '0 0 0 20  ' means schedules a job to run at midnight on the 20th of every month) Administrators can set a cron expression to define the scheduling rules for automatic regular application. When auto-provision is disabled, cronScheduleExpression is set to null, stopping the automatic task scheduling. Read-Only.
            @cron_schedule_expression
            ## 
            # The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users. Frontline shared only.
            @reserve_percentage
            ## 
            ## Instantiates a new CloudPcPolicyScheduledApplyActionDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
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
            ## Gets the cronScheduleExpression property value. An expression that specifies the cron schedule. (For example, '0 0 0 20  ' means schedules a job to run at midnight on the 20th of every month) Administrators can set a cron expression to define the scheduling rules for automatic regular application. When auto-provision is disabled, cronScheduleExpression is set to null, stopping the automatic task scheduling. Read-Only.
            ## @return a string
            ## 
            def cron_schedule_expression
                return @cron_schedule_expression
            end
            ## 
            ## Sets the cronScheduleExpression property value. An expression that specifies the cron schedule. (For example, '0 0 0 20  ' means schedules a job to run at midnight on the 20th of every month) Administrators can set a cron expression to define the scheduling rules for automatic regular application. When auto-provision is disabled, cronScheduleExpression is set to null, stopping the automatic task scheduling. Read-Only.
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
                return super.merge({
                    "cronScheduleExpression" => lambda {|n| @cron_schedule_expression = n.get_string_value() },
                    "reservePercentage" => lambda {|n| @reserve_percentage = n.get_number_value() },
                })
            end
            ## 
            ## Gets the reservePercentage property value. The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users. Frontline shared only.
            ## @return a integer
            ## 
            def reserve_percentage
                return @reserve_percentage
            end
            ## 
            ## Sets the reservePercentage property value. The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users. Frontline shared only.
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
                super
                writer.write_string_value("cronScheduleExpression", @cron_schedule_expression)
                writer.write_number_value("reservePercentage", @reserve_percentage)
            end
        end
    end
end
