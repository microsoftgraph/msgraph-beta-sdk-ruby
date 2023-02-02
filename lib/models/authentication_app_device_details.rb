require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AuthenticationAppDeviceDetails
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The version of the client authentication app used during the authentication step.
        @app_version
        ## 
        # The name of the client authentication app used during the authentication step.
        @client_app
        ## 
        # ID of the device used during the authentication step.
        @device_id
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The operating system running on the device used for the authentication step.
        @operating_system
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
        ## Gets the appVersion property value. The version of the client authentication app used during the authentication step.
        ## @return a string
        ## 
        def app_version
            return @app_version
        end
        ## 
        ## Sets the appVersion property value. The version of the client authentication app used during the authentication step.
        ## @param value Value to set for the app_version property.
        ## @return a void
        ## 
        def app_version=(value)
            @app_version = value
        end
        ## 
        ## Gets the clientApp property value. The name of the client authentication app used during the authentication step.
        ## @return a string
        ## 
        def client_app
            return @client_app
        end
        ## 
        ## Sets the clientApp property value. The name of the client authentication app used during the authentication step.
        ## @param value Value to set for the client_app property.
        ## @return a void
        ## 
        def client_app=(value)
            @client_app = value
        end
        ## 
        ## Instantiates a new authenticationAppDeviceDetails and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a authentication_app_device_details
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AuthenticationAppDeviceDetails.new
        end
        ## 
        ## Gets the deviceId property value. ID of the device used during the authentication step.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. ID of the device used during the authentication step.
        ## @param value Value to set for the device_id property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "appVersion" => lambda {|n| @app_version = n.get_string_value() },
                "clientApp" => lambda {|n| @client_app = n.get_string_value() },
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
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
        ## Gets the operatingSystem property value. The operating system running on the device used for the authentication step.
        ## @return a string
        ## 
        def operating_system
            return @operating_system
        end
        ## 
        ## Sets the operatingSystem property value. The operating system running on the device used for the authentication step.
        ## @param value Value to set for the operating_system property.
        ## @return a void
        ## 
        def operating_system=(value)
            @operating_system = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("appVersion", @app_version)
            writer.write_string_value("clientApp", @client_app)
            writer.write_string_value("deviceId", @device_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("operatingSystem", @operating_system)
            writer.write_additional_data(@additional_data)
        end
    end
end
