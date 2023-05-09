require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityProviderStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The enabled property
            @enabled
            ## 
            # The endpoint property
            @endpoint
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The provider property
            @provider
            ## 
            # The region property
            @region
            ## 
            # The vendor property
            @vendor
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
            ## Instantiates a new securityProviderStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_provider_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityProviderStatus.new
            end
            ## 
            ## Gets the enabled property value. The enabled property
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. The enabled property
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## Gets the endpoint property value. The endpoint property
            ## @return a string
            ## 
            def endpoint
                return @endpoint
            end
            ## 
            ## Sets the endpoint property value. The endpoint property
            ## @param value Value to set for the endpoint property.
            ## @return a void
            ## 
            def endpoint=(value)
                @endpoint = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "endpoint" => lambda {|n| @endpoint = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "provider" => lambda {|n| @provider = n.get_string_value() },
                    "region" => lambda {|n| @region = n.get_string_value() },
                    "vendor" => lambda {|n| @vendor = n.get_string_value() },
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
            ## Gets the provider property value. The provider property
            ## @return a string
            ## 
            def provider
                return @provider
            end
            ## 
            ## Sets the provider property value. The provider property
            ## @param value Value to set for the provider property.
            ## @return a void
            ## 
            def provider=(value)
                @provider = value
            end
            ## 
            ## Gets the region property value. The region property
            ## @return a string
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. The region property
            ## @param value Value to set for the region property.
            ## @return a void
            ## 
            def region=(value)
                @region = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("enabled", @enabled)
                writer.write_string_value("endpoint", @endpoint)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("provider", @provider)
                writer.write_string_value("region", @region)
                writer.write_string_value("vendor", @vendor)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the vendor property value. The vendor property
            ## @return a string
            ## 
            def vendor
                return @vendor
            end
            ## 
            ## Sets the vendor property value. The vendor property
            ## @param value Value to set for the vendor property.
            ## @return a void
            ## 
            def vendor=(value)
                @vendor = value
            end
        end
    end
end
