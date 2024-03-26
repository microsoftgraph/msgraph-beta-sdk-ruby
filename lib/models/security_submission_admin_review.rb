require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecuritySubmissionAdminReview
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies who reviewed the email. The identification is an email ID or other identity strings.
            @review_by
            ## 
            # Specifies the date time when the review occurred.
            @review_date_time
            ## 
            # Specifies what the review result was. The possible values are: notJunk, spam, phishing, malware, allowedByPolicy, blockedByPolicy, spoof, unknown, noResultAvailable, and unknownFutureValue.
            @review_result
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new SecuritySubmissionAdminReview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_submission_admin_review
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecuritySubmissionAdminReview.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reviewBy" => lambda {|n| @review_by = n.get_string_value() },
                    "reviewDateTime" => lambda {|n| @review_date_time = n.get_date_time_value() },
                    "reviewResult" => lambda {|n| @review_result = n.get_enum_value(MicrosoftGraphBeta::Models::SecuritySubmissionResultCategory) },
                }
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the reviewBy property value. Specifies who reviewed the email. The identification is an email ID or other identity strings.
            ## @return a string
            ## 
            def review_by
                return @review_by
            end
            ## 
            ## Sets the reviewBy property value. Specifies who reviewed the email. The identification is an email ID or other identity strings.
            ## @param value Value to set for the reviewBy property.
            ## @return a void
            ## 
            def review_by=(value)
                @review_by = value
            end
            ## 
            ## Gets the reviewDateTime property value. Specifies the date time when the review occurred.
            ## @return a date_time
            ## 
            def review_date_time
                return @review_date_time
            end
            ## 
            ## Sets the reviewDateTime property value. Specifies the date time when the review occurred.
            ## @param value Value to set for the reviewDateTime property.
            ## @return a void
            ## 
            def review_date_time=(value)
                @review_date_time = value
            end
            ## 
            ## Gets the reviewResult property value. Specifies what the review result was. The possible values are: notJunk, spam, phishing, malware, allowedByPolicy, blockedByPolicy, spoof, unknown, noResultAvailable, and unknownFutureValue.
            ## @return a security_submission_result_category
            ## 
            def review_result
                return @review_result
            end
            ## 
            ## Sets the reviewResult property value. Specifies what the review result was. The possible values are: notJunk, spam, phishing, malware, allowedByPolicy, blockedByPolicy, spoof, unknown, noResultAvailable, and unknownFutureValue.
            ## @param value Value to set for the reviewResult property.
            ## @return a void
            ## 
            def review_result=(value)
                @review_result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("reviewBy", @review_by)
                writer.write_date_time_value("reviewDateTime", @review_date_time)
                writer.write_enum_value("reviewResult", @review_result)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
