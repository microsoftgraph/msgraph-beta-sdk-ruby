require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomClaimCondition < MicrosoftGraphBeta::Models::CustomClaimConditionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The memberOf property
            @member_of
            ## 
            # The userType property
            @user_type
            ## 
            ## Instantiates a new CustomClaimCondition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.customClaimCondition"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_claim_condition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomClaimCondition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "memberOf" => lambda {|n| @member_of = n.get_collection_of_primitive_values(String) },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraphBeta::Models::ClaimConditionUserType) },
                })
            end
            ## 
            ## Gets the memberOf property value. The memberOf property
            ## @return a string
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. The memberOf property
            ## @param value Value to set for the memberOf property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("memberOf", @member_of)
                writer.write_enum_value("userType", @user_type)
            end
            ## 
            ## Gets the userType property value. The userType property
            ## @return a claim_condition_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. The userType property
            ## @param value Value to set for the userType property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
