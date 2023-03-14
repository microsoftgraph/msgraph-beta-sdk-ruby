require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Note < MicrosoftGraphBeta::Models::OutlookItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The attachments property
            @attachments
            ## 
            # The body property
            @body
            ## 
            # The extensions property
            @extensions
            ## 
            # The hasAttachments property
            @has_attachments
            ## 
            # The isDeleted property
            @is_deleted
            ## 
            # The multiValueExtendedProperties property
            @multi_value_extended_properties
            ## 
            # The singleValueExtendedProperties property
            @single_value_extended_properties
            ## 
            # The subject property
            @subject
            ## 
            ## Gets the attachments property value. The attachments property
            ## @return a attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. The attachments property
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the body property value. The body property
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The body property
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Instantiates a new Note and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.note"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a note
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Note.new
            end
            ## 
            ## Gets the extensions property value. The extensions property
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The extensions property
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Attachment.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Extension.create_from_discriminator_value(pn) }) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "isDeleted" => lambda {|n| @is_deleted = n.get_boolean_value() },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hasAttachments property value. The hasAttachments property
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. The hasAttachments property
            ## @param value Value to set for the has_attachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the isDeleted property value. The isDeleted property
            ## @return a boolean
            ## 
            def is_deleted
                return @is_deleted
            end
            ## 
            ## Sets the isDeleted property value. The isDeleted property
            ## @param value Value to set for the is_deleted property.
            ## @return a void
            ## 
            def is_deleted=(value)
                @is_deleted = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The multiValueExtendedProperties property
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The multiValueExtendedProperties property
            ## @param value Value to set for the multi_value_extended_properties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_object_value("body", @body)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_boolean_value("isDeleted", @is_deleted)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
                writer.write_string_value("subject", @subject)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The singleValueExtendedProperties property
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The singleValueExtendedProperties property
            ## @param value Value to set for the single_value_extended_properties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end
