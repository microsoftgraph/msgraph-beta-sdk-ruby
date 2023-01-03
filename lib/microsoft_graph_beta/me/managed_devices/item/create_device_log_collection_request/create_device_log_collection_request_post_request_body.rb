require 'microsoft_kiota_abstractions'
require_relative '../../../../models/device_log_collection_request'
require_relative '../../../me'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './create_device_log_collection_request'

module MicrosoftGraphBeta::Me::ManagedDevices::Item::CreateDeviceLogCollectionRequest
    ## 
    # Provides operations to call the createDeviceLogCollectionRequest method.
    class CreateDeviceLogCollectionRequestPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The templateType property
        @template_type
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
        ## Instantiates a new createDeviceLogCollectionRequestPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a create_device_log_collection_request_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CreateDeviceLogCollectionRequestPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "templateType" => lambda {|n| @template_type = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceLogCollectionRequest.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("templateType", @template_type)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the templateType property value. The templateType property
        ## @return a device_log_collection_request
        ## 
        def template_type
            return @template_type
        end
        ## 
        ## Sets the templateType property value. The templateType property
        ## @param value Value to set for the templateType property.
        ## @return a void
        ## 
        def template_type=(value)
            @template_type = value
        end
    end
end
