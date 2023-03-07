require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Vendor < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The address property
            @address
            ## 
            # The balance property
            @balance
            ## 
            # The blocked property
            @blocked
            ## 
            # The currency property
            @currency
            ## 
            # The currencyCode property
            @currency_code
            ## 
            # The currencyId property
            @currency_id
            ## 
            # The displayName property
            @display_name
            ## 
            # The email property
            @email
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The number property
            @number
            ## 
            # The paymentMethod property
            @payment_method
            ## 
            # The paymentMethodId property
            @payment_method_id
            ## 
            # The paymentTerm property
            @payment_term
            ## 
            # The paymentTermsId property
            @payment_terms_id
            ## 
            # The phoneNumber property
            @phone_number
            ## 
            # The picture property
            @picture
            ## 
            # The taxLiable property
            @tax_liable
            ## 
            # The taxRegistrationNumber property
            @tax_registration_number
            ## 
            # The website property
            @website
            ## 
            ## Gets the address property value. The address property
            ## @return a postal_address_type
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The address property
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the balance property value. The balance property
            ## @return a decimal
            ## 
            def balance
                return @balance
            end
            ## 
            ## Sets the balance property value. The balance property
            ## @param value Value to set for the balance property.
            ## @return a void
            ## 
            def balance=(value)
                @balance = value
            end
            ## 
            ## Gets the blocked property value. The blocked property
            ## @return a string
            ## 
            def blocked
                return @blocked
            end
            ## 
            ## Sets the blocked property value. The blocked property
            ## @param value Value to set for the blocked property.
            ## @return a void
            ## 
            def blocked=(value)
                @blocked = value
            end
            ## 
            ## Instantiates a new vendor and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a vendor
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Vendor.new
            end
            ## 
            ## Gets the currency property value. The currency property
            ## @return a currency
            ## 
            def currency
                return @currency
            end
            ## 
            ## Sets the currency property value. The currency property
            ## @param value Value to set for the currency property.
            ## @return a void
            ## 
            def currency=(value)
                @currency = value
            end
            ## 
            ## Gets the currencyCode property value. The currencyCode property
            ## @return a string
            ## 
            def currency_code
                return @currency_code
            end
            ## 
            ## Sets the currencyCode property value. The currencyCode property
            ## @param value Value to set for the currency_code property.
            ## @return a void
            ## 
            def currency_code=(value)
                @currency_code = value
            end
            ## 
            ## Gets the currencyId property value. The currencyId property
            ## @return a guid
            ## 
            def currency_id
                return @currency_id
            end
            ## 
            ## Sets the currencyId property value. The currencyId property
            ## @param value Value to set for the currency_id property.
            ## @return a void
            ## 
            def currency_id=(value)
                @currency_id = value
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
            ## Gets the email property value. The email property
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email property
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                    "balance" => lambda {|n| @balance = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "blocked" => lambda {|n| @blocked = n.get_string_value() },
                    "currency" => lambda {|n| @currency = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Currency.create_from_discriminator_value(pn) }) },
                    "currencyCode" => lambda {|n| @currency_code = n.get_string_value() },
                    "currencyId" => lambda {|n| @currency_id = n.get_guid_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "number" => lambda {|n| @number = n.get_string_value() },
                    "paymentMethod" => lambda {|n| @payment_method = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PaymentMethod.create_from_discriminator_value(pn) }) },
                    "paymentMethodId" => lambda {|n| @payment_method_id = n.get_guid_value() },
                    "paymentTerm" => lambda {|n| @payment_term = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PaymentTerm.create_from_discriminator_value(pn) }) },
                    "paymentTermsId" => lambda {|n| @payment_terms_id = n.get_guid_value() },
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "picture" => lambda {|n| @picture = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Picture.create_from_discriminator_value(pn) }) },
                    "taxLiable" => lambda {|n| @tax_liable = n.get_boolean_value() },
                    "taxRegistrationNumber" => lambda {|n| @tax_registration_number = n.get_string_value() },
                    "website" => lambda {|n| @website = n.get_string_value() },
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
            ## Gets the number property value. The number property
            ## @return a string
            ## 
            def number
                return @number
            end
            ## 
            ## Sets the number property value. The number property
            ## @param value Value to set for the number property.
            ## @return a void
            ## 
            def number=(value)
                @number = value
            end
            ## 
            ## Gets the paymentMethod property value. The paymentMethod property
            ## @return a payment_method
            ## 
            def payment_method
                return @payment_method
            end
            ## 
            ## Sets the paymentMethod property value. The paymentMethod property
            ## @param value Value to set for the payment_method property.
            ## @return a void
            ## 
            def payment_method=(value)
                @payment_method = value
            end
            ## 
            ## Gets the paymentMethodId property value. The paymentMethodId property
            ## @return a guid
            ## 
            def payment_method_id
                return @payment_method_id
            end
            ## 
            ## Sets the paymentMethodId property value. The paymentMethodId property
            ## @param value Value to set for the payment_method_id property.
            ## @return a void
            ## 
            def payment_method_id=(value)
                @payment_method_id = value
            end
            ## 
            ## Gets the paymentTerm property value. The paymentTerm property
            ## @return a payment_term
            ## 
            def payment_term
                return @payment_term
            end
            ## 
            ## Sets the paymentTerm property value. The paymentTerm property
            ## @param value Value to set for the payment_term property.
            ## @return a void
            ## 
            def payment_term=(value)
                @payment_term = value
            end
            ## 
            ## Gets the paymentTermsId property value. The paymentTermsId property
            ## @return a guid
            ## 
            def payment_terms_id
                return @payment_terms_id
            end
            ## 
            ## Sets the paymentTermsId property value. The paymentTermsId property
            ## @param value Value to set for the payment_terms_id property.
            ## @return a void
            ## 
            def payment_terms_id=(value)
                @payment_terms_id = value
            end
            ## 
            ## Gets the phoneNumber property value. The phoneNumber property
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phoneNumber property value. The phoneNumber property
            ## @param value Value to set for the phone_number property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Gets the picture property value. The picture property
            ## @return a picture
            ## 
            def picture
                return @picture
            end
            ## 
            ## Sets the picture property value. The picture property
            ## @param value Value to set for the picture property.
            ## @return a void
            ## 
            def picture=(value)
                @picture = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("address", @address)
                writer.write_object_value("balance", @balance)
                writer.write_string_value("blocked", @blocked)
                writer.write_object_value("currency", @currency)
                writer.write_string_value("currencyCode", @currency_code)
                writer.write_guid_value("currencyId", @currency_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("number", @number)
                writer.write_object_value("paymentMethod", @payment_method)
                writer.write_guid_value("paymentMethodId", @payment_method_id)
                writer.write_object_value("paymentTerm", @payment_term)
                writer.write_guid_value("paymentTermsId", @payment_terms_id)
                writer.write_string_value("phoneNumber", @phone_number)
                writer.write_collection_of_object_values("picture", @picture)
                writer.write_boolean_value("taxLiable", @tax_liable)
                writer.write_string_value("taxRegistrationNumber", @tax_registration_number)
                writer.write_string_value("website", @website)
            end
            ## 
            ## Gets the taxLiable property value. The taxLiable property
            ## @return a boolean
            ## 
            def tax_liable
                return @tax_liable
            end
            ## 
            ## Sets the taxLiable property value. The taxLiable property
            ## @param value Value to set for the tax_liable property.
            ## @return a void
            ## 
            def tax_liable=(value)
                @tax_liable = value
            end
            ## 
            ## Gets the taxRegistrationNumber property value. The taxRegistrationNumber property
            ## @return a string
            ## 
            def tax_registration_number
                return @tax_registration_number
            end
            ## 
            ## Sets the taxRegistrationNumber property value. The taxRegistrationNumber property
            ## @param value Value to set for the tax_registration_number property.
            ## @return a void
            ## 
            def tax_registration_number=(value)
                @tax_registration_number = value
            end
            ## 
            ## Gets the website property value. The website property
            ## @return a string
            ## 
            def website
                return @website
            end
            ## 
            ## Sets the website property value. The website property
            ## @param value Value to set for the website property.
            ## @return a void
            ## 
            def website=(value)
                @website = value
            end
        end
    end
end
