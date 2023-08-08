require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CommentAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If true, this activity was a reply to an existing comment thread.
            @is_reply
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The identity of the user who started the comment thread.
            @parent_author
            ## 
            # The identities of the users participating in this comment thread.
            @participants
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
            ## Instantiates a new commentAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a comment_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CommentAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isReply" => lambda {|n| @is_reply = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "parentAuthor" => lambda {|n| @parent_author = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "participants" => lambda {|n| @participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isReply property value. If true, this activity was a reply to an existing comment thread.
            ## @return a boolean
            ## 
            def is_reply
                return @is_reply
            end
            ## 
            ## Sets the isReply property value. If true, this activity was a reply to an existing comment thread.
            ## @param value Value to set for the isReply property.
            ## @return a void
            ## 
            def is_reply=(value)
                @is_reply = value
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
            ## Gets the parentAuthor property value. The identity of the user who started the comment thread.
            ## @return a identity_set
            ## 
            def parent_author
                return @parent_author
            end
            ## 
            ## Sets the parentAuthor property value. The identity of the user who started the comment thread.
            ## @param value Value to set for the parentAuthor property.
            ## @return a void
            ## 
            def parent_author=(value)
                @parent_author = value
            end
            ## 
            ## Gets the participants property value. The identities of the users participating in this comment thread.
            ## @return a identity_set
            ## 
            def participants
                return @participants
            end
            ## 
            ## Sets the participants property value. The identities of the users participating in this comment thread.
            ## @param value Value to set for the participants property.
            ## @return a void
            ## 
            def participants=(value)
                @participants = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isReply", @is_reply)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("parentAuthor", @parent_author)
                writer.write_collection_of_object_values("participants", @participants)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
