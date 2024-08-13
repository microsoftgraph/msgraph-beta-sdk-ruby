require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExchangeRestoreSession < MicrosoftGraphBeta::Models::RestoreSessionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of restore points and destination details that can be used to restore Exchange mailboxes.
            @mailbox_restore_artifacts
            ## 
            ## Instantiates a new ExchangeRestoreSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.exchangeRestoreSession"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exchange_restore_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExchangeRestoreSession.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mailboxRestoreArtifacts" => lambda {|n| @mailbox_restore_artifacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MailboxRestoreArtifact.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the mailboxRestoreArtifacts property value. A collection of restore points and destination details that can be used to restore Exchange mailboxes.
            ## @return a mailbox_restore_artifact
            ## 
            def mailbox_restore_artifacts
                return @mailbox_restore_artifacts
            end
            ## 
            ## Sets the mailboxRestoreArtifacts property value. A collection of restore points and destination details that can be used to restore Exchange mailboxes.
            ## @param value Value to set for the mailboxRestoreArtifacts property.
            ## @return a void
            ## 
            def mailbox_restore_artifacts=(value)
                @mailbox_restore_artifacts = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("mailboxRestoreArtifacts", @mailbox_restore_artifacts)
            end
        end
    end
end
