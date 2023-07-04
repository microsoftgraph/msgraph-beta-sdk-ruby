require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PurchaseInvoice
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The buyFromAddress property
            @buy_from_address
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
            # The discountAmount property
            @discount_amount
            ## 
            # The discountAppliedBeforeTax property
            @discount_applied_before_tax
            ## 
            # The dueDate property
            @due_date
            ## 
            # The id property
            @id
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
            # The OdataType property
            @odata_type
            ## 
            # The payToAddress property
            @pay_to_address
            ## 
            # The payToContact property
            @pay_to_contact
            ## 
            # The payToName property
            @pay_to_name
            ## 
            # The payToVendorId property
            @pay_to_vendor_id
            ## 
            # The payToVendorNumber property
            @pay_to_vendor_number
            ## 
            # The pricesIncludeTax property
            @prices_include_tax
            ## 
            # The purchaseInvoiceLines property
            @purchase_invoice_lines
            ## 
            # The shipToAddress property
            @ship_to_address
            ## 
            # The shipToContact property
            @ship_to_contact
            ## 
            # The shipToName property
            @ship_to_name
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
            # The vendor property
            @vendor
            ## 
            # The vendorId property
            @vendor_id
            ## 
            # The vendorInvoiceNumber property
            @vendor_invoice_number
            ## 
            # The vendorName property
            @vendor_name
            ## 
            # The vendorNumber property
            @vendor_number
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
            ## Gets the buyFromAddress property value. The buyFromAddress property
            ## @return a postal_address_type
            ## 
            def buy_from_address
                return @buy_from_address
            end
            ## 
            ## Sets the buyFromAddress property value. The buyFromAddress property
            ## @param value Value to set for the buy_from_address property.
            ## @return a void
            ## 
            def buy_from_address=(value)
                @buy_from_address = value
            end
            ## 
            ## Instantiates a new PurchaseInvoice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a purchase_invoice
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PurchaseInvoice.new
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "buyFromAddress" => lambda {|n| @buy_from_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                    "currency" => lambda {|n| @currency = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Currency.create_from_discriminator_value(pn) }) },
                    "currencyCode" => lambda {|n| @currency_code = n.get_string_value() },
                    "currencyId" => lambda {|n| @currency_id = n.get_guid_value() },
                    "discountAmount" => lambda {|n| @discount_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "discountAppliedBeforeTax" => lambda {|n| @discount_applied_before_tax = n.get_boolean_value() },
                    "dueDate" => lambda {|n| @due_date = n.get_date_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "invoiceDate" => lambda {|n| @invoice_date = n.get_date_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "number" => lambda {|n| @number = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "payToAddress" => lambda {|n| @pay_to_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                    "payToContact" => lambda {|n| @pay_to_contact = n.get_string_value() },
                    "payToName" => lambda {|n| @pay_to_name = n.get_string_value() },
                    "payToVendorId" => lambda {|n| @pay_to_vendor_id = n.get_guid_value() },
                    "payToVendorNumber" => lambda {|n| @pay_to_vendor_number = n.get_string_value() },
                    "pricesIncludeTax" => lambda {|n| @prices_include_tax = n.get_boolean_value() },
                    "purchaseInvoiceLines" => lambda {|n| @purchase_invoice_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PurchaseInvoiceLine.create_from_discriminator_value(pn) }) },
                    "shipToAddress" => lambda {|n| @ship_to_address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                    "shipToContact" => lambda {|n| @ship_to_contact = n.get_string_value() },
                    "shipToName" => lambda {|n| @ship_to_name = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "totalAmountExcludingTax" => lambda {|n| @total_amount_excluding_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "totalAmountIncludingTax" => lambda {|n| @total_amount_including_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "totalTaxAmount" => lambda {|n| @total_tax_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "vendor" => lambda {|n| @vendor = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Vendor.create_from_discriminator_value(pn) }) },
                    "vendorId" => lambda {|n| @vendor_id = n.get_guid_value() },
                    "vendorInvoiceNumber" => lambda {|n| @vendor_invoice_number = n.get_string_value() },
                    "vendorName" => lambda {|n| @vendor_name = n.get_string_value() },
                    "vendorNumber" => lambda {|n| @vendor_number = n.get_string_value() },
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
            ## Gets the payToAddress property value. The payToAddress property
            ## @return a postal_address_type
            ## 
            def pay_to_address
                return @pay_to_address
            end
            ## 
            ## Sets the payToAddress property value. The payToAddress property
            ## @param value Value to set for the pay_to_address property.
            ## @return a void
            ## 
            def pay_to_address=(value)
                @pay_to_address = value
            end
            ## 
            ## Gets the payToContact property value. The payToContact property
            ## @return a string
            ## 
            def pay_to_contact
                return @pay_to_contact
            end
            ## 
            ## Sets the payToContact property value. The payToContact property
            ## @param value Value to set for the pay_to_contact property.
            ## @return a void
            ## 
            def pay_to_contact=(value)
                @pay_to_contact = value
            end
            ## 
            ## Gets the payToName property value. The payToName property
            ## @return a string
            ## 
            def pay_to_name
                return @pay_to_name
            end
            ## 
            ## Sets the payToName property value. The payToName property
            ## @param value Value to set for the pay_to_name property.
            ## @return a void
            ## 
            def pay_to_name=(value)
                @pay_to_name = value
            end
            ## 
            ## Gets the payToVendorId property value. The payToVendorId property
            ## @return a guid
            ## 
            def pay_to_vendor_id
                return @pay_to_vendor_id
            end
            ## 
            ## Sets the payToVendorId property value. The payToVendorId property
            ## @param value Value to set for the pay_to_vendor_id property.
            ## @return a void
            ## 
            def pay_to_vendor_id=(value)
                @pay_to_vendor_id = value
            end
            ## 
            ## Gets the payToVendorNumber property value. The payToVendorNumber property
            ## @return a string
            ## 
            def pay_to_vendor_number
                return @pay_to_vendor_number
            end
            ## 
            ## Sets the payToVendorNumber property value. The payToVendorNumber property
            ## @param value Value to set for the pay_to_vendor_number property.
            ## @return a void
            ## 
            def pay_to_vendor_number=(value)
                @pay_to_vendor_number = value
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
            ## Gets the purchaseInvoiceLines property value. The purchaseInvoiceLines property
            ## @return a purchase_invoice_line
            ## 
            def purchase_invoice_lines
                return @purchase_invoice_lines
            end
            ## 
            ## Sets the purchaseInvoiceLines property value. The purchaseInvoiceLines property
            ## @param value Value to set for the purchase_invoice_lines property.
            ## @return a void
            ## 
            def purchase_invoice_lines=(value)
                @purchase_invoice_lines = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("buyFromAddress", @buy_from_address)
                writer.write_object_value("currency", @currency)
                writer.write_string_value("currencyCode", @currency_code)
                writer.write_guid_value("currencyId", @currency_id)
                writer.write_object_value("discountAmount", @discount_amount)
                writer.write_boolean_value("discountAppliedBeforeTax", @discount_applied_before_tax)
                writer.write_date_value("dueDate", @due_date)
                writer.write_guid_value("id", @id)
                writer.write_date_value("invoiceDate", @invoice_date)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("number", @number)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("payToAddress", @pay_to_address)
                writer.write_string_value("payToContact", @pay_to_contact)
                writer.write_string_value("payToName", @pay_to_name)
                writer.write_guid_value("payToVendorId", @pay_to_vendor_id)
                writer.write_string_value("payToVendorNumber", @pay_to_vendor_number)
                writer.write_boolean_value("pricesIncludeTax", @prices_include_tax)
                writer.write_collection_of_object_values("purchaseInvoiceLines", @purchase_invoice_lines)
                writer.write_object_value("shipToAddress", @ship_to_address)
                writer.write_string_value("shipToContact", @ship_to_contact)
                writer.write_string_value("shipToName", @ship_to_name)
                writer.write_string_value("status", @status)
                writer.write_object_value("totalAmountExcludingTax", @total_amount_excluding_tax)
                writer.write_object_value("totalAmountIncludingTax", @total_amount_including_tax)
                writer.write_object_value("totalTaxAmount", @total_tax_amount)
                writer.write_object_value("vendor", @vendor)
                writer.write_guid_value("vendorId", @vendor_id)
                writer.write_string_value("vendorInvoiceNumber", @vendor_invoice_number)
                writer.write_string_value("vendorName", @vendor_name)
                writer.write_string_value("vendorNumber", @vendor_number)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the shipToAddress property value. The shipToAddress property
            ## @return a postal_address_type
            ## 
            def ship_to_address
                return @ship_to_address
            end
            ## 
            ## Sets the shipToAddress property value. The shipToAddress property
            ## @param value Value to set for the ship_to_address property.
            ## @return a void
            ## 
            def ship_to_address=(value)
                @ship_to_address = value
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
            ## 
            ## Gets the vendor property value. The vendor property
            ## @return a vendor
            ## 
            def vendor
                return @vendor
            end
            ## 
            ## Sets the vendor property value. The vendor property
            ## @param value Value to set for the vendor property.
            ## @return a void
            ## 
            def vendor=(value)
                @vendor = value
            end
            ## 
            ## Gets the vendorId property value. The vendorId property
            ## @return a guid
            ## 
            def vendor_id
                return @vendor_id
            end
            ## 
            ## Sets the vendorId property value. The vendorId property
            ## @param value Value to set for the vendor_id property.
            ## @return a void
            ## 
            def vendor_id=(value)
                @vendor_id = value
            end
            ## 
            ## Gets the vendorInvoiceNumber property value. The vendorInvoiceNumber property
            ## @return a string
            ## 
            def vendor_invoice_number
                return @vendor_invoice_number
            end
            ## 
            ## Sets the vendorInvoiceNumber property value. The vendorInvoiceNumber property
            ## @param value Value to set for the vendor_invoice_number property.
            ## @return a void
            ## 
            def vendor_invoice_number=(value)
                @vendor_invoice_number = value
            end
            ## 
            ## Gets the vendorName property value. The vendorName property
            ## @return a string
            ## 
            def vendor_name
                return @vendor_name
            end
            ## 
            ## Sets the vendorName property value. The vendorName property
            ## @param value Value to set for the vendor_name property.
            ## @return a void
            ## 
            def vendor_name=(value)
                @vendor_name = value
            end
            ## 
            ## Gets the vendorNumber property value. The vendorNumber property
            ## @return a string
            ## 
            def vendor_number
                return @vendor_number
            end
            ## 
            ## Sets the vendorNumber property value. The vendorNumber property
            ## @param value Value to set for the vendor_number property.
            ## @return a void
            ## 
            def vendor_number=(value)
                @vendor_number = value
            end
        end
    end
end
