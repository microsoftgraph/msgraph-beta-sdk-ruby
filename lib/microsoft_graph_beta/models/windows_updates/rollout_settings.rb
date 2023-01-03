require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class RolloutSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Specifies the number of devices that are offered at the same time. Has no effect when endDateTime is set. When endDateTime and devicesPerOffer are both not set, all devices in the deployment are offered content at the same time.
        @devices_per_offer
        ## 
        # Specifies duration between each set of devices being offered the update. Has an effect when endDateTime or devicesPerOffer are defined. Default value is P1D (1 day).
        @duration_between_offers
        ## 
        # Specifies the date before which all devices currently in the deployment are offered the update. Devices added after this date are offered immediately. When endDateTime and devicesPerOffer are both not set, all devices in the deployment are offered content at the same time.
        @end_date_time
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned.
        @start_date_time
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new rolloutSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a rollout_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RolloutSettings.new
        end
        ## 
        ## Gets the devicesPerOffer property value. Specifies the number of devices that are offered at the same time. Has no effect when endDateTime is set. When endDateTime and devicesPerOffer are both not set, all devices in the deployment are offered content at the same time.
        ## @return a integer
        ## 
        def devices_per_offer
            return @devices_per_offer
        end
        ## 
        ## Sets the devicesPerOffer property value. Specifies the number of devices that are offered at the same time. Has no effect when endDateTime is set. When endDateTime and devicesPerOffer are both not set, all devices in the deployment are offered content at the same time.
        ## @param value Value to set for the devicesPerOffer property.
        ## @return a void
        ## 
        def devices_per_offer=(value)
            @devices_per_offer = value
        end
        ## 
        ## Gets the durationBetweenOffers property value. Specifies duration between each set of devices being offered the update. Has an effect when endDateTime or devicesPerOffer are defined. Default value is P1D (1 day).
        ## @return a string
        ## 
        def duration_between_offers
            return @duration_between_offers
        end
        ## 
        ## Sets the durationBetweenOffers property value. Specifies duration between each set of devices being offered the update. Has an effect when endDateTime or devicesPerOffer are defined. Default value is P1D (1 day).
        ## @param value Value to set for the durationBetweenOffers property.
        ## @return a void
        ## 
        def duration_between_offers=(value)
            @duration_between_offers = value
        end
        ## 
        ## Gets the endDateTime property value. Specifies the date before which all devices currently in the deployment are offered the update. Devices added after this date are offered immediately. When endDateTime and devicesPerOffer are both not set, all devices in the deployment are offered content at the same time.
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. Specifies the date before which all devices currently in the deployment are offered the update. Devices added after this date are offered immediately. When endDateTime and devicesPerOffer are both not set, all devices in the deployment are offered content at the same time.
        ## @param value Value to set for the endDateTime property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "devicesPerOffer" => lambda {|n| @devices_per_offer = n.get_number_value() },
                "durationBetweenOffers" => lambda {|n| @duration_between_offers = n.get_string_value() },
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
            }
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_number_value("devicesPerOffer", @devices_per_offer)
            writer.write_string_value("durationBetweenOffers", @duration_between_offers)
            writer.write_date_time_value("endDateTime", @end_date_time)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_date_time_value("startDateTime", @start_date_time)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the startDateTime property value. Date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned.
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. Date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned.
        ## @param value Value to set for the startDateTime property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
    end
end
