require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/enrollment_time_device_membership_target'
require_relative '../../../device_management'
require_relative '../../configuration_policies'
require_relative '../item'
require_relative './set_enrollment_time_device_membership_target'

module MicrosoftGraphBeta
    module DeviceManagement
        module ConfigurationPolicies
            module Item
                module SetEnrollmentTimeDeviceMembershipTarget
                    class SetEnrollmentTimeDeviceMembershipTargetPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The enrollmentTimeDeviceMembershipTargets property
                        @enrollment_time_device_membership_targets
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
                        ## Instantiates a new SetEnrollmentTimeDeviceMembershipTargetPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a set_enrollment_time_device_membership_target_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SetEnrollmentTimeDeviceMembershipTargetPostRequestBody.new
                        end
                        ## 
                        ## Gets the enrollmentTimeDeviceMembershipTargets property value. The enrollmentTimeDeviceMembershipTargets property
                        ## @return a enrollment_time_device_membership_target
                        ## 
                        def enrollment_time_device_membership_targets
                            return @enrollment_time_device_membership_targets
                        end
                        ## 
                        ## Sets the enrollmentTimeDeviceMembershipTargets property value. The enrollmentTimeDeviceMembershipTargets property
                        ## @param value Value to set for the enrollmentTimeDeviceMembershipTargets property.
                        ## @return a void
                        ## 
                        def enrollment_time_device_membership_targets=(value)
                            @enrollment_time_device_membership_targets = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "enrollmentTimeDeviceMembershipTargets" => lambda {|n| @enrollment_time_device_membership_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EnrollmentTimeDeviceMembershipTarget.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("enrollmentTimeDeviceMembershipTargets", @enrollment_time_device_membership_targets)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
