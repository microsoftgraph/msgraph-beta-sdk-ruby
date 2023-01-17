require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../groups'
require_relative '../item'
require_relative './evaluate_dynamic_membership'

module MicrosoftGraphBeta::Groups::Item::EvaluateDynamicMembership
    class EvaluateDynamicMembershipPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The memberId property
        @member_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new evaluateDynamicMembershipPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a evaluate_dynamic_membership_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EvaluateDynamicMembershipPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "memberId" => lambda {|n| @member_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the memberId property value. The memberId property
        ## @return a string
        ## 
        def member_id
            return @member_id
        end
        ## 
        ## Sets the memberId property value. The memberId property
        ## @param value Value to set for the memberId property.
        ## @return a void
        ## 
        def member_id=(value)
            @member_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("memberId", @member_id)
            writer.write_additional_data(@additional_data)
        end
    end
end
