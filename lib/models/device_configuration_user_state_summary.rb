require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceConfigurationUserStateSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of compliant users
            @compliant_user_count
            ## 
            # Number of conflict users
            @conflict_user_count
            ## 
            # Number of error users
            @error_user_count
            ## 
            # Number of NonCompliant users
            @non_compliant_user_count
            ## 
            # Number of not applicable users
            @not_applicable_user_count
            ## 
            # Number of remediated users
            @remediated_user_count
            ## 
            # Number of unknown users
            @unknown_user_count
            ## 
            ## Gets the compliantUserCount property value. Number of compliant users
            ## @return a integer
            ## 
            def compliant_user_count
                return @compliant_user_count
            end
            ## 
            ## Sets the compliantUserCount property value. Number of compliant users
            ## @param value Value to set for the compliantUserCount property.
            ## @return a void
            ## 
            def compliant_user_count=(value)
                @compliant_user_count = value
            end
            ## 
            ## Gets the conflictUserCount property value. Number of conflict users
            ## @return a integer
            ## 
            def conflict_user_count
                return @conflict_user_count
            end
            ## 
            ## Sets the conflictUserCount property value. Number of conflict users
            ## @param value Value to set for the conflictUserCount property.
            ## @return a void
            ## 
            def conflict_user_count=(value)
                @conflict_user_count = value
            end
            ## 
            ## Instantiates a new DeviceConfigurationUserStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_configuration_user_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceConfigurationUserStateSummary.new
            end
            ## 
            ## Gets the errorUserCount property value. Number of error users
            ## @return a integer
            ## 
            def error_user_count
                return @error_user_count
            end
            ## 
            ## Sets the errorUserCount property value. Number of error users
            ## @param value Value to set for the errorUserCount property.
            ## @return a void
            ## 
            def error_user_count=(value)
                @error_user_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantUserCount" => lambda {|n| @compliant_user_count = n.get_number_value() },
                    "conflictUserCount" => lambda {|n| @conflict_user_count = n.get_number_value() },
                    "errorUserCount" => lambda {|n| @error_user_count = n.get_number_value() },
                    "nonCompliantUserCount" => lambda {|n| @non_compliant_user_count = n.get_number_value() },
                    "notApplicableUserCount" => lambda {|n| @not_applicable_user_count = n.get_number_value() },
                    "remediatedUserCount" => lambda {|n| @remediated_user_count = n.get_number_value() },
                    "unknownUserCount" => lambda {|n| @unknown_user_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the nonCompliantUserCount property value. Number of NonCompliant users
            ## @return a integer
            ## 
            def non_compliant_user_count
                return @non_compliant_user_count
            end
            ## 
            ## Sets the nonCompliantUserCount property value. Number of NonCompliant users
            ## @param value Value to set for the nonCompliantUserCount property.
            ## @return a void
            ## 
            def non_compliant_user_count=(value)
                @non_compliant_user_count = value
            end
            ## 
            ## Gets the notApplicableUserCount property value. Number of not applicable users
            ## @return a integer
            ## 
            def not_applicable_user_count
                return @not_applicable_user_count
            end
            ## 
            ## Sets the notApplicableUserCount property value. Number of not applicable users
            ## @param value Value to set for the notApplicableUserCount property.
            ## @return a void
            ## 
            def not_applicable_user_count=(value)
                @not_applicable_user_count = value
            end
            ## 
            ## Gets the remediatedUserCount property value. Number of remediated users
            ## @return a integer
            ## 
            def remediated_user_count
                return @remediated_user_count
            end
            ## 
            ## Sets the remediatedUserCount property value. Number of remediated users
            ## @param value Value to set for the remediatedUserCount property.
            ## @return a void
            ## 
            def remediated_user_count=(value)
                @remediated_user_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("compliantUserCount", @compliant_user_count)
                writer.write_number_value("conflictUserCount", @conflict_user_count)
                writer.write_number_value("errorUserCount", @error_user_count)
                writer.write_number_value("nonCompliantUserCount", @non_compliant_user_count)
                writer.write_number_value("notApplicableUserCount", @not_applicable_user_count)
                writer.write_number_value("remediatedUserCount", @remediated_user_count)
                writer.write_number_value("unknownUserCount", @unknown_user_count)
            end
            ## 
            ## Gets the unknownUserCount property value. Number of unknown users
            ## @return a integer
            ## 
            def unknown_user_count
                return @unknown_user_count
            end
            ## 
            ## Sets the unknownUserCount property value. Number of unknown users
            ## @param value Value to set for the unknownUserCount property.
            ## @return a void
            ## 
            def unknown_user_count=(value)
                @unknown_user_count = value
            end
        end
    end
end
