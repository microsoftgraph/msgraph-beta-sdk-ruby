require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CorsConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The request headers that the origin domain may specify on the CORS request. The wildcard character * indicates that any header beginning with the specified prefix is allowed.
            @allowed_headers
            ## 
            # The HTTP request methods that the origin domain may use for a CORS request.
            @allowed_methods
            ## 
            # The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. The origin must be an exact case-sensitive match with the origin that the user age sends to the service.
            @allowed_origins
            ## 
            # The maximum amount of time that a browser should cache the response to the preflight OPTIONS request.
            @max_age_in_seconds
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Resource within the application segment for which CORS permissions are granted. / grants permission for whole app segment.
            @resource
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowedHeaders property value. The request headers that the origin domain may specify on the CORS request. The wildcard character * indicates that any header beginning with the specified prefix is allowed.
            ## @return a string
            ## 
            def allowed_headers
                return @allowed_headers
            end
            ## 
            ## Sets the allowedHeaders property value. The request headers that the origin domain may specify on the CORS request. The wildcard character * indicates that any header beginning with the specified prefix is allowed.
            ## @param value Value to set for the allowedHeaders property.
            ## @return a void
            ## 
            def allowed_headers=(value)
                @allowed_headers = value
            end
            ## 
            ## Gets the allowedMethods property value. The HTTP request methods that the origin domain may use for a CORS request.
            ## @return a string
            ## 
            def allowed_methods
                return @allowed_methods
            end
            ## 
            ## Sets the allowedMethods property value. The HTTP request methods that the origin domain may use for a CORS request.
            ## @param value Value to set for the allowedMethods property.
            ## @return a void
            ## 
            def allowed_methods=(value)
                @allowed_methods = value
            end
            ## 
            ## Gets the allowedOrigins property value. The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. The origin must be an exact case-sensitive match with the origin that the user age sends to the service.
            ## @return a string
            ## 
            def allowed_origins
                return @allowed_origins
            end
            ## 
            ## Sets the allowedOrigins property value. The origin domains that are permitted to make a request against the service via CORS. The origin domain is the domain from which the request originates. The origin must be an exact case-sensitive match with the origin that the user age sends to the service.
            ## @param value Value to set for the allowedOrigins property.
            ## @return a void
            ## 
            def allowed_origins=(value)
                @allowed_origins = value
            end
            ## 
            ## Instantiates a new corsConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cors_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CorsConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedHeaders" => lambda {|n| @allowed_headers = n.get_collection_of_primitive_values(String) },
                    "allowedMethods" => lambda {|n| @allowed_methods = n.get_collection_of_primitive_values(String) },
                    "allowedOrigins" => lambda {|n| @allowed_origins = n.get_collection_of_primitive_values(String) },
                    "maxAgeInSeconds" => lambda {|n| @max_age_in_seconds = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_string_value() },
                }
            end
            ## 
            ## Gets the maxAgeInSeconds property value. The maximum amount of time that a browser should cache the response to the preflight OPTIONS request.
            ## @return a integer
            ## 
            def max_age_in_seconds
                return @max_age_in_seconds
            end
            ## 
            ## Sets the maxAgeInSeconds property value. The maximum amount of time that a browser should cache the response to the preflight OPTIONS request.
            ## @param value Value to set for the maxAgeInSeconds property.
            ## @return a void
            ## 
            def max_age_in_seconds=(value)
                @max_age_in_seconds = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the resource property value. Resource within the application segment for which CORS permissions are granted. / grants permission for whole app segment.
            ## @return a string
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Resource within the application segment for which CORS permissions are granted. / grants permission for whole app segment.
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
                writer.write_collection_of_primitive_values("allowedHeaders", @allowed_headers)
                writer.write_collection_of_primitive_values("allowedMethods", @allowed_methods)
                writer.write_collection_of_primitive_values("allowedOrigins", @allowed_origins)
                writer.write_number_value("maxAgeInSeconds", @max_age_in_seconds)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("resource", @resource)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
