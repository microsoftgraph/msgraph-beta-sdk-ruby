require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class RevokeAppleVppLicensesActionResult < MicrosoftGraphBeta::Models::DeviceActionResult
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Total number of Apple Vpp licenses that failed to revoke
        @failed_licenses_count
        ## 
        # Total number of Apple Vpp licenses associated
        @total_licenses_count
        ## 
        ## Instantiates a new RevokeAppleVppLicensesActionResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a revoke_apple_vpp_licenses_action_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RevokeAppleVppLicensesActionResult.new
        end
        ## 
        ## Gets the failedLicensesCount property value. Total number of Apple Vpp licenses that failed to revoke
        ## @return a integer
        ## 
        def failed_licenses_count
            return @failed_licenses_count
        end
        ## 
        ## Sets the failedLicensesCount property value. Total number of Apple Vpp licenses that failed to revoke
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
            writer.write_number_value("failedLicensesCount", @failed_licenses_count)
            writer.write_number_value("totalLicensesCount", @total_licenses_count)
        end
        ## 
        ## Gets the totalLicensesCount property value. Total number of Apple Vpp licenses associated
        ## @return a integer
        ## 
        def total_licenses_count
            return @total_licenses_count
        end
        ## 
        ## Sets the totalLicensesCount property value. Total number of Apple Vpp licenses associated
        ## @param value Value to set for the total_licenses_count property.
        ## @return a void
        ## 
        def total_licenses_count=(value)
            @total_licenses_count = value
        end
    end
end
