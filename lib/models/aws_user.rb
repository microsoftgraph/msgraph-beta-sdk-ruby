require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsUser < MicrosoftGraphBeta::Models::AwsIdentity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Roles assumed by the user.
            @assumable_roles
            ## 
            ## Gets the assumableRoles property value. Roles assumed by the user.
            ## @return a aws_role
            ## 
            def assumable_roles
                return @assumable_roles
            end
            ## 
            ## Sets the assumableRoles property value. Roles assumed by the user.
            ## @param value Value to set for the assumableRoles property.
            ## @return a void
            ## 
            def assumable_roles=(value)
                @assumable_roles = value
            end
            ## 
            ## Instantiates a new AwsUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.awsUser"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsUser.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assumableRoles" => lambda {|n| @assumable_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsRole.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("assumableRoles", @assumable_roles)
            end
        end
    end
end
