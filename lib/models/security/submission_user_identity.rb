require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class SubmissionUserIdentity < MicrosoftGraphBeta::Models::Identity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The email of user who is making the submission when logged in (delegated token case).
                @email
                ## 
                ## Instantiates a new SubmissionUserIdentity and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.submissionUserIdentity"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a submission_user_identity
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SubmissionUserIdentity.new
                end
                ## 
                ## Gets the email property value. The email of user who is making the submission when logged in (delegated token case).
                ## @return a string
                ## 
                def email
                    return @email
                end
                ## 
                ## Sets the email property value. The email of user who is making the submission when logged in (delegated token case).
                ## @param value Value to set for the email property.
                ## @return a void
                ## 
                def email=(value)
                    @email = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "email" => lambda {|n| @email = n.get_string_value() },
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
                    writer.write_string_value("email", @email)
                end
            end
        end
    end
end
