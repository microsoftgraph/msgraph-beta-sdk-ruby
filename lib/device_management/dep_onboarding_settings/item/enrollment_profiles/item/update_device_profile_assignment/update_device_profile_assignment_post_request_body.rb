require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../device_management'
require_relative '../../../../dep_onboarding_settings'
require_relative '../../../item'
require_relative '../../enrollment_profiles'
require_relative '../item'
require_relative './update_device_profile_assignment'

module MicrosoftGraphBeta
    module DeviceManagement
        module DepOnboardingSettings
            module Item
                module EnrollmentProfiles
                    module Item
                        module UpdateDeviceProfileAssignment
                            class UpdateDeviceProfileAssignmentPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The deviceIds property
                                @device_ids
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
                                ## Instantiates a new UpdateDeviceProfileAssignmentPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a update_device_profile_assignment_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return UpdateDeviceProfileAssignmentPostRequestBody.new
                                end
                                ## 
                                ## Gets the deviceIds property value. The deviceIds property
                                ## @return a string
                                ## 
                                def device_ids
                                    return @device_ids
                                end
                                ## 
                                ## Sets the deviceIds property value. The deviceIds property
                                ## @param value Value to set for the deviceIds property.
                                ## @return a void
                                ## 
                                def device_ids=(value)
                                    @device_ids = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "deviceIds" => lambda {|n| @device_ids = n.get_collection_of_primitive_values(String) },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_collection_of_primitive_values("deviceIds", @device_ids)
                                    writer.write_additional_data(@additional_data)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
