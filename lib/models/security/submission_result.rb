require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class SubmissionResult
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The submission result category. The possible values are: notJunk, spam, phishing, malware, allowedByPolicy, blockedByPolicy, spoof, unknown, noResultAvailable and unkownFutureValue.
                @category
                ## 
                # Specifies the additional details provided by Microsoft to substantiate their analysis result.
                @detail
                ## 
                # Specifies the files detected by Microsoft in the submitted emails.
                @detected_files
                ## 
                # Specifes the URLs detected by Microsoft in the submitted email.
                @detected_urls
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Specifies the setting for user mailbox denoted by a comma-separated string.
                @user_mailbox_setting
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
                ## Gets the category property value. The submission result category. The possible values are: notJunk, spam, phishing, malware, allowedByPolicy, blockedByPolicy, spoof, unknown, noResultAvailable and unkownFutureValue.
                ## @return a submission_result_category
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. The submission result category. The possible values are: notJunk, spam, phishing, malware, allowedByPolicy, blockedByPolicy, spoof, unknown, noResultAvailable and unkownFutureValue.
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Instantiates a new submissionResult and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a submission_result
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SubmissionResult.new
                end
                ## 
                ## Gets the detail property value. Specifies the additional details provided by Microsoft to substantiate their analysis result.
                ## @return a submission_result_detail
                ## 
                def detail
                    return @detail
                end
                ## 
                ## Sets the detail property value. Specifies the additional details provided by Microsoft to substantiate their analysis result.
                ## @param value Value to set for the detail property.
                ## @return a void
                ## 
                def detail=(value)
                    @detail = value
                end
                ## 
                ## Gets the detectedFiles property value. Specifies the files detected by Microsoft in the submitted emails.
                ## @return a submission_detected_file
                ## 
                def detected_files
                    return @detected_files
                end
                ## 
                ## Sets the detectedFiles property value. Specifies the files detected by Microsoft in the submitted emails.
                ## @param value Value to set for the detected_files property.
                ## @return a void
                ## 
                def detected_files=(value)
                    @detected_files = value
                end
                ## 
                ## Gets the detectedUrls property value. Specifes the URLs detected by Microsoft in the submitted email.
                ## @return a string
                ## 
                def detected_urls
                    return @detected_urls
                end
                ## 
                ## Sets the detectedUrls property value. Specifes the URLs detected by Microsoft in the submitted email.
                ## @param value Value to set for the detected_urls property.
                ## @return a void
                ## 
                def detected_urls=(value)
                    @detected_urls = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::Security::SubmissionResultCategory) },
                        "detail" => lambda {|n| @detail = n.get_enum_value(MicrosoftGraphBeta::Models::Security::SubmissionResultDetail) },
                        "detectedFiles" => lambda {|n| @detected_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::SubmissionDetectedFile.create_from_discriminator_value(pn) }) },
                        "detectedUrls" => lambda {|n| @detected_urls = n.get_collection_of_primitive_values(String) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "userMailboxSetting" => lambda {|n| @user_mailbox_setting = n.get_enum_value(MicrosoftGraphBeta::Models::Security::UserMailboxSetting) },
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
                    writer.write_enum_value("category", @category)
                    writer.write_enum_value("detail", @detail)
                    writer.write_collection_of_object_values("detectedFiles", @detected_files)
                    writer.write_collection_of_primitive_values("detectedUrls", @detected_urls)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("userMailboxSetting", @user_mailbox_setting)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the userMailboxSetting property value. Specifies the setting for user mailbox denoted by a comma-separated string.
                ## @return a user_mailbox_setting
                ## 
                def user_mailbox_setting
                    return @user_mailbox_setting
                end
                ## 
                ## Sets the userMailboxSetting property value. Specifies the setting for user mailbox denoted by a comma-separated string.
                ## @param value Value to set for the user_mailbox_setting property.
                ## @return a void
                ## 
                def user_mailbox_setting=(value)
                    @user_mailbox_setting = value
                end
            end
        end
    end
end
