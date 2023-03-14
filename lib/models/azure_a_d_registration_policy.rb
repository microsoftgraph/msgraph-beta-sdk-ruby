require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AzureADRegistrationPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The identifiers of the groups that are in the scope of the policy. Either this property or allowedUsers is required when the appliesTo property is set to selected.
            @allowed_groups
            ## 
            # The identifiers of users that are in the scope of the policy. Either this property or allowedGroups is required when the appliesTo property is set to selected.
            @allowed_users
            ## 
            # Specifies whether to block or allow fine-grained control of the policy scope. The possible values are: 0 (meaning none), 1 (meaning all), 2 (meaning selected), 3 (meaning unknownFutureValue). The default value is 1. When set to 2, at least one user or group identifier must be specified in either allowedUsers or allowedGroups.  Setting this property to 0 or 1 removes all identifiers in both allowedUsers and allowedGroups.
            @applies_to
            ## 
            # Specifies whether this policy scope is configurable by the admin. The default value is false. When an admin has enabled Intune (MEM) to manage devices, this property is set to false and appliesTo defaults to 1 (meaning all).
            @is_admin_configurable
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowedGroups property value. The identifiers of the groups that are in the scope of the policy. Either this property or allowedUsers is required when the appliesTo property is set to selected.
            ## @return a string
            ## 
            def allowed_groups
                return @allowed_groups
            end
            ## 
            ## Sets the allowedGroups property value. The identifiers of the groups that are in the scope of the policy. Either this property or allowedUsers is required when the appliesTo property is set to selected.
            ## @param value Value to set for the allowed_groups property.
            ## @return a void
            ## 
            def allowed_groups=(value)
                @allowed_groups = value
            end
            ## 
            ## Gets the allowedUsers property value. The identifiers of users that are in the scope of the policy. Either this property or allowedGroups is required when the appliesTo property is set to selected.
            ## @return a string
            ## 
            def allowed_users
                return @allowed_users
            end
            ## 
            ## Sets the allowedUsers property value. The identifiers of users that are in the scope of the policy. Either this property or allowedGroups is required when the appliesTo property is set to selected.
            ## @param value Value to set for the allowed_users property.
            ## @return a void
            ## 
            def allowed_users=(value)
                @allowed_users = value
            end
            ## 
            ## Gets the appliesTo property value. Specifies whether to block or allow fine-grained control of the policy scope. The possible values are: 0 (meaning none), 1 (meaning all), 2 (meaning selected), 3 (meaning unknownFutureValue). The default value is 1. When set to 2, at least one user or group identifier must be specified in either allowedUsers or allowedGroups.  Setting this property to 0 or 1 removes all identifiers in both allowedUsers and allowedGroups.
            ## @return a policy_scope
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. Specifies whether to block or allow fine-grained control of the policy scope. The possible values are: 0 (meaning none), 1 (meaning all), 2 (meaning selected), 3 (meaning unknownFutureValue). The default value is 1. When set to 2, at least one user or group identifier must be specified in either allowedUsers or allowedGroups.  Setting this property to 0 or 1 removes all identifiers in both allowedUsers and allowedGroups.
            ## @param value Value to set for the applies_to property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Instantiates a new azureADRegistrationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a azure_a_d_registration_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureADRegistrationPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedGroups" => lambda {|n| @allowed_groups = n.get_collection_of_primitive_values(String) },
                    "allowedUsers" => lambda {|n| @allowed_users = n.get_collection_of_primitive_values(String) },
                    "appliesTo" => lambda {|n| @applies_to = n.get_enum_value(MicrosoftGraphBeta::Models::PolicyScope) },
                    "isAdminConfigurable" => lambda {|n| @is_admin_configurable = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isAdminConfigurable property value. Specifies whether this policy scope is configurable by the admin. The default value is false. When an admin has enabled Intune (MEM) to manage devices, this property is set to false and appliesTo defaults to 1 (meaning all).
            ## @return a boolean
            ## 
            def is_admin_configurable
                return @is_admin_configurable
            end
            ## 
            ## Sets the isAdminConfigurable property value. Specifies whether this policy scope is configurable by the admin. The default value is false. When an admin has enabled Intune (MEM) to manage devices, this property is set to false and appliesTo defaults to 1 (meaning all).
            ## @param value Value to set for the is_admin_configurable property.
            ## @return a void
            ## 
            def is_admin_configurable=(value)
                @is_admin_configurable = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("allowedGroups", @allowed_groups)
                writer.write_collection_of_primitive_values("allowedUsers", @allowed_users)
                writer.write_enum_value("appliesTo", @applies_to)
                writer.write_boolean_value("isAdminConfigurable", @is_admin_configurable)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
