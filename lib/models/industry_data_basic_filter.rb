require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataBasicFilter < MicrosoftGraphBeta::Models::IndustryDataFilter
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The attribute property
            @attribute
            ## 
            # The condition to filter with.
            @in
            ## 
            ## Gets the attribute property value. The attribute property
            ## @return a industry_data_filter_options
            ## 
            def attribute
                return @attribute
            end
            ## 
            ## Sets the attribute property value. The attribute property
            ## @param value Value to set for the attribute property.
            ## @return a void
            ## 
            def attribute=(value)
                @attribute = value
            end
            ## 
            ## Instantiates a new IndustryDataBasicFilter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.basicFilter"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_basic_filter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataBasicFilter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attribute" => lambda {|n| @attribute = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryDataFilterOptions) },
                    "in" => lambda {|n| @in = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the in property value. The condition to filter with.
            ## @return a string
            ## 
            def in
                return @in
            end
            ## 
            ## Sets the in property value. The condition to filter with.
            ## @param value Value to set for the in property.
            ## @return a void
            ## 
            def in=(value)
                @in = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("attribute", @attribute)
                writer.write_collection_of_primitive_values("in", @in)
            end
        end
    end
end
