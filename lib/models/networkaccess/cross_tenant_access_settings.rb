require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class CrossTenantAccessSettings < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The networkPacketTaggingStatus property
                @network_packet_tagging_status
                ## 
                ## Instantiates a new crossTenantAccessSettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a cross_tenant_access_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CrossTenantAccessSettings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "networkPacketTaggingStatus" => lambda {|n| @network_packet_tagging_status = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::Status) },
                    })
                end
                ## 
                ## Gets the networkPacketTaggingStatus property value. The networkPacketTaggingStatus property
                ## @return a status
                ## 
                def network_packet_tagging_status
                    return @network_packet_tagging_status
                end
                ## 
                ## Sets the networkPacketTaggingStatus property value. The networkPacketTaggingStatus property
                ## @param value Value to set for the networkPacketTaggingStatus property.
                ## @return a void
                ## 
                def network_packet_tagging_status=(value)
                    @network_packet_tagging_status = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_enum_value("networkPacketTaggingStatus", @network_packet_tagging_status)
                end
            end
        end
    end
end
