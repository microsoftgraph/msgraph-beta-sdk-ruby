require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AllowedDataLocation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appId property
            @app_id
            ## 
            # The domain property
            @domain
            ## 
            # The isDefault property
            @is_default
            ## 
            # The location property
            @location
            ## 
            ## Gets the appId property value. The appId property
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The appId property
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new allowedDataLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a allowed_data_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AllowedDataLocation.new
            end
            ## 
            ## Gets the domain property value. The domain property
            ## @return a string
            ## 
            def domain
                return @domain
            end
            ## 
            ## Sets the domain property value. The domain property
            ## @param value Value to set for the domain property.
            ## @return a void
            ## 
            def domain=(value)
                @domain = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "domain" => lambda {|n| @domain = n.get_string_value() },
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "location" => lambda {|n| @location = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefault property value. The isDefault property
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. The isDefault property
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the location property value. The location property
            ## @return a string
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The location property
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("domain", @domain)
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_string_value("location", @location)
            end
        end
    end
end
