require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class SecurityBaselineCategoryStateSummary < MicrosoftGraphBeta::Models::SecurityBaselineStateSummary
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The category name
        @display_name
        ## 
        ## Instantiates a new SecurityBaselineCategoryStateSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.securityBaselineCategoryStateSummary"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a security_baseline_category_state_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SecurityBaselineCategoryStateSummary.new
        end
        ## 
        ## Gets the displayName property value. The category name
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The category name
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
            writer.write_string_value("displayName", @display_name)
        end
    end
end
