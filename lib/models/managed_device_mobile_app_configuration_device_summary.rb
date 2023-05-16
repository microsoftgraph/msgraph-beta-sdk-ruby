require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedDeviceMobileAppConfigurationDeviceSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Version of the policy for that overview
            @configuration_version
            ## 
            # Number of devices in conflict
            @conflict_count
            ## 
            # Number of error devices
            @error_count
            ## 
            # Number of failed devices
            @failed_count
            ## 
            # Last update time
            @last_update_date_time
            ## 
            # Number of not applicable devices
            @not_applicable_count
            ## 
            # Number of not applicable devices due to mismatch platform and policy
            @not_applicable_platform_count
            ## 
            # Number of pending devices
            @pending_count
            ## 
            # Number of succeeded devices
            @success_count
            ## 
            ## Gets the configurationVersion property value. Version of the policy for that overview
            ## @return a integer
            ## 
            def configuration_version
                return @configuration_version
            end
            ## 
            ## Sets the configurationVersion property value. Version of the policy for that overview
            ## @param value Value to set for the configuration_version property.
            ## @return a void
            ## 
            def configuration_version=(value)
                @configuration_version = value
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
            ## Instantiates a new managedDeviceMobileAppConfigurationDeviceSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_mobile_app_configuration_device_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceMobileAppConfigurationDeviceSummary.new
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
            ## Gets the failedCount property value. Number of failed devices
            ## @return a integer
            ## 
            def failed_count
                return @failed_count
            end
            ## 
            ## Sets the failedCount property value. Number of failed devices
            ## @param value Value to set for the failed_count property.
            ## @return a void
            ## 
            def failed_count=(value)
                @failed_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configurationVersion" => lambda {|n| @configuration_version = n.get_number_value() },
                    "conflictCount" => lambda {|n| @conflict_count = n.get_number_value() },
                    "errorCount" => lambda {|n| @error_count = n.get_number_value() },
                    "failedCount" => lambda {|n| @failed_count = n.get_number_value() },
                    "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_date_time_value() },
                    "notApplicableCount" => lambda {|n| @not_applicable_count = n.get_number_value() },
                    "notApplicablePlatformCount" => lambda {|n| @not_applicable_platform_count = n.get_number_value() },
                    "pendingCount" => lambda {|n| @pending_count = n.get_number_value() },
                    "successCount" => lambda {|n| @success_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the lastUpdateDateTime property value. Last update time
            ## @return a date_time
            ## 
            def last_update_date_time
                return @last_update_date_time
            end
            ## 
            ## Sets the lastUpdateDateTime property value. Last update time
            ## @param value Value to set for the last_update_date_time property.
            ## @return a void
            ## 
            def last_update_date_time=(value)
                @last_update_date_time = value
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
            ## Gets the notApplicablePlatformCount property value. Number of not applicable devices due to mismatch platform and policy
            ## @return a integer
            ## 
            def not_applicable_platform_count
                return @not_applicable_platform_count
            end
            ## 
            ## Sets the notApplicablePlatformCount property value. Number of not applicable devices due to mismatch platform and policy
            ## @param value Value to set for the not_applicable_platform_count property.
            ## @return a void
            ## 
            def not_applicable_platform_count=(value)
                @not_applicable_platform_count = value
            end
            ## 
            ## Gets the pendingCount property value. Number of pending devices
            ## @return a integer
            ## 
            def pending_count
                return @pending_count
            end
            ## 
            ## Sets the pendingCount property value. Number of pending devices
            ## @param value Value to set for the pending_count property.
            ## @return a void
            ## 
            def pending_count=(value)
                @pending_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("configurationVersion", @configuration_version)
                writer.write_number_value("conflictCount", @conflict_count)
                writer.write_number_value("errorCount", @error_count)
                writer.write_number_value("failedCount", @failed_count)
                writer.write_date_time_value("lastUpdateDateTime", @last_update_date_time)
                writer.write_number_value("notApplicableCount", @not_applicable_count)
                writer.write_number_value("notApplicablePlatformCount", @not_applicable_platform_count)
                writer.write_number_value("pendingCount", @pending_count)
                writer.write_number_value("successCount", @success_count)
            end
            ## 
            ## Gets the successCount property value. Number of succeeded devices
            ## @return a integer
            ## 
            def success_count
                return @success_count
            end
            ## 
            ## Sets the successCount property value. Number of succeeded devices
            ## @param value Value to set for the success_count property.
            ## @return a void
            ## 
            def success_count=(value)
                @success_count = value
            end
        end
    end
end
