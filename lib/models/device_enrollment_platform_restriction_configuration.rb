require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceEnrollmentPlatformRestrictionConfiguration < MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Restrictions based on platform, platform operating system version, and device ownership
        @platform_restriction
        ## 
        # This enum indicates the platform type for which the enrollment restriction applies.
        @platform_type
        ## 
        ## Instantiates a new DeviceEnrollmentPlatformRestrictionConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceEnrollmentPlatformRestrictionConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_enrollment_platform_restriction_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceEnrollmentPlatformRestrictionConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "platformRestriction" => lambda {|n| @platform_restriction = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentPlatformRestriction.create_from_discriminator_value(pn) }) },
                "platformType" => lambda {|n| @platform_type = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentRestrictionPlatformType) },
            })
        end
        ## 
        ## Gets the platformRestriction property value. Restrictions based on platform, platform operating system version, and device ownership
        ## @return a device_enrollment_platform_restriction
        ## 
        def platform_restriction
            return @platform_restriction
        end
        ## 
        ## Sets the platformRestriction property value. Restrictions based on platform, platform operating system version, and device ownership
        ## @param value Value to set for the platformRestriction property.
        ## @return a void
        ## 
        def platform_restriction=(value)
            @platform_restriction = value
        end
        ## 
        ## Gets the platformType property value. This enum indicates the platform type for which the enrollment restriction applies.
        ## @return a enrollment_restriction_platform_type
        ## 
        def platform_type
            return @platform_type
        end
        ## 
        ## Sets the platformType property value. This enum indicates the platform type for which the enrollment restriction applies.
        ## @param value Value to set for the platformType property.
        ## @return a void
        ## 
        def platform_type=(value)
            @platform_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("platformRestriction", @platform_restriction)
            writer.write_enum_value("platformType", @platform_type)
        end
    end
end
