require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServiceLevelAgreementAttainment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The end date for the calendar month for which SLA attainment is measured.
            @end_date
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The level of SLA attainment achieved by the tenant for the calendar month identified, as described in Azure Active Directory SLA performance. Values are truncated, not rounded, so the actual value is always equal to or higher than the displayed value. Values are expressed as a percentage of availability for the tenant.
            @score
            ## 
            # The start date for the calendar month for which SLA attainment is measured.
            @start_date
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
            ## Instantiates a new serviceLevelAgreementAttainment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_level_agreement_attainment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceLevelAgreementAttainment.new
            end
            ## 
            ## Gets the endDate property value. The end date for the calendar month for which SLA attainment is measured.
            ## @return a date
            ## 
            def end_date
                return @end_date
            end
            ## 
            ## Sets the endDate property value. The end date for the calendar month for which SLA attainment is measured.
            ## @param value Value to set for the end_date property.
            ## @return a void
            ## 
            def end_date=(value)
                @end_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "endDate" => lambda {|n| @end_date = n.get_date_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "score" => lambda {|n| @score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "startDate" => lambda {|n| @start_date = n.get_date_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the score property value. The level of SLA attainment achieved by the tenant for the calendar month identified, as described in Azure Active Directory SLA performance. Values are truncated, not rounded, so the actual value is always equal to or higher than the displayed value. Values are expressed as a percentage of availability for the tenant.
            ## @return a double
            ## 
            def score
                return @score
            end
            ## 
            ## Sets the score property value. The level of SLA attainment achieved by the tenant for the calendar month identified, as described in Azure Active Directory SLA performance. Values are truncated, not rounded, so the actual value is always equal to or higher than the displayed value. Values are expressed as a percentage of availability for the tenant.
            ## @param value Value to set for the score property.
            ## @return a void
            ## 
            def score=(value)
                @score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_value("endDate", @end_date)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("score", @score)
                writer.write_date_value("startDate", @start_date)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDate property value. The start date for the calendar month for which SLA attainment is measured.
            ## @return a date
            ## 
            def start_date
                return @start_date
            end
            ## 
            ## Sets the startDate property value. The start date for the calendar month for which SLA attainment is measured.
            ## @param value Value to set for the start_date property.
            ## @return a void
            ## 
            def start_date=(value)
                @start_date = value
            end
        end
    end
end
