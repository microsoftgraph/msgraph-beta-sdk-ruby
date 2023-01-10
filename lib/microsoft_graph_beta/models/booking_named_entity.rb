require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class BookingNamedEntity < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # A name for the derived entity, which interfaces with customers.
        @display_name
        ## 
        ## Instantiates a new BookingNamedEntity and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a booking_named_entity
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.bookingBusiness"
                        return BookingBusiness.new
                    when "#microsoft.graph.bookingCustomer"
                        return BookingCustomer.new
                    when "#microsoft.graph.bookingPerson"
                        return BookingPerson.new
                    when "#microsoft.graph.bookingService"
                        return BookingService.new
                    when "#microsoft.graph.bookingStaffMember"
                        return BookingStaffMember.new
                end
            end
            return BookingNamedEntity.new
        end
        ## 
        ## Gets the displayName property value. A name for the derived entity, which interfaces with customers.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. A name for the derived entity, which interfaces with customers.
        ## @param value Value to set for the displayName property.
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
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
            writer.write_string_value("displayName", @display_name)
        end
    end
end
