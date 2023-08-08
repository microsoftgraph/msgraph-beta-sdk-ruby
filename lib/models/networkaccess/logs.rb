require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class Logs < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Represents a collection of log entries in the network access traffic log.
                @traffic
                ## 
                ## Instantiates a new logs and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a logs
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Logs.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "traffic" => lambda {|n| @traffic = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::NetworkAccessTraffic.create_from_discriminator_value(pn) }) },
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
                    writer.write_collection_of_object_values("traffic", @traffic)
                end
                ## 
                ## Gets the traffic property value. Represents a collection of log entries in the network access traffic log.
                ## @return a network_access_traffic
                ## 
                def traffic
                    return @traffic
                end
                ## 
                ## Sets the traffic property value. Represents a collection of log entries in the network access traffic log.
                ## @param value Value to set for the traffic property.
                ## @return a void
                ## 
                def traffic=(value)
                    @traffic = value
                end
            end
        end
    end
end
