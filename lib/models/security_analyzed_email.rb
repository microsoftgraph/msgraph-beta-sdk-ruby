require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAnalyzedEmail < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alertIds property
            @alert_ids
            ## 
            # The attachments property
            @attachments
            ## 
            # The attachmentsCount property
            @attachments_count
            ## 
            # The authenticationDetails property
            @authentication_details
            ## 
            # The bulkComplaintLevel property
            @bulk_complaint_level
            ## 
            # The contexts property
            @contexts
            ## 
            # The detectionMethods property
            @detection_methods
            ## 
            # The directionality property
            @directionality
            ## 
            # The distributionList property
            @distribution_list
            ## 
            # The emailClusterId property
            @email_cluster_id
            ## 
            # The exchangeTransportRules property
            @exchange_transport_rules
            ## 
            # The internetMessageId property
            @internet_message_id
            ## 
            # The language property
            @language
            ## 
            # The latestDelivery property
            @latest_delivery
            ## 
            # The loggedDateTime property
            @logged_date_time
            ## 
            # The networkMessageId property
            @network_message_id
            ## 
            # The originalDelivery property
            @original_delivery
            ## 
            # The overrideSources property
            @override_sources
            ## 
            # The phishConfidenceLevel property
            @phish_confidence_level
            ## 
            # The policy property
            @policy
            ## 
            # The policyAction property
            @policy_action
            ## 
            # The recipientEmailAddresses property
            @recipient_email_addresses
            ## 
            # The returnPath property
            @return_path
            ## 
            # The senderDetail property
            @sender_detail
            ## 
            # The sizeInBytes property
            @size_in_bytes
            ## 
            # The spamConfidenceLevel property
            @spam_confidence_level
            ## 
            # The subject property
            @subject
            ## 
            # The threatType property
            @threat_type
            ## 
            # The urls property
            @urls
            ## 
            # The urlsCount property
            @urls_count
            ## 
            ## Gets the alertIds property value. The alertIds property
            ## @return a string
            ## 
            def alert_ids
                return @alert_ids
            end
            ## 
            ## Sets the alertIds property value. The alertIds property
            ## @param value Value to set for the alertIds property.
            ## @return a void
            ## 
            def alert_ids=(value)
                @alert_ids = value
            end
            ## 
            ## Gets the attachments property value. The attachments property
            ## @return a security_analyzed_email_attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. The attachments property
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the attachmentsCount property value. The attachmentsCount property
            ## @return a integer
            ## 
            def attachments_count
                return @attachments_count
            end
            ## 
            ## Sets the attachmentsCount property value. The attachmentsCount property
            ## @param value Value to set for the attachmentsCount property.
            ## @return a void
            ## 
            def attachments_count=(value)
                @attachments_count = value
            end
            ## 
            ## Gets the authenticationDetails property value. The authenticationDetails property
            ## @return a security_analyzed_email_authentication_detail
            ## 
            def authentication_details
                return @authentication_details
            end
            ## 
            ## Sets the authenticationDetails property value. The authenticationDetails property
            ## @param value Value to set for the authenticationDetails property.
            ## @return a void
            ## 
            def authentication_details=(value)
                @authentication_details = value
            end
            ## 
            ## Gets the bulkComplaintLevel property value. The bulkComplaintLevel property
            ## @return a string
            ## 
            def bulk_complaint_level
                return @bulk_complaint_level
            end
            ## 
            ## Sets the bulkComplaintLevel property value. The bulkComplaintLevel property
            ## @param value Value to set for the bulkComplaintLevel property.
            ## @return a void
            ## 
            def bulk_complaint_level=(value)
                @bulk_complaint_level = value
            end
            ## 
            ## Instantiates a new securityAnalyzedEmail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contexts property value. The contexts property
            ## @return a string
            ## 
            def contexts
                return @contexts
            end
            ## 
            ## Sets the contexts property value. The contexts property
            ## @param value Value to set for the contexts property.
            ## @return a void
            ## 
            def contexts=(value)
                @contexts = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_analyzed_email
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAnalyzedEmail.new
            end
            ## 
            ## Gets the detectionMethods property value. The detectionMethods property
            ## @return a string
            ## 
            def detection_methods
                return @detection_methods
            end
            ## 
            ## Sets the detectionMethods property value. The detectionMethods property
            ## @param value Value to set for the detectionMethods property.
            ## @return a void
            ## 
            def detection_methods=(value)
                @detection_methods = value
            end
            ## 
            ## Gets the directionality property value. The directionality property
            ## @return a security_antispam_directionality
            ## 
            def directionality
                return @directionality
            end
            ## 
            ## Sets the directionality property value. The directionality property
            ## @param value Value to set for the directionality property.
            ## @return a void
            ## 
            def directionality=(value)
                @directionality = value
            end
            ## 
            ## Gets the distributionList property value. The distributionList property
            ## @return a string
            ## 
            def distribution_list
                return @distribution_list
            end
            ## 
            ## Sets the distributionList property value. The distributionList property
            ## @param value Value to set for the distributionList property.
            ## @return a void
            ## 
            def distribution_list=(value)
                @distribution_list = value
            end
            ## 
            ## Gets the emailClusterId property value. The emailClusterId property
            ## @return a string
            ## 
            def email_cluster_id
                return @email_cluster_id
            end
            ## 
            ## Sets the emailClusterId property value. The emailClusterId property
            ## @param value Value to set for the emailClusterId property.
            ## @return a void
            ## 
            def email_cluster_id=(value)
                @email_cluster_id = value
            end
            ## 
            ## Gets the exchangeTransportRules property value. The exchangeTransportRules property
            ## @return a security_analyzed_email_exchange_transport_rule_info
            ## 
            def exchange_transport_rules
                return @exchange_transport_rules
            end
            ## 
            ## Sets the exchangeTransportRules property value. The exchangeTransportRules property
            ## @param value Value to set for the exchangeTransportRules property.
            ## @return a void
            ## 
            def exchange_transport_rules=(value)
                @exchange_transport_rules = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertIds" => lambda {|n| @alert_ids = n.get_collection_of_primitive_values(String) },
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmailAttachment.create_from_discriminator_value(pn) }) },
                    "attachmentsCount" => lambda {|n| @attachments_count = n.get_number_value() },
                    "authenticationDetails" => lambda {|n| @authentication_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmailAuthenticationDetail.create_from_discriminator_value(pn) }) },
                    "bulkComplaintLevel" => lambda {|n| @bulk_complaint_level = n.get_string_value() },
                    "contexts" => lambda {|n| @contexts = n.get_collection_of_primitive_values(String) },
                    "detectionMethods" => lambda {|n| @detection_methods = n.get_collection_of_primitive_values(String) },
                    "directionality" => lambda {|n| @directionality = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAntispamDirectionality) },
                    "distributionList" => lambda {|n| @distribution_list = n.get_string_value() },
                    "emailClusterId" => lambda {|n| @email_cluster_id = n.get_string_value() },
                    "exchangeTransportRules" => lambda {|n| @exchange_transport_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmailExchangeTransportRuleInfo.create_from_discriminator_value(pn) }) },
                    "internetMessageId" => lambda {|n| @internet_message_id = n.get_string_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "latestDelivery" => lambda {|n| @latest_delivery = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmailDeliveryDetail.create_from_discriminator_value(pn) }) },
                    "loggedDateTime" => lambda {|n| @logged_date_time = n.get_date_time_value() },
                    "networkMessageId" => lambda {|n| @network_message_id = n.get_string_value() },
                    "originalDelivery" => lambda {|n| @original_delivery = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmailDeliveryDetail.create_from_discriminator_value(pn) }) },
                    "overrideSources" => lambda {|n| @override_sources = n.get_collection_of_primitive_values(String) },
                    "phishConfidenceLevel" => lambda {|n| @phish_confidence_level = n.get_string_value() },
                    "policy" => lambda {|n| @policy = n.get_string_value() },
                    "policyAction" => lambda {|n| @policy_action = n.get_string_value() },
                    "recipientEmailAddresses" => lambda {|n| @recipient_email_addresses = n.get_collection_of_primitive_values(String) },
                    "returnPath" => lambda {|n| @return_path = n.get_string_value() },
                    "senderDetail" => lambda {|n| @sender_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmailSenderDetail.create_from_discriminator_value(pn) }) },
                    "sizeInBytes" => lambda {|n| @size_in_bytes = n.get_number_value() },
                    "spamConfidenceLevel" => lambda {|n| @spam_confidence_level = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "threatType" => lambda {|n| @threat_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityThreatType) },
                    "urls" => lambda {|n| @urls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmailUrl.create_from_discriminator_value(pn) }) },
                    "urlsCount" => lambda {|n| @urls_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the internetMessageId property value. The internetMessageId property
            ## @return a string
            ## 
            def internet_message_id
                return @internet_message_id
            end
            ## 
            ## Sets the internetMessageId property value. The internetMessageId property
            ## @param value Value to set for the internetMessageId property.
            ## @return a void
            ## 
            def internet_message_id=(value)
                @internet_message_id = value
            end
            ## 
            ## Gets the language property value. The language property
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The language property
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the latestDelivery property value. The latestDelivery property
            ## @return a security_analyzed_email_delivery_detail
            ## 
            def latest_delivery
                return @latest_delivery
            end
            ## 
            ## Sets the latestDelivery property value. The latestDelivery property
            ## @param value Value to set for the latestDelivery property.
            ## @return a void
            ## 
            def latest_delivery=(value)
                @latest_delivery = value
            end
            ## 
            ## Gets the loggedDateTime property value. The loggedDateTime property
            ## @return a date_time
            ## 
            def logged_date_time
                return @logged_date_time
            end
            ## 
            ## Sets the loggedDateTime property value. The loggedDateTime property
            ## @param value Value to set for the loggedDateTime property.
            ## @return a void
            ## 
            def logged_date_time=(value)
                @logged_date_time = value
            end
            ## 
            ## Gets the networkMessageId property value. The networkMessageId property
            ## @return a string
            ## 
            def network_message_id
                return @network_message_id
            end
            ## 
            ## Sets the networkMessageId property value. The networkMessageId property
            ## @param value Value to set for the networkMessageId property.
            ## @return a void
            ## 
            def network_message_id=(value)
                @network_message_id = value
            end
            ## 
            ## Gets the originalDelivery property value. The originalDelivery property
            ## @return a security_analyzed_email_delivery_detail
            ## 
            def original_delivery
                return @original_delivery
            end
            ## 
            ## Sets the originalDelivery property value. The originalDelivery property
            ## @param value Value to set for the originalDelivery property.
            ## @return a void
            ## 
            def original_delivery=(value)
                @original_delivery = value
            end
            ## 
            ## Gets the overrideSources property value. The overrideSources property
            ## @return a string
            ## 
            def override_sources
                return @override_sources
            end
            ## 
            ## Sets the overrideSources property value. The overrideSources property
            ## @param value Value to set for the overrideSources property.
            ## @return a void
            ## 
            def override_sources=(value)
                @override_sources = value
            end
            ## 
            ## Gets the phishConfidenceLevel property value. The phishConfidenceLevel property
            ## @return a string
            ## 
            def phish_confidence_level
                return @phish_confidence_level
            end
            ## 
            ## Sets the phishConfidenceLevel property value. The phishConfidenceLevel property
            ## @param value Value to set for the phishConfidenceLevel property.
            ## @return a void
            ## 
            def phish_confidence_level=(value)
                @phish_confidence_level = value
            end
            ## 
            ## Gets the policy property value. The policy property
            ## @return a string
            ## 
            def policy
                return @policy
            end
            ## 
            ## Sets the policy property value. The policy property
            ## @param value Value to set for the policy property.
            ## @return a void
            ## 
            def policy=(value)
                @policy = value
            end
            ## 
            ## Gets the policyAction property value. The policyAction property
            ## @return a string
            ## 
            def policy_action
                return @policy_action
            end
            ## 
            ## Sets the policyAction property value. The policyAction property
            ## @param value Value to set for the policyAction property.
            ## @return a void
            ## 
            def policy_action=(value)
                @policy_action = value
            end
            ## 
            ## Gets the recipientEmailAddresses property value. The recipientEmailAddresses property
            ## @return a string
            ## 
            def recipient_email_addresses
                return @recipient_email_addresses
            end
            ## 
            ## Sets the recipientEmailAddresses property value. The recipientEmailAddresses property
            ## @param value Value to set for the recipientEmailAddresses property.
            ## @return a void
            ## 
            def recipient_email_addresses=(value)
                @recipient_email_addresses = value
            end
            ## 
            ## Gets the returnPath property value. The returnPath property
            ## @return a string
            ## 
            def return_path
                return @return_path
            end
            ## 
            ## Sets the returnPath property value. The returnPath property
            ## @param value Value to set for the returnPath property.
            ## @return a void
            ## 
            def return_path=(value)
                @return_path = value
            end
            ## 
            ## Gets the senderDetail property value. The senderDetail property
            ## @return a security_analyzed_email_sender_detail
            ## 
            def sender_detail
                return @sender_detail
            end
            ## 
            ## Sets the senderDetail property value. The senderDetail property
            ## @param value Value to set for the senderDetail property.
            ## @return a void
            ## 
            def sender_detail=(value)
                @sender_detail = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("alertIds", @alert_ids)
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_number_value("attachmentsCount", @attachments_count)
                writer.write_object_value("authenticationDetails", @authentication_details)
                writer.write_string_value("bulkComplaintLevel", @bulk_complaint_level)
                writer.write_collection_of_primitive_values("contexts", @contexts)
                writer.write_collection_of_primitive_values("detectionMethods", @detection_methods)
                writer.write_enum_value("directionality", @directionality)
                writer.write_string_value("distributionList", @distribution_list)
                writer.write_string_value("emailClusterId", @email_cluster_id)
                writer.write_collection_of_object_values("exchangeTransportRules", @exchange_transport_rules)
                writer.write_string_value("internetMessageId", @internet_message_id)
                writer.write_string_value("language", @language)
                writer.write_object_value("latestDelivery", @latest_delivery)
                writer.write_date_time_value("loggedDateTime", @logged_date_time)
                writer.write_string_value("networkMessageId", @network_message_id)
                writer.write_object_value("originalDelivery", @original_delivery)
                writer.write_collection_of_primitive_values("overrideSources", @override_sources)
                writer.write_string_value("phishConfidenceLevel", @phish_confidence_level)
                writer.write_string_value("policy", @policy)
                writer.write_string_value("policyAction", @policy_action)
                writer.write_collection_of_primitive_values("recipientEmailAddresses", @recipient_email_addresses)
                writer.write_string_value("returnPath", @return_path)
                writer.write_object_value("senderDetail", @sender_detail)
                writer.write_number_value("sizeInBytes", @size_in_bytes)
                writer.write_string_value("spamConfidenceLevel", @spam_confidence_level)
                writer.write_string_value("subject", @subject)
                writer.write_enum_value("threatType", @threat_type)
                writer.write_collection_of_object_values("urls", @urls)
                writer.write_number_value("urlsCount", @urls_count)
            end
            ## 
            ## Gets the sizeInBytes property value. The sizeInBytes property
            ## @return a integer
            ## 
            def size_in_bytes
                return @size_in_bytes
            end
            ## 
            ## Sets the sizeInBytes property value. The sizeInBytes property
            ## @param value Value to set for the sizeInBytes property.
            ## @return a void
            ## 
            def size_in_bytes=(value)
                @size_in_bytes = value
            end
            ## 
            ## Gets the spamConfidenceLevel property value. The spamConfidenceLevel property
            ## @return a string
            ## 
            def spam_confidence_level
                return @spam_confidence_level
            end
            ## 
            ## Sets the spamConfidenceLevel property value. The spamConfidenceLevel property
            ## @param value Value to set for the spamConfidenceLevel property.
            ## @return a void
            ## 
            def spam_confidence_level=(value)
                @spam_confidence_level = value
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the threatType property value. The threatType property
            ## @return a security_threat_type
            ## 
            def threat_type
                return @threat_type
            end
            ## 
            ## Sets the threatType property value. The threatType property
            ## @param value Value to set for the threatType property.
            ## @return a void
            ## 
            def threat_type=(value)
                @threat_type = value
            end
            ## 
            ## Gets the urls property value. The urls property
            ## @return a security_analyzed_email_url
            ## 
            def urls
                return @urls
            end
            ## 
            ## Sets the urls property value. The urls property
            ## @param value Value to set for the urls property.
            ## @return a void
            ## 
            def urls=(value)
                @urls = value
            end
            ## 
            ## Gets the urlsCount property value. The urlsCount property
            ## @return a integer
            ## 
            def urls_count
                return @urls_count
            end
            ## 
            ## Sets the urlsCount property value. The urlsCount property
            ## @param value Value to set for the urlsCount property.
            ## @return a void
            ## 
            def urls_count=(value)
                @urls_count = value
            end
        end
    end
end
