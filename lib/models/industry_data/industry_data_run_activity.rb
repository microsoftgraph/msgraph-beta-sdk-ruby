require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class IndustryDataRunActivity < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The flow that was run by this activity.
                @activity
                ## 
                # An error object to diagnose critical failures in an activity.
                @blocking_error
                ## 
                # The name of the running flow.
                @display_name
                ## 
                # The status property
                @status
                ## 
                ## Gets the activity property value. The flow that was run by this activity.
                ## @return a industry_data_activity
                ## 
                def activity
                    return @activity
                end
                ## 
                ## Sets the activity property value. The flow that was run by this activity.
                ## @param value Value to set for the activity property.
                ## @return a void
                ## 
                def activity=(value)
                    @activity = value
                end
                ## 
                ## Gets the blockingError property value. An error object to diagnose critical failures in an activity.
                ## @return a public_error
                ## 
                def blocking_error
                    return @blocking_error
                end
                ## 
                ## Sets the blockingError property value. An error object to diagnose critical failures in an activity.
                ## @param value Value to set for the blocking_error property.
                ## @return a void
                ## 
                def blocking_error=(value)
                    @blocking_error = value
                end
                ## 
                ## Instantiates a new industryDataRunActivity and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a industry_data_run_activity
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.industryData.inboundFlowActivity"
                                return InboundFlowActivity.new
                            when "#microsoft.graph.industryData.outboundFlowActivity"
                                return OutboundFlowActivity.new
                        end
                    end
                    return IndustryDataRunActivity.new
                end
                ## 
                ## Gets the displayName property value. The name of the running flow.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The name of the running flow.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "activity" => lambda {|n| @activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataActivity.create_from_discriminator_value(pn) }) },
                        "blockingError" => lambda {|n| @blocking_error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PublicError.create_from_discriminator_value(pn) }) },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryData::IndustryDataActivityStatus) },
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
                    writer.write_object_value("activity", @activity)
                    writer.write_enum_value("status", @status)
                end
                ## 
                ## Gets the status property value. The status property
                ## @return a industry_data_activity_status
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
end
