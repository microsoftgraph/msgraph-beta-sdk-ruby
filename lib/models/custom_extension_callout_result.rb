require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CustomExtensionCalloutResult < MicrosoftGraphBeta::Models::AuthenticationEventHandlerResult
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The calloutDateTime property
        @callout_date_time
        ## 
        # The customExtensionId property
        @custom_extension_id
        ## 
        # The errorCode property
        @error_code
        ## 
        # The httpStatus property
        @http_status
        ## 
        # The numberOfAttempts property
        @number_of_attempts
        ## 
        ## Gets the calloutDateTime property value. The calloutDateTime property
        ## @return a date_time
        ## 
        def callout_date_time
            return @callout_date_time
        end
        ## 
        ## Sets the calloutDateTime property value. The calloutDateTime property
        ## @param value Value to set for the calloutDateTime property.
        ## @return a void
        ## 
        def callout_date_time=(value)
            @callout_date_time = value
        end
        ## 
        ## Instantiates a new CustomExtensionCalloutResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.customExtensionCalloutResult"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a custom_extension_callout_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CustomExtensionCalloutResult.new
        end
        ## 
        ## Gets the customExtensionId property value. The customExtensionId property
        ## @return a string
        ## 
        def custom_extension_id
            return @custom_extension_id
        end
        ## 
        ## Sets the customExtensionId property value. The customExtensionId property
        ## @param value Value to set for the customExtensionId property.
        ## @return a void
        ## 
        def custom_extension_id=(value)
            @custom_extension_id = value
        end
        ## 
        ## Gets the errorCode property value. The errorCode property
        ## @return a integer
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. The errorCode property
        ## @param value Value to set for the errorCode property.
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
                "calloutDateTime" => lambda {|n| @callout_date_time = n.get_date_time_value() },
                "customExtensionId" => lambda {|n| @custom_extension_id = n.get_string_value() },
                "errorCode" => lambda {|n| @error_code = n.get_number_value() },
                "httpStatus" => lambda {|n| @http_status = n.get_number_value() },
                "numberOfAttempts" => lambda {|n| @number_of_attempts = n.get_number_value() },
            })
        end
        ## 
        ## Gets the httpStatus property value. The httpStatus property
        ## @return a integer
        ## 
        def http_status
            return @http_status
        end
        ## 
        ## Sets the httpStatus property value. The httpStatus property
        ## @param value Value to set for the httpStatus property.
        ## @return a void
        ## 
        def http_status=(value)
            @http_status = value
        end
        ## 
        ## Gets the numberOfAttempts property value. The numberOfAttempts property
        ## @return a integer
        ## 
        def number_of_attempts
            return @number_of_attempts
        end
        ## 
        ## Sets the numberOfAttempts property value. The numberOfAttempts property
        ## @param value Value to set for the numberOfAttempts property.
        ## @return a void
        ## 
        def number_of_attempts=(value)
            @number_of_attempts = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("calloutDateTime", @callout_date_time)
            writer.write_string_value("customExtensionId", @custom_extension_id)
            writer.write_number_value("errorCode", @error_code)
            writer.write_number_value("httpStatus", @http_status)
            writer.write_number_value("numberOfAttempts", @number_of_attempts)
        end
    end
end
