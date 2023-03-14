require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class containing information about the payloads on which filter has been applied.
        class AssignmentFilterEvaluationStatusDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # PayloadId on which filter has been applied.
            @payload_id
            ## 
            ## Instantiates a new assignmentFilterEvaluationStatusDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a assignment_filter_evaluation_status_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignmentFilterEvaluationStatusDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "payloadId" => lambda {|n| @payload_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the payloadId property value. PayloadId on which filter has been applied.
            ## @return a string
            ## 
            def payload_id
                return @payload_id
            end
            ## 
            ## Sets the payloadId property value. PayloadId on which filter has been applied.
            ## @param value Value to set for the payload_id property.
            ## @return a void
            ## 
            def payload_id=(value)
                @payload_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("payloadId", @payload_id)
            end
        end
    end
end
