require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DlpEvaluatePoliciesJobResponse < MicrosoftGraphBeta::Models::JobResponseBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The result property
            @result
            ## 
            ## Instantiates a new DlpEvaluatePoliciesJobResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a dlp_evaluate_policies_job_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DlpEvaluatePoliciesJobResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "result" => lambda {|n| @result = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DlpPoliciesJobResult.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the result property value. The result property
            ## @return a dlp_policies_job_result
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. The result property
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("result", @result)
            end
        end
    end
end
