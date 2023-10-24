require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegeEscalationFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identity property
            @identity
            ## 
            # The identityDetails property
            @identity_details
            ## 
            # The permissionsCreepIndex property
            @permissions_creep_index
            ## 
            # The privilegeEscalationDetails property
            @privilege_escalation_details
            ## 
            ## Instantiates a new privilegeEscalationFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privilege_escalation_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.privilegeEscalationAwsResourceFinding"
                            return PrivilegeEscalationAwsResourceFinding.new
                        when "#microsoft.graph.privilegeEscalationAwsRoleFinding"
                            return PrivilegeEscalationAwsRoleFinding.new
                        when "#microsoft.graph.privilegeEscalationGcpServiceAccountFinding"
                            return PrivilegeEscalationGcpServiceAccountFinding.new
                        when "#microsoft.graph.privilegeEscalationUserFinding"
                            return PrivilegeEscalationUserFinding.new
                    end
                end
                return PrivilegeEscalationFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemIdentity.create_from_discriminator_value(pn) }) },
                    "identityDetails" => lambda {|n| @identity_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentityDetails.create_from_discriminator_value(pn) }) },
                    "permissionsCreepIndex" => lambda {|n| @permissions_creep_index = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsCreepIndex.create_from_discriminator_value(pn) }) },
                    "privilegeEscalationDetails" => lambda {|n| @privilege_escalation_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegeEscalation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identity property value. The identity property
            ## @return a authorization_system_identity
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. The identity property
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
            end
            ## 
            ## Gets the identityDetails property value. The identityDetails property
            ## @return a identity_details
            ## 
            def identity_details
                return @identity_details
            end
            ## 
            ## Sets the identityDetails property value. The identityDetails property
            ## @param value Value to set for the identityDetails property.
            ## @return a void
            ## 
            def identity_details=(value)
                @identity_details = value
            end
            ## 
            ## Gets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @return a permissions_creep_index
            ## 
            def permissions_creep_index
                return @permissions_creep_index
            end
            ## 
            ## Sets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @param value Value to set for the permissionsCreepIndex property.
            ## @return a void
            ## 
            def permissions_creep_index=(value)
                @permissions_creep_index = value
            end
            ## 
            ## Gets the privilegeEscalationDetails property value. The privilegeEscalationDetails property
            ## @return a privilege_escalation
            ## 
            def privilege_escalation_details
                return @privilege_escalation_details
            end
            ## 
            ## Sets the privilegeEscalationDetails property value. The privilegeEscalationDetails property
            ## @param value Value to set for the privilegeEscalationDetails property.
            ## @return a void
            ## 
            def privilege_escalation_details=(value)
                @privilege_escalation_details = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("identity", @identity)
                writer.write_object_value("identityDetails", @identity_details)
                writer.write_object_value("permissionsCreepIndex", @permissions_creep_index)
                writer.write_collection_of_object_values("privilegeEscalationDetails", @privilege_escalation_details)
            end
        end
    end
end
