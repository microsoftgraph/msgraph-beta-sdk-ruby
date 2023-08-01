require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternalIdentitiesPolicy < MicrosoftGraphBeta::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Reserved for future use.
            @allow_deleted_identities_data_removal
            ## 
            # Defines whether external users can leave the guest tenant. If set to false, self-service controls are disabled, and the admin of the guest tenant must manually remove the external user from the guest tenant. When the external user leaves the tenant, their data in the guest tenant is first soft-deleted then permanently deleted in 30 days.
            @allow_external_identities_to_leave
            ## 
            ## Gets the allowDeletedIdentitiesDataRemoval property value. Reserved for future use.
            ## @return a boolean
            ## 
            def allow_deleted_identities_data_removal
                return @allow_deleted_identities_data_removal
            end
            ## 
            ## Sets the allowDeletedIdentitiesDataRemoval property value. Reserved for future use.
            ## @param value Value to set for the allowDeletedIdentitiesDataRemoval property.
            ## @return a void
            ## 
            def allow_deleted_identities_data_removal=(value)
                @allow_deleted_identities_data_removal = value
            end
            ## 
            ## Gets the allowExternalIdentitiesToLeave property value. Defines whether external users can leave the guest tenant. If set to false, self-service controls are disabled, and the admin of the guest tenant must manually remove the external user from the guest tenant. When the external user leaves the tenant, their data in the guest tenant is first soft-deleted then permanently deleted in 30 days.
            ## @return a boolean
            ## 
            def allow_external_identities_to_leave
                return @allow_external_identities_to_leave
            end
            ## 
            ## Sets the allowExternalIdentitiesToLeave property value. Defines whether external users can leave the guest tenant. If set to false, self-service controls are disabled, and the admin of the guest tenant must manually remove the external user from the guest tenant. When the external user leaves the tenant, their data in the guest tenant is first soft-deleted then permanently deleted in 30 days.
            ## @param value Value to set for the allowExternalIdentitiesToLeave property.
            ## @return a void
            ## 
            def allow_external_identities_to_leave=(value)
                @allow_external_identities_to_leave = value
            end
            ## 
            ## Instantiates a new externalIdentitiesPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.externalIdentitiesPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_identities_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalIdentitiesPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowDeletedIdentitiesDataRemoval" => lambda {|n| @allow_deleted_identities_data_removal = n.get_boolean_value() },
                    "allowExternalIdentitiesToLeave" => lambda {|n| @allow_external_identities_to_leave = n.get_boolean_value() },
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
                writer.write_boolean_value("allowDeletedIdentitiesDataRemoval", @allow_deleted_identities_data_removal)
                writer.write_boolean_value("allowExternalIdentitiesToLeave", @allow_external_identities_to_leave)
            end
        end
    end
end
