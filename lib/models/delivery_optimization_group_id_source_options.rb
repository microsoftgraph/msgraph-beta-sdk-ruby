require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Group id options type
        class DeliveryOptimizationGroupIdSourceOptions < MicrosoftGraphBeta::Models::DeliveryOptimizationGroupIdSource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values for the DeliveryOptimizationGroupIdOptionsType setting.
            @group_id_source_option
            ## 
            ## Instantiates a new DeliveryOptimizationGroupIdSourceOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deliveryOptimizationGroupIdSourceOptions"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a delivery_optimization_group_id_source_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeliveryOptimizationGroupIdSourceOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupIdSourceOption" => lambda {|n| @group_id_source_option = n.get_enum_value(MicrosoftGraphBeta::Models::DeliveryOptimizationGroupIdOptionsType) },
                })
            end
            ## 
            ## Gets the groupIdSourceOption property value. Possible values for the DeliveryOptimizationGroupIdOptionsType setting.
            ## @return a delivery_optimization_group_id_options_type
            ## 
            def group_id_source_option
                return @group_id_source_option
            end
            ## 
            ## Sets the groupIdSourceOption property value. Possible values for the DeliveryOptimizationGroupIdOptionsType setting.
            ## @param value Value to set for the groupIdSourceOption property.
            ## @return a void
            ## 
            def group_id_source_option=(value)
                @group_id_source_option = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("groupIdSourceOption", @group_id_source_option)
            end
        end
    end
end
