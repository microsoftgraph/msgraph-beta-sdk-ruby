require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # SideLoadingKey entity is required for Windows 8 and 8.1 devices to intall Line Of Business Apps for a tenant.
    class SideLoadingKey < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Side Loading Key description displayed to the ITPro Admins..
        @description
        ## 
        # Side Loading Key Name displayed to the ITPro Admins.
        @display_name
        ## 
        # Side Loading Key Last Updated Date displayed to the ITPro Admins.
        @last_updated_date_time
        ## 
        # Side Loading Key Total Activation displayed to the ITPro Admins.
        @total_activation
        ## 
        # Side Loading Key Value, it is 5x5 value, seperated by hiphens.
        @value
        ## 
        ## Instantiates a new sideLoadingKey and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a side_loading_key
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SideLoadingKey.new
        end
        ## 
        ## Gets the description property value. Side Loading Key description displayed to the ITPro Admins..
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Side Loading Key description displayed to the ITPro Admins..
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Side Loading Key Name displayed to the ITPro Admins.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Side Loading Key Name displayed to the ITPro Admins.
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
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_string_value() },
                "totalActivation" => lambda {|n| @total_activation = n.get_number_value() },
                "value" => lambda {|n| @value = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastUpdatedDateTime property value. Side Loading Key Last Updated Date displayed to the ITPro Admins.
        ## @return a string
        ## 
        def last_updated_date_time
            return @last_updated_date_time
        end
        ## 
        ## Sets the lastUpdatedDateTime property value. Side Loading Key Last Updated Date displayed to the ITPro Admins.
        ## @param value Value to set for the lastUpdatedDateTime property.
        ## @return a void
        ## 
        def last_updated_date_time=(value)
            @last_updated_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("lastUpdatedDateTime", @last_updated_date_time)
            writer.write_number_value("totalActivation", @total_activation)
            writer.write_string_value("value", @value)
        end
        ## 
        ## Gets the totalActivation property value. Side Loading Key Total Activation displayed to the ITPro Admins.
        ## @return a integer
        ## 
        def total_activation
            return @total_activation
        end
        ## 
        ## Sets the totalActivation property value. Side Loading Key Total Activation displayed to the ITPro Admins.
        ## @param value Value to set for the totalActivation property.
        ## @return a void
        ## 
        def total_activation=(value)
            @total_activation = value
        end
        ## 
        ## Gets the value property value. Side Loading Key Value, it is 5x5 value, seperated by hiphens.
        ## @return a string
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. Side Loading Key Value, it is 5x5 value, seperated by hiphens.
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
    end
end
