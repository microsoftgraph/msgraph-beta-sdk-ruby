require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PaymentTerm
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The calculateDiscountOnCreditMemos property
            @calculate_discount_on_credit_memos
            ## 
            # The code property
            @code
            ## 
            # The discountDateCalculation property
            @discount_date_calculation
            ## 
            # The discountPercent property
            @discount_percent
            ## 
            # The displayName property
            @display_name
            ## 
            # The dueDateCalculation property
            @due_date_calculation
            ## 
            # The id property
            @id
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the calculateDiscountOnCreditMemos property value. The calculateDiscountOnCreditMemos property
            ## @return a boolean
            ## 
            def calculate_discount_on_credit_memos
                return @calculate_discount_on_credit_memos
            end
            ## 
            ## Sets the calculateDiscountOnCreditMemos property value. The calculateDiscountOnCreditMemos property
            ## @param value Value to set for the calculateDiscountOnCreditMemos property.
            ## @return a void
            ## 
            def calculate_discount_on_credit_memos=(value)
                @calculate_discount_on_credit_memos = value
            end
            ## 
            ## Gets the code property value. The code property
            ## @return a string
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The code property
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new paymentTerm and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a payment_term
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PaymentTerm.new
            end
            ## 
            ## Gets the discountDateCalculation property value. The discountDateCalculation property
            ## @return a string
            ## 
            def discount_date_calculation
                return @discount_date_calculation
            end
            ## 
            ## Sets the discountDateCalculation property value. The discountDateCalculation property
            ## @param value Value to set for the discountDateCalculation property.
            ## @return a void
            ## 
            def discount_date_calculation=(value)
                @discount_date_calculation = value
            end
            ## 
            ## Gets the discountPercent property value. The discountPercent property
            ## @return a decimal
            ## 
            def discount_percent
                return @discount_percent
            end
            ## 
            ## Sets the discountPercent property value. The discountPercent property
            ## @param value Value to set for the discountPercent property.
            ## @return a void
            ## 
            def discount_percent=(value)
                @discount_percent = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the dueDateCalculation property value. The dueDateCalculation property
            ## @return a string
            ## 
            def due_date_calculation
                return @due_date_calculation
            end
            ## 
            ## Sets the dueDateCalculation property value. The dueDateCalculation property
            ## @param value Value to set for the dueDateCalculation property.
            ## @return a void
            ## 
            def due_date_calculation=(value)
                @due_date_calculation = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "calculateDiscountOnCreditMemos" => lambda {|n| @calculate_discount_on_credit_memos = n.get_boolean_value() },
                    "code" => lambda {|n| @code = n.get_string_value() },
                    "discountDateCalculation" => lambda {|n| @discount_date_calculation = n.get_string_value() },
                    "discountPercent" => lambda {|n| @discount_percent = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "dueDateCalculation" => lambda {|n| @due_date_calculation = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("calculateDiscountOnCreditMemos", @calculate_discount_on_credit_memos)
                writer.write_string_value("code", @code)
                writer.write_string_value("discountDateCalculation", @discount_date_calculation)
                writer.write_object_value("discountPercent", @discount_percent)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("dueDateCalculation", @due_date_calculation)
                writer.write_guid_value("id", @id)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
