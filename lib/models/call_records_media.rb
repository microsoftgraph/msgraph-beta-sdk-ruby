require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallRecordsMedia
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Device information associated with the callee endpoint of this media.
            @callee_device
            ## 
            # Network information associated with the callee endpoint of this media.
            @callee_network
            ## 
            # Device information associated with the caller endpoint of this media.
            @caller_device
            ## 
            # Network information associated with the caller endpoint of this media.
            @caller_network
            ## 
            # How the media was identified during media negotiation stage.
            @label
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Network streams associated with this media.
            @streams
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
            ## Gets the calleeDevice property value. Device information associated with the callee endpoint of this media.
            ## @return a call_records_device_info
            ## 
            def callee_device
                return @callee_device
            end
            ## 
            ## Sets the calleeDevice property value. Device information associated with the callee endpoint of this media.
            ## @param value Value to set for the calleeDevice property.
            ## @return a void
            ## 
            def callee_device=(value)
                @callee_device = value
            end
            ## 
            ## Gets the calleeNetwork property value. Network information associated with the callee endpoint of this media.
            ## @return a call_records_network_info
            ## 
            def callee_network
                return @callee_network
            end
            ## 
            ## Sets the calleeNetwork property value. Network information associated with the callee endpoint of this media.
            ## @param value Value to set for the calleeNetwork property.
            ## @return a void
            ## 
            def callee_network=(value)
                @callee_network = value
            end
            ## 
            ## Gets the callerDevice property value. Device information associated with the caller endpoint of this media.
            ## @return a call_records_device_info
            ## 
            def caller_device
                return @caller_device
            end
            ## 
            ## Sets the callerDevice property value. Device information associated with the caller endpoint of this media.
            ## @param value Value to set for the callerDevice property.
            ## @return a void
            ## 
            def caller_device=(value)
                @caller_device = value
            end
            ## 
            ## Gets the callerNetwork property value. Network information associated with the caller endpoint of this media.
            ## @return a call_records_network_info
            ## 
            def caller_network
                return @caller_network
            end
            ## 
            ## Sets the callerNetwork property value. Network information associated with the caller endpoint of this media.
            ## @param value Value to set for the callerNetwork property.
            ## @return a void
            ## 
            def caller_network=(value)
                @caller_network = value
            end
            ## 
            ## Instantiates a new callRecordsMedia and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_media
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsMedia.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "calleeDevice" => lambda {|n| @callee_device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CallRecordsDeviceInfo.create_from_discriminator_value(pn) }) },
                    "calleeNetwork" => lambda {|n| @callee_network = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CallRecordsNetworkInfo.create_from_discriminator_value(pn) }) },
                    "callerDevice" => lambda {|n| @caller_device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CallRecordsDeviceInfo.create_from_discriminator_value(pn) }) },
                    "callerNetwork" => lambda {|n| @caller_network = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CallRecordsNetworkInfo.create_from_discriminator_value(pn) }) },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "streams" => lambda {|n| @streams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CallRecordsMediaStream.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the label property value. How the media was identified during media negotiation stage.
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. How the media was identified during media negotiation stage.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
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
                writer.write_object_value("calleeDevice", @callee_device)
                writer.write_object_value("calleeNetwork", @callee_network)
                writer.write_object_value("callerDevice", @caller_device)
                writer.write_object_value("callerNetwork", @caller_network)
                writer.write_string_value("label", @label)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("streams", @streams)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the streams property value. Network streams associated with this media.
            ## @return a call_records_media_stream
            ## 
            def streams
                return @streams
            end
            ## 
            ## Sets the streams property value. Network streams associated with this media.
            ## @param value Value to set for the streams property.
            ## @return a void
            ## 
            def streams=(value)
                @streams = value
            end
        end
    end
end
