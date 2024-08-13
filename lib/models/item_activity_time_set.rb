require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemActivityTimeSet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The lastRecordedDateTime property
            @last_recorded_date_time
            ## 
            # When the activity was observed to take place.
            @observed_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # When the observation was recorded on the service.
            @recorded_date_time
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
            ## Instantiates a new ItemActivityTimeSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a item_activity_time_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemActivityTimeSet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "lastRecordedDateTime" => lambda {|n| @last_recorded_date_time = n.get_date_time_value() },
                    "observedDateTime" => lambda {|n| @observed_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recordedDateTime" => lambda {|n| @recorded_date_time = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the lastRecordedDateTime property value. The lastRecordedDateTime property
            ## @return a date_time
            ## 
            def last_recorded_date_time
                return @last_recorded_date_time
            end
            ## 
            ## Sets the lastRecordedDateTime property value. The lastRecordedDateTime property
            ## @param value Value to set for the lastRecordedDateTime property.
            ## @return a void
            ## 
            def last_recorded_date_time=(value)
                @last_recorded_date_time = value
            end
            ## 
            ## Gets the observedDateTime property value. When the activity was observed to take place.
            ## @return a date_time
            ## 
            def observed_date_time
                return @observed_date_time
            end
            ## 
            ## Sets the observedDateTime property value. When the activity was observed to take place.
            ## @param value Value to set for the observedDateTime property.
            ## @return a void
            ## 
            def observed_date_time=(value)
                @observed_date_time = value
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
            ## Gets the recordedDateTime property value. When the observation was recorded on the service.
            ## @return a date_time
            ## 
            def recorded_date_time
                return @recorded_date_time
            end
            ## 
            ## Sets the recordedDateTime property value. When the observation was recorded on the service.
            ## @param value Value to set for the recordedDateTime property.
            ## @return a void
            ## 
            def recorded_date_time=(value)
                @recorded_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("lastRecordedDateTime", @last_recorded_date_time)
                writer.write_date_time_value("observedDateTime", @observed_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("recordedDateTime", @recorded_date_time)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
