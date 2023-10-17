require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessReviewRecurrenceSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The duration in days for recurrence.
            @duration_in_days
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The count of recurrences, if the value of recurrenceEndType is occurrences, or 0 otherwise.
            @recurrence_count
            ## 
            # How the recurrence ends. Possible values: never, endBy, occurrences, or recurrenceCount. If it's never, then there's no explicit end of the recurrence series. If it's endBy, then the recurrence ends at a certain date. If it's occurrences, then the series ends after recurrenceCount instances of the review have completed.
            @recurrence_end_type
            ## 
            # The recurrence interval. Possible values: onetime, weekly, monthly, quarterly, halfyearly or annual.
            @recurrence_type
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
            ## Instantiates a new accessReviewRecurrenceSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_review_recurrence_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewRecurrenceSettings.new
            end
            ## 
            ## Gets the durationInDays property value. The duration in days for recurrence.
            ## @return a integer
            ## 
            def duration_in_days
                return @duration_in_days
            end
            ## 
            ## Sets the durationInDays property value. The duration in days for recurrence.
            ## @param value Value to set for the durationInDays property.
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
                return {
                    "durationInDays" => lambda {|n| @duration_in_days = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recurrenceCount" => lambda {|n| @recurrence_count = n.get_number_value() },
                    "recurrenceEndType" => lambda {|n| @recurrence_end_type = n.get_string_value() },
                    "recurrenceType" => lambda {|n| @recurrence_type = n.get_string_value() },
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
            ## Gets the recurrenceCount property value. The count of recurrences, if the value of recurrenceEndType is occurrences, or 0 otherwise.
            ## @return a integer
            ## 
            def recurrence_count
                return @recurrence_count
            end
            ## 
            ## Sets the recurrenceCount property value. The count of recurrences, if the value of recurrenceEndType is occurrences, or 0 otherwise.
            ## @param value Value to set for the recurrenceCount property.
            ## @return a void
            ## 
            def recurrence_count=(value)
                @recurrence_count = value
            end
            ## 
            ## Gets the recurrenceEndType property value. How the recurrence ends. Possible values: never, endBy, occurrences, or recurrenceCount. If it's never, then there's no explicit end of the recurrence series. If it's endBy, then the recurrence ends at a certain date. If it's occurrences, then the series ends after recurrenceCount instances of the review have completed.
            ## @return a string
            ## 
            def recurrence_end_type
                return @recurrence_end_type
            end
            ## 
            ## Sets the recurrenceEndType property value. How the recurrence ends. Possible values: never, endBy, occurrences, or recurrenceCount. If it's never, then there's no explicit end of the recurrence series. If it's endBy, then the recurrence ends at a certain date. If it's occurrences, then the series ends after recurrenceCount instances of the review have completed.
            ## @param value Value to set for the recurrenceEndType property.
            ## @return a void
            ## 
            def recurrence_end_type=(value)
                @recurrence_end_type = value
            end
            ## 
            ## Gets the recurrenceType property value. The recurrence interval. Possible values: onetime, weekly, monthly, quarterly, halfyearly or annual.
            ## @return a string
            ## 
            def recurrence_type
                return @recurrence_type
            end
            ## 
            ## Sets the recurrenceType property value. The recurrence interval. Possible values: onetime, weekly, monthly, quarterly, halfyearly or annual.
            ## @param value Value to set for the recurrenceType property.
            ## @return a void
            ## 
            def recurrence_type=(value)
                @recurrence_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("durationInDays", @duration_in_days)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("recurrenceCount", @recurrence_count)
                writer.write_string_value("recurrenceEndType", @recurrence_end_type)
                writer.write_string_value("recurrenceType", @recurrence_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
