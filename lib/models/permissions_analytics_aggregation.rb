require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionsAnalyticsAggregation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The aws property
            @aws
            ## 
            # The azure property
            @azure
            ## 
            # The gcp property
            @gcp
            ## 
            ## Gets the aws property value. The aws property
            ## @return a permissions_analytics
            ## 
            def aws
                return @aws
            end
            ## 
            ## Sets the aws property value. The aws property
            ## @param value Value to set for the aws property.
            ## @return a void
            ## 
            def aws=(value)
                @aws = value
            end
            ## 
            ## Gets the azure property value. The azure property
            ## @return a permissions_analytics
            ## 
            def azure
                return @azure
            end
            ## 
            ## Sets the azure property value. The azure property
            ## @param value Value to set for the azure property.
            ## @return a void
            ## 
            def azure=(value)
                @azure = value
            end
            ## 
            ## Instantiates a new PermissionsAnalyticsAggregation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permissions_analytics_aggregation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionsAnalyticsAggregation.new
            end
            ## 
            ## Gets the gcp property value. The gcp property
            ## @return a permissions_analytics
            ## 
            def gcp
                return @gcp
            end
            ## 
            ## Sets the gcp property value. The gcp property
            ## @param value Value to set for the gcp property.
            ## @return a void
            ## 
            def gcp=(value)
                @gcp = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "aws" => lambda {|n| @aws = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsAnalytics.create_from_discriminator_value(pn) }) },
                    "azure" => lambda {|n| @azure = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsAnalytics.create_from_discriminator_value(pn) }) },
                    "gcp" => lambda {|n| @gcp = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsAnalytics.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("aws", @aws)
                writer.write_object_value("azure", @azure)
                writer.write_object_value("gcp", @gcp)
            end
        end
    end
end
