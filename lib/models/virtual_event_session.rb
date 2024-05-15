require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualEventSession < MicrosoftGraphBeta::Models::OnlineMeetingBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The endDateTime property
            @end_date_time
            ## 
            # The presenters property
            @presenters
            ## 
            # The registrations property
            @registrations
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            ## Instantiates a new VirtualEventSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.virtualEventSession"
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
            ## Gets the endDateTime property value. The endDateTime property
            ## @return a date_time_time_zone
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The endDateTime property
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "endDateTime" => lambda {|n| @end_date_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "presenters" => lambda {|n| @presenters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventPresenter.create_from_discriminator_value(pn) }) },
                    "registrations" => lambda {|n| @registrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventRegistration.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the presenters property value. The presenters property
            ## @return a virtual_event_presenter
            ## 
            def presenters
                return @presenters
            end
            ## 
            ## Sets the presenters property value. The presenters property
            ## @param value Value to set for the presenters property.
            ## @return a void
            ## 
            def presenters=(value)
                @presenters = value
            end
            ## 
            ## Gets the registrations property value. The registrations property
            ## @return a virtual_event_registration
            ## 
            def registrations
                return @registrations
            end
            ## 
            ## Sets the registrations property value. The registrations property
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
                writer.write_object_value("endDateTime", @end_date_time)
                writer.write_collection_of_object_values("presenters", @presenters)
                writer.write_collection_of_object_values("registrations", @registrations)
                writer.write_object_value("startDateTime", @start_date_time)
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time_time_zone
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The startDateTime property
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
        end
    end
end
