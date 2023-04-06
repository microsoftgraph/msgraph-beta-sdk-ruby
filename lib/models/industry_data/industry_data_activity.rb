require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class IndustryDataActivity < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The name of the activity. Maximum supported length is 100 characters.
                @display_name
                ## 
                # The readinessStatus property
                @readiness_status
                ## 
                ## Instantiates a new industryDataActivity and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a industry_data_activity
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.industryData.inboundFileFlow"
                                return InboundFileFlow.new
                            when "#microsoft.graph.industryData.inboundFlow"
                                return InboundFlow.new
                        end
                    end
                    return IndustryDataActivity.new
                end
                ## 
                ## Gets the displayName property value. The name of the activity. Maximum supported length is 100 characters.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The name of the activity. Maximum supported length is 100 characters.
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
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "readinessStatus" => lambda {|n| @readiness_status = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryData::ReadinessStatus) },
                    })
                end
                ## 
                ## Gets the readinessStatus property value. The readinessStatus property
                ## @return a readiness_status
                ## 
                def readiness_status
                    return @readiness_status
                end
                ## 
                ## Sets the readinessStatus property value. The readinessStatus property
                ## @param value Value to set for the readiness_status property.
                ## @return a void
                ## 
                def readiness_status=(value)
                    @readiness_status = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("displayName", @display_name)
                    writer.write_enum_value("readinessStatus", @readiness_status)
                end
            end
        end
    end
end
