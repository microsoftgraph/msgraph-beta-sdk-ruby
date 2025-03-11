require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Mailbox < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of folders in the mailbox.
            @folders
            ## 
            ## Instantiates a new Mailbox and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mailbox"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mailbox
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Mailbox.new
            end
            ## 
            ## Gets the folders property value. The collection of folders in the mailbox.
            ## @return a mailbox_folder
            ## 
            def folders
                return @folders
            end
            ## 
            ## Sets the folders property value. The collection of folders in the mailbox.
            ## @param value Value to set for the folders property.
            ## @return a void
            ## 
            def folders=(value)
                @folders = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "folders" => lambda {|n| @folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MailboxFolder.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("folders", @folders)
            end
        end
    end
end
