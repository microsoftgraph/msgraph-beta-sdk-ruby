require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AgedAccountsReceivable
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The agedAsOfDate property
            @aged_as_of_date
            ## 
            # The balanceDue property
            @balance_due
            ## 
            # The currencyCode property
            @currency_code
            ## 
            # The currentAmount property
            @current_amount
            ## 
            # The customerId property
            @customer_id
            ## 
            # The customerNumber property
            @customer_number
            ## 
            # The id property
            @id
            ## 
            # The name property
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The periodLengthFilter property
            @period_length_filter
            ## 
            # The period1Amount property
            @period1_amount
            ## 
            # The period2Amount property
            @period2_amount
            ## 
            # The period3Amount property
            @period3_amount
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
            ## Gets the agedAsOfDate property value. The agedAsOfDate property
            ## @return a date
            ## 
            def aged_as_of_date
                return @aged_as_of_date
            end
            ## 
            ## Sets the agedAsOfDate property value. The agedAsOfDate property
            ## @param value Value to set for the agedAsOfDate property.
            ## @return a void
            ## 
            def aged_as_of_date=(value)
                @aged_as_of_date = value
            end
            ## 
            ## Gets the balanceDue property value. The balanceDue property
            ## @return a decimal
            ## 
            def balance_due
                return @balance_due
            end
            ## 
            ## Sets the balanceDue property value. The balanceDue property
            ## @param value Value to set for the balanceDue property.
            ## @return a void
            ## 
            def balance_due=(value)
                @balance_due = value
            end
            ## 
            ## Instantiates a new AgedAccountsReceivable and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aged_accounts_receivable
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AgedAccountsReceivable.new
            end
            ## 
            ## Gets the currencyCode property value. The currencyCode property
            ## @return a string
            ## 
            def currency_code
                return @currency_code
            end
            ## 
            ## Sets the currencyCode property value. The currencyCode property
            ## @param value Value to set for the currencyCode property.
            ## @return a void
            ## 
            def currency_code=(value)
                @currency_code = value
            end
            ## 
            ## Gets the currentAmount property value. The currentAmount property
            ## @return a decimal
            ## 
            def current_amount
                return @current_amount
            end
            ## 
            ## Sets the currentAmount property value. The currentAmount property
            ## @param value Value to set for the currentAmount property.
            ## @return a void
            ## 
            def current_amount=(value)
                @current_amount = value
            end
            ## 
            ## Gets the customerId property value. The customerId property
            ## @return a string
            ## 
            def customer_id
                return @customer_id
            end
            ## 
            ## Sets the customerId property value. The customerId property
            ## @param value Value to set for the customerId property.
            ## @return a void
            ## 
            def customer_id=(value)
                @customer_id = value
            end
            ## 
            ## Gets the customerNumber property value. The customerNumber property
            ## @return a string
            ## 
            def customer_number
                return @customer_number
            end
            ## 
            ## Sets the customerNumber property value. The customerNumber property
            ## @param value Value to set for the customerNumber property.
            ## @return a void
            ## 
            def customer_number=(value)
                @customer_number = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "agedAsOfDate" => lambda {|n| @aged_as_of_date = n.get_date_value() },
                    "balanceDue" => lambda {|n| @balance_due = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "currencyCode" => lambda {|n| @currency_code = n.get_string_value() },
                    "currentAmount" => lambda {|n| @current_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "customerId" => lambda {|n| @customer_id = n.get_string_value() },
                    "customerNumber" => lambda {|n| @customer_number = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "periodLengthFilter" => lambda {|n| @period_length_filter = n.get_string_value() },
                    "period1Amount" => lambda {|n| @period1_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "period2Amount" => lambda {|n| @period2_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "period3Amount" => lambda {|n| @period3_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a guid
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the periodLengthFilter property value. The periodLengthFilter property
            ## @return a string
            ## 
            def period_length_filter
                return @period_length_filter
            end
            ## 
            ## Sets the periodLengthFilter property value. The periodLengthFilter property
            ## @param value Value to set for the periodLengthFilter property.
            ## @return a void
            ## 
            def period_length_filter=(value)
                @period_length_filter = value
            end
            ## 
            ## Gets the period1Amount property value. The period1Amount property
            ## @return a decimal
            ## 
            def period1_amount
                return @period1_amount
            end
            ## 
            ## Sets the period1Amount property value. The period1Amount property
            ## @param value Value to set for the period1Amount property.
            ## @return a void
            ## 
            def period1_amount=(value)
                @period1_amount = value
            end
            ## 
            ## Gets the period2Amount property value. The period2Amount property
            ## @return a decimal
            ## 
            def period2_amount
                return @period2_amount
            end
            ## 
            ## Sets the period2Amount property value. The period2Amount property
            ## @param value Value to set for the period2Amount property.
            ## @return a void
            ## 
            def period2_amount=(value)
                @period2_amount = value
            end
            ## 
            ## Gets the period3Amount property value. The period3Amount property
            ## @return a decimal
            ## 
            def period3_amount
                return @period3_amount
            end
            ## 
            ## Sets the period3Amount property value. The period3Amount property
            ## @param value Value to set for the period3Amount property.
            ## @return a void
            ## 
            def period3_amount=(value)
                @period3_amount = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_value("agedAsOfDate", @aged_as_of_date)
                writer.write_object_value("balanceDue", @balance_due)
                writer.write_string_value("currencyCode", @currency_code)
                writer.write_object_value("currentAmount", @current_amount)
                writer.write_string_value("customerId", @customer_id)
                writer.write_string_value("customerNumber", @customer_number)
                writer.write_guid_value("id", @id)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("periodLengthFilter", @period_length_filter)
                writer.write_object_value("period1Amount", @period1_amount)
                writer.write_object_value("period2Amount", @period2_amount)
                writer.write_object_value("period3Amount", @period3_amount)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
