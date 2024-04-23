require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Enrollment Notification Configuration which is used to send notification
        class DeviceEnrollmentNotificationConfiguration < MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Branding Options for the Message Template. Branding is defined in the Intune Admin Console.
            @branding_options
            ## 
            # DefaultLocale for the Enrollment Notification
            @default_locale
            ## 
            # Notification Message Template Id
            @notification_message_template_id
            ## 
            # The list of notification data -
            @notification_templates
            ## 
            # This enum indicates the platform type for which the enrollment restriction applies.
            @platform_type
            ## 
            # This enum indicates the Template type for which the enrollment notification applies.
            @template_type
            ## 
            ## Gets the brandingOptions property value. Branding Options for the Message Template. Branding is defined in the Intune Admin Console.
            ## @return a enrollment_notification_branding_options
            ## 
            def branding_options
                return @branding_options
            end
            ## 
            ## Sets the brandingOptions property value. Branding Options for the Message Template. Branding is defined in the Intune Admin Console.
            ## @param value Value to set for the brandingOptions property.
            ## @return a void
            ## 
            def branding_options=(value)
                @branding_options = value
            end
            ## 
            ## Instantiates a new DeviceEnrollmentNotificationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceEnrollmentNotificationConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_enrollment_notification_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceEnrollmentNotificationConfiguration.new
            end
            ## 
            ## Gets the defaultLocale property value. DefaultLocale for the Enrollment Notification
            ## @return a string
            ## 
            def default_locale
                return @default_locale
            end
            ## 
            ## Sets the defaultLocale property value. DefaultLocale for the Enrollment Notification
            ## @param value Value to set for the defaultLocale property.
            ## @return a void
            ## 
            def default_locale=(value)
                @default_locale = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "brandingOptions" => lambda {|n| @branding_options = n.get_enum_values(MicrosoftGraphBeta::Models::EnrollmentNotificationBrandingOptions) },
                    "defaultLocale" => lambda {|n| @default_locale = n.get_string_value() },
                    "notificationMessageTemplateId" => lambda {|n| @notification_message_template_id = n.get_guid_value() },
                    "notificationTemplates" => lambda {|n| @notification_templates = n.get_collection_of_primitive_values(String) },
                    "platformType" => lambda {|n| @platform_type = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentRestrictionPlatformType) },
                    "templateType" => lambda {|n| @template_type = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentNotificationTemplateType) },
                })
            end
            ## 
            ## Gets the notificationMessageTemplateId property value. Notification Message Template Id
            ## @return a guid
            ## 
            def notification_message_template_id
                return @notification_message_template_id
            end
            ## 
            ## Sets the notificationMessageTemplateId property value. Notification Message Template Id
            ## @param value Value to set for the notificationMessageTemplateId property.
            ## @return a void
            ## 
            def notification_message_template_id=(value)
                @notification_message_template_id = value
            end
            ## 
            ## Gets the notificationTemplates property value. The list of notification data -
            ## @return a string
            ## 
            def notification_templates
                return @notification_templates
            end
            ## 
            ## Sets the notificationTemplates property value. The list of notification data -
            ## @param value Value to set for the notificationTemplates property.
            ## @return a void
            ## 
            def notification_templates=(value)
                @notification_templates = value
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
                writer.write_enum_value("brandingOptions", @branding_options)
                writer.write_string_value("defaultLocale", @default_locale)
                writer.write_guid_value("notificationMessageTemplateId", @notification_message_template_id)
                writer.write_collection_of_primitive_values("notificationTemplates", @notification_templates)
                writer.write_enum_value("platformType", @platform_type)
                writer.write_enum_value("templateType", @template_type)
            end
            ## 
            ## Gets the templateType property value. This enum indicates the Template type for which the enrollment notification applies.
            ## @return a enrollment_notification_template_type
            ## 
            def template_type
                return @template_type
            end
            ## 
            ## Sets the templateType property value. This enum indicates the Template type for which the enrollment notification applies.
            ## @param value Value to set for the templateType property.
            ## @return a void
            ## 
            def template_type=(value)
                @template_type = value
            end
        end
    end
end
