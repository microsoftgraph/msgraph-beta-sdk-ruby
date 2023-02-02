require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Windows Defender AdvancedThreatProtection Configuration.
    class WindowsDefenderAdvancedThreatProtectionConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Auto populate onboarding blob programmatically from Advanced Threat protection service
        @advanced_threat_protection_auto_populate_onboarding_blob
        ## 
        # Windows Defender AdvancedThreatProtection Offboarding Blob.
        @advanced_threat_protection_offboarding_blob
        ## 
        # Name of the file from which AdvancedThreatProtectionOffboardingBlob was obtained.
        @advanced_threat_protection_offboarding_filename
        ## 
        # Windows Defender AdvancedThreatProtection Onboarding Blob.
        @advanced_threat_protection_onboarding_blob
        ## 
        # Name of the file from which AdvancedThreatProtectionOnboardingBlob was obtained.
        @advanced_threat_protection_onboarding_filename
        ## 
        # Windows Defender AdvancedThreatProtection 'Allow Sample Sharing' Rule
        @allow_sample_sharing
        ## 
        # Expedite Windows Defender Advanced Threat Protection telemetry reporting frequency.
        @enable_expedited_telemetry_reporting
        ## 
        ## Gets the advancedThreatProtectionAutoPopulateOnboardingBlob property value. Auto populate onboarding blob programmatically from Advanced Threat protection service
        ## @return a boolean
        ## 
        def advanced_threat_protection_auto_populate_onboarding_blob
            return @advanced_threat_protection_auto_populate_onboarding_blob
        end
        ## 
        ## Sets the advancedThreatProtectionAutoPopulateOnboardingBlob property value. Auto populate onboarding blob programmatically from Advanced Threat protection service
        ## @param value Value to set for the advanced_threat_protection_auto_populate_onboarding_blob property.
        ## @return a void
        ## 
        def advanced_threat_protection_auto_populate_onboarding_blob=(value)
            @advanced_threat_protection_auto_populate_onboarding_blob = value
        end
        ## 
        ## Gets the advancedThreatProtectionOffboardingBlob property value. Windows Defender AdvancedThreatProtection Offboarding Blob.
        ## @return a string
        ## 
        def advanced_threat_protection_offboarding_blob
            return @advanced_threat_protection_offboarding_blob
        end
        ## 
        ## Sets the advancedThreatProtectionOffboardingBlob property value. Windows Defender AdvancedThreatProtection Offboarding Blob.
        ## @param value Value to set for the advanced_threat_protection_offboarding_blob property.
        ## @return a void
        ## 
        def advanced_threat_protection_offboarding_blob=(value)
            @advanced_threat_protection_offboarding_blob = value
        end
        ## 
        ## Gets the advancedThreatProtectionOffboardingFilename property value. Name of the file from which AdvancedThreatProtectionOffboardingBlob was obtained.
        ## @return a string
        ## 
        def advanced_threat_protection_offboarding_filename
            return @advanced_threat_protection_offboarding_filename
        end
        ## 
        ## Sets the advancedThreatProtectionOffboardingFilename property value. Name of the file from which AdvancedThreatProtectionOffboardingBlob was obtained.
        ## @param value Value to set for the advanced_threat_protection_offboarding_filename property.
        ## @return a void
        ## 
        def advanced_threat_protection_offboarding_filename=(value)
            @advanced_threat_protection_offboarding_filename = value
        end
        ## 
        ## Gets the advancedThreatProtectionOnboardingBlob property value. Windows Defender AdvancedThreatProtection Onboarding Blob.
        ## @return a string
        ## 
        def advanced_threat_protection_onboarding_blob
            return @advanced_threat_protection_onboarding_blob
        end
        ## 
        ## Sets the advancedThreatProtectionOnboardingBlob property value. Windows Defender AdvancedThreatProtection Onboarding Blob.
        ## @param value Value to set for the advanced_threat_protection_onboarding_blob property.
        ## @return a void
        ## 
        def advanced_threat_protection_onboarding_blob=(value)
            @advanced_threat_protection_onboarding_blob = value
        end
        ## 
        ## Gets the advancedThreatProtectionOnboardingFilename property value. Name of the file from which AdvancedThreatProtectionOnboardingBlob was obtained.
        ## @return a string
        ## 
        def advanced_threat_protection_onboarding_filename
            return @advanced_threat_protection_onboarding_filename
        end
        ## 
        ## Sets the advancedThreatProtectionOnboardingFilename property value. Name of the file from which AdvancedThreatProtectionOnboardingBlob was obtained.
        ## @param value Value to set for the advanced_threat_protection_onboarding_filename property.
        ## @return a void
        ## 
        def advanced_threat_protection_onboarding_filename=(value)
            @advanced_threat_protection_onboarding_filename = value
        end
        ## 
        ## Gets the allowSampleSharing property value. Windows Defender AdvancedThreatProtection 'Allow Sample Sharing' Rule
        ## @return a boolean
        ## 
        def allow_sample_sharing
            return @allow_sample_sharing
        end
        ## 
        ## Sets the allowSampleSharing property value. Windows Defender AdvancedThreatProtection 'Allow Sample Sharing' Rule
        ## @param value Value to set for the allow_sample_sharing property.
        ## @return a void
        ## 
        def allow_sample_sharing=(value)
            @allow_sample_sharing = value
        end
        ## 
        ## Instantiates a new windowsDefenderAdvancedThreatProtectionConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_defender_advanced_threat_protection_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsDefenderAdvancedThreatProtectionConfiguration.new
        end
        ## 
        ## Gets the enableExpeditedTelemetryReporting property value. Expedite Windows Defender Advanced Threat Protection telemetry reporting frequency.
        ## @return a boolean
        ## 
        def enable_expedited_telemetry_reporting
            return @enable_expedited_telemetry_reporting
        end
        ## 
        ## Sets the enableExpeditedTelemetryReporting property value. Expedite Windows Defender Advanced Threat Protection telemetry reporting frequency.
        ## @param value Value to set for the enable_expedited_telemetry_reporting property.
        ## @return a void
        ## 
        def enable_expedited_telemetry_reporting=(value)
            @enable_expedited_telemetry_reporting = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "advancedThreatProtectionAutoPopulateOnboardingBlob" => lambda {|n| @advanced_threat_protection_auto_populate_onboarding_blob = n.get_boolean_value() },
                "advancedThreatProtectionOffboardingBlob" => lambda {|n| @advanced_threat_protection_offboarding_blob = n.get_string_value() },
                "advancedThreatProtectionOffboardingFilename" => lambda {|n| @advanced_threat_protection_offboarding_filename = n.get_string_value() },
                "advancedThreatProtectionOnboardingBlob" => lambda {|n| @advanced_threat_protection_onboarding_blob = n.get_string_value() },
                "advancedThreatProtectionOnboardingFilename" => lambda {|n| @advanced_threat_protection_onboarding_filename = n.get_string_value() },
                "allowSampleSharing" => lambda {|n| @allow_sample_sharing = n.get_boolean_value() },
                "enableExpeditedTelemetryReporting" => lambda {|n| @enable_expedited_telemetry_reporting = n.get_boolean_value() },
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
            writer.write_boolean_value("advancedThreatProtectionAutoPopulateOnboardingBlob", @advanced_threat_protection_auto_populate_onboarding_blob)
            writer.write_string_value("advancedThreatProtectionOffboardingBlob", @advanced_threat_protection_offboarding_blob)
            writer.write_string_value("advancedThreatProtectionOffboardingFilename", @advanced_threat_protection_offboarding_filename)
            writer.write_string_value("advancedThreatProtectionOnboardingBlob", @advanced_threat_protection_onboarding_blob)
            writer.write_string_value("advancedThreatProtectionOnboardingFilename", @advanced_threat_protection_onboarding_filename)
            writer.write_boolean_value("allowSampleSharing", @allow_sample_sharing)
            writer.write_boolean_value("enableExpeditedTelemetryReporting", @enable_expedited_telemetry_reporting)
        end
    end
end
