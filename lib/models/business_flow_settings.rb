require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class BusinessFlowSettings < MicrosoftGraphBeta::Models::AccessReviewSettings
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The durationInDays property
        @duration_in_days
        ## 
        ## Instantiates a new BusinessFlowSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.businessFlowSettings"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a business_flow_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return BusinessFlowSettings.new
        end
        ## 
        ## Gets the durationInDays property value. The durationInDays property
        ## @return a integer
        ## 
        def duration_in_days
            return @duration_in_days
        end
        ## 
        ## Sets the durationInDays property value. The durationInDays property
        ## @param value Value to set for the duration_in_days property.
        ## @return a void
        ## 
        def duration_in_days=(value)
            @duration_in_days = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "durationInDays" => lambda {|n| @duration_in_days = n.get_number_value() },
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
            writer.write_number_value("durationInDays", @duration_in_days)
        end
    end
end
