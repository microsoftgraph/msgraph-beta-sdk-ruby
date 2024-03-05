require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Finding < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines when the finding was created.
            @created_date_time
            ## 
            ## Instantiates a new Finding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Defines when the finding was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Defines when the finding was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.awsExternalSystemAccessFinding"
                            return AwsExternalSystemAccessFinding.new
                        when "#microsoft.graph.awsExternalSystemAccessRoleFinding"
                            return AwsExternalSystemAccessRoleFinding.new
                        when "#microsoft.graph.awsIdentityAccessManagementKeyAgeFinding"
                            return AwsIdentityAccessManagementKeyAgeFinding.new
                        when "#microsoft.graph.awsIdentityAccessManagementKeyUsageFinding"
                            return AwsIdentityAccessManagementKeyUsageFinding.new
                        when "#microsoft.graph.awsSecretInformationAccessFinding"
                            return AwsSecretInformationAccessFinding.new
                        when "#microsoft.graph.awsSecurityToolAdministrationFinding"
                            return AwsSecurityToolAdministrationFinding.new
                        when "#microsoft.graph.encryptedAwsStorageBucketFinding"
                            return EncryptedAwsStorageBucketFinding.new
                        when "#microsoft.graph.encryptedAzureStorageAccountFinding"
                            return EncryptedAzureStorageAccountFinding.new
                        when "#microsoft.graph.encryptedGcpStorageBucketFinding"
                            return EncryptedGcpStorageBucketFinding.new
                        when "#microsoft.graph.externallyAccessibleAwsStorageBucketFinding"
                            return ExternallyAccessibleAwsStorageBucketFinding.new
                        when "#microsoft.graph.externallyAccessibleAzureBlobContainerFinding"
                            return ExternallyAccessibleAzureBlobContainerFinding.new
                        when "#microsoft.graph.externallyAccessibleGcpStorageBucketFinding"
                            return ExternallyAccessibleGcpStorageBucketFinding.new
                        when "#microsoft.graph.identityFinding"
                            return IdentityFinding.new
                        when "#microsoft.graph.inactiveAwsResourceFinding"
                            return InactiveAwsResourceFinding.new
                        when "#microsoft.graph.inactiveAwsRoleFinding"
                            return InactiveAwsRoleFinding.new
                        when "#microsoft.graph.inactiveAzureServicePrincipalFinding"
                            return InactiveAzureServicePrincipalFinding.new
                        when "#microsoft.graph.inactiveGcpServiceAccountFinding"
                            return InactiveGcpServiceAccountFinding.new
                        when "#microsoft.graph.inactiveGroupFinding"
                            return InactiveGroupFinding.new
                        when "#microsoft.graph.inactiveServerlessFunctionFinding"
                            return InactiveServerlessFunctionFinding.new
                        when "#microsoft.graph.inactiveUserFinding"
                            return InactiveUserFinding.new
                        when "#microsoft.graph.openAwsSecurityGroupFinding"
                            return OpenAwsSecurityGroupFinding.new
                        when "#microsoft.graph.openNetworkAzureSecurityGroupFinding"
                            return OpenNetworkAzureSecurityGroupFinding.new
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
                        when "#microsoft.graph.privilegeEscalationAwsResourceFinding"
                            return PrivilegeEscalationAwsResourceFinding.new
                        when "#microsoft.graph.privilegeEscalationAwsRoleFinding"
                            return PrivilegeEscalationAwsRoleFinding.new
                        when "#microsoft.graph.privilegeEscalationFinding"
                            return PrivilegeEscalationFinding.new
                        when "#microsoft.graph.privilegeEscalationGcpServiceAccountFinding"
                            return PrivilegeEscalationGcpServiceAccountFinding.new
                        when "#microsoft.graph.privilegeEscalationUserFinding"
                            return PrivilegeEscalationUserFinding.new
                        when "#microsoft.graph.secretInformationAccessAwsResourceFinding"
                            return SecretInformationAccessAwsResourceFinding.new
                        when "#microsoft.graph.secretInformationAccessAwsRoleFinding"
                            return SecretInformationAccessAwsRoleFinding.new
                        when "#microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding"
                            return SecretInformationAccessAwsServerlessFunctionFinding.new
                        when "#microsoft.graph.secretInformationAccessAwsUserFinding"
                            return SecretInformationAccessAwsUserFinding.new
                        when "#microsoft.graph.securityToolAwsResourceAdministratorFinding"
                            return SecurityToolAwsResourceAdministratorFinding.new
                        when "#microsoft.graph.securityToolAwsRoleAdministratorFinding"
                            return SecurityToolAwsRoleAdministratorFinding.new
                        when "#microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding"
                            return SecurityToolAwsServerlessFunctionAdministratorFinding.new
                        when "#microsoft.graph.securityToolAwsUserAdministratorFinding"
                            return SecurityToolAwsUserAdministratorFinding.new
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
                        when "#microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding"
                            return VirtualMachineWithAwsStorageBucketAccessFinding.new
                    end
                end
                return Finding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
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
                writer.write_date_time_value("createdDateTime", @created_date_time)
            end
        end
    end
end
