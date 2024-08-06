require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The EnrollmentTimeDeviceMembershipTargetResult entity represents the results of the set/get EnrollmentTimeDeviceMembershipTarget request. The set/get EnrollmentTimeDeviceMembershipTarget API validates the device membership targets specified by the admin to ensure that they exist, that they are of the proper type, and any other target requirements are met such as that the Intune Device Provisioning First Party App is an owner of the target. Failures other than validation will result in 500 else validationSucceeded will be true or false if any of the validation fails for EnrollmentTimeDeviceMembershipTarget.
        class EnrollmentTimeDeviceMembershipTargetResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A list of validation status of the memberships targetted to profile. This collection can contain a maximum of 1 elements.
            @enrollment_time_device_membership_target_validation_statuses
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates if validations succeeded for the device membership target. When 'true', the device membership target validation found no issues. When 'false', the device membership target validation found issues. default - false
            @validation_succeeded
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
            ## Instantiates a new EnrollmentTimeDeviceMembershipTargetResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enrollment_time_device_membership_target_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnrollmentTimeDeviceMembershipTargetResult.new
            end
            ## 
            ## Gets the enrollmentTimeDeviceMembershipTargetValidationStatuses property value. A list of validation status of the memberships targetted to profile. This collection can contain a maximum of 1 elements.
            ## @return a enrollment_time_device_membership_target_status
            ## 
            def enrollment_time_device_membership_target_validation_statuses
                return @enrollment_time_device_membership_target_validation_statuses
            end
            ## 
            ## Sets the enrollmentTimeDeviceMembershipTargetValidationStatuses property value. A list of validation status of the memberships targetted to profile. This collection can contain a maximum of 1 elements.
            ## @param value Value to set for the enrollmentTimeDeviceMembershipTargetValidationStatuses property.
            ## @return a void
            ## 
            def enrollment_time_device_membership_target_validation_statuses=(value)
                @enrollment_time_device_membership_target_validation_statuses = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enrollmentTimeDeviceMembershipTargetValidationStatuses" => lambda {|n| @enrollment_time_device_membership_target_validation_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EnrollmentTimeDeviceMembershipTargetStatus.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "validationSucceeded" => lambda {|n| @validation_succeeded = n.get_boolean_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("enrollmentTimeDeviceMembershipTargetValidationStatuses", @enrollment_time_device_membership_target_validation_statuses)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("validationSucceeded", @validation_succeeded)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the validationSucceeded property value. Indicates if validations succeeded for the device membership target. When 'true', the device membership target validation found no issues. When 'false', the device membership target validation found issues. default - false
            ## @return a boolean
            ## 
            def validation_succeeded
                return @validation_succeeded
            end
            ## 
            ## Sets the validationSucceeded property value. Indicates if validations succeeded for the device membership target. When 'true', the device membership target validation found no issues. When 'false', the device membership target validation found issues. default - false
            ## @param value Value to set for the validationSucceeded property.
            ## @return a void
            ## 
            def validation_succeeded=(value)
                @validation_succeeded = value
            end
        end
    end
end
