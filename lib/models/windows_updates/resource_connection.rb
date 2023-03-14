require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class ResourceConnection < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The state of the connection. The possible values are: connected, notAuthorized, notFound, unknownFutureValue.
                @state
                ## 
                ## Instantiates a new resourceConnection and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a resource_connection
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.windowsUpdates.operationalInsightsConnection"
                                return OperationalInsightsConnection.new
                        end
                    end
                    return ResourceConnection.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::ResourceConnectionState) },
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
                    writer.write_enum_value("state", @state)
                end
                ## 
                ## Gets the state property value. The state of the connection. The possible values are: connected, notAuthorized, notFound, unknownFutureValue.
                ## @return a resource_connection_state
                ## 
                def state
                    return @state
                end
                ## 
                ## Sets the state property value. The state of the connection. The possible values are: connected, notAuthorized, notFound, unknownFutureValue.
                ## @param value Value to set for the state property.
                ## @return a void
                ## 
                def state=(value)
                    @state = value
                end
            end
        end
    end
end
