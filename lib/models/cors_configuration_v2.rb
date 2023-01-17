require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CorsConfiguration_v2 < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The allowedHeaders property
        @allowed_headers
        ## 
        # The allowedMethods property
        @allowed_methods
        ## 
        # The allowedOrigins property
        @allowed_origins
        ## 
        # The maxAgeInSeconds property
        @max_age_in_seconds
        ## 
        # The resource property
        @resource
        ## 
        ## Gets the allowedHeaders property value. The allowedHeaders property
        ## @return a string
        ## 
        def allowed_headers
            return @allowed_headers
        end
        ## 
        ## Sets the allowedHeaders property value. The allowedHeaders property
        ## @param value Value to set for the allowedHeaders property.
        ## @return a void
        ## 
        def allowed_headers=(value)
            @allowed_headers = value
        end
        ## 
        ## Gets the allowedMethods property value. The allowedMethods property
        ## @return a string
        ## 
        def allowed_methods
            return @allowed_methods
        end
        ## 
        ## Sets the allowedMethods property value. The allowedMethods property
        ## @param value Value to set for the allowedMethods property.
        ## @return a void
        ## 
        def allowed_methods=(value)
            @allowed_methods = value
        end
        ## 
        ## Gets the allowedOrigins property value. The allowedOrigins property
        ## @return a string
        ## 
        def allowed_origins
            return @allowed_origins
        end
        ## 
        ## Sets the allowedOrigins property value. The allowedOrigins property
        ## @param value Value to set for the allowedOrigins property.
        ## @return a void
        ## 
        def allowed_origins=(value)
            @allowed_origins = value
        end
        ## 
        ## Instantiates a new corsConfiguration_v2 and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cors_configuration_v2
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CorsConfiguration_v2.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowedHeaders" => lambda {|n| @allowed_headers = n.get_collection_of_primitive_values(String) },
                "allowedMethods" => lambda {|n| @allowed_methods = n.get_collection_of_primitive_values(String) },
                "allowedOrigins" => lambda {|n| @allowed_origins = n.get_collection_of_primitive_values(String) },
                "maxAgeInSeconds" => lambda {|n| @max_age_in_seconds = n.get_number_value() },
                "resource" => lambda {|n| @resource = n.get_string_value() },
            })
        end
        ## 
        ## Gets the maxAgeInSeconds property value. The maxAgeInSeconds property
        ## @return a integer
        ## 
        def max_age_in_seconds
            return @max_age_in_seconds
        end
        ## 
        ## Sets the maxAgeInSeconds property value. The maxAgeInSeconds property
        ## @param value Value to set for the maxAgeInSeconds property.
        ## @return a void
        ## 
        def max_age_in_seconds=(value)
            @max_age_in_seconds = value
        end
        ## 
        ## Gets the resource property value. The resource property
        ## @return a string
        ## 
        def resource
            return @resource
        end
        ## 
        ## Sets the resource property value. The resource property
        ## @param value Value to set for the resource property.
        ## @return a void
        ## 
        def resource=(value)
            @resource = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_primitive_values("allowedHeaders", @allowed_headers)
            writer.write_collection_of_primitive_values("allowedMethods", @allowed_methods)
            writer.write_collection_of_primitive_values("allowedOrigins", @allowed_origins)
            writer.write_number_value("maxAgeInSeconds", @max_age_in_seconds)
            writer.write_string_value("resource", @resource)
        end
    end
end
