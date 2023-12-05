require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserRequestsMetric < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date of the user insight.
            @fact_date
            ## 
            # Number of requests to the tenant. Supports $filter (eq).
            @request_count
            ## 
            ## Instantiates a new userRequestsMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_requests_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserRequestsMetric.new
            end
            ## 
            ## Gets the factDate property value. The date of the user insight.
            ## @return a date
            ## 
            def fact_date
                return @fact_date
            end
            ## 
            ## Sets the factDate property value. The date of the user insight.
            ## @param value Value to set for the factDate property.
            ## @return a void
            ## 
            def fact_date=(value)
                @fact_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "factDate" => lambda {|n| @fact_date = n.get_date_value() },
                    "requestCount" => lambda {|n| @request_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the requestCount property value. Number of requests to the tenant. Supports $filter (eq).
            ## @return a int64
            ## 
            def request_count
                return @request_count
            end
            ## 
            ## Sets the requestCount property value. Number of requests to the tenant. Supports $filter (eq).
            ## @param value Value to set for the requestCount property.
            ## @return a void
            ## 
            def request_count=(value)
                @request_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_value("factDate", @fact_date)
                writer.write_object_value("requestCount", @request_count)
            end
        end
    end
end
