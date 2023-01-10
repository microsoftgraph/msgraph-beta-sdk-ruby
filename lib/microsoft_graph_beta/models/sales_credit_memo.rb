require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class SalesCreditMemo < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The billingPostalAddress property
        @billing_postal_address
        ## 
        # The billToCustomerId property
        @bill_to_customer_id
        ## 
        # The billToCustomerNumber property
        @bill_to_customer_number
        ## 
        # The billToName property
        @bill_to_name
        ## 
        # The creditMemoDate property
        @credit_memo_date
        ## 
        # The currency property
        @currency
        ## 
        # The currencyCode property
        @currency_code
        ## 
        # The currencyId property
        @currency_id
        ## 
        # The customer property
        @customer
        ## 
        # The customerId property
        @customer_id
        ## 
        # The customerName property
        @customer_name
        ## 
        # The customerNumber property
        @customer_number
        ## 
        # The discountAmount property
        @discount_amount
        ## 
        # The discountAppliedBeforeTax property
        @discount_applied_before_tax
        ## 
        # The dueDate property
        @due_date
        ## 
        # The email property
        @email
        ## 
        # The externalDocumentNumber property
        @external_document_number
        ## 
        # The invoiceId property
        @invoice_id
        ## 
        # The invoiceNumber property
        @invoice_number
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        # The number property
        @number
        ## 
        # The paymentTerm property
        @payment_term
        ## 
        # The paymentTermsId property
        @payment_terms_id
        ## 
        # The phoneNumber property
        @phone_number
        ## 
        # The pricesIncludeTax property
        @prices_include_tax
        ## 
        # The salesCreditMemoLines property
        @sales_credit_memo_lines
        ## 
        # The salesperson property
        @salesperson
        ## 
        # The sellingPostalAddress property
        @selling_postal_address
        ## 
        # The status property
        @status
        ## 
        # The totalAmountExcludingTax property
        @total_amount_excluding_tax
        ## 
        # The totalAmountIncludingTax property
        @total_amount_including_tax
        ## 
        # The totalTaxAmount property
        @total_tax_amount
        ## 
        ## Gets the billingPostalAddress property value. The billingPostalAddress property
        ## @return a postal_address_type
        ## 
        def billing_postal_address
            return @billing_postal_address
        end
        ## 
        ## Sets the billingPostalAddress property value. The billingPostalAddress property
        ## @param value Value to set for the billingPostalAddress property.
        ## @return a void
        ## 
        def billing_postal_address=(value)
            @billing_postal_address = value
        end
        ## 
        ## Gets the billToCustomerId property value. The billToCustomerId property
        ## @return a guid
        ## 
        def bill_to_customer_id
            return @bill_to_customer_id
        end
        ## 
        ## Sets the billToCustomerId property value. The billToCustomerId property
        ## @param value Value to set for the billToCustomerId property.
        ## @return a void
        ## 
        def bill_to_customer_id=(value)
            @bill_to_customer_id = value
        end
        ## 
        ## Gets the billToCustomerNumber property value. The billToCustomerNumber property
        ## @return a string
        ## 
        def bill_to_customer_number
            return @bill_to_customer_number
        end
        ## 
        ## Sets the billToCustomerNumber property value. The billToCustomerNumber property
        ## @param value Value to set for the billToCustomerNumber property.
        ## @return a void
        ## 
        def bill_to_customer_number=(value)
            @bill_to_customer_number = value
        end
        ## 
        ## Gets the billToName property value. The billToName property
        ## @return a string
        ## 
        def bill_to_name
            return @bill_to_name
        end
        ## 
        ## Sets the billToName property value. The billToName property
        ## @param value Value to set for the billToName property.
        ## @return a void
        ## 
        def bill_to_name=(value)
            @bill_to_name = value
        end
        ## 
        ## Instantiates a new salesCreditMemo and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a sales_credit_memo
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SalesCreditMemo.new
        end
        ## 
        ## Gets the creditMemoDate property value. The creditMemoDate property
        ## @return a date
        ## 
        def credit_memo_date
            return @credit_memo_date
        end
        ## 
        ## Sets the creditMemoDate property value. The creditMemoDate property
        ## @param value Value to set for the creditMemoDate property.
        ## @return a void
        ## 
        def credit_memo_date=(value)
            @credit_memo_date = value
        end
        ## 
        ## Gets the currency property value. The currency property
        ## @return a currency
        ## 
        def currency
            return @currency
        end
        ## 
        ## Sets the currency property value. The currency property
        ## @param value Value to set for the currency property.
        ## @return a void
        ## 
        def currency=(value)
            @currency = value
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
        ## Gets the currencyId property value. The currencyId property
        ## @return a guid
        ## 
        def currency_id
            return @currency_id
        end
        ## 
        ## Sets the currencyId property value. The currencyId property
        ## @param value Value to set for the currencyId property.
        ## @return a void
        ## 
        def currency_id=(value)
            @currency_id = value
        end
        ## 
        ## Gets the customer property value. The customer property
        ## @return a customer
        ## 
        def customer
            return @customer
        end
        ## 
        ## Sets the customer property value. The customer property
        ## @param value Value to set for the customer property.
        ## @return a void
        ## 
        def customer=(value)
            @customer = value
        end
        ## 
        ## Gets the customerId property value. The customerId property
        ## @return a guid
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
        ## Gets the customerName property value. The customerName property
        ## @return a string
        ## 
        def customer_name
            return @customer_name
        end
        ## 
        ## Sets the customerName property value. The customerName property
        ## @param value Value to set for the customerName property.
        ## @return a void
        ## 
        def customer_name=(value)
            @customer_name = value
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
        ## Gets the discountAmount property value. The discountAmount property
        ## @return a decimal
        ## 
        def discount_amount
            return @discount_amount
        end
        ## 
        ## Sets the discountAmount property value. The discountAmount property
        ## @param value Value to set for the discountAmount property.
        ## @return a void
        ## 
        def discount_amount=(value)
            @discount_amount = value
        end
        ## 
        ## Gets the discountAppliedBeforeTax property value. The discountAppliedBeforeTax property
        ## @return a boolean
        ## 
        def discount_applied_before_tax
            return @discount_applied_before_tax
        end
        ## 
        ## Sets the discountAppliedBeforeTax property value. The discountAppliedBeforeTax property
        ## @param value Value to set for the discountAppliedBeforeTax property.
        ## @return a void
        ## 
        def discount_applied_before_tax=(value)
            @discount_applied_before_tax = value
        end
        ## 
        ## Gets the dueDate property value. The dueDate property
        ## @return a date
        ## 
        def due_date
            return @due_date
        end
        ## 
        ## Sets the dueDate property value. The dueDate property
        ## @param value Value to set for the dueDate property.
        ## @return a void
        ## 
        def due_date=(value)
            @due_date = value
        end
        ## 
        ## Gets the email property value. The email property
        ## @return a string
        ## 
        def email
            return @email
        end
        ## 
        ## Sets the email property value. The email property
        ## @param value Value to set for the email property.
        ## @return a void
        ## 
        def email=(value)
            @email = value
        end
        ## 
        ## Gets the externalDocumentNumber property value. The externalDocumentNumber property
        ## @return a string
        ## 
        def external_document_number
            return @external_document_number
        end
        ## 
        ## Sets the externalDocumentNumber property value. The externalDocumentNumber property
        ## @param value Value to set for the externalDocumentNumber property.
        ## @return a void
        ## 
        def external_document_number=(value)
            @external_document_number = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "billingPostalAddress" => lambda {|n| @billing_postal_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                "billToCustomerId" => lambda {|n| @bill_to_customer_id = n.get_guid_value() },
                "billToCustomerNumber" => lambda {|n| @bill_to_customer_number = n.get_string_value() },
                "billToName" => lambda {|n| @bill_to_name = n.get_string_value() },
                "creditMemoDate" => lambda {|n| @credit_memo_date = n.get_date_value() },
                "currency" => lambda {|n| @currency = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Currency.create_from_discriminator_value(pn) }) },
                "currencyCode" => lambda {|n| @currency_code = n.get_string_value() },
                "currencyId" => lambda {|n| @currency_id = n.get_guid_value() },
                "customer" => lambda {|n| @customer = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Customer.create_from_discriminator_value(pn) }) },
                "customerId" => lambda {|n| @customer_id = n.get_guid_value() },
                "customerName" => lambda {|n| @customer_name = n.get_string_value() },
                "customerNumber" => lambda {|n| @customer_number = n.get_string_value() },
                "discountAmount" => lambda {|n| @discount_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "discountAppliedBeforeTax" => lambda {|n| @discount_applied_before_tax = n.get_boolean_value() },
                "dueDate" => lambda {|n| @due_date = n.get_date_value() },
                "email" => lambda {|n| @email = n.get_string_value() },
                "externalDocumentNumber" => lambda {|n| @external_document_number = n.get_string_value() },
                "invoiceId" => lambda {|n| @invoice_id = n.get_guid_value() },
                "invoiceNumber" => lambda {|n| @invoice_number = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "number" => lambda {|n| @number = n.get_string_value() },
                "paymentTerm" => lambda {|n| @payment_term = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PaymentTerm.create_from_discriminator_value(pn) }) },
                "paymentTermsId" => lambda {|n| @payment_terms_id = n.get_guid_value() },
                "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                "pricesIncludeTax" => lambda {|n| @prices_include_tax = n.get_boolean_value() },
                "salesCreditMemoLines" => lambda {|n| @sales_credit_memo_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesCreditMemoLine.create_from_discriminator_value(pn) }) },
                "salesperson" => lambda {|n| @salesperson = n.get_string_value() },
                "sellingPostalAddress" => lambda {|n| @selling_postal_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_string_value() },
                "totalAmountExcludingTax" => lambda {|n| @total_amount_excluding_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "totalAmountIncludingTax" => lambda {|n| @total_amount_including_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "totalTaxAmount" => lambda {|n| @total_tax_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the invoiceId property value. The invoiceId property
        ## @return a guid
        ## 
        def invoice_id
            return @invoice_id
        end
        ## 
        ## Sets the invoiceId property value. The invoiceId property
        ## @param value Value to set for the invoiceId property.
        ## @return a void
        ## 
        def invoice_id=(value)
            @invoice_id = value
        end
        ## 
        ## Gets the invoiceNumber property value. The invoiceNumber property
        ## @return a string
        ## 
        def invoice_number
            return @invoice_number
        end
        ## 
        ## Sets the invoiceNumber property value. The invoiceNumber property
        ## @param value Value to set for the invoiceNumber property.
        ## @return a void
        ## 
        def invoice_number=(value)
            @invoice_number = value
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
        ## Gets the number property value. The number property
        ## @return a string
        ## 
        def number
            return @number
        end
        ## 
        ## Sets the number property value. The number property
        ## @param value Value to set for the number property.
        ## @return a void
        ## 
        def number=(value)
            @number = value
        end
        ## 
        ## Gets the paymentTerm property value. The paymentTerm property
        ## @return a payment_term
        ## 
        def payment_term
            return @payment_term
        end
        ## 
        ## Sets the paymentTerm property value. The paymentTerm property
        ## @param value Value to set for the paymentTerm property.
        ## @return a void
        ## 
        def payment_term=(value)
            @payment_term = value
        end
        ## 
        ## Gets the paymentTermsId property value. The paymentTermsId property
        ## @return a guid
        ## 
        def payment_terms_id
            return @payment_terms_id
        end
        ## 
        ## Sets the paymentTermsId property value. The paymentTermsId property
        ## @param value Value to set for the paymentTermsId property.
        ## @return a void
        ## 
        def payment_terms_id=(value)
            @payment_terms_id = value
        end
        ## 
        ## Gets the phoneNumber property value. The phoneNumber property
        ## @return a string
        ## 
        def phone_number
            return @phone_number
        end
        ## 
        ## Sets the phoneNumber property value. The phoneNumber property
        ## @param value Value to set for the phoneNumber property.
        ## @return a void
        ## 
        def phone_number=(value)
            @phone_number = value
        end
        ## 
        ## Gets the pricesIncludeTax property value. The pricesIncludeTax property
        ## @return a boolean
        ## 
        def prices_include_tax
            return @prices_include_tax
        end
        ## 
        ## Sets the pricesIncludeTax property value. The pricesIncludeTax property
        ## @param value Value to set for the pricesIncludeTax property.
        ## @return a void
        ## 
        def prices_include_tax=(value)
            @prices_include_tax = value
        end
        ## 
        ## Gets the salesCreditMemoLines property value. The salesCreditMemoLines property
        ## @return a sales_credit_memo_line
        ## 
        def sales_credit_memo_lines
            return @sales_credit_memo_lines
        end
        ## 
        ## Sets the salesCreditMemoLines property value. The salesCreditMemoLines property
        ## @param value Value to set for the salesCreditMemoLines property.
        ## @return a void
        ## 
        def sales_credit_memo_lines=(value)
            @sales_credit_memo_lines = value
        end
        ## 
        ## Gets the salesperson property value. The salesperson property
        ## @return a string
        ## 
        def salesperson
            return @salesperson
        end
        ## 
        ## Sets the salesperson property value. The salesperson property
        ## @param value Value to set for the salesperson property.
        ## @return a void
        ## 
        def salesperson=(value)
            @salesperson = value
        end
        ## 
        ## Gets the sellingPostalAddress property value. The sellingPostalAddress property
        ## @return a postal_address_type
        ## 
        def selling_postal_address
            return @selling_postal_address
        end
        ## 
        ## Sets the sellingPostalAddress property value. The sellingPostalAddress property
        ## @param value Value to set for the sellingPostalAddress property.
        ## @return a void
        ## 
        def selling_postal_address=(value)
            @selling_postal_address = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("billingPostalAddress", @billing_postal_address)
            writer.write_guid_value("billToCustomerId", @bill_to_customer_id)
            writer.write_string_value("billToCustomerNumber", @bill_to_customer_number)
            writer.write_string_value("billToName", @bill_to_name)
            writer.write_date_value("creditMemoDate", @credit_memo_date)
            writer.write_object_value("currency", @currency)
            writer.write_string_value("currencyCode", @currency_code)
            writer.write_guid_value("currencyId", @currency_id)
            writer.write_object_value("customer", @customer)
            writer.write_guid_value("customerId", @customer_id)
            writer.write_string_value("customerName", @customer_name)
            writer.write_string_value("customerNumber", @customer_number)
            writer.write_object_value("discountAmount", @discount_amount)
            writer.write_boolean_value("discountAppliedBeforeTax", @discount_applied_before_tax)
            writer.write_date_value("dueDate", @due_date)
            writer.write_string_value("email", @email)
            writer.write_string_value("externalDocumentNumber", @external_document_number)
            writer.write_guid_value("invoiceId", @invoice_id)
            writer.write_string_value("invoiceNumber", @invoice_number)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("number", @number)
            writer.write_object_value("paymentTerm", @payment_term)
            writer.write_guid_value("paymentTermsId", @payment_terms_id)
            writer.write_string_value("phoneNumber", @phone_number)
            writer.write_boolean_value("pricesIncludeTax", @prices_include_tax)
            writer.write_collection_of_object_values("salesCreditMemoLines", @sales_credit_memo_lines)
            writer.write_string_value("salesperson", @salesperson)
            writer.write_object_value("sellingPostalAddress", @selling_postal_address)
            writer.write_string_value("status", @status)
            writer.write_object_value("totalAmountExcludingTax", @total_amount_excluding_tax)
            writer.write_object_value("totalAmountIncludingTax", @total_amount_including_tax)
            writer.write_object_value("totalTaxAmount", @total_tax_amount)
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a string
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
        ## 
        ## Gets the totalAmountExcludingTax property value. The totalAmountExcludingTax property
        ## @return a decimal
        ## 
        def total_amount_excluding_tax
            return @total_amount_excluding_tax
        end
        ## 
        ## Sets the totalAmountExcludingTax property value. The totalAmountExcludingTax property
        ## @param value Value to set for the totalAmountExcludingTax property.
        ## @return a void
        ## 
        def total_amount_excluding_tax=(value)
            @total_amount_excluding_tax = value
        end
        ## 
        ## Gets the totalAmountIncludingTax property value. The totalAmountIncludingTax property
        ## @return a decimal
        ## 
        def total_amount_including_tax
            return @total_amount_including_tax
        end
        ## 
        ## Sets the totalAmountIncludingTax property value. The totalAmountIncludingTax property
        ## @param value Value to set for the totalAmountIncludingTax property.
        ## @return a void
        ## 
        def total_amount_including_tax=(value)
            @total_amount_including_tax = value
        end
        ## 
        ## Gets the totalTaxAmount property value. The totalTaxAmount property
        ## @return a decimal
        ## 
        def total_tax_amount
            return @total_tax_amount
        end
        ## 
        ## Sets the totalTaxAmount property value. The totalTaxAmount property
        ## @param value Value to set for the totalTaxAmount property.
        ## @return a void
        ## 
        def total_tax_amount=(value)
            @total_tax_amount = value
        end
    end
end
