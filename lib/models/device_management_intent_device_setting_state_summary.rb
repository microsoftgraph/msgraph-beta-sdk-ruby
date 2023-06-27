require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents device setting state summary for an intent
        class DeviceManagementIntentDeviceSettingStateSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of compliant devices
            @compliant_count
            ## 
            # Number of devices in conflict
            @conflict_count
            ## 
            # Number of error devices
            @error_count
            ## 
            # Number of non compliant devices
            @non_compliant_count
            ## 
            # Number of not applicable devices
            @not_applicable_count
            ## 
            # Number of remediated devices
            @remediated_count
            ## 
            # Name of a setting
            @setting_name
            ## 
            ## Gets the compliantCount property value. Number of compliant devices
            ## @return a integer
            ## 
            def compliant_count
                return @compliant_count
            end
            ## 
            ## Sets the compliantCount property value. Number of compliant devices
            ## @param value Value to set for the compliant_count property.
            ## @return a void
            ## 
            def compliant_count=(value)
                @compliant_count = value
            end
            ## 
            ## Gets the conflictCount property value. Number of devices in conflict
            ## @return a integer
            ## 
            def conflict_count
                return @conflict_count
            end
            ## 
            ## Sets the conflictCount property value. Number of devices in conflict
            ## @param value Value to set for the conflict_count property.
            ## @return a void
            ## 
            def conflict_count=(value)
                @conflict_count = value
            end
            ## 
            ## Instantiates a new deviceManagementIntentDeviceSettingStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_intent_device_setting_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementIntentDeviceSettingStateSummary.new
            end
            ## 
            ## Gets the errorCount property value. Number of error devices
            ## @return a integer
            ## 
            def error_count
                return @error_count
            end
            ## 
            ## Sets the errorCount property value. Number of error devices
            ## @param value Value to set for the error_count property.
            ## @return a void
            ## 
            def error_count=(value)
                @error_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantCount" => lambda {|n| @compliant_count = n.get_number_value() },
                    "conflictCount" => lambda {|n| @conflict_count = n.get_number_value() },
                    "errorCount" => lambda {|n| @error_count = n.get_number_value() },
                    "nonCompliantCount" => lambda {|n| @non_compliant_count = n.get_number_value() },
                    "notApplicableCount" => lambda {|n| @not_applicable_count = n.get_number_value() },
                    "remediatedCount" => lambda {|n| @remediated_count = n.get_number_value() },
                    "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the nonCompliantCount property value. Number of non compliant devices
            ## @return a integer
            ## 
            def non_compliant_count
                return @non_compliant_count
            end
            ## 
            ## Sets the nonCompliantCount property value. Number of non compliant devices
            ## @param value Value to set for the non_compliant_count property.
            ## @return a void
            ## 
            def non_compliant_count=(value)
                @non_compliant_count = value
            end
            ## 
            ## Gets the notApplicableCount property value. Number of not applicable devices
            ## @return a integer
            ## 
            def not_applicable_count
                return @not_applicable_count
            end
            ## 
            ## Sets the notApplicableCount property value. Number of not applicable devices
            ## @param value Value to set for the not_applicable_count property.
            ## @return a void
            ## 
            def not_applicable_count=(value)
                @not_applicable_count = value
            end
            ## 
            ## Gets the remediatedCount property value. Number of remediated devices
            ## @return a integer
            ## 
            def remediated_count
                return @remediated_count
            end
            ## 
            ## Sets the remediatedCount property value. Number of remediated devices
            ## @param value Value to set for the remediated_count property.
            ## @return a void
            ## 
            def remediated_count=(value)
                @remediated_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("compliantCount", @compliant_count)
                writer.write_number_value("conflictCount", @conflict_count)
                writer.write_number_value("errorCount", @error_count)
                writer.write_number_value("nonCompliantCount", @non_compliant_count)
                writer.write_number_value("notApplicableCount", @not_applicable_count)
                writer.write_number_value("remediatedCount", @remediated_count)
                writer.write_string_value("settingName", @setting_name)
            end
            ## 
            ## Gets the settingName property value. Name of a setting
            ## @return a string
            ## 
            def setting_name
                return @setting_name
            end
            ## 
            ## Sets the settingName property value. Name of a setting
            ## @param value Value to set for the setting_name property.
            ## @return a void
            ## 
            def setting_name=(value)
                @setting_name = value
            end
        end
    end
end
