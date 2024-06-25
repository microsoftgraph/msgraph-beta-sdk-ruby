require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessCrossTenantAccess
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of devices that accessed the external tenant.
            @device_count
            ## 
            # The timestamp of the most recent access to the external tenant.
            @last_access_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The tenant ID of the external tenant.
            @resource_tenant_id
            ## 
            # The name of the external tenant.
            @resource_tenant_name
            ## 
            # The domain of the external tenant.
            @resource_tenant_primary_domain
            ## 
            # The usageStatus property
            @usage_status
            ## 
            # The number of users that accessed the external tenant.
            @user_count
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new NetworkaccessCrossTenantAccess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_cross_tenant_access
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessCrossTenantAccess.new
            end
            ## 
            ## Gets the deviceCount property value. The number of devices that accessed the external tenant.
            ## @return a int64
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. The number of devices that accessed the external tenant.
            ## @param value Value to set for the deviceCount property.
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
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "lastAccessDateTime" => lambda {|n| @last_access_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resourceTenantId" => lambda {|n| @resource_tenant_id = n.get_string_value() },
                    "resourceTenantName" => lambda {|n| @resource_tenant_name = n.get_string_value() },
                    "resourceTenantPrimaryDomain" => lambda {|n| @resource_tenant_primary_domain = n.get_string_value() },
                    "usageStatus" => lambda {|n| @usage_status = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessUsageStatus) },
                    "userCount" => lambda {|n| @user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the lastAccessDateTime property value. The timestamp of the most recent access to the external tenant.
            ## @return a date_time
            ## 
            def last_access_date_time
                return @last_access_date_time
            end
            ## 
            ## Sets the lastAccessDateTime property value. The timestamp of the most recent access to the external tenant.
            ## @param value Value to set for the lastAccessDateTime property.
            ## @return a void
            ## 
            def last_access_date_time=(value)
                @last_access_date_time = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the resourceTenantId property value. The tenant ID of the external tenant.
            ## @return a string
            ## 
            def resource_tenant_id
                return @resource_tenant_id
            end
            ## 
            ## Sets the resourceTenantId property value. The tenant ID of the external tenant.
            ## @param value Value to set for the resourceTenantId property.
            ## @return a void
            ## 
            def resource_tenant_id=(value)
                @resource_tenant_id = value
            end
            ## 
            ## Gets the resourceTenantName property value. The name of the external tenant.
            ## @return a string
            ## 
            def resource_tenant_name
                return @resource_tenant_name
            end
            ## 
            ## Sets the resourceTenantName property value. The name of the external tenant.
            ## @param value Value to set for the resourceTenantName property.
            ## @return a void
            ## 
            def resource_tenant_name=(value)
                @resource_tenant_name = value
            end
            ## 
            ## Gets the resourceTenantPrimaryDomain property value. The domain of the external tenant.
            ## @return a string
            ## 
            def resource_tenant_primary_domain
                return @resource_tenant_primary_domain
            end
            ## 
            ## Sets the resourceTenantPrimaryDomain property value. The domain of the external tenant.
            ## @param value Value to set for the resourceTenantPrimaryDomain property.
            ## @return a void
            ## 
            def resource_tenant_primary_domain=(value)
                @resource_tenant_primary_domain = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("deviceCount", @device_count)
                writer.write_date_time_value("lastAccessDateTime", @last_access_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("resourceTenantId", @resource_tenant_id)
                writer.write_string_value("resourceTenantName", @resource_tenant_name)
                writer.write_string_value("resourceTenantPrimaryDomain", @resource_tenant_primary_domain)
                writer.write_enum_value("usageStatus", @usage_status)
                writer.write_object_value("userCount", @user_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the usageStatus property value. The usageStatus property
            ## @return a networkaccess_usage_status
            ## 
            def usage_status
                return @usage_status
            end
            ## 
            ## Sets the usageStatus property value. The usageStatus property
            ## @param value Value to set for the usageStatus property.
            ## @return a void
            ## 
            def usage_status=(value)
                @usage_status = value
            end
            ## 
            ## Gets the userCount property value. The number of users that accessed the external tenant.
            ## @return a int64
            ## 
            def user_count
                return @user_count
            end
            ## 
            ## Sets the userCount property value. The number of users that accessed the external tenant.
            ## @param value Value to set for the userCount property.
            ## @return a void
            ## 
            def user_count=(value)
                @user_count = value
            end
        end
    end
end
