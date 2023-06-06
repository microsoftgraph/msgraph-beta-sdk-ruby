require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The security baseline compliance state summary for the security baseline of the account.
        class SecurityBaselineStateSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of conflict devices
            @conflict_count
            ## 
            # Number of error devices
            @error_count
            ## 
            # Number of not applicable devices
            @not_applicable_count
            ## 
            # Number of not secure devices
            @not_secure_count
            ## 
            # Number of secure devices
            @secure_count
            ## 
            # Number of unknown devices
            @unknown_count
            ## 
            ## Gets the conflictCount property value. Number of conflict devices
            ## @return a integer
            ## 
            def conflict_count
                return @conflict_count
            end
            ## 
            ## Sets the conflictCount property value. Number of conflict devices
            ## @param value Value to set for the conflict_count property.
            ## @return a void
            ## 
            def conflict_count=(value)
                @conflict_count = value
            end
            ## 
            ## Instantiates a new securityBaselineStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_baseline_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.securityBaselineCategoryStateSummary"
                            return SecurityBaselineCategoryStateSummary.new
                    end
                end
                return SecurityBaselineStateSummary.new
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
                    "conflictCount" => lambda {|n| @conflict_count = n.get_number_value() },
                    "errorCount" => lambda {|n| @error_count = n.get_number_value() },
                    "notApplicableCount" => lambda {|n| @not_applicable_count = n.get_number_value() },
                    "notSecureCount" => lambda {|n| @not_secure_count = n.get_number_value() },
                    "secureCount" => lambda {|n| @secure_count = n.get_number_value() },
                    "unknownCount" => lambda {|n| @unknown_count = n.get_number_value() },
                })
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
            ## Gets the notSecureCount property value. Number of not secure devices
            ## @return a integer
            ## 
            def not_secure_count
                return @not_secure_count
            end
            ## 
            ## Sets the notSecureCount property value. Number of not secure devices
            ## @param value Value to set for the not_secure_count property.
            ## @return a void
            ## 
            def not_secure_count=(value)
                @not_secure_count = value
            end
            ## 
            ## Gets the secureCount property value. Number of secure devices
            ## @return a integer
            ## 
            def secure_count
                return @secure_count
            end
            ## 
            ## Sets the secureCount property value. Number of secure devices
            ## @param value Value to set for the secure_count property.
            ## @return a void
            ## 
            def secure_count=(value)
                @secure_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("conflictCount", @conflict_count)
                writer.write_number_value("errorCount", @error_count)
                writer.write_number_value("notApplicableCount", @not_applicable_count)
                writer.write_number_value("notSecureCount", @not_secure_count)
                writer.write_number_value("secureCount", @secure_count)
                writer.write_number_value("unknownCount", @unknown_count)
            end
            ## 
            ## Gets the unknownCount property value. Number of unknown devices
            ## @return a integer
            ## 
            def unknown_count
                return @unknown_count
            end
            ## 
            ## Sets the unknownCount property value. Number of unknown devices
            ## @param value Value to set for the unknown_count property.
            ## @return a void
            ## 
            def unknown_count=(value)
                @unknown_count = value
            end
        end
    end
end
