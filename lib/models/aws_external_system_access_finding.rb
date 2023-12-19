require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsExternalSystemAccessFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessMethods property
            @access_methods
            ## 
            # The affectedSystem property
            @affected_system
            ## 
            # The systemWithAccess property
            @system_with_access
            ## 
            # The number of identities in the external system that are trusted, if not all. Supports $orderby.
            @trusted_identity_count
            ## 
            # Flag that determines if all identities in the external system are trusted, or only a subset.
            @trusts_all_identities
            ## 
            ## Gets the accessMethods property value. The accessMethods property
            ## @return a external_system_access_methods
            ## 
            def access_methods
                return @access_methods
            end
            ## 
            ## Sets the accessMethods property value. The accessMethods property
            ## @param value Value to set for the accessMethods property.
            ## @return a void
            ## 
            def access_methods=(value)
                @access_methods = value
            end
            ## 
            ## Gets the affectedSystem property value. The affectedSystem property
            ## @return a authorization_system
            ## 
            def affected_system
                return @affected_system
            end
            ## 
            ## Sets the affectedSystem property value. The affectedSystem property
            ## @param value Value to set for the affectedSystem property.
            ## @return a void
            ## 
            def affected_system=(value)
                @affected_system = value
            end
            ## 
            ## Instantiates a new awsExternalSystemAccessFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_external_system_access_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsExternalSystemAccessFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessMethods" => lambda {|n| @access_methods = n.get_enum_values(MicrosoftGraphBeta::Models::ExternalSystemAccessMethods) },
                    "affectedSystem" => lambda {|n| @affected_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystem.create_from_discriminator_value(pn) }) },
                    "systemWithAccess" => lambda {|n| @system_with_access = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemInfo.create_from_discriminator_value(pn) }) },
                    "trustedIdentityCount" => lambda {|n| @trusted_identity_count = n.get_number_value() },
                    "trustsAllIdentities" => lambda {|n| @trusts_all_identities = n.get_boolean_value() },
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
                writer.write_enum_value("accessMethods", @access_methods)
                writer.write_object_value("affectedSystem", @affected_system)
                writer.write_object_value("systemWithAccess", @system_with_access)
                writer.write_number_value("trustedIdentityCount", @trusted_identity_count)
                writer.write_boolean_value("trustsAllIdentities", @trusts_all_identities)
            end
            ## 
            ## Gets the systemWithAccess property value. The systemWithAccess property
            ## @return a authorization_system_info
            ## 
            def system_with_access
                return @system_with_access
            end
            ## 
            ## Sets the systemWithAccess property value. The systemWithAccess property
            ## @param value Value to set for the systemWithAccess property.
            ## @return a void
            ## 
            def system_with_access=(value)
                @system_with_access = value
            end
            ## 
            ## Gets the trustedIdentityCount property value. The number of identities in the external system that are trusted, if not all. Supports $orderby.
            ## @return a integer
            ## 
            def trusted_identity_count
                return @trusted_identity_count
            end
            ## 
            ## Sets the trustedIdentityCount property value. The number of identities in the external system that are trusted, if not all. Supports $orderby.
            ## @param value Value to set for the trustedIdentityCount property.
            ## @return a void
            ## 
            def trusted_identity_count=(value)
                @trusted_identity_count = value
            end
            ## 
            ## Gets the trustsAllIdentities property value. Flag that determines if all identities in the external system are trusted, or only a subset.
            ## @return a boolean
            ## 
            def trusts_all_identities
                return @trusts_all_identities
            end
            ## 
            ## Sets the trustsAllIdentities property value. Flag that determines if all identities in the external system are trusted, or only a subset.
            ## @param value Value to set for the trustsAllIdentities property.
            ## @return a void
            ## 
            def trusts_all_identities=(value)
                @trusts_all_identities = value
            end
        end
    end
end
