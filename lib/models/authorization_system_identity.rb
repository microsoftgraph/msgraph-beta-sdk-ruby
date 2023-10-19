require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthorizationSystemIdentity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authorizationSystem property
            @authorization_system
            ## 
            # The displayName property
            @display_name
            ## 
            # The externalId property
            @external_id
            ## 
            # The source property
            @source
            ## 
            ## Gets the authorizationSystem property value. The authorizationSystem property
            ## @return a authorization_system
            ## 
            def authorization_system
                return @authorization_system
            end
            ## 
            ## Sets the authorizationSystem property value. The authorizationSystem property
            ## @param value Value to set for the authorizationSystem property.
            ## @return a void
            ## 
            def authorization_system=(value)
                @authorization_system = value
            end
            ## 
            ## Instantiates a new authorizationSystemIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authorization_system_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.awsAccessKey"
                            return AwsAccessKey.new
                        when "#microsoft.graph.awsEc2Instance"
                            return AwsEc2Instance.new
                        when "#microsoft.graph.awsGroup"
                            return AwsGroup.new
                        when "#microsoft.graph.awsIdentity"
                            return AwsIdentity.new
                        when "#microsoft.graph.awsLambda"
                            return AwsLambda.new
                        when "#microsoft.graph.awsRole"
                            return AwsRole.new
                        when "#microsoft.graph.awsUser"
                            return AwsUser.new
                        when "#microsoft.graph.azureGroup"
                            return AzureGroup.new
                        when "#microsoft.graph.azureIdentity"
                            return AzureIdentity.new
                        when "#microsoft.graph.azureManagedIdentity"
                            return AzureManagedIdentity.new
                        when "#microsoft.graph.azureServerlessFunction"
                            return AzureServerlessFunction.new
                        when "#microsoft.graph.azureServicePrincipal"
                            return AzureServicePrincipal.new
                        when "#microsoft.graph.azureUser"
                            return AzureUser.new
                        when "#microsoft.graph.gcpCloudFunction"
                            return GcpCloudFunction.new
                        when "#microsoft.graph.gcpGroup"
                            return GcpGroup.new
                        when "#microsoft.graph.gcpIdentity"
                            return GcpIdentity.new
                        when "#microsoft.graph.gcpServiceAccount"
                            return GcpServiceAccount.new
                        when "#microsoft.graph.gcpUser"
                            return GcpUser.new
                    end
                end
                return AuthorizationSystemIdentity.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. The externalId property
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The externalId property
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authorizationSystem" => lambda {|n| @authorization_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystem.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "source" => lambda {|n| @source = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemIdentitySource.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("authorizationSystem", @authorization_system)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("externalId", @external_id)
                writer.write_object_value("source", @source)
            end
            ## 
            ## Gets the source property value. The source property
            ## @return a authorization_system_identity_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source property
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
        end
    end
end
