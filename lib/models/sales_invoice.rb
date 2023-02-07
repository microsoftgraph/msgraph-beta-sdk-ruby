require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class SalesInvoice < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
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
        # The billingPostalAddress property
        @billing_postal_address
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
        # The customerPurchaseOrderReference property
        @customer_purchase_order_reference
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
        # The invoiceDate property
        @invoice_date
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        # The number property
        @number
        ## 
        # The orderId property
        @order_id
        ## 
        # The orderNumber property
        @order_number
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
        # The salesInvoiceLines property
        @sales_invoice_lines
        ## 
        # The salesperson property
        @salesperson
        ## 
        # The sellingPostalAddress property
        @selling_postal_address
        ## 
        # The shipToContact property
        @ship_to_contact
        ## 
        # The shipToName property
        @ship_to_name
        ## 
        # The shipmentMethod property
        @shipment_method
        ## 
        # The shipmentMethodId property
        @shipment_method_id
        ## 
        # The shippingPostalAddress property
        @shipping_postal_address
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
        ## Gets the billToCustomerId property value. The billToCustomerId property
        ## @return a guid
        ## 
        def bill_to_customer_id
            return @bill_to_customer_id
        end
        ## 
        ## Sets the billToCustomerId property value. The billToCustomerId property
        ## @param value Value to set for the bill_to_customer_id property.
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
        ## @param value Value to set for the bill_to_customer_number property.
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
        ## @param value Value to set for the bill_to_name property.
        ## @return a void
        ## 
        def bill_to_name=(value)
            @bill_to_name = value
        end
        ## 
        ## Gets the billingPostalAddress property value. The billingPostalAddress property
        ## @return a postal_address_type
        ## 
        def billing_postal_address
            return @billing_postal_address
        end
        ## 
        ## Sets the billingPostalAddress property value. The billingPostalAddress property
        ## @param value Value to set for the billing_postal_address property.
        ## @return a void
        ## 
        def billing_postal_address=(value)
            @billing_postal_address = value
        end
        ## 
        ## Instantiates a new salesInvoice and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a sales_invoice
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SalesInvoice.new
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
        ## @param value Value to set for the currency_code property.
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
        ## @param value Value to set for the currency_id property.
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
        ## @param value Value to set for the customer_id property.
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
        ## @param value Value to set for the customer_name property.
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
        ## @param value Value to set for the customer_number property.
        ## @return a void
        ## 
        def customer_number=(value)
            @customer_number = value
        end
        ## 
        ## Gets the customerPurchaseOrderReference property value. The customerPurchaseOrderReference property
        ## @return a string
        ## 
        def customer_purchase_order_reference
            return @customer_purchase_order_reference
        end
        ## 
        ## Sets the customerPurchaseOrderReference property value. The customerPurchaseOrderReference property
        ## @param value Value to set for the customer_purchase_order_reference property.
        ## @return a void
        ## 
        def customer_purchase_order_reference=(value)
            @customer_purchase_order_reference = value
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
        ## @param value Value to set for the discount_amount property.
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
        ## @param value Value to set for the discount_applied_before_tax property.
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
        ## @param value Value to set for the due_date property.
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
        ## @param value Value to set for the external_document_number property.
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
                "billToCustomerId" => lambda {|n| @bill_to_customer_id = n.get_guid_value() },
                "billToCustomerNumber" => lambda {|n| @bill_to_customer_number = n.get_string_value() },
                "billToName" => lambda {|n| @bill_to_name = n.get_string_value() },
                "billingPostalAddress" => lambda {|n| @billing_postal_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                "currency" => lambda {|n| @currency = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Currency.create_from_discriminator_value(pn) }) },
                "currencyCode" => lambda {|n| @currency_code = n.get_string_value() },
                "currencyId" => lambda {|n| @currency_id = n.get_guid_value() },
                "customer" => lambda {|n| @customer = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Customer.create_from_discriminator_value(pn) }) },
                "customerId" => lambda {|n| @customer_id = n.get_guid_value() },
                "customerName" => lambda {|n| @customer_name = n.get_string_value() },
                "customerNumber" => lambda {|n| @customer_number = n.get_string_value() },
                "customerPurchaseOrderReference" => lambda {|n| @customer_purchase_order_reference = n.get_string_value() },
                "discountAmount" => lambda {|n| @discount_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "discountAppliedBeforeTax" => lambda {|n| @discount_applied_before_tax = n.get_boolean_value() },
                "dueDate" => lambda {|n| @due_date = n.get_date_value() },
                "email" => lambda {|n| @email = n.get_string_value() },
                "externalDocumentNumber" => lambda {|n| @external_document_number = n.get_string_value() },
                "invoiceDate" => lambda {|n| @invoice_date = n.get_date_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "number" => lambda {|n| @number = n.get_string_value() },
                "orderId" => lambda {|n| @order_id = n.get_guid_value() },
                "orderNumber" => lambda {|n| @order_number = n.get_string_value() },
                "paymentTerm" => lambda {|n| @payment_term = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PaymentTerm.create_from_discriminator_value(pn) }) },
                "paymentTermsId" => lambda {|n| @payment_terms_id = n.get_guid_value() },
                "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                "pricesIncludeTax" => lambda {|n| @prices_include_tax = n.get_boolean_value() },
                "salesInvoiceLines" => lambda {|n| @sales_invoice_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesInvoiceLine.create_from_discriminator_value(pn) }) },
                "salesperson" => lambda {|n| @salesperson = n.get_string_value() },
                "sellingPostalAddress" => lambda {|n| @selling_postal_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                "shipToContact" => lambda {|n| @ship_to_contact = n.get_string_value() },
                "shipToName" => lambda {|n| @ship_to_name = n.get_string_value() },
                "shipmentMethod" => lambda {|n| @shipment_method = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ShipmentMethod.create_from_discriminator_value(pn) }) },
                "shipmentMethodId" => lambda {|n| @shipment_method_id = n.get_guid_value() },
                "shippingPostalAddress" => lambda {|n| @shipping_postal_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_string_value() },
                "totalAmountExcludingTax" => lambda {|n| @total_amount_excluding_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "totalAmountIncludingTax" => lambda {|n| @total_amount_including_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "totalTaxAmount" => lambda {|n| @total_tax_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the invoiceDate property value. The invoiceDate property
        ## @return a date
        ## 
        def invoice_date
            return @invoice_date
        end
        ## 
        ## Sets the invoiceDate property value. The invoiceDate property
        ## @param value Value to set for the invoice_date property.
        ## @return a void
        ## 
        def invoice_date=(value)
            @invoice_date = value
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
        ## @param value Value to set for the last_modified_date_time property.
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
        ## Gets the orderId property value. The orderId property
        ## @return a guid
        ## 
        def order_id
            return @order_id
        end
        ## 
        ## Sets the orderId property value. The orderId property
        ## @param value Value to set for the order_id property.
        ## @return a void
        ## 
        def order_id=(value)
            @order_id = value
        end
        ## 
        ## Gets the orderNumber property value. The orderNumber property
        ## @return a string
        ## 
        def order_number
            return @order_number
        end
        ## 
        ## Sets the orderNumber property value. The orderNumber property
        ## @param value Value to set for the order_number property.
        ## @return a void
        ## 
        def order_number=(value)
            @order_number = value
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
        ## @param value Value to set for the payment_term property.
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
        ## @param value Value to set for the payment_terms_id property.
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
        ## @param value Value to set for the phone_number property.
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
        ## @param value Value to set for the prices_include_tax property.
        ## @return a void
        ## 
        def prices_include_tax=(value)
            @prices_include_tax = value
        end
        ## 
        ## Gets the salesInvoiceLines property value. The salesInvoiceLines property
        ## @return a sales_invoice_line
        ## 
        def sales_invoice_lines
            return @sales_invoice_lines
        end
        ## 
        ## Sets the salesInvoiceLines property value. The salesInvoiceLines property
        ## @param value Value to set for the sales_invoice_lines property.
        ## @return a void
        ## 
        def sales_invoice_lines=(value)
            @sales_invoice_lines = value
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
        ## @param value Value to set for the selling_postal_address property.
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
            writer.write_guid_value("billToCustomerId", @bill_to_customer_id)
            writer.write_string_value("billToCustomerNumber", @bill_to_customer_number)
            writer.write_string_value("billToName", @bill_to_name)
            writer.write_object_value("billingPostalAddress", @billing_postal_address)
            writer.write_object_value("currency", @currency)
            writer.write_string_value("currencyCode", @currency_code)
            writer.write_guid_value("currencyId", @currency_id)
            writer.write_object_value("customer", @customer)
            writer.write_guid_value("customerId", @customer_id)
            writer.write_string_value("customerName", @customer_name)
            writer.write_string_value("customerNumber", @customer_number)
            writer.write_string_value("customerPurchaseOrderReference", @customer_purchase_order_reference)
            writer.write_object_value("discountAmount", @discount_amount)
            writer.write_boolean_value("discountAppliedBeforeTax", @discount_applied_before_tax)
            writer.write_date_value("dueDate", @due_date)
            writer.write_string_value("email", @email)
            writer.write_string_value("externalDocumentNumber", @external_document_number)
            writer.write_date_value("invoiceDate", @invoice_date)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("number", @number)
            writer.write_guid_value("orderId", @order_id)
            writer.write_string_value("orderNumber", @order_number)
            writer.write_object_value("paymentTerm", @payment_term)
            writer.write_guid_value("paymentTermsId", @payment_terms_id)
            writer.write_string_value("phoneNumber", @phone_number)
            writer.write_boolean_value("pricesIncludeTax", @prices_include_tax)
            writer.write_collection_of_object_values("salesInvoiceLines", @sales_invoice_lines)
            writer.write_string_value("salesperson", @salesperson)
            writer.write_object_value("sellingPostalAddress", @selling_postal_address)
            writer.write_string_value("shipToContact", @ship_to_contact)
            writer.write_string_value("shipToName", @ship_to_name)
            writer.write_object_value("shipmentMethod", @shipment_method)
            writer.write_guid_value("shipmentMethodId", @shipment_method_id)
            writer.write_object_value("shippingPostalAddress", @shipping_postal_address)
            writer.write_string_value("status", @status)
            writer.write_object_value("totalAmountExcludingTax", @total_amount_excluding_tax)
            writer.write_object_value("totalAmountIncludingTax", @total_amount_including_tax)
            writer.write_object_value("totalTaxAmount", @total_tax_amount)
        end
        ## 
        ## Gets the shipToContact property value. The shipToContact property
        ## @return a string
        ## 
        def ship_to_contact
            return @ship_to_contact
        end
        ## 
        ## Sets the shipToContact property value. The shipToContact property
        ## @param value Value to set for the ship_to_contact property.
        ## @return a void
        ## 
        def ship_to_contact=(value)
            @ship_to_contact = value
        end
        ## 
        ## Gets the shipToName property value. The shipToName property
        ## @return a string
        ## 
        def ship_to_name
            return @ship_to_name
        end
        ## 
        ## Sets the shipToName property value. The shipToName property
        ## @param value Value to set for the ship_to_name property.
        ## @return a void
        ## 
        def ship_to_name=(value)
            @ship_to_name = value
        end
        ## 
        ## Gets the shipmentMethod property value. The shipmentMethod property
        ## @return a shipment_method
        ## 
        def shipment_method
            return @shipment_method
        end
        ## 
        ## Sets the shipmentMethod property value. The shipmentMethod property
        ## @param value Value to set for the shipment_method property.
        ## @return a void
        ## 
        def shipment_method=(value)
            @shipment_method = value
        end
        ## 
        ## Gets the shipmentMethodId property value. The shipmentMethodId property
        ## @return a guid
        ## 
        def shipment_method_id
            return @shipment_method_id
        end
        ## 
        ## Sets the shipmentMethodId property value. The shipmentMethodId property
        ## @param value Value to set for the shipment_method_id property.
        ## @return a void
        ## 
        def shipment_method_id=(value)
            @shipment_method_id = value
        end
        ## 
        ## Gets the shippingPostalAddress property value. The shippingPostalAddress property
        ## @return a postal_address_type
        ## 
        def shipping_postal_address
            return @shipping_postal_address
        end
        ## 
        ## Sets the shippingPostalAddress property value. The shippingPostalAddress property
        ## @param value Value to set for the shipping_postal_address property.
        ## @return a void
        ## 
        def shipping_postal_address=(value)
            @shipping_postal_address = value
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
        ## @param value Value to set for the total_amount_excluding_tax property.
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
        ## @param value Value to set for the total_amount_including_tax property.
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
        ## @param value Value to set for the total_tax_amount property.
        ## @return a void
        ## 
        def total_tax_amount=(value)
            @total_tax_amount = value
        end
    end
end
