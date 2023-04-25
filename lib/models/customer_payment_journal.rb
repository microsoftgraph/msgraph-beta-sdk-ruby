require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomerPaymentJournal < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The account property
            @account
            ## 
            # The balancingAccountId property
            @balancing_account_id
            ## 
            # The balancingAccountNumber property
            @balancing_account_number
            ## 
            # The code property
            @code
            ## 
            # The customerPayments property
            @customer_payments
            ## 
            # The displayName property
            @display_name
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
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
            ## Gets the balancingAccountId property value. The balancingAccountId property
            ## @return a guid
            ## 
            def balancing_account_id
                return @balancing_account_id
            end
            ## 
            ## Sets the balancingAccountId property value. The balancingAccountId property
            ## @param value Value to set for the balancing_account_id property.
            ## @return a void
            ## 
            def balancing_account_id=(value)
                @balancing_account_id = value
            end
            ## 
            ## Gets the balancingAccountNumber property value. The balancingAccountNumber property
            ## @return a string
            ## 
            def balancing_account_number
                return @balancing_account_number
            end
            ## 
            ## Sets the balancingAccountNumber property value. The balancingAccountNumber property
            ## @param value Value to set for the balancing_account_number property.
            ## @return a void
            ## 
            def balancing_account_number=(value)
                @balancing_account_number = value
            end
            ## 
            ## Gets the code property value. The code property
            ## @return a string
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The code property
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new customerPaymentJournal and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a customer_payment_journal
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomerPaymentJournal.new
            end
            ## 
            ## Gets the customerPayments property value. The customerPayments property
            ## @return a customer_payment
            ## 
            def customer_payments
                return @customer_payments
            end
            ## 
            ## Sets the customerPayments property value. The customerPayments property
            ## @param value Value to set for the customer_payments property.
            ## @return a void
            ## 
            def customer_payments=(value)
                @customer_payments = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "account" => lambda {|n| @account = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Account.create_from_discriminator_value(pn) }) },
                    "balancingAccountId" => lambda {|n| @balancing_account_id = n.get_guid_value() },
                    "balancingAccountNumber" => lambda {|n| @balancing_account_number = n.get_string_value() },
                    "code" => lambda {|n| @code = n.get_string_value() },
                    "customerPayments" => lambda {|n| @customer_payments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomerPayment.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("account", @account)
                writer.write_guid_value("balancingAccountId", @balancing_account_id)
                writer.write_string_value("balancingAccountNumber", @balancing_account_number)
                writer.write_string_value("code", @code)
                writer.write_collection_of_object_values("customerPayments", @customer_payments)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            end
        end
    end
end
