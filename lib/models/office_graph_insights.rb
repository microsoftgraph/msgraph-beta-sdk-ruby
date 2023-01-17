require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OfficeGraphInsights < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Access this property from the derived type itemInsights.
        @shared
        ## 
        # Access this property from the derived type itemInsights.
        @trending
        ## 
        # Access this property from the derived type itemInsights.
        @used
        ## 
        ## Instantiates a new officeGraphInsights and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a office_graph_insights
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.itemInsights"
                        return ItemInsights.new
                end
            end
            return OfficeGraphInsights.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "shared" => lambda {|n| @shared = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SharedInsight.create_from_discriminator_value(pn) }) },
                "trending" => lambda {|n| @trending = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Trending.create_from_discriminator_value(pn) }) },
                "used" => lambda {|n| @used = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UsedInsight.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("shared", @shared)
            writer.write_collection_of_object_values("trending", @trending)
            writer.write_collection_of_object_values("used", @used)
        end
        ## 
        ## Gets the shared property value. Access this property from the derived type itemInsights.
        ## @return a shared_insight
        ## 
        def shared
            return @shared
        end
        ## 
        ## Sets the shared property value. Access this property from the derived type itemInsights.
        ## @param value Value to set for the shared property.
        ## @return a void
        ## 
        def shared=(value)
            @shared = value
        end
        ## 
        ## Gets the trending property value. Access this property from the derived type itemInsights.
        ## @return a trending
        ## 
        def trending
            return @trending
        end
        ## 
        ## Sets the trending property value. Access this property from the derived type itemInsights.
        ## @param value Value to set for the trending property.
        ## @return a void
        ## 
        def trending=(value)
            @trending = value
        end
        ## 
        ## Gets the used property value. Access this property from the derived type itemInsights.
        ## @return a used_insight
        ## 
        def used
            return @used
        end
        ## 
        ## Sets the used property value. Access this property from the derived type itemInsights.
        ## @param value Value to set for the used property.
        ## @return a void
        ## 
        def used=(value)
            @used = value
        end
    end
end
