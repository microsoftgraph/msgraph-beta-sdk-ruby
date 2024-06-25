require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a booking customer or staff member.
        class BookingPerson < MicrosoftGraphBeta::Models::BookingNamedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The email address of the person.
            @email_address
            ## 
            ## Instantiates a new BookingPerson and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.bookingPerson"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a booking_person
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.bookingCustomer"
                            return BookingCustomer.new
                        when "#microsoft.graph.bookingStaffMember"
                            return BookingStaffMember.new
                    end
                end
                return BookingPerson.new
            end
            ## 
            ## Gets the emailAddress property value. The email address of the person.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. The email address of the person.
            ## @param value Value to set for the emailAddress property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
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
                writer.write_string_value("emailAddress", @email_address)
            end
        end
    end
end
