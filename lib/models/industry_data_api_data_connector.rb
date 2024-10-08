require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataApiDataConnector < MicrosoftGraphBeta::Models::IndustryDataIndustryDataConnector
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The apiFormat property
            @api_format
            ## 
            # The base URL, including the scheme, host, and path for the API, with or without a trailing '/'. For example, 'https://example.com/ims/oneRoster/v1p1'
            @base_url
            ## 
            # The credential property
            @credential
            ## 
            ## Gets the apiFormat property value. The apiFormat property
            ## @return a industry_data_api_format
            ## 
            def api_format
                return @api_format
            end
            ## 
            ## Sets the apiFormat property value. The apiFormat property
            ## @param value Value to set for the apiFormat property.
            ## @return a void
            ## 
            def api_format=(value)
                @api_format = value
            end
            ## 
            ## Gets the baseUrl property value. The base URL, including the scheme, host, and path for the API, with or without a trailing '/'. For example, 'https://example.com/ims/oneRoster/v1p1'
            ## @return a string
            ## 
            def base_url
                return @base_url
            end
            ## 
            ## Sets the baseUrl property value. The base URL, including the scheme, host, and path for the API, with or without a trailing '/'. For example, 'https://example.com/ims/oneRoster/v1p1'
            ## @param value Value to set for the baseUrl property.
            ## @return a void
            ## 
            def base_url=(value)
                @base_url = value
            end
            ## 
            ## Instantiates a new IndustryDataApiDataConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.apiDataConnector"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_api_data_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.industryData.oneRosterApiDataConnector"
                            return IndustryDataOneRosterApiDataConnector.new
                    end
                end
                return IndustryDataApiDataConnector.new
            end
            ## 
            ## Gets the credential property value. The credential property
            ## @return a industry_data_credential
            ## 
            def credential
                return @credential
            end
            ## 
            ## Sets the credential property value. The credential property
            ## @param value Value to set for the credential property.
            ## @return a void
            ## 
            def credential=(value)
                @credential = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apiFormat" => lambda {|n| @api_format = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryDataApiFormat) },
                    "baseUrl" => lambda {|n| @base_url = n.get_string_value() },
                    "credential" => lambda {|n| @credential = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataCredential.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("apiFormat", @api_format)
                writer.write_string_value("baseUrl", @base_url)
                writer.write_object_value("credential", @credential)
            end
        end
    end
end
