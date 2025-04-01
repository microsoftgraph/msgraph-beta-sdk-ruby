require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ReportsRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The readingAssignmentSubmissions property
            @reading_assignment_submissions
            ## 
            # The reflectCheckInResponses property
            @reflect_check_in_responses
            ## 
            ## Instantiates a new ReportsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a reports_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReportsRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "readingAssignmentSubmissions" => lambda {|n| @reading_assignment_submissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ReadingAssignmentSubmission.create_from_discriminator_value(pn) }) },
                    "reflectCheckInResponses" => lambda {|n| @reflect_check_in_responses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ReflectCheckInResponse.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the readingAssignmentSubmissions property value. The readingAssignmentSubmissions property
            ## @return a reading_assignment_submission
            ## 
            def reading_assignment_submissions
                return @reading_assignment_submissions
            end
            ## 
            ## Sets the readingAssignmentSubmissions property value. The readingAssignmentSubmissions property
            ## @param value Value to set for the readingAssignmentSubmissions property.
            ## @return a void
            ## 
            def reading_assignment_submissions=(value)
                @reading_assignment_submissions = value
            end
            ## 
            ## Gets the reflectCheckInResponses property value. The reflectCheckInResponses property
            ## @return a reflect_check_in_response
            ## 
            def reflect_check_in_responses
                return @reflect_check_in_responses
            end
            ## 
            ## Sets the reflectCheckInResponses property value. The reflectCheckInResponses property
            ## @param value Value to set for the reflectCheckInResponses property.
            ## @return a void
            ## 
            def reflect_check_in_responses=(value)
                @reflect_check_in_responses = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("readingAssignmentSubmissions", @reading_assignment_submissions)
                writer.write_collection_of_object_values("reflectCheckInResponses", @reflect_check_in_responses)
            end
        end
    end
end
