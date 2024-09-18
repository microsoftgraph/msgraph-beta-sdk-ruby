require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApprovalIdentitySet < MicrosoftGraphBeta::Models::IdentitySet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Microsoft Entra group associated with the approval item.
            @group
            ## 
            ## Instantiates a new ApprovalIdentitySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.approvalIdentitySet"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a approval_identity_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalIdentitySet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Identity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the group property value. The Microsoft Entra group associated with the approval item.
            ## @return a identity
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The Microsoft Entra group associated with the approval item.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("group", @group)
            end
        end
    end
end
