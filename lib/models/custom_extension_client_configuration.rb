require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomExtensionClientConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The max number of retries that Azure AD will make to the external API. Values of 0 or 1 are supported. If null, the default for the service will apply.
            @maximum_retries
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The max duration in milliseconds that Azure AD will wait for a response from the external app before it shuts down the connection. The valid range is between 200 and 2000 milliseconds. If null, the default for the service will apply.
            @timeout_in_milliseconds
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new customExtensionClientConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_extension_client_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomExtensionClientConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "maximumRetries" => lambda {|n| @maximum_retries = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "timeoutInMilliseconds" => lambda {|n| @timeout_in_milliseconds = n.get_number_value() },
                }
            end
            ## 
            ## Gets the maximumRetries property value. The max number of retries that Azure AD will make to the external API. Values of 0 or 1 are supported. If null, the default for the service will apply.
            ## @return a integer
            ## 
            def maximum_retries
                return @maximum_retries
            end
            ## 
            ## Sets the maximumRetries property value. The max number of retries that Azure AD will make to the external API. Values of 0 or 1 are supported. If null, the default for the service will apply.
            ## @param value Value to set for the maximumRetries property.
            ## @return a void
            ## 
            def maximum_retries=(value)
                @maximum_retries = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("maximumRetries", @maximum_retries)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("timeoutInMilliseconds", @timeout_in_milliseconds)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeoutInMilliseconds property value. The max duration in milliseconds that Azure AD will wait for a response from the external app before it shuts down the connection. The valid range is between 200 and 2000 milliseconds. If null, the default for the service will apply.
            ## @return a integer
            ## 
            def timeout_in_milliseconds
                return @timeout_in_milliseconds
            end
            ## 
            ## Sets the timeoutInMilliseconds property value. The max duration in milliseconds that Azure AD will wait for a response from the external app before it shuts down the connection. The valid range is between 200 and 2000 milliseconds. If null, the default for the service will apply.
            ## @param value Value to set for the timeoutInMilliseconds property.
            ## @return a void
            ## 
            def timeout_in_milliseconds=(value)
                @timeout_in_milliseconds = value
            end
        end
    end
end
