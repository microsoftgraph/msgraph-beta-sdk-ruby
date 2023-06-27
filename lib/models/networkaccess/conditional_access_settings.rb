require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class ConditionalAccessSettings < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The signalingStatus property
                @signaling_status
                ## 
                ## Instantiates a new conditionalAccessSettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a conditional_access_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ConditionalAccessSettings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "signalingStatus" => lambda {|n| @signaling_status = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::Status) },
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
                    writer.write_enum_value("signalingStatus", @signaling_status)
                end
                ## 
                ## Gets the signalingStatus property value. The signalingStatus property
                ## @return a status
                ## 
                def signaling_status
                    return @signaling_status
                end
                ## 
                ## Sets the signalingStatus property value. The signalingStatus property
                ## @param value Value to set for the signaling_status property.
                ## @return a void
                ## 
                def signaling_status=(value)
                    @signaling_status = value
                end
            end
        end
    end
end
