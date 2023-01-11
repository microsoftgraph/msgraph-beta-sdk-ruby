require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Entity that stores the server log collection status.
    class MicrosoftTunnelServerLogCollectionResponse < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The end time of the logs collected
        @end_date_time
        ## 
        # The time when the log collection is expired
        @expiry_date_time
        ## 
        # The time when the log collection was requested
        @request_date_time
        ## 
        # ID of the server the log collection is requested upon
        @server_id
        ## 
        # The size of the logs in bytes
        @size_in_bytes
        ## 
        # The start time of the logs collected
        @start_date_time
        ## 
        # Enum type that represent the status of log collection
        @status
        ## 
        ## Instantiates a new microsoftTunnelServerLogCollectionResponse and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a microsoft_tunnel_server_log_collection_response
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MicrosoftTunnelServerLogCollectionResponse.new
        end
        ## 
        ## Gets the endDateTime property value. The end time of the logs collected
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. The end time of the logs collected
        ## @param value Value to set for the endDateTime property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## Gets the expiryDateTime property value. The time when the log collection is expired
        ## @return a date_time
        ## 
        def expiry_date_time
            return @expiry_date_time
        end
        ## 
        ## Sets the expiryDateTime property value. The time when the log collection is expired
        ## @param value Value to set for the expiryDateTime property.
        ## @return a void
        ## 
        def expiry_date_time=(value)
            @expiry_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                "expiryDateTime" => lambda {|n| @expiry_date_time = n.get_date_time_value() },
                "requestDateTime" => lambda {|n| @request_date_time = n.get_date_time_value() },
                "serverId" => lambda {|n| @server_id = n.get_string_value() },
                "sizeInBytes" => lambda {|n| @size_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::MicrosoftTunnelLogCollectionStatus) },
            })
        end
        ## 
        ## Gets the requestDateTime property value. The time when the log collection was requested
        ## @return a date_time
        ## 
        def request_date_time
            return @request_date_time
        end
        ## 
        ## Sets the requestDateTime property value. The time when the log collection was requested
        ## @param value Value to set for the requestDateTime property.
        ## @return a void
        ## 
        def request_date_time=(value)
            @request_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("endDateTime", @end_date_time)
            writer.write_date_time_value("expiryDateTime", @expiry_date_time)
            writer.write_date_time_value("requestDateTime", @request_date_time)
            writer.write_string_value("serverId", @server_id)
            writer.write_object_value("sizeInBytes", @size_in_bytes)
            writer.write_date_time_value("startDateTime", @start_date_time)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the serverId property value. ID of the server the log collection is requested upon
        ## @return a string
        ## 
        def server_id
            return @server_id
        end
        ## 
        ## Sets the serverId property value. ID of the server the log collection is requested upon
        ## @param value Value to set for the serverId property.
        ## @return a void
        ## 
        def server_id=(value)
            @server_id = value
        end
        ## 
        ## Gets the sizeInBytes property value. The size of the logs in bytes
        ## @return a int64
        ## 
        def size_in_bytes
            return @size_in_bytes
        end
        ## 
        ## Sets the sizeInBytes property value. The size of the logs in bytes
        ## @param value Value to set for the sizeInBytes property.
        ## @return a void
        ## 
        def size_in_bytes=(value)
            @size_in_bytes = value
        end
        ## 
        ## Gets the startDateTime property value. The start time of the logs collected
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. The start time of the logs collected
        ## @param value Value to set for the startDateTime property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
        ## 
        ## Gets the status property value. Enum type that represent the status of log collection
        ## @return a microsoft_tunnel_log_collection_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Enum type that represent the status of log collection
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
