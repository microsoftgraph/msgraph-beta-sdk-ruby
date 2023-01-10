require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CustomerPayment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The amount property
        @amount
        ## 
        # The appliesToInvoiceId property
        @applies_to_invoice_id
        ## 
        # The appliesToInvoiceNumber property
        @applies_to_invoice_number
        ## 
        # The comment property
        @comment
        ## 
        # The contactId property
        @contact_id
        ## 
        # The customer property
        @customer
        ## 
        # The customerId property
        @customer_id
        ## 
        # The customerNumber property
        @customer_number
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
        ## Gets the appliesToInvoiceId property value. The appliesToInvoiceId property
        ## @return a guid
        ## 
        def applies_to_invoice_id
            return @applies_to_invoice_id
        end
        ## 
        ## Sets the appliesToInvoiceId property value. The appliesToInvoiceId property
        ## @param value Value to set for the appliesToInvoiceId property.
        ## @return a void
        ## 
        def applies_to_invoice_id=(value)
            @applies_to_invoice_id = value
        end
        ## 
        ## Gets the appliesToInvoiceNumber property value. The appliesToInvoiceNumber property
        ## @return a string
        ## 
        def applies_to_invoice_number
            return @applies_to_invoice_number
        end
        ## 
        ## Sets the appliesToInvoiceNumber property value. The appliesToInvoiceNumber property
        ## @param value Value to set for the appliesToInvoiceNumber property.
        ## @return a void
        ## 
        def applies_to_invoice_number=(value)
            @applies_to_invoice_number = value
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
        ## Instantiates a new customerPayment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the contactId property value. The contactId property
        ## @return a string
        ## 
        def contact_id
            return @contact_id
        end
        ## 
        ## Sets the contactId property value. The contactId property
        ## @param value Value to set for the contactId property.
        ## @return a void
        ## 
        def contact_id=(value)
            @contact_id = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a customer_payment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CustomerPayment.new
        end
        ## 
        ## Gets the customer property value. The customer property
        ## @return a customer
        ## 
        def customer
            return @customer
        end
        ## 
        ## Sets the customer property value. The customer property
        ## @param value Value to set for the customer property.
        ## @return a void
        ## 
        def customer=(value)
            @customer = value
        end
        ## 
        ## Gets the customerId property value. The customerId property
        ## @return a guid
        ## 
        def customer_id
            return @customer_id
        end
        ## 
        ## Sets the customerId property value. The customerId property
        ## @param value Value to set for the customerId property.
        ## @return a void
        ## 
        def customer_id=(value)
            @customer_id = value
        end
        ## 
        ## Gets the customerNumber property value. The customerNumber property
        ## @return a string
        ## 
        def customer_number
            return @customer_number
        end
        ## 
        ## Sets the customerNumber property value. The customerNumber property
        ## @param value Value to set for the customerNumber property.
        ## @return a void
        ## 
        def customer_number=(value)
            @customer_number = value
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
                "amount" => lambda {|n| @amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                "appliesToInvoiceId" => lambda {|n| @applies_to_invoice_id = n.get_guid_value() },
                "appliesToInvoiceNumber" => lambda {|n| @applies_to_invoice_number = n.get_string_value() },
                "comment" => lambda {|n| @comment = n.get_string_value() },
                "contactId" => lambda {|n| @contact_id = n.get_string_value() },
                "customer" => lambda {|n| @customer = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Customer.create_from_discriminator_value(pn) }) },
                "customerId" => lambda {|n| @customer_id = n.get_guid_value() },
                "customerNumber" => lambda {|n| @customer_number = n.get_string_value() },
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
            writer.write_object_value("amount", @amount)
            writer.write_guid_value("appliesToInvoiceId", @applies_to_invoice_id)
            writer.write_string_value("appliesToInvoiceNumber", @applies_to_invoice_number)
            writer.write_string_value("comment", @comment)
            writer.write_string_value("contactId", @contact_id)
            writer.write_object_value("customer", @customer)
            writer.write_guid_value("customerId", @customer_id)
            writer.write_string_value("customerNumber", @customer_number)
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
