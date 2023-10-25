require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualEventSession < MicrosoftGraphBeta::Models::OnlineMeeting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Registration records of this virtual event session.
            @registrations
            ## 
            ## Instantiates a new virtualEventSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventSession.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "registrations" => lambda {|n| @registrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventRegistration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the registrations property value. Registration records of this virtual event session.
            ## @return a virtual_event_registration
            ## 
            def registrations
                return @registrations
            end
            ## 
            ## Sets the registrations property value. Registration records of this virtual event session.
            ## @param value Value to set for the registrations property.
            ## @return a void
            ## 
            def registrations=(value)
                @registrations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("registrations", @registrations)
            end
        end
    end
end
