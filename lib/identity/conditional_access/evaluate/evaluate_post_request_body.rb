require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/conditional_access_context'
require_relative '../../../models/conditional_access_what_if_conditions'
require_relative '../../../models/conditional_access_what_if_subject'
require_relative '../../identity'
require_relative '../conditional_access'
require_relative './evaluate'

module MicrosoftGraphBeta
    module Identity
        module ConditionalAccess
            module Evaluate
                class EvaluatePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The appliedPoliciesOnly property
                    @applied_policies_only
                    ## 
                    # The conditionalAccessContext property
                    @conditional_access_context
                    ## 
                    # The conditionalAccessWhatIfConditions property
                    @conditional_access_what_if_conditions
                    ## 
                    # The conditionalAccessWhatIfSubject property
                    @conditional_access_what_if_subject
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
                    ## Gets the appliedPoliciesOnly property value. The appliedPoliciesOnly property
                    ## @return a boolean
                    ## 
                    def applied_policies_only
                        return @applied_policies_only
                    end
                    ## 
                    ## Sets the appliedPoliciesOnly property value. The appliedPoliciesOnly property
                    ## @param value Value to set for the appliedPoliciesOnly property.
                    ## @return a void
                    ## 
                    def applied_policies_only=(value)
                        @applied_policies_only = value
                    end
                    ## 
                    ## Gets the conditionalAccessContext property value. The conditionalAccessContext property
                    ## @return a conditional_access_context
                    ## 
                    def conditional_access_context
                        return @conditional_access_context
                    end
                    ## 
                    ## Sets the conditionalAccessContext property value. The conditionalAccessContext property
                    ## @param value Value to set for the conditionalAccessContext property.
                    ## @return a void
                    ## 
                    def conditional_access_context=(value)
                        @conditional_access_context = value
                    end
                    ## 
                    ## Gets the conditionalAccessWhatIfConditions property value. The conditionalAccessWhatIfConditions property
                    ## @return a conditional_access_what_if_conditions
                    ## 
                    def conditional_access_what_if_conditions
                        return @conditional_access_what_if_conditions
                    end
                    ## 
                    ## Sets the conditionalAccessWhatIfConditions property value. The conditionalAccessWhatIfConditions property
                    ## @param value Value to set for the conditionalAccessWhatIfConditions property.
                    ## @return a void
                    ## 
                    def conditional_access_what_if_conditions=(value)
                        @conditional_access_what_if_conditions = value
                    end
                    ## 
                    ## Gets the conditionalAccessWhatIfSubject property value. The conditionalAccessWhatIfSubject property
                    ## @return a conditional_access_what_if_subject
                    ## 
                    def conditional_access_what_if_subject
                        return @conditional_access_what_if_subject
                    end
                    ## 
                    ## Sets the conditionalAccessWhatIfSubject property value. The conditionalAccessWhatIfSubject property
                    ## @param value Value to set for the conditionalAccessWhatIfSubject property.
                    ## @return a void
                    ## 
                    def conditional_access_what_if_subject=(value)
                        @conditional_access_what_if_subject = value
                    end
                    ## 
                    ## Instantiates a new EvaluatePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a evaluate_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return EvaluatePostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "appliedPoliciesOnly" => lambda {|n| @applied_policies_only = n.get_boolean_value() },
                            "conditionalAccessContext" => lambda {|n| @conditional_access_context = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessContext.create_from_discriminator_value(pn) }) },
                            "conditionalAccessWhatIfConditions" => lambda {|n| @conditional_access_what_if_conditions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessWhatIfConditions.create_from_discriminator_value(pn) }) },
                            "conditionalAccessWhatIfSubject" => lambda {|n| @conditional_access_what_if_subject = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessWhatIfSubject.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_boolean_value("appliedPoliciesOnly", @applied_policies_only)
                        writer.write_object_value("conditionalAccessContext", @conditional_access_context)
                        writer.write_object_value("conditionalAccessWhatIfConditions", @conditional_access_what_if_conditions)
                        writer.write_object_value("conditionalAccessWhatIfSubject", @conditional_access_what_if_subject)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
