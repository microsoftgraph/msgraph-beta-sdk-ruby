require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class JournalLine < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The account property
        @account
        ## 
        # The accountId property
        @account_id
        ## 
        # The accountNumber property
        @account_number
        ## 
        # The amount property
        @amount
        ## 
        # The comment property
        @comment
        ## 
        # The description property
        @description
        ## 
        # The documentNumber property
        @document_number
        ## 
        # The externalDocumentNumber property
        @external_document_number
        ## 
        # The journalDisplayName property
        @journal_display_name
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        # The lineNumber property
        @line_number
        ## 
        # The postingDate property
        @posting_date
        ## 
        ## Gets the account property value. The account property
        ## @return a account
        ## 
        def account
            return @account
        end
        ## 
        ## Sets the account property value. The account property
        ## @param value Value to set for the account property.
        ## @return a void
        ## 
        def account=(value)
            @account = value
        end
        ## 
        ## Gets the accountId property value. The accountId property
        ## @return a guid
        ## 
        def account_id
            return @account_id
        end
        ## 
        ## Sets the accountId property value. The accountId property
        ## @param value Value to set for the accountId property.
        ## @return a void
        ## 
        def account_id=(value)
            @account_id = value
        end
        ## 
        ## Gets the accountNumber property value. The accountNumber property
        ## @return a string
        ## 
        def account_number
            return @account_number
        end
        ## 
        ## Sets the accountNumber property value. The accountNumber property
        ## @param value Value to set for the accountNumber property.
        ## @return a void
        ## 
        def account_number=(value)
            @account_number = value
        end
        ## 
        ## Gets the amount property value. The amount property
        ## @return a decimal
        ## 
        def amount
            return @amount
        end
        ## 
        ## Sets the amount property value. The amount property
        ## @param value Value to set for the amount property.
        ## @return a void
        ## 
        def amount=(value)
            @amount = value
        end
        ## 
        ## Gets the comment property value. The comment property
        ## @return a string
        ## 
        def comment
            return @comment
        end
        ## 
        ## Sets the comment property value. The comment property
        ## @param value Value to set for the comment property.
        ## @return a void
        ## 
        def comment=(value)
            @comment = value
        end
        ## 
        ## Instantiates a new journalLine and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a journal_line
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return JournalLine.new
        end
        ## 
        ## Gets the description property value. The description property
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description property
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the documentNumber property value. The documentNumber property
        ## @return a string
        ## 
        def document_number
            return @document_number
        end
        ## 
        ## Sets the documentNumber property value. The documentNumber property
        ## @param value Value to set for the documentNumber property.
        ## @return a void
        ## 
        def document_number=(value)
            @document_number = value
        end
        ## 
        ## Gets the externalDocumentNumber property value. The externalDocumentNumber property
        ## @return a string
        ## 
        def external_document_number
            return @external_document_number
        end
        ## 
        ## Sets the externalDocumentNumber property value. The externalDocumentNumber property
        ## @param value Value to set for the externalDocumentNumber property.
        ## @return a void
        ## 
        def external_document_number=(value)
            @external_document_number = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "account" => lambda {|n| @account = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Account.create_from_discriminator_value(pn) }) },
                "accountId" => lambda {|n| @account_id = n.get_guid_value() },
                "accountNumber" => lambda {|n| @account_number = n.get_string_value() },
                "amount" => lambda {|n| @amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "comment" => lambda {|n| @comment = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "documentNumber" => lambda {|n| @document_number = n.get_string_value() },
                "externalDocumentNumber" => lambda {|n| @external_document_number = n.get_string_value() },
                "journalDisplayName" => lambda {|n| @journal_display_name = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "lineNumber" => lambda {|n| @line_number = n.get_number_value() },
                "postingDate" => lambda {|n| @posting_date = n.get_date_value() },
            })
        end
        ## 
        ## Gets the journalDisplayName property value. The journalDisplayName property
        ## @return a string
        ## 
        def journal_display_name
            return @journal_display_name
        end
        ## 
        ## Sets the journalDisplayName property value. The journalDisplayName property
        ## @param value Value to set for the journalDisplayName property.
        ## @return a void
        ## 
        def journal_display_name=(value)
            @journal_display_name = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the lineNumber property value. The lineNumber property
        ## @return a integer
        ## 
        def line_number
            return @line_number
        end
        ## 
        ## Sets the lineNumber property value. The lineNumber property
        ## @param value Value to set for the lineNumber property.
        ## @return a void
        ## 
        def line_number=(value)
            @line_number = value
        end
        ## 
        ## Gets the postingDate property value. The postingDate property
        ## @return a date
        ## 
        def posting_date
            return @posting_date
        end
        ## 
        ## Sets the postingDate property value. The postingDate property
        ## @param value Value to set for the postingDate property.
        ## @return a void
        ## 
        def posting_date=(value)
            @posting_date = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("account", @account)
            writer.write_guid_value("accountId", @account_id)
            writer.write_string_value("accountNumber", @account_number)
            writer.write_object_value("amount", @amount)
            writer.write_string_value("comment", @comment)
            writer.write_string_value("description", @description)
            writer.write_string_value("documentNumber", @document_number)
            writer.write_string_value("externalDocumentNumber", @external_document_number)
            writer.write_string_value("journalDisplayName", @journal_display_name)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_number_value("lineNumber", @line_number)
            writer.write_date_value("postingDate", @posting_date)
        end
    end
end
