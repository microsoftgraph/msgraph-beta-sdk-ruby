require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityEmailThreatSubmission < MicrosoftGraphBeta::Models::SecurityThreatSubmission
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If the email is phishing simulation, this field won't be null.
            @attack_simulation_info
            ## 
            # Specifies the internet message ID of the email being submitted. This information is present in the email header.
            @internet_message_id
            ## 
            # The original category of the submission. The possible values are: notJunk, spam, phishing, malware and unkownFutureValue.
            @original_category
            ## 
            # Specifies the date and time stamp when the email was received.
            @received_date_time
            ## 
            # Specifies the email address (in smtp format) of the recipient who received the email.
            @recipient_email_address
            ## 
            # Specifies the email address of the sender.
            @sender
            ## 
            # Specifies the IP address of the sender.
            @sender_i_p
            ## 
            # Specifies the subject of the email.
            @subject
            ## 
            # It's used to automatically add allows for the components such as URL, file, sender; which are deemed bad by Microsoft so that similar messages in the future can be allowed.
            @tenant_allow_or_block_list_action
            ## 
            ## Gets the attackSimulationInfo property value. If the email is phishing simulation, this field won't be null.
            ## @return a security_attack_simulation_info
            ## 
            def attack_simulation_info
                return @attack_simulation_info
            end
            ## 
            ## Sets the attackSimulationInfo property value. If the email is phishing simulation, this field won't be null.
            ## @param value Value to set for the attackSimulationInfo property.
            ## @return a void
            ## 
            def attack_simulation_info=(value)
                @attack_simulation_info = value
            end
            ## 
            ## Instantiates a new securityEmailThreatSubmission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.emailThreatSubmission"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_email_threat_submission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.emailContentThreatSubmission"
                            return SecurityEmailContentThreatSubmission.new
                        when "#microsoft.graph.security.emailUrlThreatSubmission"
                            return SecurityEmailUrlThreatSubmission.new
                    end
                end
                return SecurityEmailThreatSubmission.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attackSimulationInfo" => lambda {|n| @attack_simulation_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAttackSimulationInfo.create_from_discriminator_value(pn) }) },
                    "internetMessageId" => lambda {|n| @internet_message_id = n.get_string_value() },
                    "originalCategory" => lambda {|n| @original_category = n.get_enum_value(MicrosoftGraphBeta::Models::SecuritySubmissionCategory) },
                    "receivedDateTime" => lambda {|n| @received_date_time = n.get_date_time_value() },
                    "recipientEmailAddress" => lambda {|n| @recipient_email_address = n.get_string_value() },
                    "sender" => lambda {|n| @sender = n.get_string_value() },
                    "senderIP" => lambda {|n| @sender_i_p = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "tenantAllowOrBlockListAction" => lambda {|n| @tenant_allow_or_block_list_action = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityTenantAllowOrBlockListAction.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the internetMessageId property value. Specifies the internet message ID of the email being submitted. This information is present in the email header.
            ## @return a string
            ## 
            def internet_message_id
                return @internet_message_id
            end
            ## 
            ## Sets the internetMessageId property value. Specifies the internet message ID of the email being submitted. This information is present in the email header.
            ## @param value Value to set for the internetMessageId property.
            ## @return a void
            ## 
            def internet_message_id=(value)
                @internet_message_id = value
            end
            ## 
            ## Gets the originalCategory property value. The original category of the submission. The possible values are: notJunk, spam, phishing, malware and unkownFutureValue.
            ## @return a security_submission_category
            ## 
            def original_category
                return @original_category
            end
            ## 
            ## Sets the originalCategory property value. The original category of the submission. The possible values are: notJunk, spam, phishing, malware and unkownFutureValue.
            ## @param value Value to set for the originalCategory property.
            ## @return a void
            ## 
            def original_category=(value)
                @original_category = value
            end
            ## 
            ## Gets the receivedDateTime property value. Specifies the date and time stamp when the email was received.
            ## @return a date_time
            ## 
            def received_date_time
                return @received_date_time
            end
            ## 
            ## Sets the receivedDateTime property value. Specifies the date and time stamp when the email was received.
            ## @param value Value to set for the receivedDateTime property.
            ## @return a void
            ## 
            def received_date_time=(value)
                @received_date_time = value
            end
            ## 
            ## Gets the recipientEmailAddress property value. Specifies the email address (in smtp format) of the recipient who received the email.
            ## @return a string
            ## 
            def recipient_email_address
                return @recipient_email_address
            end
            ## 
            ## Sets the recipientEmailAddress property value. Specifies the email address (in smtp format) of the recipient who received the email.
            ## @param value Value to set for the recipientEmailAddress property.
            ## @return a void
            ## 
            def recipient_email_address=(value)
                @recipient_email_address = value
            end
            ## 
            ## Gets the sender property value. Specifies the email address of the sender.
            ## @return a string
            ## 
            def sender
                return @sender
            end
            ## 
            ## Sets the sender property value. Specifies the email address of the sender.
            ## @param value Value to set for the sender property.
            ## @return a void
            ## 
            def sender=(value)
                @sender = value
            end
            ## 
            ## Gets the senderIP property value. Specifies the IP address of the sender.
            ## @return a string
            ## 
            def sender_i_p
                return @sender_i_p
            end
            ## 
            ## Sets the senderIP property value. Specifies the IP address of the sender.
            ## @param value Value to set for the senderIP property.
            ## @return a void
            ## 
            def sender_i_p=(value)
                @sender_i_p = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("attackSimulationInfo", @attack_simulation_info)
                writer.write_string_value("internetMessageId", @internet_message_id)
                writer.write_enum_value("originalCategory", @original_category)
                writer.write_date_time_value("receivedDateTime", @received_date_time)
                writer.write_string_value("recipientEmailAddress", @recipient_email_address)
                writer.write_string_value("sender", @sender)
                writer.write_string_value("senderIP", @sender_i_p)
                writer.write_string_value("subject", @subject)
                writer.write_object_value("tenantAllowOrBlockListAction", @tenant_allow_or_block_list_action)
            end
            ## 
            ## Gets the subject property value. Specifies the subject of the email.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. Specifies the subject of the email.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the tenantAllowOrBlockListAction property value. It's used to automatically add allows for the components such as URL, file, sender; which are deemed bad by Microsoft so that similar messages in the future can be allowed.
            ## @return a security_tenant_allow_or_block_list_action
            ## 
            def tenant_allow_or_block_list_action
                return @tenant_allow_or_block_list_action
            end
            ## 
            ## Sets the tenantAllowOrBlockListAction property value. It's used to automatically add allows for the components such as URL, file, sender; which are deemed bad by Microsoft so that similar messages in the future can be allowed.
            ## @param value Value to set for the tenantAllowOrBlockListAction property.
            ## @return a void
            ## 
            def tenant_allow_or_block_list_action=(value)
                @tenant_allow_or_block_list_action = value
            end
        end
    end
end
