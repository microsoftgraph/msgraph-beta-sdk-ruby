require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class CrossTenantSummary
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The authTransactionCount property
                @auth_transaction_count
                ## 
                # The deviceCount property
                @device_count
                ## 
                # The newTenantCount property
                @new_tenant_count
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The tenantCount property
                @tenant_count
                ## 
                # The userCount property
                @user_count
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
                ## Gets the authTransactionCount property value. The authTransactionCount property
                ## @return a integer
                ## 
                def auth_transaction_count
                    return @auth_transaction_count
                end
                ## 
                ## Sets the authTransactionCount property value. The authTransactionCount property
                ## @param value Value to set for the auth_transaction_count property.
                ## @return a void
                ## 
                def auth_transaction_count=(value)
                    @auth_transaction_count = value
                end
                ## 
                ## Instantiates a new crossTenantSummary and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a cross_tenant_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CrossTenantSummary.new
                end
                ## 
                ## Gets the deviceCount property value. The deviceCount property
                ## @return a integer
                ## 
                def device_count
                    return @device_count
                end
                ## 
                ## Sets the deviceCount property value. The deviceCount property
                ## @param value Value to set for the device_count property.
                ## @return a void
                ## 
                def device_count=(value)
                    @device_count = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "authTransactionCount" => lambda {|n| @auth_transaction_count = n.get_number_value() },
                        "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                        "newTenantCount" => lambda {|n| @new_tenant_count = n.get_number_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "tenantCount" => lambda {|n| @tenant_count = n.get_number_value() },
                        "userCount" => lambda {|n| @user_count = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the newTenantCount property value. The newTenantCount property
                ## @return a integer
                ## 
                def new_tenant_count
                    return @new_tenant_count
                end
                ## 
                ## Sets the newTenantCount property value. The newTenantCount property
                ## @param value Value to set for the new_tenant_count property.
                ## @return a void
                ## 
                def new_tenant_count=(value)
                    @new_tenant_count = value
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
                    writer.write_number_value("authTransactionCount", @auth_transaction_count)
                    writer.write_number_value("deviceCount", @device_count)
                    writer.write_number_value("newTenantCount", @new_tenant_count)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("tenantCount", @tenant_count)
                    writer.write_number_value("userCount", @user_count)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the tenantCount property value. The tenantCount property
                ## @return a integer
                ## 
                def tenant_count
                    return @tenant_count
                end
                ## 
                ## Sets the tenantCount property value. The tenantCount property
                ## @param value Value to set for the tenant_count property.
                ## @return a void
                ## 
                def tenant_count=(value)
                    @tenant_count = value
                end
                ## 
                ## Gets the userCount property value. The userCount property
                ## @return a integer
                ## 
                def user_count
                    return @user_count
                end
                ## 
                ## Sets the userCount property value. The userCount property
                ## @param value Value to set for the user_count property.
                ## @return a void
                ## 
                def user_count=(value)
                    @user_count = value
                end
            end
        end
    end
end
