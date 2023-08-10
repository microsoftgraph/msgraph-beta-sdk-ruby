require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/device_enrollment_configuration'
require_relative '../../device_management'
require_relative '../device_enrollment_configurations'
require_relative './create_enrollment_notification_configuration'

module MicrosoftGraphBeta
    module DeviceManagement
        module DeviceEnrollmentConfigurations
            module CreateEnrollmentNotificationConfiguration
                class CreateEnrollmentNotificationConfigurationPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The deviceEnrollmentNotificationConfigurations property
                    @device_enrollment_notification_configurations
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
                    ## Instantiates a new createEnrollmentNotificationConfigurationPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a create_enrollment_notification_configuration_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return CreateEnrollmentNotificationConfigurationPostRequestBody.new
                    end
                    ## 
                    ## Gets the deviceEnrollmentNotificationConfigurations property value. The deviceEnrollmentNotificationConfigurations property
                    ## @return a device_enrollment_configuration
                    ## 
                    def device_enrollment_notification_configurations
                        return @device_enrollment_notification_configurations
                    end
                    ## 
                    ## Sets the deviceEnrollmentNotificationConfigurations property value. The deviceEnrollmentNotificationConfigurations property
                    ## @param value Value to set for the deviceEnrollmentNotificationConfigurations property.
                    ## @return a void
                    ## 
                    def device_enrollment_notification_configurations=(value)
                        @device_enrollment_notification_configurations = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "deviceEnrollmentNotificationConfigurations" => lambda {|n| @device_enrollment_notification_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_object_values("deviceEnrollmentNotificationConfigurations", @device_enrollment_notification_configurations)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
