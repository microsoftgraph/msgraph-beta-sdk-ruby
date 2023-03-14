require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UpdateWindow
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # End of a time window during which agents can receive updates
            @update_window_end_time
            ## 
            # Start of a time window during which agents can receive updates
            @update_window_start_time
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
            ## Instantiates a new updateWindow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a update_window
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UpdateWindow.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "updateWindowEndTime" => lambda {|n| @update_window_end_time = n.get_time_value() },
                    "updateWindowStartTime" => lambda {|n| @update_window_start_time = n.get_time_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_time_value("updateWindowEndTime", @update_window_end_time)
                writer.write_time_value("updateWindowStartTime", @update_window_start_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the updateWindowEndTime property value. End of a time window during which agents can receive updates
            ## @return a time
            ## 
            def update_window_end_time
                return @update_window_end_time
            end
            ## 
            ## Sets the updateWindowEndTime property value. End of a time window during which agents can receive updates
            ## @param value Value to set for the update_window_end_time property.
            ## @return a void
            ## 
            def update_window_end_time=(value)
                @update_window_end_time = value
            end
            ## 
            ## Gets the updateWindowStartTime property value. Start of a time window during which agents can receive updates
            ## @return a time
            ## 
            def update_window_start_time
                return @update_window_start_time
            end
            ## 
            ## Sets the updateWindowStartTime property value. Start of a time window during which agents can receive updates
            ## @param value Value to set for the update_window_start_time property.
            ## @return a void
            ## 
            def update_window_start_time=(value)
                @update_window_start_time = value
            end
        end
    end
end
