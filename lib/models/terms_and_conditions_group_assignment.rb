require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A termsAndConditionsGroupAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group. Users in the group will be required to accept the terms in order to have devices enrolled into Intune.
        class TermsAndConditionsGroupAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier of a group that the T&C policy is assigned to.
            @target_group_id
            ## 
            # Navigation link to the terms and conditions that are assigned.
            @terms_and_conditions
            ## 
            ## Instantiates a new TermsAndConditionsGroupAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a terms_and_conditions_group_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TermsAndConditionsGroupAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "targetGroupId" => lambda {|n| @target_group_id = n.get_string_value() },
                    "termsAndConditions" => lambda {|n| @terms_and_conditions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TermsAndConditions.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("targetGroupId", @target_group_id)
                writer.write_object_value("termsAndConditions", @terms_and_conditions)
            end
            ## 
            ## Gets the targetGroupId property value. Unique identifier of a group that the T&C policy is assigned to.
            ## @return a string
            ## 
            def target_group_id
                return @target_group_id
            end
            ## 
            ## Sets the targetGroupId property value. Unique identifier of a group that the T&C policy is assigned to.
            ## @param value Value to set for the targetGroupId property.
            ## @return a void
            ## 
            def target_group_id=(value)
                @target_group_id = value
            end
            ## 
            ## Gets the termsAndConditions property value. Navigation link to the terms and conditions that are assigned.
            ## @return a terms_and_conditions
            ## 
            def terms_and_conditions
                return @terms_and_conditions
            end
            ## 
            ## Sets the termsAndConditions property value. Navigation link to the terms and conditions that are assigned.
            ## @param value Value to set for the termsAndConditions property.
            ## @return a void
            ## 
            def terms_and_conditions=(value)
                @terms_and_conditions = value
            end
        end
    end
end
