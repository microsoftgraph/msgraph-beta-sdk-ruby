require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../me'
require_relative './wipe_managed_app_registrations_by_azure_ad_device_id'

module MicrosoftGraphBeta
    module Me
        module WipeManagedAppRegistrationsByAzureAdDeviceId
            class WipeManagedAppRegistrationsByAzureAdDeviceIdPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The azureAdDeviceId property
                @azure_ad_device_id
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
                ## Gets the azureAdDeviceId property value. The azureAdDeviceId property
                ## @return a string
                ## 
                def azure_ad_device_id
                    return @azure_ad_device_id
                end
                ## 
                ## Sets the azureAdDeviceId property value. The azureAdDeviceId property
                ## @param value Value to set for the azureAdDeviceId property.
                ## @return a void
                ## 
                def azure_ad_device_id=(value)
                    @azure_ad_device_id = value
                end
                ## 
                ## Instantiates a new wipeManagedAppRegistrationsByAzureAdDeviceIdPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a wipe_managed_app_registrations_by_azure_ad_device_id_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WipeManagedAppRegistrationsByAzureAdDeviceIdPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "azureAdDeviceId" => lambda {|n| @azure_ad_device_id = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("azureAdDeviceId", @azure_ad_device_id)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
