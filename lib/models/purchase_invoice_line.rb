require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PurchaseInvoiceLine < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The account property
        @account
        ## 
        # The accountId property
        @account_id
        ## 
        # The amountExcludingTax property
        @amount_excluding_tax
        ## 
        # The amountIncludingTax property
        @amount_including_tax
        ## 
        # The description property
        @description
        ## 
        # The discountAmount property
        @discount_amount
        ## 
        # The discountAppliedBeforeTax property
        @discount_applied_before_tax
        ## 
        # The discountPercent property
        @discount_percent
        ## 
        # The documentId property
        @document_id
        ## 
        # The expectedReceiptDate property
        @expected_receipt_date
        ## 
        # The invoiceDiscountAllocation property
        @invoice_discount_allocation
        ## 
        # The item property
        @item
        ## 
        # The itemId property
        @item_id
        ## 
        # The lineType property
        @line_type
        ## 
        # The netAmount property
        @net_amount
        ## 
        # The netAmountIncludingTax property
        @net_amount_including_tax
        ## 
        # The netTaxAmount property
        @net_tax_amount
        ## 
        # The quantity property
        @quantity
        ## 
        # The sequence property
        @sequence
        ## 
        # The taxCode property
        @tax_code
        ## 
        # The taxPercent property
        @tax_percent
        ## 
        # The totalTaxAmount property
        @total_tax_amount
        ## 
        # The unitCost property
        @unit_cost
        ## 
        ## Gets the account property value. The account property
        ## @return a account
        ## 
        def account
            return @account
        end
        ## 
        ## Sets the account property value. The account property
        ## @param value Value to set for the account property.
        ## @return a void
        ## 
        def account=(value)
            @account = value
        end
        ## 
        ## Gets the accountId property value. The accountId property
        ## @return a guid
        ## 
        def account_id
            return @account_id
        end
        ## 
        ## Sets the accountId property value. The accountId property
        ## @param value Value to set for the accountId property.
        ## @return a void
        ## 
        def account_id=(value)
            @account_id = value
        end
        ## 
        ## Gets the amountExcludingTax property value. The amountExcludingTax property
        ## @return a decimal
        ## 
        def amount_excluding_tax
            return @amount_excluding_tax
        end
        ## 
        ## Sets the amountExcludingTax property value. The amountExcludingTax property
        ## @param value Value to set for the amountExcludingTax property.
        ## @return a void
        ## 
        def amount_excluding_tax=(value)
            @amount_excluding_tax = value
        end
        ## 
        ## Gets the amountIncludingTax property value. The amountIncludingTax property
        ## @return a decimal
        ## 
        def amount_including_tax
            return @amount_including_tax
        end
        ## 
        ## Sets the amountIncludingTax property value. The amountIncludingTax property
        ## @param value Value to set for the amountIncludingTax property.
        ## @return a void
        ## 
        def amount_including_tax=(value)
            @amount_including_tax = value
        end
        ## 
        ## Instantiates a new purchaseInvoiceLine and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a purchase_invoice_line
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PurchaseInvoiceLine.new
        end
        ## 
        ## Gets the description property value. The description property
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description property
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
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
        ## Gets the documentId property value. The documentId property
        ## @return a guid
        ## 
        def document_id
            return @document_id
        end
        ## 
        ## Sets the documentId property value. The documentId property
        ## @param value Value to set for the documentId property.
        ## @return a void
        ## 
        def document_id=(value)
            @document_id = value
        end
        ## 
        ## Gets the expectedReceiptDate property value. The expectedReceiptDate property
        ## @return a date
        ## 
        def expected_receipt_date
            return @expected_receipt_date
        end
        ## 
        ## Sets the expectedReceiptDate property value. The expectedReceiptDate property
        ## @param value Value to set for the expectedReceiptDate property.
        ## @return a void
        ## 
        def expected_receipt_date=(value)
            @expected_receipt_date = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "account" => lambda {|n| @account = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Account.create_from_discriminator_value(pn) }) },
                "accountId" => lambda {|n| @account_id = n.get_guid_value() },
                "amountExcludingTax" => lambda {|n| @amount_excluding_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "amountIncludingTax" => lambda {|n| @amount_including_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "discountAmount" => lambda {|n| @discount_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "discountAppliedBeforeTax" => lambda {|n| @discount_applied_before_tax = n.get_boolean_value() },
                "discountPercent" => lambda {|n| @discount_percent = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "documentId" => lambda {|n| @document_id = n.get_guid_value() },
                "expectedReceiptDate" => lambda {|n| @expected_receipt_date = n.get_date_value() },
                "invoiceDiscountAllocation" => lambda {|n| @invoice_discount_allocation = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "item" => lambda {|n| @item = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Item.create_from_discriminator_value(pn) }) },
                "itemId" => lambda {|n| @item_id = n.get_guid_value() },
                "lineType" => lambda {|n| @line_type = n.get_string_value() },
                "netAmount" => lambda {|n| @net_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "netAmountIncludingTax" => lambda {|n| @net_amount_including_tax = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "netTaxAmount" => lambda {|n| @net_tax_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "quantity" => lambda {|n| @quantity = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "sequence" => lambda {|n| @sequence = n.get_number_value() },
                "taxCode" => lambda {|n| @tax_code = n.get_string_value() },
                "taxPercent" => lambda {|n| @tax_percent = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "totalTaxAmount" => lambda {|n| @total_tax_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "unitCost" => lambda {|n| @unit_cost = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the invoiceDiscountAllocation property value. The invoiceDiscountAllocation property
        ## @return a decimal
        ## 
        def invoice_discount_allocation
            return @invoice_discount_allocation
        end
        ## 
        ## Sets the invoiceDiscountAllocation property value. The invoiceDiscountAllocation property
        ## @param value Value to set for the invoiceDiscountAllocation property.
        ## @return a void
        ## 
        def invoice_discount_allocation=(value)
            @invoice_discount_allocation = value
        end
        ## 
        ## Gets the item property value. The item property
        ## @return a item
        ## 
        def item
            return @item
        end
        ## 
        ## Sets the item property value. The item property
        ## @param value Value to set for the item property.
        ## @return a void
        ## 
        def item=(value)
            @item = value
        end
        ## 
        ## Gets the itemId property value. The itemId property
        ## @return a guid
        ## 
        def item_id
            return @item_id
        end
        ## 
        ## Sets the itemId property value. The itemId property
        ## @param value Value to set for the itemId property.
        ## @return a void
        ## 
        def item_id=(value)
            @item_id = value
        end
        ## 
        ## Gets the lineType property value. The lineType property
        ## @return a string
        ## 
        def line_type
            return @line_type
        end
        ## 
        ## Sets the lineType property value. The lineType property
        ## @param value Value to set for the lineType property.
        ## @return a void
        ## 
        def line_type=(value)
            @line_type = value
        end
        ## 
        ## Gets the netAmount property value. The netAmount property
        ## @return a decimal
        ## 
        def net_amount
            return @net_amount
        end
        ## 
        ## Sets the netAmount property value. The netAmount property
        ## @param value Value to set for the netAmount property.
        ## @return a void
        ## 
        def net_amount=(value)
            @net_amount = value
        end
        ## 
        ## Gets the netAmountIncludingTax property value. The netAmountIncludingTax property
        ## @return a decimal
        ## 
        def net_amount_including_tax
            return @net_amount_including_tax
        end
        ## 
        ## Sets the netAmountIncludingTax property value. The netAmountIncludingTax property
        ## @param value Value to set for the netAmountIncludingTax property.
        ## @return a void
        ## 
        def net_amount_including_tax=(value)
            @net_amount_including_tax = value
        end
        ## 
        ## Gets the netTaxAmount property value. The netTaxAmount property
        ## @return a decimal
        ## 
        def net_tax_amount
            return @net_tax_amount
        end
        ## 
        ## Sets the netTaxAmount property value. The netTaxAmount property
        ## @param value Value to set for the netTaxAmount property.
        ## @return a void
        ## 
        def net_tax_amount=(value)
            @net_tax_amount = value
        end
        ## 
        ## Gets the quantity property value. The quantity property
        ## @return a decimal
        ## 
        def quantity
            return @quantity
        end
        ## 
        ## Sets the quantity property value. The quantity property
        ## @param value Value to set for the quantity property.
        ## @return a void
        ## 
        def quantity=(value)
            @quantity = value
        end
        ## 
        ## Gets the sequence property value. The sequence property
        ## @return a integer
        ## 
        def sequence
            return @sequence
        end
        ## 
        ## Sets the sequence property value. The sequence property
        ## @param value Value to set for the sequence property.
        ## @return a void
        ## 
        def sequence=(value)
            @sequence = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("account", @account)
            writer.write_guid_value("accountId", @account_id)
            writer.write_object_value("amountExcludingTax", @amount_excluding_tax)
            writer.write_object_value("amountIncludingTax", @amount_including_tax)
            writer.write_string_value("description", @description)
            writer.write_object_value("discountAmount", @discount_amount)
            writer.write_boolean_value("discountAppliedBeforeTax", @discount_applied_before_tax)
            writer.write_object_value("discountPercent", @discount_percent)
            writer.write_guid_value("documentId", @document_id)
            writer.write_date_value("expectedReceiptDate", @expected_receipt_date)
            writer.write_object_value("invoiceDiscountAllocation", @invoice_discount_allocation)
            writer.write_object_value("item", @item)
            writer.write_guid_value("itemId", @item_id)
            writer.write_string_value("lineType", @line_type)
            writer.write_object_value("netAmount", @net_amount)
            writer.write_object_value("netAmountIncludingTax", @net_amount_including_tax)
            writer.write_object_value("netTaxAmount", @net_tax_amount)
            writer.write_object_value("quantity", @quantity)
            writer.write_number_value("sequence", @sequence)
            writer.write_string_value("taxCode", @tax_code)
            writer.write_object_value("taxPercent", @tax_percent)
            writer.write_object_value("totalTaxAmount", @total_tax_amount)
            writer.write_object_value("unitCost", @unit_cost)
        end
        ## 
        ## Gets the taxCode property value. The taxCode property
        ## @return a string
        ## 
        def tax_code
            return @tax_code
        end
        ## 
        ## Sets the taxCode property value. The taxCode property
        ## @param value Value to set for the taxCode property.
        ## @return a void
        ## 
        def tax_code=(value)
            @tax_code = value
        end
        ## 
        ## Gets the taxPercent property value. The taxPercent property
        ## @return a decimal
        ## 
        def tax_percent
            return @tax_percent
        end
        ## 
        ## Sets the taxPercent property value. The taxPercent property
        ## @param value Value to set for the taxPercent property.
        ## @return a void
        ## 
        def tax_percent=(value)
            @tax_percent = value
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
        ## 
        ## Gets the unitCost property value. The unitCost property
        ## @return a decimal
        ## 
        def unit_cost
            return @unit_cost
        end
        ## 
        ## Sets the unitCost property value. The unitCost property
        ## @param value Value to set for the unitCost property.
        ## @return a void
        ## 
        def unit_cost=(value)
            @unit_cost = value
        end
    end
end
