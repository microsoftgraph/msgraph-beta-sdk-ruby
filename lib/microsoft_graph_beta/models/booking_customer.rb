require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class BookingCustomer < MicrosoftGraphBeta::Models::BookingPerson
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Addresses associated with the customer, including home, business and other addresses.
        @addresses
        ## 
        # Phone numbers associated with the customer, including home, business and mobile numbers.
        @phones
        ## 
        ## Gets the addresses property value. Addresses associated with the customer, including home, business and other addresses.
        ## @return a physical_address
        ## 
        def addresses
            return @addresses
        end
        ## 
        ## Sets the addresses property value. Addresses associated with the customer, including home, business and other addresses.
        ## @param value Value to set for the addresses property.
        ## @return a void
        ## 
        def addresses=(value)
            @addresses = value
        end
        ## 
        ## Instantiates a new BookingCustomer and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a booking_customer
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return BookingCustomer.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "addresses" => lambda {|n| @addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                "phones" => lambda {|n| @phones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Phone.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the phones property value. Phone numbers associated with the customer, including home, business and mobile numbers.
        ## @return a phone
        ## 
        def phones
            return @phones
        end
        ## 
        ## Sets the phones property value. Phone numbers associated with the customer, including home, business and mobile numbers.
        ## @param value Value to set for the phones property.
        ## @return a void
        ## 
        def phones=(value)
            @phones = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("addresses", @addresses)
            writer.write_collection_of_object_values("phones", @phones)
        end
    end
end
