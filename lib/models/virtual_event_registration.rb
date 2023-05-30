require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualEventRegistration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The capacity property
            @capacity
            ## 
            # The questions property
            @questions
            ## 
            # The registrants property
            @registrants
            ## 
            # The registrationWebUrl property
            @registration_web_url
            ## 
            ## Gets the capacity property value. The capacity property
            ## @return a integer
            ## 
            def capacity
                return @capacity
            end
            ## 
            ## Sets the capacity property value. The capacity property
            ## @param value Value to set for the capacity property.
            ## @return a void
            ## 
            def capacity=(value)
                @capacity = value
            end
            ## 
            ## Instantiates a new virtualEventRegistration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventRegistration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "capacity" => lambda {|n| @capacity = n.get_number_value() },
                    "questions" => lambda {|n| @questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventRegistrationQuestion.create_from_discriminator_value(pn) }) },
                    "registrants" => lambda {|n| @registrants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventRegistrant.create_from_discriminator_value(pn) }) },
                    "registrationWebUrl" => lambda {|n| @registration_web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the questions property value. The questions property
            ## @return a virtual_event_registration_question
            ## 
            def questions
                return @questions
            end
            ## 
            ## Sets the questions property value. The questions property
            ## @param value Value to set for the questions property.
            ## @return a void
            ## 
            def questions=(value)
                @questions = value
            end
            ## 
            ## Gets the registrants property value. The registrants property
            ## @return a virtual_event_registrant
            ## 
            def registrants
                return @registrants
            end
            ## 
            ## Sets the registrants property value. The registrants property
            ## @param value Value to set for the registrants property.
            ## @return a void
            ## 
            def registrants=(value)
                @registrants = value
            end
            ## 
            ## Gets the registrationWebUrl property value. The registrationWebUrl property
            ## @return a string
            ## 
            def registration_web_url
                return @registration_web_url
            end
            ## 
            ## Sets the registrationWebUrl property value. The registrationWebUrl property
            ## @param value Value to set for the registration_web_url property.
            ## @return a void
            ## 
            def registration_web_url=(value)
                @registration_web_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("capacity", @capacity)
                writer.write_collection_of_object_values("questions", @questions)
                writer.write_collection_of_object_values("registrants", @registrants)
                writer.write_string_value("registrationWebUrl", @registration_web_url)
            end
        end
    end
end
