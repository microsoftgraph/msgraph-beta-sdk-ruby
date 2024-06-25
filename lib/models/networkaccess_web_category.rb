require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessWebCategory < MicrosoftGraphBeta::Models::NetworkaccessRuleDestination
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name for the web category.
            @display_name
            ## 
            # The group or category to which the web category belongs.
            @group
            ## 
            # The unique name that is associated with the web category.
            @name
            ## 
            ## Instantiates a new NetworkaccessWebCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.webCategory"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_web_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessWebCategory.new
            end
            ## 
            ## Gets the displayName property value. The display name for the web category.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the web category.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "group" => lambda {|n| @group = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the group property value. The group or category to which the web category belongs.
            ## @return a string
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The group or category to which the web category belongs.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the name property value. The unique name that is associated with the web category.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The unique name that is associated with the web category.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("group", @group)
                writer.write_string_value("name", @name)
            end
        end
    end
end
