require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CountryRegion < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The addressFormat property
        @address_format
        ## 
        # The code property
        @code
        ## 
        # The displayName property
        @display_name
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        ## Gets the addressFormat property value. The addressFormat property
        ## @return a string
        ## 
        def address_format
            return @address_format
        end
        ## 
        ## Sets the addressFormat property value. The addressFormat property
        ## @param value Value to set for the addressFormat property.
        ## @return a void
        ## 
        def address_format=(value)
            @address_format = value
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
        ## Instantiates a new countryRegion and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a country_region
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CountryRegion.new
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
                "addressFormat" => lambda {|n| @address_format = n.get_string_value() },
                "code" => lambda {|n| @code = n.get_string_value() },
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
        ## @param value Value to set for the lastModifiedDateTime property.
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
            writer.write_string_value("addressFormat", @address_format)
            writer.write_string_value("code", @code)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
        end
    end
end
