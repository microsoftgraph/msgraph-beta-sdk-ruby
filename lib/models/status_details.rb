require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class StatusDetails < MicrosoftGraphBeta::Models::StatusBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional details in case of error.
            @additional_details
            ## 
            # Categorizes the error code. Possible values are Failure, NonServiceFailure, Success.
            @error_category
            ## 
            # Unique error code if any occurred. Learn more
            @error_code
            ## 
            # Summarizes the status and describes why the status happened.
            @reason
            ## 
            # Provides the resolution for the corresponding error.
            @recommended_action
            ## 
            ## Gets the additionalDetails property value. Additional details in case of error.
            ## @return a string
            ## 
            def additional_details
                return @additional_details
            end
            ## 
            ## Sets the additionalDetails property value. Additional details in case of error.
            ## @param value Value to set for the additional_details property.
            ## @return a void
            ## 
            def additional_details=(value)
                @additional_details = value
            end
            ## 
            ## Instantiates a new statusDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.statusDetails"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a status_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return StatusDetails.new
            end
            ## 
            ## Gets the errorCategory property value. Categorizes the error code. Possible values are Failure, NonServiceFailure, Success.
            ## @return a provisioning_status_error_category
            ## 
            def error_category
                return @error_category
            end
            ## 
            ## Sets the errorCategory property value. Categorizes the error code. Possible values are Failure, NonServiceFailure, Success.
            ## @param value Value to set for the error_category property.
            ## @return a void
            ## 
            def error_category=(value)
                @error_category = value
            end
            ## 
            ## Gets the errorCode property value. Unique error code if any occurred. Learn more
            ## @return a string
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. Unique error code if any occurred. Learn more
            ## @param value Value to set for the error_code property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalDetails" => lambda {|n| @additional_details = n.get_string_value() },
                    "errorCategory" => lambda {|n| @error_category = n.get_enum_value(MicrosoftGraphBeta::Models::ProvisioningStatusErrorCategory) },
                    "errorCode" => lambda {|n| @error_code = n.get_string_value() },
                    "reason" => lambda {|n| @reason = n.get_string_value() },
                    "recommendedAction" => lambda {|n| @recommended_action = n.get_string_value() },
                })
            end
            ## 
            ## Gets the reason property value. Summarizes the status and describes why the status happened.
            ## @return a string
            ## 
            def reason
                return @reason
            end
            ## 
            ## Sets the reason property value. Summarizes the status and describes why the status happened.
            ## @param value Value to set for the reason property.
            ## @return a void
            ## 
            def reason=(value)
                @reason = value
            end
            ## 
            ## Gets the recommendedAction property value. Provides the resolution for the corresponding error.
            ## @return a string
            ## 
            def recommended_action
                return @recommended_action
            end
            ## 
            ## Sets the recommendedAction property value. Provides the resolution for the corresponding error.
            ## @param value Value to set for the recommended_action property.
            ## @return a void
            ## 
            def recommended_action=(value)
                @recommended_action = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("additionalDetails", @additional_details)
                writer.write_enum_value("errorCategory", @error_category)
                writer.write_string_value("errorCode", @error_code)
                writer.write_string_value("reason", @reason)
                writer.write_string_value("recommendedAction", @recommended_action)
            end
        end
    end
end
