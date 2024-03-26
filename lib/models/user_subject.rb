require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserSubject < MicrosoftGraphBeta::Models::ConditionalAccessWhatIfSubject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The externalTenantId property
            @external_tenant_id
            ## 
            # The externalUserType property
            @external_user_type
            ## 
            # The userId property
            @user_id
            ## 
            ## Instantiates a new UserSubject and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.userSubject"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_subject
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSubject.new
            end
            ## 
            ## Gets the externalTenantId property value. The externalTenantId property
            ## @return a string
            ## 
            def external_tenant_id
                return @external_tenant_id
            end
            ## 
            ## Sets the externalTenantId property value. The externalTenantId property
            ## @param value Value to set for the externalTenantId property.
            ## @return a void
            ## 
            def external_tenant_id=(value)
                @external_tenant_id = value
            end
            ## 
            ## Gets the externalUserType property value. The externalUserType property
            ## @return a conditional_access_guest_or_external_user_types
            ## 
            def external_user_type
                return @external_user_type
            end
            ## 
            ## Sets the externalUserType property value. The externalUserType property
            ## @param value Value to set for the externalUserType property.
            ## @return a void
            ## 
            def external_user_type=(value)
                @external_user_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "externalTenantId" => lambda {|n| @external_tenant_id = n.get_string_value() },
                    "externalUserType" => lambda {|n| @external_user_type = n.get_enum_values(MicrosoftGraphBeta::Models::ConditionalAccessGuestOrExternalUserTypes) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
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
                writer.write_string_value("externalTenantId", @external_tenant_id)
                writer.write_enum_value("externalUserType", @external_user_type)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. The userId property
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The userId property
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
