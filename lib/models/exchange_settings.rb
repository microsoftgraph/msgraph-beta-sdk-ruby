require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExchangeSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for the user's in-place archive mailbox.
            @in_place_archive_mailbox_id
            ## 
            # The unique identifier for the user's primary mailbox.
            @primary_mailbox_id
            ## 
            ## Instantiates a new ExchangeSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exchange_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExchangeSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "inPlaceArchiveMailboxId" => lambda {|n| @in_place_archive_mailbox_id = n.get_string_value() },
                    "primaryMailboxId" => lambda {|n| @primary_mailbox_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the inPlaceArchiveMailboxId property value. The unique identifier for the user's in-place archive mailbox.
            ## @return a string
            ## 
            def in_place_archive_mailbox_id
                return @in_place_archive_mailbox_id
            end
            ## 
            ## Sets the inPlaceArchiveMailboxId property value. The unique identifier for the user's in-place archive mailbox.
            ## @param value Value to set for the inPlaceArchiveMailboxId property.
            ## @return a void
            ## 
            def in_place_archive_mailbox_id=(value)
                @in_place_archive_mailbox_id = value
            end
            ## 
            ## Gets the primaryMailboxId property value. The unique identifier for the user's primary mailbox.
            ## @return a string
            ## 
            def primary_mailbox_id
                return @primary_mailbox_id
            end
            ## 
            ## Sets the primaryMailboxId property value. The unique identifier for the user's primary mailbox.
            ## @param value Value to set for the primaryMailboxId property.
            ## @return a void
            ## 
            def primary_mailbox_id=(value)
                @primary_mailbox_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("inPlaceArchiveMailboxId", @in_place_archive_mailbox_id)
                writer.write_string_value("primaryMailboxId", @primary_mailbox_id)
            end
        end
    end
end
