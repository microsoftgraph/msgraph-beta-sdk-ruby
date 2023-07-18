require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The status of the revoke licenses action performed on the Apple Volume Purchase Program token.
        class VppTokenRevokeLicensesActionResult < MicrosoftGraphBeta::Models::VppTokenActionResult
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible types of reasons for an Apple Volume Purchase Program token action failure.
            @action_failure_reason
            ## 
            # A count of the number of licenses that failed to revoke.
            @failed_licenses_count
            ## 
            # A count of the number of licenses that were attempted to revoke.
            @total_licenses_count
            ## 
            ## Gets the actionFailureReason property value. Possible types of reasons for an Apple Volume Purchase Program token action failure.
            ## @return a vpp_token_action_failure_reason
            ## 
            def action_failure_reason
                return @action_failure_reason
            end
            ## 
            ## Sets the actionFailureReason property value. Possible types of reasons for an Apple Volume Purchase Program token action failure.
            ## @param value Value to set for the action_failure_reason property.
            ## @return a void
            ## 
            def action_failure_reason=(value)
                @action_failure_reason = value
            end
            ## 
            ## Instantiates a new vppTokenRevokeLicensesActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a vpp_token_revoke_licenses_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VppTokenRevokeLicensesActionResult.new
            end
            ## 
            ## Gets the failedLicensesCount property value. A count of the number of licenses that failed to revoke.
            ## @return a integer
            ## 
            def failed_licenses_count
                return @failed_licenses_count
            end
            ## 
            ## Sets the failedLicensesCount property value. A count of the number of licenses that failed to revoke.
            ## @param value Value to set for the failed_licenses_count property.
            ## @return a void
            ## 
            def failed_licenses_count=(value)
                @failed_licenses_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionFailureReason" => lambda {|n| @action_failure_reason = n.get_enum_value(MicrosoftGraphBeta::Models::VppTokenActionFailureReason) },
                    "failedLicensesCount" => lambda {|n| @failed_licenses_count = n.get_number_value() },
                    "totalLicensesCount" => lambda {|n| @total_licenses_count = n.get_number_value() },
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
                writer.write_enum_value("actionFailureReason", @action_failure_reason)
                writer.write_number_value("failedLicensesCount", @failed_licenses_count)
                writer.write_number_value("totalLicensesCount", @total_licenses_count)
            end
            ## 
            ## Gets the totalLicensesCount property value. A count of the number of licenses that were attempted to revoke.
            ## @return a integer
            ## 
            def total_licenses_count
                return @total_licenses_count
            end
            ## 
            ## Sets the totalLicensesCount property value. A count of the number of licenses that were attempted to revoke.
            ## @param value Value to set for the total_licenses_count property.
            ## @return a void
            ## 
            def total_licenses_count=(value)
                @total_licenses_count = value
            end
        end
    end
end
