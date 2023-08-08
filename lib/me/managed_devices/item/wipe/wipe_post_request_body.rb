require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/obliteration_behavior'
require_relative '../../../me'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './wipe'

module MicrosoftGraphBeta
    module Me
        module ManagedDevices
            module Item
                module Wipe
                    class WipePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The keepEnrollmentData property
                        @keep_enrollment_data
                        ## 
                        # The keepUserData property
                        @keep_user_data
                        ## 
                        # The macOsUnlockCode property
                        @mac_os_unlock_code
                        ## 
                        # The obliterationBehavior property
                        @obliteration_behavior
                        ## 
                        # The persistEsimDataPlan property
                        @persist_esim_data_plan
                        ## 
                        # The useProtectedWipe property
                        @use_protected_wipe
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
                        ## Instantiates a new wipePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a wipe_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return WipePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "keepEnrollmentData" => lambda {|n| @keep_enrollment_data = n.get_boolean_value() },
                                "keepUserData" => lambda {|n| @keep_user_data = n.get_boolean_value() },
                                "macOsUnlockCode" => lambda {|n| @mac_os_unlock_code = n.get_string_value() },
                                "obliterationBehavior" => lambda {|n| @obliteration_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::ObliterationBehavior) },
                                "persistEsimDataPlan" => lambda {|n| @persist_esim_data_plan = n.get_boolean_value() },
                                "useProtectedWipe" => lambda {|n| @use_protected_wipe = n.get_boolean_value() },
                            }
                        end
                        ## 
                        ## Gets the keepEnrollmentData property value. The keepEnrollmentData property
                        ## @return a boolean
                        ## 
                        def keep_enrollment_data
                            return @keep_enrollment_data
                        end
                        ## 
                        ## Sets the keepEnrollmentData property value. The keepEnrollmentData property
                        ## @param value Value to set for the keepEnrollmentData property.
                        ## @return a void
                        ## 
                        def keep_enrollment_data=(value)
                            @keep_enrollment_data = value
                        end
                        ## 
                        ## Gets the keepUserData property value. The keepUserData property
                        ## @return a boolean
                        ## 
                        def keep_user_data
                            return @keep_user_data
                        end
                        ## 
                        ## Sets the keepUserData property value. The keepUserData property
                        ## @param value Value to set for the keepUserData property.
                        ## @return a void
                        ## 
                        def keep_user_data=(value)
                            @keep_user_data = value
                        end
                        ## 
                        ## Gets the macOsUnlockCode property value. The macOsUnlockCode property
                        ## @return a string
                        ## 
                        def mac_os_unlock_code
                            return @mac_os_unlock_code
                        end
                        ## 
                        ## Sets the macOsUnlockCode property value. The macOsUnlockCode property
                        ## @param value Value to set for the macOsUnlockCode property.
                        ## @return a void
                        ## 
                        def mac_os_unlock_code=(value)
                            @mac_os_unlock_code = value
                        end
                        ## 
                        ## Gets the obliterationBehavior property value. The obliterationBehavior property
                        ## @return a obliteration_behavior
                        ## 
                        def obliteration_behavior
                            return @obliteration_behavior
                        end
                        ## 
                        ## Sets the obliterationBehavior property value. The obliterationBehavior property
                        ## @param value Value to set for the obliterationBehavior property.
                        ## @return a void
                        ## 
                        def obliteration_behavior=(value)
                            @obliteration_behavior = value
                        end
                        ## 
                        ## Gets the persistEsimDataPlan property value. The persistEsimDataPlan property
                        ## @return a boolean
                        ## 
                        def persist_esim_data_plan
                            return @persist_esim_data_plan
                        end
                        ## 
                        ## Sets the persistEsimDataPlan property value. The persistEsimDataPlan property
                        ## @param value Value to set for the persistEsimDataPlan property.
                        ## @return a void
                        ## 
                        def persist_esim_data_plan=(value)
                            @persist_esim_data_plan = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_boolean_value("keepEnrollmentData", @keep_enrollment_data)
                            writer.write_boolean_value("keepUserData", @keep_user_data)
                            writer.write_string_value("macOsUnlockCode", @mac_os_unlock_code)
                            writer.write_enum_value("obliterationBehavior", @obliteration_behavior)
                            writer.write_boolean_value("persistEsimDataPlan", @persist_esim_data_plan)
                            writer.write_boolean_value("useProtectedWipe", @use_protected_wipe)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the useProtectedWipe property value. The useProtectedWipe property
                        ## @return a boolean
                        ## 
                        def use_protected_wipe
                            return @use_protected_wipe
                        end
                        ## 
                        ## Sets the useProtectedWipe property value. The useProtectedWipe property
                        ## @param value Value to set for the useProtectedWipe property.
                        ## @return a void
                        ## 
                        def use_protected_wipe=(value)
                            @use_protected_wipe = value
                        end
                    end
                end
            end
        end
    end
end
