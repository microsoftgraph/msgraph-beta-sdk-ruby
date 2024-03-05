require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserSecurityProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accounts property
            @accounts
            ## 
            # The azureSubscriptionId property
            @azure_subscription_id
            ## 
            # The azureTenantId property
            @azure_tenant_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The displayName property
            @display_name
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The riskScore property
            @risk_score
            ## 
            # The tags property
            @tags
            ## 
            # The userPrincipalName property
            @user_principal_name
            ## 
            # The vendorInformation property
            @vendor_information
            ## 
            ## Gets the accounts property value. The accounts property
            ## @return a user_account
            ## 
            def accounts
                return @accounts
            end
            ## 
            ## Sets the accounts property value. The accounts property
            ## @param value Value to set for the accounts property.
            ## @return a void
            ## 
            def accounts=(value)
                @accounts = value
            end
            ## 
            ## Gets the azureSubscriptionId property value. The azureSubscriptionId property
            ## @return a string
            ## 
            def azure_subscription_id
                return @azure_subscription_id
            end
            ## 
            ## Sets the azureSubscriptionId property value. The azureSubscriptionId property
            ## @param value Value to set for the azureSubscriptionId property.
            ## @return a void
            ## 
            def azure_subscription_id=(value)
                @azure_subscription_id = value
            end
            ## 
            ## Gets the azureTenantId property value. The azureTenantId property
            ## @return a string
            ## 
            def azure_tenant_id
                return @azure_tenant_id
            end
            ## 
            ## Sets the azureTenantId property value. The azureTenantId property
            ## @param value Value to set for the azureTenantId property.
            ## @return a void
            ## 
            def azure_tenant_id=(value)
                @azure_tenant_id = value
            end
            ## 
            ## Instantiates a new UserSecurityProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_security_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSecurityProfile.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
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
                return super.merge({
                    "accounts" => lambda {|n| @accounts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserAccount.create_from_discriminator_value(pn) }) },
                    "azureSubscriptionId" => lambda {|n| @azure_subscription_id = n.get_string_value() },
                    "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the riskScore property value. The riskScore property
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. The riskScore property
            ## @param value Value to set for the riskScore property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accounts", @accounts)
                writer.write_string_value("azureSubscriptionId", @azure_subscription_id)
                writer.write_string_value("azureTenantId", @azure_tenant_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("riskScore", @risk_score)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_object_value("vendorInformation", @vendor_information)
            end
            ## 
            ## Gets the tags property value. The tags property
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The tags property
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName property
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName property
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the vendorInformation property value. The vendorInformation property
            ## @return a security_vendor_information
            ## 
            def vendor_information
                return @vendor_information
            end
            ## 
            ## Sets the vendorInformation property value. The vendorInformation property
            ## @param value Value to set for the vendorInformation property.
            ## @return a void
            ## 
            def vendor_information=(value)
                @vendor_information = value
            end
        end
    end
end
