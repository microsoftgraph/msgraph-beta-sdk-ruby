require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CommsApplication
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The calls property
            @calls
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The onlineMeetings property
            @online_meetings
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
            ## Gets the calls property value. The calls property
            ## @return a call
            ## 
            def calls
                return @calls
            end
            ## 
            ## Sets the calls property value. The calls property
            ## @param value Value to set for the calls property.
            ## @return a void
            ## 
            def calls=(value)
                @calls = value
            end
            ## 
            ## Instantiates a new CommsApplication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a comms_application
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CommsApplication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "calls" => lambda {|n| @calls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Call.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onlineMeetings" => lambda {|n| @online_meetings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnlineMeeting.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the onlineMeetings property value. The onlineMeetings property
            ## @return a online_meeting
            ## 
            def online_meetings
                return @online_meetings
            end
            ## 
            ## Sets the onlineMeetings property value. The onlineMeetings property
            ## @param value Value to set for the online_meetings property.
            ## @return a void
            ## 
            def online_meetings=(value)
                @online_meetings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("calls", @calls)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("onlineMeetings", @online_meetings)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
