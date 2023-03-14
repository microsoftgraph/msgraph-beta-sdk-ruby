require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class ThreatSubmissionRoot < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The emailThreatSubmissionPolicies property
                @email_threat_submission_policies
                ## 
                # The emailThreats property
                @email_threats
                ## 
                # The fileThreats property
                @file_threats
                ## 
                # The urlThreats property
                @url_threats
                ## 
                ## Instantiates a new threatSubmissionRoot and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a threat_submission_root
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ThreatSubmissionRoot.new
                end
                ## 
                ## Gets the emailThreatSubmissionPolicies property value. The emailThreatSubmissionPolicies property
                ## @return a email_threat_submission_policy
                ## 
                def email_threat_submission_policies
                    return @email_threat_submission_policies
                end
                ## 
                ## Sets the emailThreatSubmissionPolicies property value. The emailThreatSubmissionPolicies property
                ## @param value Value to set for the email_threat_submission_policies property.
                ## @return a void
                ## 
                def email_threat_submission_policies=(value)
                    @email_threat_submission_policies = value
                end
                ## 
                ## Gets the emailThreats property value. The emailThreats property
                ## @return a email_threat_submission
                ## 
                def email_threats
                    return @email_threats
                end
                ## 
                ## Sets the emailThreats property value. The emailThreats property
                ## @param value Value to set for the email_threats property.
                ## @return a void
                ## 
                def email_threats=(value)
                    @email_threats = value
                end
                ## 
                ## Gets the fileThreats property value. The fileThreats property
                ## @return a file_threat_submission
                ## 
                def file_threats
                    return @file_threats
                end
                ## 
                ## Sets the fileThreats property value. The fileThreats property
                ## @param value Value to set for the file_threats property.
                ## @return a void
                ## 
                def file_threats=(value)
                    @file_threats = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "emailThreatSubmissionPolicies" => lambda {|n| @email_threat_submission_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::EmailThreatSubmissionPolicy.create_from_discriminator_value(pn) }) },
                        "emailThreats" => lambda {|n| @email_threats = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::EmailThreatSubmission.create_from_discriminator_value(pn) }) },
                        "fileThreats" => lambda {|n| @file_threats = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::FileThreatSubmission.create_from_discriminator_value(pn) }) },
                        "urlThreats" => lambda {|n| @url_threats = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::UrlThreatSubmission.create_from_discriminator_value(pn) }) },
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
                    writer.write_collection_of_object_values("emailThreatSubmissionPolicies", @email_threat_submission_policies)
                    writer.write_collection_of_object_values("emailThreats", @email_threats)
                    writer.write_collection_of_object_values("fileThreats", @file_threats)
                    writer.write_collection_of_object_values("urlThreats", @url_threats)
                end
                ## 
                ## Gets the urlThreats property value. The urlThreats property
                ## @return a url_threat_submission
                ## 
                def url_threats
                    return @url_threats
                end
                ## 
                ## Sets the urlThreats property value. The urlThreats property
                ## @param value Value to set for the url_threats property.
                ## @return a void
                ## 
                def url_threats=(value)
                    @url_threats = value
                end
            end
        end
    end
end
