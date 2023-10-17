require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsRole < MicrosoftGraphBeta::Models::AwsIdentity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The roleType property
            @role_type
            ## 
            # The trustEntityType property
            @trust_entity_type
            ## 
            ## Instantiates a new awsRole and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_role
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsRole.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "roleType" => lambda {|n| @role_type = n.get_enum_value(MicrosoftGraphBeta::Models::AwsRoleType) },
                    "trustEntityType" => lambda {|n| @trust_entity_type = n.get_enum_values(MicrosoftGraphBeta::Models::AwsRoleTrustEntityType) },
                })
            end
            ## 
            ## Gets the roleType property value. The roleType property
            ## @return a aws_role_type
            ## 
            def role_type
                return @role_type
            end
            ## 
            ## Sets the roleType property value. The roleType property
            ## @param value Value to set for the roleType property.
            ## @return a void
            ## 
            def role_type=(value)
                @role_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("roleType", @role_type)
                writer.write_enum_value("trustEntityType", @trust_entity_type)
            end
            ## 
            ## Gets the trustEntityType property value. The trustEntityType property
            ## @return a aws_role_trust_entity_type
            ## 
            def trust_entity_type
                return @trust_entity_type
            end
            ## 
            ## Sets the trustEntityType property value. The trustEntityType property
            ## @param value Value to set for the trustEntityType property.
            ## @return a void
            ## 
            def trust_entity_type=(value)
                @trust_entity_type = value
            end
        end
    end
end
