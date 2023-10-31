require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IdentityFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionSummary property
            @action_summary
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
            ## Gets the actionSummary property value. The actionSummary property
            ## @return a action_summary
            ## 
            def action_summary
                return @action_summary
            end
            ## 
            ## Sets the actionSummary property value. The actionSummary property
            ## @param value Value to set for the actionSummary property.
            ## @return a void
            ## 
            def action_summary=(value)
                @action_summary = value
            end
            ## 
            ## Instantiates a new identityFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.inactiveAwsResourceFinding"
                            return InactiveAwsResourceFinding.new
                        when "#microsoft.graph.inactiveAwsRoleFinding"
                            return InactiveAwsRoleFinding.new
                        when "#microsoft.graph.inactiveAzureServicePrincipalFinding"
                            return InactiveAzureServicePrincipalFinding.new
                        when "#microsoft.graph.inactiveGcpServiceAccountFinding"
                            return InactiveGcpServiceAccountFinding.new
                        when "#microsoft.graph.inactiveServerlessFunctionFinding"
                            return InactiveServerlessFunctionFinding.new
                        when "#microsoft.graph.inactiveUserFinding"
                            return InactiveUserFinding.new
                        when "#microsoft.graph.overprovisionedAwsResourceFinding"
                            return OverprovisionedAwsResourceFinding.new
                        when "#microsoft.graph.overprovisionedAwsRoleFinding"
                            return OverprovisionedAwsRoleFinding.new
                        when "#microsoft.graph.overprovisionedAzureServicePrincipalFinding"
                            return OverprovisionedAzureServicePrincipalFinding.new
                        when "#microsoft.graph.overprovisionedGcpServiceAccountFinding"
                            return OverprovisionedGcpServiceAccountFinding.new
                        when "#microsoft.graph.overprovisionedServerlessFunctionFinding"
                            return OverprovisionedServerlessFunctionFinding.new
                        when "#microsoft.graph.overprovisionedUserFinding"
                            return OverprovisionedUserFinding.new
                        when "#microsoft.graph.superAwsResourceFinding"
                            return SuperAwsResourceFinding.new
                        when "#microsoft.graph.superAwsRoleFinding"
                            return SuperAwsRoleFinding.new
                        when "#microsoft.graph.superAzureServicePrincipalFinding"
                            return SuperAzureServicePrincipalFinding.new
                        when "#microsoft.graph.superGcpServiceAccountFinding"
                            return SuperGcpServiceAccountFinding.new
                        when "#microsoft.graph.superServerlessFunctionFinding"
                            return SuperServerlessFunctionFinding.new
                        when "#microsoft.graph.superUserFinding"
                            return SuperUserFinding.new
                        when "#microsoft.graph.unenforcedMfaAwsUserFinding"
                            return UnenforcedMfaAwsUserFinding.new
                    end
                end
                return IdentityFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionSummary" => lambda {|n| @action_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ActionSummary.create_from_discriminator_value(pn) }) },
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemIdentity.create_from_discriminator_value(pn) }) },
                    "identityDetails" => lambda {|n| @identity_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentityDetails.create_from_discriminator_value(pn) }) },
                    "permissionsCreepIndex" => lambda {|n| @permissions_creep_index = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsCreepIndex.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("actionSummary", @action_summary)
                writer.write_object_value("identity", @identity)
                writer.write_object_value("identityDetails", @identity_details)
                writer.write_object_value("permissionsCreepIndex", @permissions_creep_index)
            end
        end
    end
end
