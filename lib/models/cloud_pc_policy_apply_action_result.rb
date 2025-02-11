require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcPolicyApplyActionResult < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the operation finished.
            @finish_date_time
            ## 
            # The date and time when the operation was applied.
            @start_date_time
            ## 
            # The status property
            @status
            ## 
            ## Instantiates a new CloudPcPolicyApplyActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_policy_apply_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcPolicyApplyActionResult.new
            end
            ## 
            ## Gets the finishDateTime property value. The date and time when the operation finished.
            ## @return a date_time
            ## 
            def finish_date_time
                return @finish_date_time
            end
            ## 
            ## Sets the finishDateTime property value. The date and time when the operation finished.
            ## @param value Value to set for the finishDateTime property.
            ## @return a void
            ## 
            def finish_date_time=(value)
                @finish_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "finishDateTime" => lambda {|n| @finish_date_time = n.get_date_time_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcPolicyApplyActionStatus) },
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
                writer.write_date_time_value("finishDateTime", @finish_date_time)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the startDateTime property value. The date and time when the operation was applied.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The date and time when the operation was applied.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a cloud_pc_policy_apply_action_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
