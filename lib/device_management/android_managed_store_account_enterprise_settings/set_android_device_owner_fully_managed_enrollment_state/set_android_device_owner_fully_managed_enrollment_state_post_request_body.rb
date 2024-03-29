require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../android_managed_store_account_enterprise_settings'
require_relative './set_android_device_owner_fully_managed_enrollment_state'

module MicrosoftGraphBeta
    module DeviceManagement
        module AndroidManagedStoreAccountEnterpriseSettings
            module SetAndroidDeviceOwnerFullyManagedEnrollmentState
                class SetAndroidDeviceOwnerFullyManagedEnrollmentStatePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The enabled property
                    @enabled
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
                    ## Instantiates a new setAndroidDeviceOwnerFullyManagedEnrollmentStatePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a set_android_device_owner_fully_managed_enrollment_state_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return SetAndroidDeviceOwnerFullyManagedEnrollmentStatePostRequestBody.new
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
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_boolean_value("enabled", @enabled)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
