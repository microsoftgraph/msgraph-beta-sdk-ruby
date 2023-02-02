require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class RateDrivenRolloutSettings < MicrosoftGraphBeta::Models::WindowsUpdates::GradualRolloutSettings
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The devicesPerOffer property
        @devices_per_offer
        ## 
        ## Instantiates a new RateDrivenRolloutSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a rate_driven_rollout_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RateDrivenRolloutSettings.new
        end
        ## 
        ## Gets the devicesPerOffer property value. The devicesPerOffer property
        ## @return a integer
        ## 
        def devices_per_offer
            return @devices_per_offer
        end
        ## 
        ## Sets the devicesPerOffer property value. The devicesPerOffer property
        ## @param value Value to set for the devices_per_offer property.
        ## @return a void
        ## 
        def devices_per_offer=(value)
            @devices_per_offer = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "devicesPerOffer" => lambda {|n| @devices_per_offer = n.get_number_value() },
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
            writer.write_number_value("devicesPerOffer", @devices_per_offer)
        end
    end
end
