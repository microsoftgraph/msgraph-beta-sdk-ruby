require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../models/purchase_invoice'
require_relative '../../../../financials'
require_relative '../../../companies'
require_relative '../../item'
require_relative '../purchase_invoices'
require_relative './currency/currency_request_builder'
require_relative './item'
require_relative './microsoft_graph_post/post_request_builder'
require_relative './purchase_invoice_lines/item/purchase_invoice_line_item_request_builder'
require_relative './purchase_invoice_lines/purchase_invoice_lines_request_builder'
require_relative './vendor/vendor_request_builder'

module MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::Item
    ## 
    # Provides operations to manage the purchaseInvoices property of the microsoft.graph.company entity.
    class PurchaseInvoiceItemRequestBuilder
        
        ## 
        # Provides operations to manage the currency property of the microsoft.graph.purchaseInvoice entity.
        def currency()
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::Item::Currency::CurrencyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the post method.
        def microsoft_graph_post()
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::Item::MicrosoftGraphPost::PostRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the purchaseInvoiceLines property of the microsoft.graph.purchaseInvoice entity.
        def purchase_invoice_lines()
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::Item::PurchaseInvoiceLines::PurchaseInvoiceLinesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the vendor property of the microsoft.graph.purchaseInvoice entity.
        def vendor()
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::Item::Vendor::VendorRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new PurchaseInvoiceItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param purchaseInvoiceId key: id of purchaseInvoice
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter, purchase_invoice_id=nil)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/financials/companies/{company%2Did}/purchaseInvoices/{purchaseInvoice%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Get purchaseInvoices from financials
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of purchase_invoice
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::PurchaseInvoice.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property purchaseInvoices in financials
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of purchase_invoice
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::PurchaseInvoice.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the purchaseInvoiceLines property of the microsoft.graph.purchaseInvoice entity.
        ## @param id Unique identifier of the item
        ## @return a purchase_invoice_line_item_request_builder
        ## 
        def purchase_invoice_lines_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["purchaseInvoiceLine%2Did"] = id
            return MicrosoftGraphBeta::Financials::Companies::Item::PurchaseInvoices::Item::PurchaseInvoiceLines::Item::PurchaseInvoiceLineItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Get purchaseInvoices from financials
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_get_request_information(request_configuration=nil)
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
        ## Update the navigation property purchaseInvoices in financials
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end

        ## 
        # Get purchaseInvoices from financials
        class PurchaseInvoiceItemRequestBuilderGetQueryParameters
            
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
        class PurchaseInvoiceItemRequestBuilderGetRequestConfiguration
            
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class PurchaseInvoiceItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
