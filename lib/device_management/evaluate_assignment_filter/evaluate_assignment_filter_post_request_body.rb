require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/assignment_filter_evaluate_request'
require_relative '../device_management'
require_relative './evaluate_assignment_filter'

module MicrosoftGraphBeta
    module DeviceManagement
        module EvaluateAssignmentFilter
            class EvaluateAssignmentFilterPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The data property
                @data
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
                ## Instantiates a new evaluateAssignmentFilterPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a evaluate_assignment_filter_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EvaluateAssignmentFilterPostRequestBody.new
                end
                ## 
                ## Gets the data property value. The data property
                ## @return a assignment_filter_evaluate_request
                ## 
                def data
                    return @data
                end
                ## 
                ## Sets the data property value. The data property
                ## @param value Value to set for the data property.
                ## @return a void
                ## 
                def data=(value)
                    @data = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "data" => lambda {|n| @data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AssignmentFilterEvaluateRequest.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("data", @data)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
