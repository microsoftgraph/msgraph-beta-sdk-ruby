require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsIdentitySource < MicrosoftGraphBeta::Models::PermissionsDefinitionIdentitySource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authorizationSystemInfo property
            @authorization_system_info
            ## 
            ## Gets the authorizationSystemInfo property value. The authorizationSystemInfo property
            ## @return a permissions_definition_authorization_system
            ## 
            def authorization_system_info
                return @authorization_system_info
            end
            ## 
            ## Sets the authorizationSystemInfo property value. The authorizationSystemInfo property
            ## @param value Value to set for the authorizationSystemInfo property.
            ## @return a void
            ## 
            def authorization_system_info=(value)
                @authorization_system_info = value
            end
            ## 
            ## Instantiates a new awsIdentitySource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.awsIdentitySource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_identity_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsIdentitySource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authorizationSystemInfo" => lambda {|n| @authorization_system_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsDefinitionAuthorizationSystem.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("authorizationSystemInfo", @authorization_system_info)
            end
        end
    end
end
