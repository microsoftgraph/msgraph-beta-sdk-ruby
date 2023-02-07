require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EdgeHomeButtonOpensCustomURL < MicrosoftGraphBeta::Models::EdgeHomeButtonConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The specific URL to load.
        @home_button_custom_u_r_l
        ## 
        ## Instantiates a new EdgeHomeButtonOpensCustomURL and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.edgeHomeButtonOpensCustomURL"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a edge_home_button_opens_custom_u_r_l
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EdgeHomeButtonOpensCustomURL.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "homeButtonCustomURL" => lambda {|n| @home_button_custom_u_r_l = n.get_string_value() },
            })
        end
        ## 
        ## Gets the homeButtonCustomURL property value. The specific URL to load.
        ## @return a string
        ## 
        def home_button_custom_u_r_l
            return @home_button_custom_u_r_l
        end
        ## 
        ## Sets the homeButtonCustomURL property value. The specific URL to load.
        ## @param value Value to set for the home_button_custom_u_r_l property.
        ## @return a void
        ## 
        def home_button_custom_u_r_l=(value)
            @home_button_custom_u_r_l = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("homeButtonCustomURL", @home_button_custom_u_r_l)
        end
    end
end
