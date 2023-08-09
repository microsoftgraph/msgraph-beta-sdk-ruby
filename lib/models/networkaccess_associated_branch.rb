require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessAssociatedBranch < MicrosoftGraphBeta::Models::NetworkaccessAssociation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identifier for the branch.
            @branch_id
            ## 
            ## Gets the branchId property value. Identifier for the branch.
            ## @return a string
            ## 
            def branch_id
                return @branch_id
            end
            ## 
            ## Sets the branchId property value. Identifier for the branch.
            ## @param value Value to set for the branchId property.
            ## @return a void
            ## 
            def branch_id=(value)
                @branch_id = value
            end
            ## 
            ## Instantiates a new networkaccessAssociatedBranch and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.associatedBranch"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_associated_branch
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessAssociatedBranch.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "branchId" => lambda {|n| @branch_id = n.get_string_value() },
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
                writer.write_string_value("branchId", @branch_id)
            end
        end
    end
end
