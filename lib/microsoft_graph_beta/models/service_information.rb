require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ServiceInformation
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The name of the cloud service (for example, Twitter, Instagram).
        @name
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Contains the URL for the service being referenced.
        @web_url
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
        ## Instantiates a new serviceInformation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a service_information
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ServiceInformation.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "name" => lambda {|n| @name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "webUrl" => lambda {|n| @web_url = n.get_string_value() },
            }
        end
        ## 
        ## Gets the name property value. The name of the cloud service (for example, Twitter, Instagram).
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name of the cloud service (for example, Twitter, Instagram).
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("name", @name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("webUrl", @web_url)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the webUrl property value. Contains the URL for the service being referenced.
        ## @return a string
        ## 
        def web_url
            return @web_url
        end
        ## 
        ## Sets the webUrl property value. Contains the URL for the service being referenced.
        ## @param value Value to set for the webUrl property.
        ## @return a void
        ## 
        def web_url=(value)
            @web_url = value
        end
    end
end
