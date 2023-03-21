require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class InboundFlow < MicrosoftGraphBeta::Models::IndustryData::IndustryDataActivity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The dataConnector property
                @data_connector
                ## 
                # The dataDomain property
                @data_domain
                ## 
                # The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @effective_date_time
                ## 
                # The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @expiration_date_time
                ## 
                # The year property
                @year
                ## 
                ## Instantiates a new InboundFlow and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.industryData.inboundFlow"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a inbound_flow
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.industryData.inboundFileFlow"
                                return InboundFileFlow.new
                        end
                    end
                    return InboundFlow.new
                end
                ## 
                ## Gets the dataConnector property value. The dataConnector property
                ## @return a industry_data_connector
                ## 
                def data_connector
                    return @data_connector
                end
                ## 
                ## Sets the dataConnector property value. The dataConnector property
                ## @param value Value to set for the data_connector property.
                ## @return a void
                ## 
                def data_connector=(value)
                    @data_connector = value
                end
                ## 
                ## Gets the dataDomain property value. The dataDomain property
                ## @return a inbound_domain
                ## 
                def data_domain
                    return @data_domain
                end
                ## 
                ## Sets the dataDomain property value. The dataDomain property
                ## @param value Value to set for the data_domain property.
                ## @return a void
                ## 
                def data_domain=(value)
                    @data_domain = value
                end
                ## 
                ## Gets the effectiveDateTime property value. The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def effective_date_time
                    return @effective_date_time
                end
                ## 
                ## Sets the effectiveDateTime property value. The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the effective_date_time property.
                ## @return a void
                ## 
                def effective_date_time=(value)
                    @effective_date_time = value
                end
                ## 
                ## Gets the expirationDateTime property value. The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def expiration_date_time
                    return @expiration_date_time
                end
                ## 
                ## Sets the expirationDateTime property value. The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the expiration_date_time property.
                ## @return a void
                ## 
                def expiration_date_time=(value)
                    @expiration_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "dataConnector" => lambda {|n| @data_connector = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataConnector.create_from_discriminator_value(pn) }) },
                        "dataDomain" => lambda {|n| @data_domain = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryData::InboundDomain) },
                        "effectiveDateTime" => lambda {|n| @effective_date_time = n.get_date_time_value() },
                        "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                        "year" => lambda {|n| @year = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::YearTimePeriodDefinition.create_from_discriminator_value(pn) }) },
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
                    writer.write_object_value("dataConnector", @data_connector)
                    writer.write_enum_value("dataDomain", @data_domain)
                    writer.write_date_time_value("effectiveDateTime", @effective_date_time)
                    writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                    writer.write_object_value("year", @year)
                end
                ## 
                ## Gets the year property value. The year property
                ## @return a year_time_period_definition
                ## 
                def year
                    return @year
                end
                ## 
                ## Sets the year property value. The year property
                ## @param value Value to set for the year property.
                ## @return a void
                ## 
                def year=(value)
                    @year = value
                end
            end
        end
    end
end
