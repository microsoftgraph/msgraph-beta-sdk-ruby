require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceConfigurationConflictSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The set of policies in conflict with the given setting
            @conflicting_device_configurations
            ## 
            # The set of settings in conflict with the given policies
            @contributing_settings
            ## 
            # The count of checkins impacted by the conflicting policies and settings
            @device_checkins_impacted
            ## 
            ## Gets the conflictingDeviceConfigurations property value. The set of policies in conflict with the given setting
            ## @return a setting_source
            ## 
            def conflicting_device_configurations
                return @conflicting_device_configurations
            end
            ## 
            ## Sets the conflictingDeviceConfigurations property value. The set of policies in conflict with the given setting
            ## @param value Value to set for the conflicting_device_configurations property.
            ## @return a void
            ## 
            def conflicting_device_configurations=(value)
                @conflicting_device_configurations = value
            end
            ## 
            ## Instantiates a new DeviceConfigurationConflictSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contributingSettings property value. The set of settings in conflict with the given policies
            ## @return a string
            ## 
            def contributing_settings
                return @contributing_settings
            end
            ## 
            ## Sets the contributingSettings property value. The set of settings in conflict with the given policies
            ## @param value Value to set for the contributing_settings property.
            ## @return a void
            ## 
            def contributing_settings=(value)
                @contributing_settings = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_configuration_conflict_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceConfigurationConflictSummary.new
            end
            ## 
            ## Gets the deviceCheckinsImpacted property value. The count of checkins impacted by the conflicting policies and settings
            ## @return a integer
            ## 
            def device_checkins_impacted
                return @device_checkins_impacted
            end
            ## 
            ## Sets the deviceCheckinsImpacted property value. The count of checkins impacted by the conflicting policies and settings
            ## @param value Value to set for the device_checkins_impacted property.
            ## @return a void
            ## 
            def device_checkins_impacted=(value)
                @device_checkins_impacted = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conflictingDeviceConfigurations" => lambda {|n| @conflicting_device_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SettingSource.create_from_discriminator_value(pn) }) },
                    "contributingSettings" => lambda {|n| @contributing_settings = n.get_collection_of_primitive_values(String) },
                    "deviceCheckinsImpacted" => lambda {|n| @device_checkins_impacted = n.get_number_value() },
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
                writer.write_collection_of_object_values("conflictingDeviceConfigurations", @conflicting_device_configurations)
                writer.write_collection_of_primitive_values("contributingSettings", @contributing_settings)
                writer.write_number_value("deviceCheckinsImpacted", @device_checkins_impacted)
            end
        end
    end
end
