require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Default Device Enrollment Platform Restrictions Configuration that restricts the types of devices a user can enroll
        class DeviceEnrollmentPlatformRestrictionsConfiguration < MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates restrictions for Android For Work platform.
            @android_for_work_restriction
            ## 
            # Indicates restrictions for Android platform.
            @android_restriction
            ## 
            # Indicates restrictions for IOS platform.
            @ios_restriction
            ## 
            # Indicates restrictions for MacOS platform.
            @mac_o_s_restriction
            ## 
            # Indicates restrictions for Mac platform.
            @mac_restriction
            ## 
            # Indicates restrictions for TvOS platform.
            @tvos_restriction
            ## 
            # Indicates restrictions for VisionOS platform.
            @vision_o_s_restriction
            ## 
            # Indicates restrictions for Windows HomeSku platform.
            @windows_home_sku_restriction
            ## 
            # Indicates restrictions for Windows Mobile platform.
            @windows_mobile_restriction
            ## 
            # Indicates restrictions for Windows platform.
            @windows_restriction
            ## 
            ## Gets the androidForWorkRestriction property value. Indicates restrictions for Android For Work platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def android_for_work_restriction
                return @android_for_work_restriction
            end
            ## 
            ## Sets the androidForWorkRestriction property value. Indicates restrictions for Android For Work platform.
            ## @param value Value to set for the androidForWorkRestriction property.
            ## @return a void
            ## 
            def android_for_work_restriction=(value)
                @android_for_work_restriction = value
            end
            ## 
            ## Gets the androidRestriction property value. Indicates restrictions for Android platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def android_restriction
                return @android_restriction
            end
            ## 
            ## Sets the androidRestriction property value. Indicates restrictions for Android platform.
            ## @param value Value to set for the androidRestriction property.
            ## @return a void
            ## 
            def android_restriction=(value)
                @android_restriction = value
            end
            ## 
            ## Instantiates a new DeviceEnrollmentPlatformRestrictionsConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_enrollment_platform_restrictions_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceEnrollmentPlatformRestrictionsConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "androidForWorkRestriction" => lambda {|n| @android_for_work_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "androidRestriction" => lambda {|n| @android_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "iosRestriction" => lambda {|n| @ios_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "macOSRestriction" => lambda {|n| @mac_o_s_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "macRestriction" => lambda {|n| @mac_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "tvosRestriction" => lambda {|n| @tvos_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "visionOSRestriction" => lambda {|n| @vision_o_s_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "windowsHomeSkuRestriction" => lambda {|n| @windows_home_sku_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "windowsMobileRestriction" => lambda {|n| @windows_mobile_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                    "windowsRestriction" => lambda {|n| @windows_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the iosRestriction property value. Indicates restrictions for IOS platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def ios_restriction
                return @ios_restriction
            end
            ## 
            ## Sets the iosRestriction property value. Indicates restrictions for IOS platform.
            ## @param value Value to set for the iosRestriction property.
            ## @return a void
            ## 
            def ios_restriction=(value)
                @ios_restriction = value
            end
            ## 
            ## Gets the macOSRestriction property value. Indicates restrictions for MacOS platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def mac_o_s_restriction
                return @mac_o_s_restriction
            end
            ## 
            ## Sets the macOSRestriction property value. Indicates restrictions for MacOS platform.
            ## @param value Value to set for the macOSRestriction property.
            ## @return a void
            ## 
            def mac_o_s_restriction=(value)
                @mac_o_s_restriction = value
            end
            ## 
            ## Gets the macRestriction property value. Indicates restrictions for Mac platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def mac_restriction
                return @mac_restriction
            end
            ## 
            ## Sets the macRestriction property value. Indicates restrictions for Mac platform.
            ## @param value Value to set for the macRestriction property.
            ## @return a void
            ## 
            def mac_restriction=(value)
                @mac_restriction = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("androidForWorkRestriction", @android_for_work_restriction)
                writer.write_object_value("androidRestriction", @android_restriction)
                writer.write_object_value("iosRestriction", @ios_restriction)
                writer.write_object_value("macOSRestriction", @mac_o_s_restriction)
                writer.write_object_value("macRestriction", @mac_restriction)
                writer.write_object_value("tvosRestriction", @tvos_restriction)
                writer.write_object_value("visionOSRestriction", @vision_o_s_restriction)
                writer.write_object_value("windowsHomeSkuRestriction", @windows_home_sku_restriction)
                writer.write_object_value("windowsMobileRestriction", @windows_mobile_restriction)
                writer.write_object_value("windowsRestriction", @windows_restriction)
            end
            ## 
            ## Gets the tvosRestriction property value. Indicates restrictions for TvOS platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def tvos_restriction
                return @tvos_restriction
            end
            ## 
            ## Sets the tvosRestriction property value. Indicates restrictions for TvOS platform.
            ## @param value Value to set for the tvosRestriction property.
            ## @return a void
            ## 
            def tvos_restriction=(value)
                @tvos_restriction = value
            end
            ## 
            ## Gets the visionOSRestriction property value. Indicates restrictions for VisionOS platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def vision_o_s_restriction
                return @vision_o_s_restriction
            end
            ## 
            ## Sets the visionOSRestriction property value. Indicates restrictions for VisionOS platform.
            ## @param value Value to set for the visionOSRestriction property.
            ## @return a void
            ## 
            def vision_o_s_restriction=(value)
                @vision_o_s_restriction = value
            end
            ## 
            ## Gets the windowsHomeSkuRestriction property value. Indicates restrictions for Windows HomeSku platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def windows_home_sku_restriction
                return @windows_home_sku_restriction
            end
            ## 
            ## Sets the windowsHomeSkuRestriction property value. Indicates restrictions for Windows HomeSku platform.
            ## @param value Value to set for the windowsHomeSkuRestriction property.
            ## @return a void
            ## 
            def windows_home_sku_restriction=(value)
                @windows_home_sku_restriction = value
            end
            ## 
            ## Gets the windowsMobileRestriction property value. Indicates restrictions for Windows Mobile platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def windows_mobile_restriction
                return @windows_mobile_restriction
            end
            ## 
            ## Sets the windowsMobileRestriction property value. Indicates restrictions for Windows Mobile platform.
            ## @param value Value to set for the windowsMobileRestriction property.
            ## @return a void
            ## 
            def windows_mobile_restriction=(value)
                @windows_mobile_restriction = value
            end
            ## 
            ## Gets the windowsRestriction property value. Indicates restrictions for Windows platform.
            ## @return a device_enrollment_platform_restriction
            ## 
            def windows_restriction
                return @windows_restriction
            end
            ## 
            ## Sets the windowsRestriction property value. Indicates restrictions for Windows platform.
            ## @param value Value to set for the windowsRestriction property.
            ## @return a void
            ## 
            def windows_restriction=(value)
                @windows_restriction = value
            end
        end
    end
end
