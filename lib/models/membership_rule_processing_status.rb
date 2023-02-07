require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MembershipRuleProcessingStatus
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Detailed error message if dynamic group processing ran into an error.  Optional. Read-only.
        @error_message
        ## 
        # Most recent date and time when membership of a dynamic group was updated.  Optional. Read-only.
        @last_membership_updated
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Current status of a dynamic group processing. Possible values are: NotStarted, Running, Succeeded, Failed, and UnknownFutureValue.  Required. Read-only.
        @status
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new membershipRuleProcessingStatus and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a membership_rule_processing_status
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MembershipRuleProcessingStatus.new
        end
        ## 
        ## Gets the errorMessage property value. Detailed error message if dynamic group processing ran into an error.  Optional. Read-only.
        ## @return a string
        ## 
        def error_message
            return @error_message
        end
        ## 
        ## Sets the errorMessage property value. Detailed error message if dynamic group processing ran into an error.  Optional. Read-only.
        ## @param value Value to set for the error_message property.
        ## @return a void
        ## 
        def error_message=(value)
            @error_message = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "errorMessage" => lambda {|n| @error_message = n.get_string_value() },
                "lastMembershipUpdated" => lambda {|n| @last_membership_updated = n.get_date_time_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::MembershipRuleProcessingStatusDetails) },
            }
        end
        ## 
        ## Gets the lastMembershipUpdated property value. Most recent date and time when membership of a dynamic group was updated.  Optional. Read-only.
        ## @return a date_time
        ## 
        def last_membership_updated
            return @last_membership_updated
        end
        ## 
        ## Sets the lastMembershipUpdated property value. Most recent date and time when membership of a dynamic group was updated.  Optional. Read-only.
        ## @param value Value to set for the last_membership_updated property.
        ## @return a void
        ## 
        def last_membership_updated=(value)
            @last_membership_updated = value
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("errorMessage", @error_message)
            writer.write_date_time_value("lastMembershipUpdated", @last_membership_updated)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("status", @status)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the status property value. Current status of a dynamic group processing. Possible values are: NotStarted, Running, Succeeded, Failed, and UnknownFutureValue.  Required. Read-only.
        ## @return a membership_rule_processing_status_details
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Current status of a dynamic group processing. Possible values are: NotStarted, Running, Succeeded, Failed, and UnknownFutureValue.  Required. Read-only.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
