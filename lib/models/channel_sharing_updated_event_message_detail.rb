require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ChannelSharingUpdatedEventMessageDetail < MicrosoftGraphBeta::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Initiator of the event.
            @initiator
            ## 
            # The ID of the team to which the shared channel belongs.
            @owner_team_id
            ## 
            # The ID of the tenant to which the shared channel belongs.
            @owner_tenant_id
            ## 
            # The ID of the shared channel.
            @shared_channel_id
            ## 
            ## Instantiates a new channelSharingUpdatedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.channelSharingUpdatedEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a channel_sharing_updated_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChannelSharingUpdatedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "ownerTeamId" => lambda {|n| @owner_team_id = n.get_string_value() },
                    "ownerTenantId" => lambda {|n| @owner_tenant_id = n.get_string_value() },
                    "sharedChannelId" => lambda {|n| @shared_channel_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the initiator property value. Initiator of the event.
            ## @return a identity_set
            ## 
            def initiator
                return @initiator
            end
            ## 
            ## Sets the initiator property value. Initiator of the event.
            ## @param value Value to set for the initiator property.
            ## @return a void
            ## 
            def initiator=(value)
                @initiator = value
            end
            ## 
            ## Gets the ownerTeamId property value. The ID of the team to which the shared channel belongs.
            ## @return a string
            ## 
            def owner_team_id
                return @owner_team_id
            end
            ## 
            ## Sets the ownerTeamId property value. The ID of the team to which the shared channel belongs.
            ## @param value Value to set for the ownerTeamId property.
            ## @return a void
            ## 
            def owner_team_id=(value)
                @owner_team_id = value
            end
            ## 
            ## Gets the ownerTenantId property value. The ID of the tenant to which the shared channel belongs.
            ## @return a string
            ## 
            def owner_tenant_id
                return @owner_tenant_id
            end
            ## 
            ## Sets the ownerTenantId property value. The ID of the tenant to which the shared channel belongs.
            ## @param value Value to set for the ownerTenantId property.
            ## @return a void
            ## 
            def owner_tenant_id=(value)
                @owner_tenant_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("initiator", @initiator)
                writer.write_string_value("ownerTeamId", @owner_team_id)
                writer.write_string_value("ownerTenantId", @owner_tenant_id)
                writer.write_string_value("sharedChannelId", @shared_channel_id)
            end
            ## 
            ## Gets the sharedChannelId property value. The ID of the shared channel.
            ## @return a string
            ## 
            def shared_channel_id
                return @shared_channel_id
            end
            ## 
            ## Sets the sharedChannelId property value. The ID of the shared channel.
            ## @param value Value to set for the sharedChannelId property.
            ## @return a void
            ## 
            def shared_channel_id=(value)
                @shared_channel_id = value
            end
        end
    end
end
