require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeliveryOptimizationGroupIdCustom < MicrosoftGraphBeta::Models::DeliveryOptimizationGroupIdSource
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies an arbitrary group ID that the device belongs to
        @group_id_custom
        ## 
        ## Instantiates a new DeliveryOptimizationGroupIdCustom and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deliveryOptimizationGroupIdCustom"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a delivery_optimization_group_id_custom
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeliveryOptimizationGroupIdCustom.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "groupIdCustom" => lambda {|n| @group_id_custom = n.get_string_value() },
            })
        end
        ## 
        ## Gets the groupIdCustom property value. Specifies an arbitrary group ID that the device belongs to
        ## @return a string
        ## 
        def group_id_custom
            return @group_id_custom
        end
        ## 
        ## Sets the groupIdCustom property value. Specifies an arbitrary group ID that the device belongs to
        ## @param value Value to set for the group_id_custom property.
        ## @return a void
        ## 
        def group_id_custom=(value)
            @group_id_custom = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("groupIdCustom", @group_id_custom)
        end
    end
end
