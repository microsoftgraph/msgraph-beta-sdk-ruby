require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../models/sales_quote'
require_relative '../../../../financials'
require_relative '../../../companies'
require_relative '../../item'
require_relative '../sales_quotes'
require_relative './currency/currency_request_builder'
require_relative './customer/customer_request_builder'
require_relative './item'
require_relative './make_invoice/make_invoice_request_builder'
require_relative './payment_term/payment_term_request_builder'
require_relative './sales_quote_lines/sales_quote_lines_request_builder'
require_relative './send/send_request_builder'
require_relative './shipment_method/shipment_method_request_builder'

module MicrosoftGraphBeta
    module Financials
        module Companies
            module Item
                module SalesQuotes
                    module Item
                        ## 
                        # Provides operations to manage the salesQuotes property of the microsoft.graph.company entity.
                        class SalesQuoteItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the currency property of the microsoft.graph.salesQuote entity.
                            def currency()
                                return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::Currency::CurrencyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the customer property of the microsoft.graph.salesQuote entity.
                            def customer()
                                return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::Customer::CustomerRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the makeInvoice method.
                            def make_invoice()
                                return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::MakeInvoice::MakeInvoiceRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the paymentTerm property of the microsoft.graph.salesQuote entity.
                            def payment_term()
                                return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::PaymentTerm::PaymentTermRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the salesQuoteLines property of the microsoft.graph.salesQuote entity.
                            def sales_quote_lines()
                                return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::SalesQuoteLines::SalesQuoteLinesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the send method.
                            def send()
                                return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::Send::SendRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the shipmentMethod property of the microsoft.graph.salesQuote entity.
                            def shipment_method()
                                return MicrosoftGraphBeta::Financials::Companies::Item::SalesQuotes::Item::ShipmentMethod::ShipmentMethodRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new SalesQuoteItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/financials/companies/{company%2Did}/salesQuotes/{salesQuote%2Did}{?%24expand,%24select}")
                            end
                            ## 
                            ## Get salesQuotes from financials
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of sales_quote
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SalesQuote.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update the navigation property salesQuotes in financials
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of sales_quote
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SalesQuote.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Get salesQuotes from financials
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
                            ## Update the navigation property salesQuotes in financials
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_patch_request_information(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                request_info.url_template = '{+baseurl}/financials/companies/{company%2Did}/salesQuotes/{salesQuote%2Did}'
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :PATCH
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a sales_quote_item_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return SalesQuoteItemRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # Get salesQuotes from financials
                            class SalesQuoteItemRequestBuilderGetQueryParameters
                                
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
    end
end
