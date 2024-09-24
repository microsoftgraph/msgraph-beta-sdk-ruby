require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthorizationSystemResource < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authorization system that the resource exists in.
            @authorization_system
            ## 
            # The name of the resource. Read-only. Supports $filter (eq,contains).
            @display_name
            ## 
            # The ID of the resource as defined by the authorization system provider. Read-only. Supports $filter (eq).
            @external_id
            ## 
            # The type of the resource. Read-only. Supports $filter (eq).
            @resource_type
            ## 
            ## Gets the authorizationSystem property value. The authorization system that the resource exists in.
            ## @return a authorization_system
            ## 
            def authorization_system
                return @authorization_system
            end
            ## 
            ## Sets the authorizationSystem property value. The authorization system that the resource exists in.
            ## @param value Value to set for the authorizationSystem property.
            ## @return a void
            ## 
            def authorization_system=(value)
                @authorization_system = value
            end
            ## 
            ## Instantiates a new AuthorizationSystemResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authorization_system_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.awsAuthorizationSystemResource"
                            return AwsAuthorizationSystemResource.new
                        when "#microsoft.graph.azureAuthorizationSystemResource"
                            return AzureAuthorizationSystemResource.new
                        when "#microsoft.graph.gcpAuthorizationSystemResource"
                            return GcpAuthorizationSystemResource.new
                    end
                end
                return AuthorizationSystemResource.new
            end
            ## 
            ## Gets the displayName property value. The name of the resource. Read-only. Supports $filter (eq,contains).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the resource. Read-only. Supports $filter (eq,contains).
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. The ID of the resource as defined by the authorization system provider. Read-only. Supports $filter (eq).
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The ID of the resource as defined by the authorization system provider. Read-only. Supports $filter (eq).
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
                    "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the resourceType property value. The type of the resource. Read-only. Supports $filter (eq).
            ## @return a string
            ## 
            def resource_type
                return @resource_type
            end
            ## 
            ## Sets the resourceType property value. The type of the resource. Read-only. Supports $filter (eq).
            ## @param value Value to set for the resourceType property.
            ## @return a void
            ## 
            def resource_type=(value)
                @resource_type = value
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
                writer.write_string_value("resourceType", @resource_type)
            end
        end
    end
end
