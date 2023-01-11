require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EducationalActivity < MicrosoftGraphBeta::Models::ItemFacet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The month and year the user graduated or completed the activity.
        @completion_month_year
        ## 
        # The month and year the user completed the educational activity referenced.
        @end_month_year
        ## 
        # The institution property
        @institution
        ## 
        # The program property
        @program
        ## 
        # The month and year the user commenced the activity referenced.
        @start_month_year
        ## 
        ## Gets the completionMonthYear property value. The month and year the user graduated or completed the activity.
        ## @return a date
        ## 
        def completion_month_year
            return @completion_month_year
        end
        ## 
        ## Sets the completionMonthYear property value. The month and year the user graduated or completed the activity.
        ## @param value Value to set for the completionMonthYear property.
        ## @return a void
        ## 
        def completion_month_year=(value)
            @completion_month_year = value
        end
        ## 
        ## Instantiates a new EducationalActivity and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.educationalActivity"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a educational_activity
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EducationalActivity.new
        end
        ## 
        ## Gets the endMonthYear property value. The month and year the user completed the educational activity referenced.
        ## @return a date
        ## 
        def end_month_year
            return @end_month_year
        end
        ## 
        ## Sets the endMonthYear property value. The month and year the user completed the educational activity referenced.
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
            return super.merge({
                "completionMonthYear" => lambda {|n| @completion_month_year = n.get_date_value() },
                "endMonthYear" => lambda {|n| @end_month_year = n.get_date_value() },
                "institution" => lambda {|n| @institution = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InstitutionData.create_from_discriminator_value(pn) }) },
                "program" => lambda {|n| @program = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationalActivityDetail.create_from_discriminator_value(pn) }) },
                "startMonthYear" => lambda {|n| @start_month_year = n.get_date_value() },
            })
        end
        ## 
        ## Gets the institution property value. The institution property
        ## @return a institution_data
        ## 
        def institution
            return @institution
        end
        ## 
        ## Sets the institution property value. The institution property
        ## @param value Value to set for the institution property.
        ## @return a void
        ## 
        def institution=(value)
            @institution = value
        end
        ## 
        ## Gets the program property value. The program property
        ## @return a educational_activity_detail
        ## 
        def program
            return @program
        end
        ## 
        ## Sets the program property value. The program property
        ## @param value Value to set for the program property.
        ## @return a void
        ## 
        def program=(value)
            @program = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_value("completionMonthYear", @completion_month_year)
            writer.write_date_value("endMonthYear", @end_month_year)
            writer.write_object_value("institution", @institution)
            writer.write_object_value("program", @program)
            writer.write_date_value("startMonthYear", @start_month_year)
        end
        ## 
        ## Gets the startMonthYear property value. The month and year the user commenced the activity referenced.
        ## @return a date
        ## 
        def start_month_year
            return @start_month_year
        end
        ## 
        ## Sets the startMonthYear property value. The month and year the user commenced the activity referenced.
        ## @param value Value to set for the startMonthYear property.
        ## @return a void
        ## 
        def start_month_year=(value)
            @start_month_year = value
        end
    end
end
