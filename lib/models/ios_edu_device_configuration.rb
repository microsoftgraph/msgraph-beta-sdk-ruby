require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class IosEduDeviceConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Trusted Root and PFX certificates for Device
        @device_certificate_settings
        ## 
        # The Trusted Root and PFX certificates for Student
        @student_certificate_settings
        ## 
        # Trusted Root and PFX certificates for iOS EDU.
        @teacher_certificate_settings
        ## 
        ## Instantiates a new IosEduDeviceConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.iosEduDeviceConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_edu_device_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosEduDeviceConfiguration.new
        end
        ## 
        ## Gets the deviceCertificateSettings property value. The Trusted Root and PFX certificates for Device
        ## @return a ios_edu_certificate_settings
        ## 
        def device_certificate_settings
            return @device_certificate_settings
        end
        ## 
        ## Sets the deviceCertificateSettings property value. The Trusted Root and PFX certificates for Device
        ## @param value Value to set for the device_certificate_settings property.
        ## @return a void
        ## 
        def device_certificate_settings=(value)
            @device_certificate_settings = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deviceCertificateSettings" => lambda {|n| @device_certificate_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosEduCertificateSettings.create_from_discriminator_value(pn) }) },
                "studentCertificateSettings" => lambda {|n| @student_certificate_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosEduCertificateSettings.create_from_discriminator_value(pn) }) },
                "teacherCertificateSettings" => lambda {|n| @teacher_certificate_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosEduCertificateSettings.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("deviceCertificateSettings", @device_certificate_settings)
            writer.write_object_value("studentCertificateSettings", @student_certificate_settings)
            writer.write_object_value("teacherCertificateSettings", @teacher_certificate_settings)
        end
        ## 
        ## Gets the studentCertificateSettings property value. The Trusted Root and PFX certificates for Student
        ## @return a ios_edu_certificate_settings
        ## 
        def student_certificate_settings
            return @student_certificate_settings
        end
        ## 
        ## Sets the studentCertificateSettings property value. The Trusted Root and PFX certificates for Student
        ## @param value Value to set for the student_certificate_settings property.
        ## @return a void
        ## 
        def student_certificate_settings=(value)
            @student_certificate_settings = value
        end
        ## 
        ## Gets the teacherCertificateSettings property value. Trusted Root and PFX certificates for iOS EDU.
        ## @return a ios_edu_certificate_settings
        ## 
        def teacher_certificate_settings
            return @teacher_certificate_settings
        end
        ## 
        ## Sets the teacherCertificateSettings property value. Trusted Root and PFX certificates for iOS EDU.
        ## @param value Value to set for the teacher_certificate_settings property.
        ## @return a void
        ## 
        def teacher_certificate_settings=(value)
            @teacher_certificate_settings = value
        end
    end
end
