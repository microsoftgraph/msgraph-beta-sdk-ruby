require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A complex type to store the windows update rollout settings including offer start date time, offer end date time, and days between each set of offers.
        class WindowsUpdateRolloutSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The feature update's ending  of release date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.
            @offer_end_date_time_in_u_t_c
            ## 
            # The number of day(s) between each set of offers to be set, updated, and displayed for a feature update profile, for example: if OfferStartDateTimeInUTC is 2020-06-09T10:00:00Z, and OfferIntervalInDays is 1, then the next two sets of offers will be made consecutively on 2020-06-10T10:00:00Z (next day at the same specified time) and 2020-06-11T10:00:00Z (next next day at the same specified time) with 1 day in between each set of offers.
            @offer_interval_in_days
            ## 
            # The feature update's starting date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.
            @offer_start_date_time_in_u_t_c
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new windowsUpdateRolloutSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_update_rollout_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdateRolloutSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "offerEndDateTimeInUTC" => lambda {|n| @offer_end_date_time_in_u_t_c = n.get_date_time_value() },
                    "offerIntervalInDays" => lambda {|n| @offer_interval_in_days = n.get_number_value() },
                    "offerStartDateTimeInUTC" => lambda {|n| @offer_start_date_time_in_u_t_c = n.get_date_time_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the offerEndDateTimeInUTC property value. The feature update's ending  of release date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.
            ## @return a date_time
            ## 
            def offer_end_date_time_in_u_t_c
                return @offer_end_date_time_in_u_t_c
            end
            ## 
            ## Sets the offerEndDateTimeInUTC property value. The feature update's ending  of release date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.
            ## @param value Value to set for the offerEndDateTimeInUTC property.
            ## @return a void
            ## 
            def offer_end_date_time_in_u_t_c=(value)
                @offer_end_date_time_in_u_t_c = value
            end
            ## 
            ## Gets the offerIntervalInDays property value. The number of day(s) between each set of offers to be set, updated, and displayed for a feature update profile, for example: if OfferStartDateTimeInUTC is 2020-06-09T10:00:00Z, and OfferIntervalInDays is 1, then the next two sets of offers will be made consecutively on 2020-06-10T10:00:00Z (next day at the same specified time) and 2020-06-11T10:00:00Z (next next day at the same specified time) with 1 day in between each set of offers.
            ## @return a integer
            ## 
            def offer_interval_in_days
                return @offer_interval_in_days
            end
            ## 
            ## Sets the offerIntervalInDays property value. The number of day(s) between each set of offers to be set, updated, and displayed for a feature update profile, for example: if OfferStartDateTimeInUTC is 2020-06-09T10:00:00Z, and OfferIntervalInDays is 1, then the next two sets of offers will be made consecutively on 2020-06-10T10:00:00Z (next day at the same specified time) and 2020-06-11T10:00:00Z (next next day at the same specified time) with 1 day in between each set of offers.
            ## @param value Value to set for the offerIntervalInDays property.
            ## @return a void
            ## 
            def offer_interval_in_days=(value)
                @offer_interval_in_days = value
            end
            ## 
            ## Gets the offerStartDateTimeInUTC property value. The feature update's starting date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.
            ## @return a date_time
            ## 
            def offer_start_date_time_in_u_t_c
                return @offer_start_date_time_in_u_t_c
            end
            ## 
            ## Sets the offerStartDateTimeInUTC property value. The feature update's starting date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z.
            ## @param value Value to set for the offerStartDateTimeInUTC property.
            ## @return a void
            ## 
            def offer_start_date_time_in_u_t_c=(value)
                @offer_start_date_time_in_u_t_c = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("offerEndDateTimeInUTC", @offer_end_date_time_in_u_t_c)
                writer.write_number_value("offerIntervalInDays", @offer_interval_in_days)
                writer.write_date_time_value("offerStartDateTimeInUTC", @offer_start_date_time_in_u_t_c)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
