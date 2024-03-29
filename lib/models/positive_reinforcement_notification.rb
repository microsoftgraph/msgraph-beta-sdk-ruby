require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PositiveReinforcementNotification < MicrosoftGraphBeta::Models::BaseEndUserNotification
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The deliveryPreference property
            @delivery_preference
            ## 
            ## Instantiates a new positiveReinforcementNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.positiveReinforcementNotification"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a positive_reinforcement_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PositiveReinforcementNotification.new
            end
            ## 
            ## Gets the deliveryPreference property value. The deliveryPreference property
            ## @return a notification_delivery_preference
            ## 
            def delivery_preference
                return @delivery_preference
            end
            ## 
            ## Sets the deliveryPreference property value. The deliveryPreference property
            ## @param value Value to set for the deliveryPreference property.
            ## @return a void
            ## 
            def delivery_preference=(value)
                @delivery_preference = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deliveryPreference" => lambda {|n| @delivery_preference = n.get_enum_value(MicrosoftGraphBeta::Models::NotificationDeliveryPreference) },
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
                writer.write_enum_value("deliveryPreference", @delivery_preference)
            end
        end
    end
end
