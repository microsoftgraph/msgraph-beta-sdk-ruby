require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Account < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The blocked property
        @blocked
        ## 
        # The category property
        @category
        ## 
        # The displayName property
        @display_name
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        # The number property
        @number
        ## 
        # The subCategory property
        @sub_category
        ## 
        ## Gets the blocked property value. The blocked property
        ## @return a boolean
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
        ## Gets the category property value. The category property
        ## @return a string
        ## 
        def category
            return @category
        end
        ## 
        ## Sets the category property value. The category property
        ## @param value Value to set for the category property.
        ## @return a void
        ## 
        def category=(value)
            @category = value
        end
        ## 
        ## Instantiates a new account and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a account
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Account.new
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
                "blocked" => lambda {|n| @blocked = n.get_boolean_value() },
                "category" => lambda {|n| @category = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "number" => lambda {|n| @number = n.get_string_value() },
                "subCategory" => lambda {|n| @sub_category = n.get_string_value() },
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("blocked", @blocked)
            writer.write_string_value("category", @category)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("number", @number)
            writer.write_string_value("subCategory", @sub_category)
        end
        ## 
        ## Gets the subCategory property value. The subCategory property
        ## @return a string
        ## 
        def sub_category
            return @sub_category
        end
        ## 
        ## Sets the subCategory property value. The subCategory property
        ## @param value Value to set for the subCategory property.
        ## @return a void
        ## 
        def sub_category=(value)
            @sub_category = value
        end
    end
end
