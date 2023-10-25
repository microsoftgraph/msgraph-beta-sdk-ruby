require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PositionDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Detail about the company or employer.
            @company
            ## 
            # Description of the position in question.
            @description
            ## 
            # When the position ended.
            @end_month_year
            ## 
            # The title held when in that position.
            @job_title
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The role the position entailed.
            @role
            ## 
            # The start month and year of the position.
            @start_month_year
            ## 
            # Short summary of the position.
            @summary
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
            ## Gets the company property value. Detail about the company or employer.
            ## @return a company_detail
            ## 
            def company
                return @company
            end
            ## 
            ## Sets the company property value. Detail about the company or employer.
            ## @param value Value to set for the company property.
            ## @return a void
            ## 
            def company=(value)
                @company = value
            end
            ## 
            ## Instantiates a new positionDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a position_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PositionDetail.new
            end
            ## 
            ## Gets the description property value. Description of the position in question.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the position in question.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the endMonthYear property value. When the position ended.
            ## @return a date
            ## 
            def end_month_year
                return @end_month_year
            end
            ## 
            ## Sets the endMonthYear property value. When the position ended.
            ## @param value Value to set for the endMonthYear property.
            ## @return a void
            ## 
            def end_month_year=(value)
                @end_month_year = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "company" => lambda {|n| @company = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CompanyDetail.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "endMonthYear" => lambda {|n| @end_month_year = n.get_date_value() },
                    "jobTitle" => lambda {|n| @job_title = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "role" => lambda {|n| @role = n.get_string_value() },
                    "startMonthYear" => lambda {|n| @start_month_year = n.get_date_value() },
                    "summary" => lambda {|n| @summary = n.get_string_value() },
                }
            end
            ## 
            ## Gets the jobTitle property value. The title held when in that position.
            ## @return a string
            ## 
            def job_title
                return @job_title
            end
            ## 
            ## Sets the jobTitle property value. The title held when in that position.
            ## @param value Value to set for the jobTitle property.
            ## @return a void
            ## 
            def job_title=(value)
                @job_title = value
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
            ## Gets the role property value. The role the position entailed.
            ## @return a string
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role the position entailed.
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("company", @company)
                writer.write_string_value("description", @description)
                writer.write_date_value("endMonthYear", @end_month_year)
                writer.write_string_value("jobTitle", @job_title)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("role", @role)
                writer.write_date_value("startMonthYear", @start_month_year)
                writer.write_string_value("summary", @summary)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startMonthYear property value. The start month and year of the position.
            ## @return a date
            ## 
            def start_month_year
                return @start_month_year
            end
            ## 
            ## Sets the startMonthYear property value. The start month and year of the position.
            ## @param value Value to set for the startMonthYear property.
            ## @return a void
            ## 
            def start_month_year=(value)
                @start_month_year = value
            end
            ## 
            ## Gets the summary property value. Short summary of the position.
            ## @return a string
            ## 
            def summary
                return @summary
            end
            ## 
            ## Sets the summary property value. Short summary of the position.
            ## @param value Value to set for the summary property.
            ## @return a void
            ## 
            def summary=(value)
                @summary = value
            end
        end
    end
end
