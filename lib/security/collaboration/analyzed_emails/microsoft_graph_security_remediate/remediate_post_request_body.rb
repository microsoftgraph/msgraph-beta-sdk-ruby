require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/security_analyzed_email'
require_relative '../../../../models/security_remediation_action'
require_relative '../../../../models/security_remediation_severity'
require_relative '../../../security'
require_relative '../../collaboration'
require_relative '../analyzed_emails'
require_relative './microsoft_graph_security_remediate'

module MicrosoftGraphBeta
    module Security
        module Collaboration
            module AnalyzedEmails
                module MicrosoftGraphSecurityRemediate
                    class RemediatePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The action property
                        @action
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The analyzedEmails property
                        @analyzed_emails
                        ## 
                        # The approverUpn property
                        @approver_upn
                        ## 
                        # The description property
                        @description
                        ## 
                        # The displayName property
                        @display_name
                        ## 
                        # The remediateSendersCopy property
                        @remediate_senders_copy
                        ## 
                        # The severity property
                        @severity
                        ## 
                        ## Gets the action property value. The action property
                        ## @return a security_remediation_action
                        ## 
                        def action
                            return @action
                        end
                        ## 
                        ## Sets the action property value. The action property
                        ## @param value Value to set for the action property.
                        ## @return a void
                        ## 
                        def action=(value)
                            @action = value
                        end
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
                        ## Gets the analyzedEmails property value. The analyzedEmails property
                        ## @return a security_analyzed_email
                        ## 
                        def analyzed_emails
                            return @analyzed_emails
                        end
                        ## 
                        ## Sets the analyzedEmails property value. The analyzedEmails property
                        ## @param value Value to set for the analyzedEmails property.
                        ## @return a void
                        ## 
                        def analyzed_emails=(value)
                            @analyzed_emails = value
                        end
                        ## 
                        ## Gets the approverUpn property value. The approverUpn property
                        ## @return a string
                        ## 
                        def approver_upn
                            return @approver_upn
                        end
                        ## 
                        ## Sets the approverUpn property value. The approverUpn property
                        ## @param value Value to set for the approverUpn property.
                        ## @return a void
                        ## 
                        def approver_upn=(value)
                            @approver_upn = value
                        end
                        ## 
                        ## Instantiates a new RemediatePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a remediate_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RemediatePostRequestBody.new
                        end
                        ## 
                        ## Gets the description property value. The description property
                        ## @return a string
                        ## 
                        def description
                            return @description
                        end
                        ## 
                        ## Sets the description property value. The description property
                        ## @param value Value to set for the description property.
                        ## @return a void
                        ## 
                        def description=(value)
                            @description = value
                        end
                        ## 
                        ## Gets the displayName property value. The displayName property
                        ## @return a string
                        ## 
                        def display_name
                            return @display_name
                        end
                        ## 
                        ## Sets the displayName property value. The displayName property
                        ## @param value Value to set for the displayName property.
                        ## @return a void
                        ## 
                        def display_name=(value)
                            @display_name = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityRemediationAction) },
                                "analyzedEmails" => lambda {|n| @analyzed_emails = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAnalyzedEmail.create_from_discriminator_value(pn) }) },
                                "approverUpn" => lambda {|n| @approver_upn = n.get_string_value() },
                                "description" => lambda {|n| @description = n.get_string_value() },
                                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                                "remediateSendersCopy" => lambda {|n| @remediate_senders_copy = n.get_boolean_value() },
                                "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityRemediationSeverity) },
                            }
                        end
                        ## 
                        ## Gets the remediateSendersCopy property value. The remediateSendersCopy property
                        ## @return a boolean
                        ## 
                        def remediate_senders_copy
                            return @remediate_senders_copy
                        end
                        ## 
                        ## Sets the remediateSendersCopy property value. The remediateSendersCopy property
                        ## @param value Value to set for the remediateSendersCopy property.
                        ## @return a void
                        ## 
                        def remediate_senders_copy=(value)
                            @remediate_senders_copy = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_enum_value("action", @action)
                            writer.write_collection_of_object_values("analyzedEmails", @analyzed_emails)
                            writer.write_string_value("approverUpn", @approver_upn)
                            writer.write_string_value("description", @description)
                            writer.write_string_value("displayName", @display_name)
                            writer.write_boolean_value("remediateSendersCopy", @remediate_senders_copy)
                            writer.write_enum_value("severity", @severity)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the severity property value. The severity property
                        ## @return a security_remediation_severity
                        ## 
                        def severity
                            return @severity
                        end
                        ## 
                        ## Sets the severity property value. The severity property
                        ## @param value Value to set for the severity property.
                        ## @return a void
                        ## 
                        def severity=(value)
                            @severity = value
                        end
                    end
                end
            end
        end
    end
end
