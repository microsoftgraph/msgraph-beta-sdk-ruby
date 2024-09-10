require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # iOS available update version details
        class IosAvailableUpdateVersion
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The expiration date of the update.
            @expiration_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The posting date of the update.
            @posting_date_time
            ## 
            # The version of the update.
            @product_version
            ## 
            # List of supported devices for the update.
            @supported_devices
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
            ## Instantiates a new IosAvailableUpdateVersion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_available_update_version
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosAvailableUpdateVersion.new
            end
            ## 
            ## Gets the expirationDateTime property value. The expiration date of the update.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expiration date of the update.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "postingDateTime" => lambda {|n| @posting_date_time = n.get_date_time_value() },
                    "productVersion" => lambda {|n| @product_version = n.get_string_value() },
                    "supportedDevices" => lambda {|n| @supported_devices = n.get_collection_of_primitive_values(String) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the postingDateTime property value. The posting date of the update.
            ## @return a date_time
            ## 
            def posting_date_time
                return @posting_date_time
            end
            ## 
            ## Sets the postingDateTime property value. The posting date of the update.
            ## @param value Value to set for the postingDateTime property.
            ## @return a void
            ## 
            def posting_date_time=(value)
                @posting_date_time = value
            end
            ## 
            ## Gets the productVersion property value. The version of the update.
            ## @return a string
            ## 
            def product_version
                return @product_version
            end
            ## 
            ## Sets the productVersion property value. The version of the update.
            ## @param value Value to set for the productVersion property.
            ## @return a void
            ## 
            def product_version=(value)
                @product_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("postingDateTime", @posting_date_time)
                writer.write_string_value("productVersion", @product_version)
                writer.write_collection_of_primitive_values("supportedDevices", @supported_devices)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportedDevices property value. List of supported devices for the update.
            ## @return a string
            ## 
            def supported_devices
                return @supported_devices
            end
            ## 
            ## Sets the supportedDevices property value. List of supported devices for the update.
            ## @param value Value to set for the supportedDevices property.
            ## @return a void
            ## 
            def supported_devices=(value)
                @supported_devices = value
            end
        end
    end
end
