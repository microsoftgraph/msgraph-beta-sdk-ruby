require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TimeCardBreak
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # ID of the timeCardBreak.
            @break_id
            ## 
            # The start event of the timeCardBreak.
            @end_escaped
            ## 
            # Notes about the timeCardBreak.
            @notes
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The start property
            @start
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the breakId property value. ID of the timeCardBreak.
            ## @return a string
            ## 
            def break_id
                return @break_id
            end
            ## 
            ## Sets the breakId property value. ID of the timeCardBreak.
            ## @param value Value to set for the breakId property.
            ## @return a void
            ## 
            def break_id=(value)
                @break_id = value
            end
            ## 
            ## Instantiates a new timeCardBreak and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a time_card_break
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TimeCardBreak.new
            end
            ## 
            ## Gets the end property value. The start event of the timeCardBreak.
            ## @return a time_card_event
            ## 
            def end_escaped
                return @end_escaped
            end
            ## 
            ## Sets the end property value. The start event of the timeCardBreak.
            ## @param value Value to set for the end property.
            ## @return a void
            ## 
            def end_escaped=(value)
                @end_escaped = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "breakId" => lambda {|n| @break_id = n.get_string_value() },
                    "end" => lambda {|n| @end_escaped = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TimeCardEvent.create_from_discriminator_value(pn) }) },
                    "notes" => lambda {|n| @notes = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "start" => lambda {|n| @start = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TimeCardEvent.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the notes property value. Notes about the timeCardBreak.
            ## @return a item_body
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes about the timeCardBreak.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("breakId", @break_id)
                writer.write_object_value("end", @end_escaped)
                writer.write_object_value("notes", @notes)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("start", @start)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the start property value. The start property
            ## @return a time_card_event
            ## 
            def start
                return @start
            end
            ## 
            ## Sets the start property value. The start property
            ## @param value Value to set for the start property.
            ## @return a void
            ## 
            def start=(value)
                @start = value
            end
        end
    end
end
