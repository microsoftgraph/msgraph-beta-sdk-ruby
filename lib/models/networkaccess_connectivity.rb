require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessConnectivity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Branch represent locations for connectivity.
            @branches
            ## 
            ## Gets the branches property value. Branch represent locations for connectivity.
            ## @return a networkaccess_branch_site
            ## 
            def branches
                return @branches
            end
            ## 
            ## Sets the branches property value. Branch represent locations for connectivity.
            ## @param value Value to set for the branches property.
            ## @return a void
            ## 
            def branches=(value)
                @branches = value
            end
            ## 
            ## Instantiates a new networkaccessConnectivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_connectivity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessConnectivity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "branches" => lambda {|n| @branches = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessBranchSite.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("branches", @branches)
            end
        end
    end
end
