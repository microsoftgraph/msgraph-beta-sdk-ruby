require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class Headers
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Represents the origin or source from which the request is being made.
                @origin
                ## 
                # Represents the referring URL or the URL of the web page that the current request originates from.
                @referrer
                ## 
                # Represents the information about the client original IP address when the request passes through one or more proxy servers or load balancers.
                @x_forwarded_for
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new headers and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a headers
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Headers.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "origin" => lambda {|n| @origin = n.get_string_value() },
                        "referrer" => lambda {|n| @referrer = n.get_string_value() },
                        "xForwardedFor" => lambda {|n| @x_forwarded_for = n.get_string_value() },
                    }
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
                ## @param value Value to set for the odata_type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Gets the origin property value. Represents the origin or source from which the request is being made.
                ## @return a string
                ## 
                def origin
                    return @origin
                end
                ## 
                ## Sets the origin property value. Represents the origin or source from which the request is being made.
                ## @param value Value to set for the origin property.
                ## @return a void
                ## 
                def origin=(value)
                    @origin = value
                end
                ## 
                ## Gets the referrer property value. Represents the referring URL or the URL of the web page that the current request originates from.
                ## @return a string
                ## 
                def referrer
                    return @referrer
                end
                ## 
                ## Sets the referrer property value. Represents the referring URL or the URL of the web page that the current request originates from.
                ## @param value Value to set for the referrer property.
                ## @return a void
                ## 
                def referrer=(value)
                    @referrer = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("origin", @origin)
                    writer.write_string_value("referrer", @referrer)
                    writer.write_string_value("xForwardedFor", @x_forwarded_for)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the xForwardedFor property value. Represents the information about the client original IP address when the request passes through one or more proxy servers or load balancers.
                ## @return a string
                ## 
                def x_forwarded_for
                    return @x_forwarded_for
                end
                ## 
                ## Sets the xForwardedFor property value. Represents the information about the client original IP address when the request passes through one or more proxy servers or load balancers.
                ## @param value Value to set for the x_forwarded_for property.
                ## @return a void
                ## 
                def x_forwarded_for=(value)
                    @x_forwarded_for = value
                end
            end
        end
    end
end
