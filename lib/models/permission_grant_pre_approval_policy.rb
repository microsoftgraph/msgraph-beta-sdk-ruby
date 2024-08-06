require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionGrantPreApprovalPolicy < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of condition sets describing the conditions under which the permission to grant consent for the app has been preapproved.
            @conditions
            ## 
            ## Gets the conditions property value. A list of condition sets describing the conditions under which the permission to grant consent for the app has been preapproved.
            ## @return a pre_approval_detail
            ## 
            def conditions
                return @conditions
            end
            ## 
            ## Sets the conditions property value. A list of condition sets describing the conditions under which the permission to grant consent for the app has been preapproved.
            ## @param value Value to set for the conditions property.
            ## @return a void
            ## 
            def conditions=(value)
                @conditions = value
            end
            ## 
            ## Instantiates a new PermissionGrantPreApprovalPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.permissionGrantPreApprovalPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permission_grant_pre_approval_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionGrantPreApprovalPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conditions" => lambda {|n| @conditions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PreApprovalDetail.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("conditions", @conditions)
            end
        end
    end
end
