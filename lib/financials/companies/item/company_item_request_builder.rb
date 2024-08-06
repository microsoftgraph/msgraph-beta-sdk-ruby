require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/company'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../financials'
require_relative '../companies'
require_relative './accounts/accounts_request_builder'
require_relative './aged_accounts_payable/aged_accounts_payable_request_builder'
require_relative './aged_accounts_receivable/aged_accounts_receivable_request_builder'
require_relative './company_information/company_information_request_builder'
require_relative './countries_regions/countries_regions_request_builder'
require_relative './currencies/currencies_request_builder'
require_relative './customer_payment_journals/customer_payment_journals_request_builder'
require_relative './customer_payments/customer_payments_request_builder'
require_relative './customers/customers_request_builder'
require_relative './dimensions/dimensions_request_builder'
require_relative './dimension_values/dimension_values_request_builder'
require_relative './employees/employees_request_builder'
require_relative './general_ledger_entries/general_ledger_entries_request_builder'
require_relative './item'
require_relative './item_categories/item_categories_request_builder'
require_relative './items/items_request_builder'
require_relative './journal_lines/journal_lines_request_builder'
require_relative './journals/journals_request_builder'
require_relative './payment_methods/payment_methods_request_builder'
require_relative './payment_terms/payment_terms_request_builder'
require_relative './picture/picture_request_builder'
require_relative './purchase_invoice_lines/purchase_invoice_lines_request_builder'
require_relative './purchase_invoices/purchase_invoices_request_builder'
require_relative './sales_credit_memo_lines/sales_credit_memo_lines_request_builder'
require_relative './sales_credit_memos/sales_credit_memos_request_builder'
require_relative './sales_invoice_lines/sales_invoice_lines_request_builder'
require_relative './sales_invoices/sales_invoices_request_builder'
require_relative './sales_order_lines/sales_order_lines_request_builder'
require_relative './sales_orders/sales_orders_request_builder'
require_relative './sales_quote_lines/sales_quote_lines_request_builder'
require_relative './sales_quotes/sales_quotes_request_builder'
require_relative './shipment_methods/shipment_methods_request_builder'
require_relative './tax_areas/tax_areas_request_builder'
require_relative './tax_groups/tax_groups_request_builder'
require_relative './units_of_measure/units_of_measure_request_builder'
require_relative './vendors/vendors_request_builder'

module MicrosoftGraphBeta
    module Financials
        module Companies
            module Item
                ## 
                # Provides operations to manage the companies property of the microsoft.graph.financials entity.
                class CompanyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
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
                    # Provides operations to manage the vendors property of the microsoft.graph.company entity.
                    def vendors()
                        return MicrosoftGraphBeta::Financials::Companies::Item::Vendors::VendorsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new CompanyItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/financials/companies/{company%2Did}{?%24expand,%24select}")
                    end
                    ## 
                    ## Get companies from financials
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of company
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Company.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Get companies from financials
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a company_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return CompanyItemRequestBuilder.new(raw_url, @request_adapter)
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
                        ## @param original_name The original query parameter name in the class.
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
                end
            end
        end
    end
end
