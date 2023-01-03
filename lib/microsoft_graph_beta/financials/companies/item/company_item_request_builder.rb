require 'microsoft_kiota_abstractions'
require_relative '../../../models/company'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../financials'
require_relative '../companies'
require_relative './accounts/accounts_request_builder'
require_relative './accounts/item/account_item_request_builder'
require_relative './aged_accounts_payable/aged_accounts_payable_request_builder'
require_relative './aged_accounts_payable/item/aged_accounts_payable_item_request_builder'
require_relative './aged_accounts_receivable/aged_accounts_receivable_request_builder'
require_relative './aged_accounts_receivable/item/aged_accounts_receivable_item_request_builder'
require_relative './company_information/company_information_request_builder'
require_relative './company_information/item/company_information_item_request_builder'
require_relative './countries_regions/countries_regions_request_builder'
require_relative './countries_regions/item/country_region_item_request_builder'
require_relative './currencies/currencies_request_builder'
require_relative './currencies/item/currency_item_request_builder'
require_relative './customer_payment_journals/customer_payment_journals_request_builder'
require_relative './customer_payment_journals/item/customer_payment_journal_item_request_builder'
require_relative './customer_payments/customer_payments_request_builder'
require_relative './customer_payments/item/customer_payment_item_request_builder'
require_relative './customers/customers_request_builder'
require_relative './customers/item/customer_item_request_builder'
require_relative './dimensions/dimensions_request_builder'
require_relative './dimensions/item/dimension_item_request_builder'
require_relative './dimension_values/dimension_values_request_builder'
require_relative './dimension_values/item/dimension_value_item_request_builder'
require_relative './employees/employees_request_builder'
require_relative './employees/item/employee_item_request_builder'
require_relative './general_ledger_entries/general_ledger_entries_request_builder'
require_relative './general_ledger_entries/item/general_ledger_entry_item_request_builder'
require_relative './item'
require_relative './item_categories/item/item_category_item_request_builder'
require_relative './item_categories/item_categories_request_builder'
require_relative './items/item/item_item_request_builder'
require_relative './items/items_request_builder'
require_relative './journal_lines/item/journal_line_item_request_builder'
require_relative './journal_lines/journal_lines_request_builder'
require_relative './journals/item/journal_item_request_builder'
require_relative './journals/journals_request_builder'
require_relative './payment_methods/item/payment_method_item_request_builder'
require_relative './payment_methods/payment_methods_request_builder'
require_relative './payment_terms/item/payment_term_item_request_builder'
require_relative './payment_terms/payment_terms_request_builder'
require_relative './picture/item/picture_item_request_builder'
require_relative './picture/picture_request_builder'
require_relative './purchase_invoice_lines/item/purchase_invoice_line_item_request_builder'
require_relative './purchase_invoice_lines/purchase_invoice_lines_request_builder'
require_relative './purchase_invoices/item/purchase_invoice_item_request_builder'
require_relative './purchase_invoices/purchase_invoices_request_builder'
require_relative './sales_credit_memo_lines/item/sales_credit_memo_line_item_request_builder'
require_relative './sales_credit_memo_lines/sales_credit_memo_lines_request_builder'
require_relative './sales_credit_memos/item/sales_credit_memo_item_request_builder'
require_relative './sales_credit_memos/sales_credit_memos_request_builder'
require_relative './sales_invoice_lines/item/sales_invoice_line_item_request_builder'
require_relative './sales_invoice_lines/sales_invoice_lines_request_builder'
require_relative './sales_invoices/item/sales_invoice_item_request_builder'
require_relative './sales_invoices/sales_invoices_request_builder'
require_relative './sales_order_lines/item/sales_order_line_item_request_builder'
require_relative './sales_order_lines/sales_order_lines_request_builder'
require_relative './sales_orders/item/sales_order_item_request_builder'
require_relative './sales_orders/sales_orders_request_builder'
require_relative './sales_quote_lines/item/sales_quote_line_item_request_builder'
require_relative './sales_quote_lines/sales_quote_lines_request_builder'
require_relative './sales_quotes/item/sales_quote_item_request_builder'
require_relative './sales_quotes/sales_quotes_request_builder'
require_relative './shipment_methods/item/shipment_method_item_request_builder'
require_relative './shipment_methods/shipment_methods_request_builder'
require_relative './tax_areas/item/tax_area_item_request_builder'
require_relative './tax_areas/tax_areas_request_builder'
require_relative './tax_groups/item/tax_group_item_request_builder'
require_relative './tax_groups/tax_groups_request_builder'
require_relative './units_of_measure/item/unit_of_measure_item_request_builder'
require_relative './units_of_measure/units_of_measure_request_builder'
require_relative './vendors/item/vendor_item_request_builder'
require_relative './vendors/vendors_request_builder'

module MicrosoftGraphBeta::Financials::Companies::Item
    ## 
    # Provides operations to manage the companies property of the microsoft.graph.financials entity.
    class CompanyItemRequestBuilder
        
        ## 
        # Provides operations to manage the accounts property of the microsoft.graph.company entity.
        def accounts()
            return MicrosoftGraphBeta::Financials::Companies::Item::Accounts::AccountsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the agedAccountsPayable property of the microsoft.graph.company entity.
        def aged_accounts_payable()
            return MicrosoftGraphBeta::Financials::Companies::Item::AgedAccountsPayable::AgedAccountsPayableRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the agedAccountsReceivable property of the microsoft.graph.company entity.
        def aged_accounts_receivable()
            return MicrosoftGraphBeta::Financials::Companies::Item::AgedAccountsReceivable::AgedAccountsReceivableRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the companyInformation property of the microsoft.graph.company entity.
        def company_information()
            return MicrosoftGraphBeta::Financials::Companies::Item::CompanyInformation::CompanyInformationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the countriesRegions property of the microsoft.graph.company entity.
        def countries_regions()
            return MicrosoftGraphBeta::Financials::Companies::Item::CountriesRegions::CountriesRegionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the currencies property of the microsoft.graph.company entity.
        def currencies()
            return MicrosoftGraphBeta::Financials::Companies::Item::Currencies::CurrenciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the customerPaymentJournals property of the microsoft.graph.company entity.
        def customer_payment_journals()
            return MicrosoftGraphBeta::Financials::Companies::Item::CustomerPaymentJournals::CustomerPaymentJournalsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the customerPayments property of the microsoft.graph.company entity.
        def customer_payments()
            return MicrosoftGraphBeta::Financials::Companies::Item::CustomerPayments::CustomerPaymentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the customers property of the microsoft.graph.company entity.
        def customers()
            return MicrosoftGraphBeta::Financials::Companies::Item::Customers::CustomersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the dimensions property of the microsoft.graph.company entity.
        def dimensions()
            return MicrosoftGraphBeta::Financials::Companies::Item::Dimensions::DimensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the dimensionValues property of the microsoft.graph.company entity.
        def dimension_values()
            return MicrosoftGraphBeta::Financials::Companies::Item::DimensionValues::DimensionValuesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the employees property of the microsoft.graph.company entity.
        def employees()
            return MicrosoftGraphBeta::Financials::Companies::Item::Employees::EmployeesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the generalLedgerEntries property of the microsoft.graph.company entity.
        def general_ledger_entries()
            return MicrosoftGraphBeta::Financials::Companies::Item::GeneralLedgerEntries::GeneralLedgerEntriesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the itemCategories property of the microsoft.graph.company entity.
        def item_categories()
            return MicrosoftGraphBeta::Financials::Companies::Item::ItemCategories::ItemCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the items property of the microsoft.graph.company entity.
        def items()
            return MicrosoftGraphBeta::Financials::Companies::Item::Items::ItemsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the journalLines property of the microsoft.graph.company entity.
        def journal_lines()
            return MicrosoftGraphBeta::Financials::Companies::Item::JournalLines::JournalLinesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the journals property of the microsoft.graph.company entity.
        def journals()
            return MicrosoftGraphBeta::Financials::Companies::Item::Journals::JournalsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the paymentMethods property of the microsoft.graph.company entity.
        def payment_methods()
            return MicrosoftGraphBeta::Financials::Companies::Item::PaymentMethods::PaymentMethodsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the paymentTerms property of the microsoft.graph.company entity.
        def payment_terms()
            return MicrosoftGraphBeta::Financials::Companies::Item::PaymentTerms::PaymentTermsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the picture property of the microsoft.graph.company entity.
        def picture()
            return MicrosoftGraphBeta::Financials::Companies::Item::Picture::PictureRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the purchaseInvoiceLines property of the microsoft.graph.company entity.
        def purchase_invoice_lines()
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoiceLines::PurchaseInvoiceLinesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the purchaseInvoices property of the microsoft.graph.company entity.
        def purchase_invoices()
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::PurchaseInvoicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the salesCreditMemoLines property of the microsoft.graph.company entity.
        def sales_credit_memo_lines()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesCreditMemoLines::SalesCreditMemoLinesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the salesCreditMemos property of the microsoft.graph.company entity.
        def sales_credit_memos()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesCreditMemos::SalesCreditMemosRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the salesInvoiceLines property of the microsoft.graph.company entity.
        def sales_invoice_lines()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesInvoiceLines::SalesInvoiceLinesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the salesInvoices property of the microsoft.graph.company entity.
        def sales_invoices()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesInvoices::SalesInvoicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the salesOrderLines property of the microsoft.graph.company entity.
        def sales_order_lines()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesOrderLines::SalesOrderLinesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the salesOrders property of the microsoft.graph.company entity.
        def sales_orders()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesOrders::SalesOrdersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the salesQuoteLines property of the microsoft.graph.company entity.
        def sales_quote_lines()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuoteLines::SalesQuoteLinesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the salesQuotes property of the microsoft.graph.company entity.
        def sales_quotes()
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::SalesQuotesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the shipmentMethods property of the microsoft.graph.company entity.
        def shipment_methods()
            return MicrosoftGraphBeta::Financials::Companies::Item::ShipmentMethods::ShipmentMethodsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the taxAreas property of the microsoft.graph.company entity.
        def tax_areas()
            return MicrosoftGraphBeta::Financials::Companies::Item::TaxAreas::TaxAreasRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the taxGroups property of the microsoft.graph.company entity.
        def tax_groups()
            return MicrosoftGraphBeta::Financials::Companies::Item::TaxGroups::TaxGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the unitsOfMeasure property of the microsoft.graph.company entity.
        def units_of_measure()
            return MicrosoftGraphBeta::Financials::Companies::Item::UnitsOfMeasure::UnitsOfMeasureRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the vendors property of the microsoft.graph.company entity.
        def vendors()
            return MicrosoftGraphBeta::Financials::Companies::Item::Vendors::VendorsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accounts property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a account_item_request_builder
        ## 
        def accounts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["account%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Accounts::Item::AccountItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the agedAccountsPayable property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a aged_accounts_payable_item_request_builder
        ## 
        def aged_accounts_payable_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["agedAccountsPayable%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::AgedAccountsPayable::Item::AgedAccountsPayableItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the agedAccountsReceivable property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a aged_accounts_receivable_item_request_builder
        ## 
        def aged_accounts_receivable_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["agedAccountsReceivable%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::AgedAccountsReceivable::Item::AgedAccountsReceivableItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the companyInformation property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a company_information_item_request_builder
        ## 
        def company_information_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["companyInformation%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::CompanyInformation::Item::CompanyInformationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new CompanyItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/financials/companies/{company%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to manage the countriesRegions property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a country_region_item_request_builder
        ## 
        def countries_regions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["countryRegion%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::CountriesRegions::Item::CountryRegionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Get companies from financials
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Provides operations to manage the currencies property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a currency_item_request_builder
        ## 
        def currencies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["currency%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Currencies::Item::CurrencyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the customerPaymentJournals property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a customer_payment_journal_item_request_builder
        ## 
        def customer_payment_journals_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["customerPaymentJournal%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::CustomerPaymentJournals::Item::CustomerPaymentJournalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the customerPayments property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a customer_payment_item_request_builder
        ## 
        def customer_payments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["customerPayment%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::CustomerPayments::Item::CustomerPaymentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the customers property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a customer_item_request_builder
        ## 
        def customers_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["customer%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Customers::Item::CustomerItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the dimensions property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a dimension_item_request_builder
        ## 
        def dimensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["dimension%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Dimensions::Item::DimensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the dimensionValues property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a dimension_value_item_request_builder
        ## 
        def dimension_values_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["dimensionValue%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::DimensionValues::Item::DimensionValueItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the employees property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a employee_item_request_builder
        ## 
        def employees_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["employee%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Employees::Item::EmployeeItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the generalLedgerEntries property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a general_ledger_entry_item_request_builder
        ## 
        def general_ledger_entries_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["generalLedgerEntry%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::GeneralLedgerEntries::Item::GeneralLedgerEntryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Get companies from financials
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of company
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Company.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the itemCategories property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a item_category_item_request_builder
        ## 
        def item_categories_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["itemCategory%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::ItemCategories::Item::ItemCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the items property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a item_item_request_builder
        ## 
        def items_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["item%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Items::Item::ItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the journalLines property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a journal_line_item_request_builder
        ## 
        def journal_lines_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["journalLine%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::JournalLines::Item::JournalLineItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the journals property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a journal_item_request_builder
        ## 
        def journals_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["journal%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Journals::Item::JournalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the paymentMethods property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a payment_method_item_request_builder
        ## 
        def payment_methods_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["paymentMethod%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::PaymentMethods::Item::PaymentMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the paymentTerms property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a payment_term_item_request_builder
        ## 
        def payment_terms_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["paymentTerm%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::PaymentTerms::Item::PaymentTermItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the picture property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a picture_item_request_builder
        ## 
        def picture_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["picture%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Picture::Item::PictureItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the purchaseInvoiceLines property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a purchase_invoice_line_item_request_builder
        ## 
        def purchase_invoice_lines_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["purchaseInvoiceLine%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoiceLines::Item::PurchaseInvoiceLineItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the purchaseInvoices property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a purchase_invoice_item_request_builder
        ## 
        def purchase_invoices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["purchaseInvoice%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::Item::PurchaseInvoiceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesCreditMemoLines property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_credit_memo_line_item_request_builder
        ## 
        def sales_credit_memo_lines_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesCreditMemoLine%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesCreditMemoLines::Item::SalesCreditMemoLineItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesCreditMemos property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_credit_memo_item_request_builder
        ## 
        def sales_credit_memos_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesCreditMemo%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesCreditMemos::Item::SalesCreditMemoItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesInvoiceLines property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_invoice_line_item_request_builder
        ## 
        def sales_invoice_lines_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesInvoiceLine%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesInvoiceLines::Item::SalesInvoiceLineItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesInvoices property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_invoice_item_request_builder
        ## 
        def sales_invoices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesInvoice%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesInvoices::Item::SalesInvoiceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesOrderLines property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_order_line_item_request_builder
        ## 
        def sales_order_lines_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesOrderLine%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesOrderLines::Item::SalesOrderLineItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesOrders property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_order_item_request_builder
        ## 
        def sales_orders_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesOrder%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesOrders::Item::SalesOrderItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesQuoteLines property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_quote_line_item_request_builder
        ## 
        def sales_quote_lines_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesQuoteLine%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuoteLines::Item::SalesQuoteLineItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the salesQuotes property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a sales_quote_item_request_builder
        ## 
        def sales_quotes_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["salesQuote%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::SalesQuoteItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the shipmentMethods property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a shipment_method_item_request_builder
        ## 
        def shipment_methods_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["shipmentMethod%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::ShipmentMethods::Item::ShipmentMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the taxAreas property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a tax_area_item_request_builder
        ## 
        def tax_areas_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["taxArea%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::TaxAreas::Item::TaxAreaItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the taxGroups property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a tax_group_item_request_builder
        ## 
        def tax_groups_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["taxGroup%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::TaxGroups::Item::TaxGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the unitsOfMeasure property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a unit_of_measure_item_request_builder
        ## 
        def units_of_measure_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["unitOfMeasure%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::UnitsOfMeasure::Item::UnitOfMeasureItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the vendors property of the microsoft.graph.company entity.
        ## @param id Unique identifier of the item
        ## @return a vendor_item_request_builder
        ## 
        def vendors_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["vendor%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::Vendors::Item::VendorItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Get companies from financials
        class CompanyItemRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
            ## @return a string
            ## 
            def get_query_parameter(original_name)
                raise StandardError, 'original_name cannot be null' if original_name.nil?
                case original_name
                    when "expand"
                        return "%24expand"
                    when "select"
                        return "%24select"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class CompanyItemRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end
    end
end
