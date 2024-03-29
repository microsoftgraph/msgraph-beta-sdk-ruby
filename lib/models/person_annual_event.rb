require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PersonAnnualEvent < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date property
            @date
            ## 
            # The displayName property
            @display_name
            ## 
            # The type property
            @type
            ## 
            ## Instantiates a new personAnnualEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.personAnnualEvent"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a person_annual_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PersonAnnualEvent.new
            end
            ## 
            ## Gets the date property value. The date property
            ## @return a date
            ## 
            def date
                return @date
            end
            ## 
            ## Sets the date property value. The date property
            ## @param value Value to set for the date property.
            ## @return a void
            ## 
            def date=(value)
                @date = value
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
                    "date" => lambda {|n| @date = n.get_date_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::PersonAnnualEventType) },
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
                writer.write_date_value("date", @date)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a person_annual_event_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
