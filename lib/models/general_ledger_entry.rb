require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GeneralLedgerEntry < MicrosoftGraphBeta::Models::Entity
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
            # The creditAmount property
            @credit_amount
            ## 
            # The debitAmount property
            @debit_amount
            ## 
            # The description property
            @description
            ## 
            # The documentNumber property
            @document_number
            ## 
            # The documentType property
            @document_type
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
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
            ## @param value Value to set for the account_id property.
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
            ## @param value Value to set for the account_number property.
            ## @return a void
            ## 
            def account_number=(value)
                @account_number = value
            end
            ## 
            ## Instantiates a new generalLedgerEntry and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a general_ledger_entry
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GeneralLedgerEntry.new
            end
            ## 
            ## Gets the creditAmount property value. The creditAmount property
            ## @return a decimal
            ## 
            def credit_amount
                return @credit_amount
            end
            ## 
            ## Sets the creditAmount property value. The creditAmount property
            ## @param value Value to set for the credit_amount property.
            ## @return a void
            ## 
            def credit_amount=(value)
                @credit_amount = value
            end
            ## 
            ## Gets the debitAmount property value. The debitAmount property
            ## @return a decimal
            ## 
            def debit_amount
                return @debit_amount
            end
            ## 
            ## Sets the debitAmount property value. The debitAmount property
            ## @param value Value to set for the debit_amount property.
            ## @return a void
            ## 
            def debit_amount=(value)
                @debit_amount = value
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
            ## @param value Value to set for the document_number property.
            ## @return a void
            ## 
            def document_number=(value)
                @document_number = value
            end
            ## 
            ## Gets the documentType property value. The documentType property
            ## @return a string
            ## 
            def document_type
                return @document_type
            end
            ## 
            ## Sets the documentType property value. The documentType property
            ## @param value Value to set for the document_type property.
            ## @return a void
            ## 
            def document_type=(value)
                @document_type = value
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
                    "creditAmount" => lambda {|n| @credit_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "debitAmount" => lambda {|n| @debit_amount = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "documentNumber" => lambda {|n| @document_number = n.get_string_value() },
                    "documentType" => lambda {|n| @document_type = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "postingDate" => lambda {|n| @posting_date = n.get_date_value() },
                })
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
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
            ## @param value Value to set for the posting_date property.
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
                writer.write_object_value("creditAmount", @credit_amount)
                writer.write_object_value("debitAmount", @debit_amount)
                writer.write_string_value("description", @description)
                writer.write_string_value("documentNumber", @document_number)
                writer.write_string_value("documentType", @document_type)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_value("postingDate", @posting_date)
            end
        end
    end
end
