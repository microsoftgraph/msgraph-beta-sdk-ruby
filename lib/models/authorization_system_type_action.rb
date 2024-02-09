require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthorizationSystemTypeAction < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The type of action allowed in the authorization system's service. The possible values are: delete, read, unknownFutureValue. Supports $filter and (eq).
            @action_type
            ## 
            # The display name of an action. Read-only. Supports $filter and (eq).
            @external_id
            ## 
            # The resource types in the authorization system's service where the action can be performed. Supports $filter and (eq).
            @resource_types
            ## 
            # The severity property
            @severity
            ## 
            ## Gets the actionType property value. The type of action allowed in the authorization system's service. The possible values are: delete, read, unknownFutureValue. Supports $filter and (eq).
            ## @return a authorization_system_action_type
            ## 
            def action_type
                return @action_type
            end
            ## 
            ## Sets the actionType property value. The type of action allowed in the authorization system's service. The possible values are: delete, read, unknownFutureValue. Supports $filter and (eq).
            ## @param value Value to set for the actionType property.
            ## @return a void
            ## 
            def action_type=(value)
                @action_type = value
            end
            ## 
            ## Instantiates a new AuthorizationSystemTypeAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authorization_system_type_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.awsAuthorizationSystemTypeAction"
                            return AwsAuthorizationSystemTypeAction.new
                        when "#microsoft.graph.azureAuthorizationSystemTypeAction"
                            return AzureAuthorizationSystemTypeAction.new
                        when "#microsoft.graph.gcpAuthorizationSystemTypeAction"
                            return GcpAuthorizationSystemTypeAction.new
                    end
                end
                return AuthorizationSystemTypeAction.new
            end
            ## 
            ## Gets the externalId property value. The display name of an action. Read-only. Supports $filter and (eq).
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The display name of an action. Read-only. Supports $filter and (eq).
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
                    "actionType" => lambda {|n| @action_type = n.get_enum_value(MicrosoftGraphBeta::Models::AuthorizationSystemActionType) },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "resourceTypes" => lambda {|n| @resource_types = n.get_collection_of_primitive_values(String) },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::AuthorizationSystemActionSeverity) },
                })
            end
            ## 
            ## Gets the resourceTypes property value. The resource types in the authorization system's service where the action can be performed. Supports $filter and (eq).
            ## @return a string
            ## 
            def resource_types
                return @resource_types
            end
            ## 
            ## Sets the resourceTypes property value. The resource types in the authorization system's service where the action can be performed. Supports $filter and (eq).
            ## @param value Value to set for the resourceTypes property.
            ## @return a void
            ## 
            def resource_types=(value)
                @resource_types = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("actionType", @action_type)
                writer.write_string_value("externalId", @external_id)
                writer.write_collection_of_primitive_values("resourceTypes", @resource_types)
                writer.write_enum_value("severity", @severity)
            end
            ## 
            ## Gets the severity property value. The severity property
            ## @return a authorization_system_action_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity property
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
        end
    end
end
