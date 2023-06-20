require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InboundSharedUserProfile
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name displayed in the address book for teh user at the time when the sharing record was created. Read-only.
            @display_name
            ## 
            # The home tenant id of the external user. Read-only.
            @home_tenant_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The object id of the external user. Read-only.
            @user_id
            ## 
            # The user principal name (UPN) of the external user. Read-only.
            @user_principal_name
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
            ## Instantiates a new InboundSharedUserProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a inbound_shared_user_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InboundSharedUserProfile.new
            end
            ## 
            ## Gets the displayName property value. The name displayed in the address book for teh user at the time when the sharing record was created. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name displayed in the address book for teh user at the time when the sharing record was created. Read-only.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "homeTenantId" => lambda {|n| @home_tenant_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the homeTenantId property value. The home tenant id of the external user. Read-only.
            ## @return a string
            ## 
            def home_tenant_id
                return @home_tenant_id
            end
            ## 
            ## Sets the homeTenantId property value. The home tenant id of the external user. Read-only.
            ## @param value Value to set for the home_tenant_id property.
            ## @return a void
            ## 
            def home_tenant_id=(value)
                @home_tenant_id = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("homeTenantId", @home_tenant_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userId property value. The object id of the external user. Read-only.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The object id of the external user. Read-only.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (UPN) of the external user. Read-only.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (UPN) of the external user. Read-only.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
