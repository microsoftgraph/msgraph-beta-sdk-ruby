require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Company
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accounts property
            @accounts
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The agedAccountsPayable property
            @aged_accounts_payable
            ## 
            # The agedAccountsReceivable property
            @aged_accounts_receivable
            ## 
            # The businessProfileId property
            @business_profile_id
            ## 
            # The companyInformation property
            @company_information
            ## 
            # The countriesRegions property
            @countries_regions
            ## 
            # The currencies property
            @currencies
            ## 
            # The customerPaymentJournals property
            @customer_payment_journals
            ## 
            # The customerPayments property
            @customer_payments
            ## 
            # The customers property
            @customers
            ## 
            # The dimensionValues property
            @dimension_values
            ## 
            # The dimensions property
            @dimensions
            ## 
            # The displayName property
            @display_name
            ## 
            # The employees property
            @employees
            ## 
            # The generalLedgerEntries property
            @general_ledger_entries
            ## 
            # The id property
            @id
            ## 
            # The itemCategories property
            @item_categories
            ## 
            # The items property
            @items
            ## 
            # The journalLines property
            @journal_lines
            ## 
            # The journals property
            @journals
            ## 
            # The name property
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The paymentMethods property
            @payment_methods
            ## 
            # The paymentTerms property
            @payment_terms
            ## 
            # The picture property
            @picture
            ## 
            # The purchaseInvoiceLines property
            @purchase_invoice_lines
            ## 
            # The purchaseInvoices property
            @purchase_invoices
            ## 
            # The salesCreditMemoLines property
            @sales_credit_memo_lines
            ## 
            # The salesCreditMemos property
            @sales_credit_memos
            ## 
            # The salesInvoiceLines property
            @sales_invoice_lines
            ## 
            # The salesInvoices property
            @sales_invoices
            ## 
            # The salesOrderLines property
            @sales_order_lines
            ## 
            # The salesOrders property
            @sales_orders
            ## 
            # The salesQuoteLines property
            @sales_quote_lines
            ## 
            # The salesQuotes property
            @sales_quotes
            ## 
            # The shipmentMethods property
            @shipment_methods
            ## 
            # The systemVersion property
            @system_version
            ## 
            # The taxAreas property
            @tax_areas
            ## 
            # The taxGroups property
            @tax_groups
            ## 
            # The unitsOfMeasure property
            @units_of_measure
            ## 
            # The vendors property
            @vendors
            ## 
            ## Gets the accounts property value. The accounts property
            ## @return a account
            ## 
            def accounts
                return @accounts
            end
            ## 
            ## Sets the accounts property value. The accounts property
            ## @param value Value to set for the accounts property.
            ## @return a void
            ## 
            def accounts=(value)
                @accounts = value
            end
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
            ## Gets the agedAccountsPayable property value. The agedAccountsPayable property
            ## @return a aged_accounts_payable
            ## 
            def aged_accounts_payable
                return @aged_accounts_payable
            end
            ## 
            ## Sets the agedAccountsPayable property value. The agedAccountsPayable property
            ## @param value Value to set for the agedAccountsPayable property.
            ## @return a void
            ## 
            def aged_accounts_payable=(value)
                @aged_accounts_payable = value
            end
            ## 
            ## Gets the agedAccountsReceivable property value. The agedAccountsReceivable property
            ## @return a aged_accounts_receivable
            ## 
            def aged_accounts_receivable
                return @aged_accounts_receivable
            end
            ## 
            ## Sets the agedAccountsReceivable property value. The agedAccountsReceivable property
            ## @param value Value to set for the agedAccountsReceivable property.
            ## @return a void
            ## 
            def aged_accounts_receivable=(value)
                @aged_accounts_receivable = value
            end
            ## 
            ## Gets the businessProfileId property value. The businessProfileId property
            ## @return a string
            ## 
            def business_profile_id
                return @business_profile_id
            end
            ## 
            ## Sets the businessProfileId property value. The businessProfileId property
            ## @param value Value to set for the businessProfileId property.
            ## @return a void
            ## 
            def business_profile_id=(value)
                @business_profile_id = value
            end
            ## 
            ## Gets the companyInformation property value. The companyInformation property
            ## @return a company_information
            ## 
            def company_information
                return @company_information
            end
            ## 
            ## Sets the companyInformation property value. The companyInformation property
            ## @param value Value to set for the companyInformation property.
            ## @return a void
            ## 
            def company_information=(value)
                @company_information = value
            end
            ## 
            ## Instantiates a new company and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countriesRegions property value. The countriesRegions property
            ## @return a country_region
            ## 
            def countries_regions
                return @countries_regions
            end
            ## 
            ## Sets the countriesRegions property value. The countriesRegions property
            ## @param value Value to set for the countriesRegions property.
            ## @return a void
            ## 
            def countries_regions=(value)
                @countries_regions = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a company
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Company.new
            end
            ## 
            ## Gets the currencies property value. The currencies property
            ## @return a currency
            ## 
            def currencies
                return @currencies
            end
            ## 
            ## Sets the currencies property value. The currencies property
            ## @param value Value to set for the currencies property.
            ## @return a void
            ## 
            def currencies=(value)
                @currencies = value
            end
            ## 
            ## Gets the customerPaymentJournals property value. The customerPaymentJournals property
            ## @return a customer_payment_journal
            ## 
            def customer_payment_journals
                return @customer_payment_journals
            end
            ## 
            ## Sets the customerPaymentJournals property value. The customerPaymentJournals property
            ## @param value Value to set for the customerPaymentJournals property.
            ## @return a void
            ## 
            def customer_payment_journals=(value)
                @customer_payment_journals = value
            end
            ## 
            ## Gets the customerPayments property value. The customerPayments property
            ## @return a customer_payment
            ## 
            def customer_payments
                return @customer_payments
            end
            ## 
            ## Sets the customerPayments property value. The customerPayments property
            ## @param value Value to set for the customerPayments property.
            ## @return a void
            ## 
            def customer_payments=(value)
                @customer_payments = value
            end
            ## 
            ## Gets the customers property value. The customers property
            ## @return a customer
            ## 
            def customers
                return @customers
            end
            ## 
            ## Sets the customers property value. The customers property
            ## @param value Value to set for the customers property.
            ## @return a void
            ## 
            def customers=(value)
                @customers = value
            end
            ## 
            ## Gets the dimensionValues property value. The dimensionValues property
            ## @return a dimension_value
            ## 
            def dimension_values
                return @dimension_values
            end
            ## 
            ## Sets the dimensionValues property value. The dimensionValues property
            ## @param value Value to set for the dimensionValues property.
            ## @return a void
            ## 
            def dimension_values=(value)
                @dimension_values = value
            end
            ## 
            ## Gets the dimensions property value. The dimensions property
            ## @return a dimension
            ## 
            def dimensions
                return @dimensions
            end
            ## 
            ## Sets the dimensions property value. The dimensions property
            ## @param value Value to set for the dimensions property.
            ## @return a void
            ## 
            def dimensions=(value)
                @dimensions = value
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
            ## Gets the employees property value. The employees property
            ## @return a employee
            ## 
            def employees
                return @employees
            end
            ## 
            ## Sets the employees property value. The employees property
            ## @param value Value to set for the employees property.
            ## @return a void
            ## 
            def employees=(value)
                @employees = value
            end
            ## 
            ## Gets the generalLedgerEntries property value. The generalLedgerEntries property
            ## @return a general_ledger_entry
            ## 
            def general_ledger_entries
                return @general_ledger_entries
            end
            ## 
            ## Sets the generalLedgerEntries property value. The generalLedgerEntries property
            ## @param value Value to set for the generalLedgerEntries property.
            ## @return a void
            ## 
            def general_ledger_entries=(value)
                @general_ledger_entries = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accounts" => lambda {|n| @accounts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Account.create_from_discriminator_value(pn) }) },
                    "agedAccountsPayable" => lambda {|n| @aged_accounts_payable = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AgedAccountsPayable.create_from_discriminator_value(pn) }) },
                    "agedAccountsReceivable" => lambda {|n| @aged_accounts_receivable = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AgedAccountsReceivable.create_from_discriminator_value(pn) }) },
                    "businessProfileId" => lambda {|n| @business_profile_id = n.get_string_value() },
                    "companyInformation" => lambda {|n| @company_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CompanyInformation.create_from_discriminator_value(pn) }) },
                    "countriesRegions" => lambda {|n| @countries_regions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CountryRegion.create_from_discriminator_value(pn) }) },
                    "currencies" => lambda {|n| @currencies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Currency.create_from_discriminator_value(pn) }) },
                    "customerPaymentJournals" => lambda {|n| @customer_payment_journals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomerPaymentJournal.create_from_discriminator_value(pn) }) },
                    "customerPayments" => lambda {|n| @customer_payments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomerPayment.create_from_discriminator_value(pn) }) },
                    "customers" => lambda {|n| @customers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Customer.create_from_discriminator_value(pn) }) },
                    "dimensionValues" => lambda {|n| @dimension_values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DimensionValue.create_from_discriminator_value(pn) }) },
                    "dimensions" => lambda {|n| @dimensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Dimension.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "employees" => lambda {|n| @employees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Employee.create_from_discriminator_value(pn) }) },
                    "generalLedgerEntries" => lambda {|n| @general_ledger_entries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GeneralLedgerEntry.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "itemCategories" => lambda {|n| @item_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ItemCategory.create_from_discriminator_value(pn) }) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Item.create_from_discriminator_value(pn) }) },
                    "journalLines" => lambda {|n| @journal_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::JournalLine.create_from_discriminator_value(pn) }) },
                    "journals" => lambda {|n| @journals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Journal.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "paymentMethods" => lambda {|n| @payment_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PaymentMethod.create_from_discriminator_value(pn) }) },
                    "paymentTerms" => lambda {|n| @payment_terms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PaymentTerm.create_from_discriminator_value(pn) }) },
                    "picture" => lambda {|n| @picture = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Picture.create_from_discriminator_value(pn) }) },
                    "purchaseInvoiceLines" => lambda {|n| @purchase_invoice_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PurchaseInvoiceLine.create_from_discriminator_value(pn) }) },
                    "purchaseInvoices" => lambda {|n| @purchase_invoices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PurchaseInvoice.create_from_discriminator_value(pn) }) },
                    "salesCreditMemoLines" => lambda {|n| @sales_credit_memo_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesCreditMemoLine.create_from_discriminator_value(pn) }) },
                    "salesCreditMemos" => lambda {|n| @sales_credit_memos = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesCreditMemo.create_from_discriminator_value(pn) }) },
                    "salesInvoiceLines" => lambda {|n| @sales_invoice_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesInvoiceLine.create_from_discriminator_value(pn) }) },
                    "salesInvoices" => lambda {|n| @sales_invoices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesInvoice.create_from_discriminator_value(pn) }) },
                    "salesOrderLines" => lambda {|n| @sales_order_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesOrderLine.create_from_discriminator_value(pn) }) },
                    "salesOrders" => lambda {|n| @sales_orders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesOrder.create_from_discriminator_value(pn) }) },
                    "salesQuoteLines" => lambda {|n| @sales_quote_lines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesQuoteLine.create_from_discriminator_value(pn) }) },
                    "salesQuotes" => lambda {|n| @sales_quotes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SalesQuote.create_from_discriminator_value(pn) }) },
                    "shipmentMethods" => lambda {|n| @shipment_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ShipmentMethod.create_from_discriminator_value(pn) }) },
                    "systemVersion" => lambda {|n| @system_version = n.get_string_value() },
                    "taxAreas" => lambda {|n| @tax_areas = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TaxArea.create_from_discriminator_value(pn) }) },
                    "taxGroups" => lambda {|n| @tax_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TaxGroup.create_from_discriminator_value(pn) }) },
                    "unitsOfMeasure" => lambda {|n| @units_of_measure = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnitOfMeasure.create_from_discriminator_value(pn) }) },
                    "vendors" => lambda {|n| @vendors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Vendor.create_from_discriminator_value(pn) }) },
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
            ## Gets the itemCategories property value. The itemCategories property
            ## @return a item_category
            ## 
            def item_categories
                return @item_categories
            end
            ## 
            ## Sets the itemCategories property value. The itemCategories property
            ## @param value Value to set for the itemCategories property.
            ## @return a void
            ## 
            def item_categories=(value)
                @item_categories = value
            end
            ## 
            ## Gets the items property value. The items property
            ## @return a item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. The items property
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the journalLines property value. The journalLines property
            ## @return a journal_line
            ## 
            def journal_lines
                return @journal_lines
            end
            ## 
            ## Sets the journalLines property value. The journalLines property
            ## @param value Value to set for the journalLines property.
            ## @return a void
            ## 
            def journal_lines=(value)
                @journal_lines = value
            end
            ## 
            ## Gets the journals property value. The journals property
            ## @return a journal
            ## 
            def journals
                return @journals
            end
            ## 
            ## Sets the journals property value. The journals property
            ## @param value Value to set for the journals property.
            ## @return a void
            ## 
            def journals=(value)
                @journals = value
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
            ## Gets the paymentMethods property value. The paymentMethods property
            ## @return a payment_method
            ## 
            def payment_methods
                return @payment_methods
            end
            ## 
            ## Sets the paymentMethods property value. The paymentMethods property
            ## @param value Value to set for the paymentMethods property.
            ## @return a void
            ## 
            def payment_methods=(value)
                @payment_methods = value
            end
            ## 
            ## Gets the paymentTerms property value. The paymentTerms property
            ## @return a payment_term
            ## 
            def payment_terms
                return @payment_terms
            end
            ## 
            ## Sets the paymentTerms property value. The paymentTerms property
            ## @param value Value to set for the paymentTerms property.
            ## @return a void
            ## 
            def payment_terms=(value)
                @payment_terms = value
            end
            ## 
            ## Gets the picture property value. The picture property
            ## @return a picture
            ## 
            def picture
                return @picture
            end
            ## 
            ## Sets the picture property value. The picture property
            ## @param value Value to set for the picture property.
            ## @return a void
            ## 
            def picture=(value)
                @picture = value
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
            ## @param value Value to set for the purchaseInvoiceLines property.
            ## @return a void
            ## 
            def purchase_invoice_lines=(value)
                @purchase_invoice_lines = value
            end
            ## 
            ## Gets the purchaseInvoices property value. The purchaseInvoices property
            ## @return a purchase_invoice
            ## 
            def purchase_invoices
                return @purchase_invoices
            end
            ## 
            ## Sets the purchaseInvoices property value. The purchaseInvoices property
            ## @param value Value to set for the purchaseInvoices property.
            ## @return a void
            ## 
            def purchase_invoices=(value)
                @purchase_invoices = value
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
            ## Gets the salesCreditMemos property value. The salesCreditMemos property
            ## @return a sales_credit_memo
            ## 
            def sales_credit_memos
                return @sales_credit_memos
            end
            ## 
            ## Sets the salesCreditMemos property value. The salesCreditMemos property
            ## @param value Value to set for the salesCreditMemos property.
            ## @return a void
            ## 
            def sales_credit_memos=(value)
                @sales_credit_memos = value
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
            ## @param value Value to set for the salesInvoiceLines property.
            ## @return a void
            ## 
            def sales_invoice_lines=(value)
                @sales_invoice_lines = value
            end
            ## 
            ## Gets the salesInvoices property value. The salesInvoices property
            ## @return a sales_invoice
            ## 
            def sales_invoices
                return @sales_invoices
            end
            ## 
            ## Sets the salesInvoices property value. The salesInvoices property
            ## @param value Value to set for the salesInvoices property.
            ## @return a void
            ## 
            def sales_invoices=(value)
                @sales_invoices = value
            end
            ## 
            ## Gets the salesOrderLines property value. The salesOrderLines property
            ## @return a sales_order_line
            ## 
            def sales_order_lines
                return @sales_order_lines
            end
            ## 
            ## Sets the salesOrderLines property value. The salesOrderLines property
            ## @param value Value to set for the salesOrderLines property.
            ## @return a void
            ## 
            def sales_order_lines=(value)
                @sales_order_lines = value
            end
            ## 
            ## Gets the salesOrders property value. The salesOrders property
            ## @return a sales_order
            ## 
            def sales_orders
                return @sales_orders
            end
            ## 
            ## Sets the salesOrders property value. The salesOrders property
            ## @param value Value to set for the salesOrders property.
            ## @return a void
            ## 
            def sales_orders=(value)
                @sales_orders = value
            end
            ## 
            ## Gets the salesQuoteLines property value. The salesQuoteLines property
            ## @return a sales_quote_line
            ## 
            def sales_quote_lines
                return @sales_quote_lines
            end
            ## 
            ## Sets the salesQuoteLines property value. The salesQuoteLines property
            ## @param value Value to set for the salesQuoteLines property.
            ## @return a void
            ## 
            def sales_quote_lines=(value)
                @sales_quote_lines = value
            end
            ## 
            ## Gets the salesQuotes property value. The salesQuotes property
            ## @return a sales_quote
            ## 
            def sales_quotes
                return @sales_quotes
            end
            ## 
            ## Sets the salesQuotes property value. The salesQuotes property
            ## @param value Value to set for the salesQuotes property.
            ## @return a void
            ## 
            def sales_quotes=(value)
                @sales_quotes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("accounts", @accounts)
                writer.write_collection_of_object_values("agedAccountsPayable", @aged_accounts_payable)
                writer.write_collection_of_object_values("agedAccountsReceivable", @aged_accounts_receivable)
                writer.write_string_value("businessProfileId", @business_profile_id)
                writer.write_collection_of_object_values("companyInformation", @company_information)
                writer.write_collection_of_object_values("countriesRegions", @countries_regions)
                writer.write_collection_of_object_values("currencies", @currencies)
                writer.write_collection_of_object_values("customerPaymentJournals", @customer_payment_journals)
                writer.write_collection_of_object_values("customerPayments", @customer_payments)
                writer.write_collection_of_object_values("customers", @customers)
                writer.write_collection_of_object_values("dimensionValues", @dimension_values)
                writer.write_collection_of_object_values("dimensions", @dimensions)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("employees", @employees)
                writer.write_collection_of_object_values("generalLedgerEntries", @general_ledger_entries)
                writer.write_guid_value("id", @id)
                writer.write_collection_of_object_values("itemCategories", @item_categories)
                writer.write_collection_of_object_values("items", @items)
                writer.write_collection_of_object_values("journalLines", @journal_lines)
                writer.write_collection_of_object_values("journals", @journals)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("paymentMethods", @payment_methods)
                writer.write_collection_of_object_values("paymentTerms", @payment_terms)
                writer.write_collection_of_object_values("picture", @picture)
                writer.write_collection_of_object_values("purchaseInvoiceLines", @purchase_invoice_lines)
                writer.write_collection_of_object_values("purchaseInvoices", @purchase_invoices)
                writer.write_collection_of_object_values("salesCreditMemoLines", @sales_credit_memo_lines)
                writer.write_collection_of_object_values("salesCreditMemos", @sales_credit_memos)
                writer.write_collection_of_object_values("salesInvoiceLines", @sales_invoice_lines)
                writer.write_collection_of_object_values("salesInvoices", @sales_invoices)
                writer.write_collection_of_object_values("salesOrderLines", @sales_order_lines)
                writer.write_collection_of_object_values("salesOrders", @sales_orders)
                writer.write_collection_of_object_values("salesQuoteLines", @sales_quote_lines)
                writer.write_collection_of_object_values("salesQuotes", @sales_quotes)
                writer.write_collection_of_object_values("shipmentMethods", @shipment_methods)
                writer.write_string_value("systemVersion", @system_version)
                writer.write_collection_of_object_values("taxAreas", @tax_areas)
                writer.write_collection_of_object_values("taxGroups", @tax_groups)
                writer.write_collection_of_object_values("unitsOfMeasure", @units_of_measure)
                writer.write_collection_of_object_values("vendors", @vendors)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the shipmentMethods property value. The shipmentMethods property
            ## @return a shipment_method
            ## 
            def shipment_methods
                return @shipment_methods
            end
            ## 
            ## Sets the shipmentMethods property value. The shipmentMethods property
            ## @param value Value to set for the shipmentMethods property.
            ## @return a void
            ## 
            def shipment_methods=(value)
                @shipment_methods = value
            end
            ## 
            ## Gets the systemVersion property value. The systemVersion property
            ## @return a string
            ## 
            def system_version
                return @system_version
            end
            ## 
            ## Sets the systemVersion property value. The systemVersion property
            ## @param value Value to set for the systemVersion property.
            ## @return a void
            ## 
            def system_version=(value)
                @system_version = value
            end
            ## 
            ## Gets the taxAreas property value. The taxAreas property
            ## @return a tax_area
            ## 
            def tax_areas
                return @tax_areas
            end
            ## 
            ## Sets the taxAreas property value. The taxAreas property
            ## @param value Value to set for the taxAreas property.
            ## @return a void
            ## 
            def tax_areas=(value)
                @tax_areas = value
            end
            ## 
            ## Gets the taxGroups property value. The taxGroups property
            ## @return a tax_group
            ## 
            def tax_groups
                return @tax_groups
            end
            ## 
            ## Sets the taxGroups property value. The taxGroups property
            ## @param value Value to set for the taxGroups property.
            ## @return a void
            ## 
            def tax_groups=(value)
                @tax_groups = value
            end
            ## 
            ## Gets the unitsOfMeasure property value. The unitsOfMeasure property
            ## @return a unit_of_measure
            ## 
            def units_of_measure
                return @units_of_measure
            end
            ## 
            ## Sets the unitsOfMeasure property value. The unitsOfMeasure property
            ## @param value Value to set for the unitsOfMeasure property.
            ## @return a void
            ## 
            def units_of_measure=(value)
                @units_of_measure = value
            end
            ## 
            ## Gets the vendors property value. The vendors property
            ## @return a vendor
            ## 
            def vendors
                return @vendors
            end
            ## 
            ## Sets the vendors property value. The vendors property
            ## @param value Value to set for the vendors property.
            ## @return a void
            ## 
            def vendors=(value)
                @vendors = value
            end
        end
    end
end
