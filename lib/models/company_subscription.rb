require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CompanySubscription < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of this subscription in the commerce system. Alternate key.
            @commerce_subscription_id
            ## 
            # The date and time when this subscription was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Whether the subscription is a free trial or purchased.
            @is_trial
            ## 
            # The date and time when the subscription will move to the next state (as defined by the status property) if not renewed by the tenant. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @next_lifecycle_date_time
            ## 
            # The ocpSubscriptionId property
            @ocp_subscription_id
            ## 
            # The object ID of the account admin.
            @owner_id
            ## 
            # The unique identifier for the Microsoft partner tenant that created the subscription on a customer tenant.
            @owner_tenant_id
            ## 
            # Indicates the entity that ownerId belongs to, for example, 'User'.
            @owner_type
            ## 
            # The provisioning status of each service that's included in this subscription.
            @service_status
            ## 
            # The object ID of the SKU associated with this subscription.
            @sku_id
            ## 
            # The SKU associated with this subscription.
            @sku_part_number
            ## 
            # The status of this subscription. Possible values are: Enabled, Expired, Suspended, Warning, LockedOut.
            @status
            ## 
            # The number of seats included in this subscription.
            @total_licenses
            ## 
            ## Gets the commerceSubscriptionId property value. The ID of this subscription in the commerce system. Alternate key.
            ## @return a string
            ## 
            def commerce_subscription_id
                return @commerce_subscription_id
            end
            ## 
            ## Sets the commerceSubscriptionId property value. The ID of this subscription in the commerce system. Alternate key.
            ## @param value Value to set for the commerceSubscriptionId property.
            ## @return a void
            ## 
            def commerce_subscription_id=(value)
                @commerce_subscription_id = value
            end
            ## 
            ## Instantiates a new companySubscription and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when this subscription was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when this subscription was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a company_subscription
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CompanySubscription.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "commerceSubscriptionId" => lambda {|n| @commerce_subscription_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isTrial" => lambda {|n| @is_trial = n.get_boolean_value() },
                    "nextLifecycleDateTime" => lambda {|n| @next_lifecycle_date_time = n.get_date_time_value() },
                    "ocpSubscriptionId" => lambda {|n| @ocp_subscription_id = n.get_string_value() },
                    "ownerId" => lambda {|n| @owner_id = n.get_string_value() },
                    "ownerTenantId" => lambda {|n| @owner_tenant_id = n.get_string_value() },
                    "ownerType" => lambda {|n| @owner_type = n.get_string_value() },
                    "serviceStatus" => lambda {|n| @service_status = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServicePlanInfo.create_from_discriminator_value(pn) }) },
                    "skuId" => lambda {|n| @sku_id = n.get_string_value() },
                    "skuPartNumber" => lambda {|n| @sku_part_number = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "totalLicenses" => lambda {|n| @total_licenses = n.get_number_value() },
                })
            end
            ## 
            ## Gets the isTrial property value. Whether the subscription is a free trial or purchased.
            ## @return a boolean
            ## 
            def is_trial
                return @is_trial
            end
            ## 
            ## Sets the isTrial property value. Whether the subscription is a free trial or purchased.
            ## @param value Value to set for the isTrial property.
            ## @return a void
            ## 
            def is_trial=(value)
                @is_trial = value
            end
            ## 
            ## Gets the nextLifecycleDateTime property value. The date and time when the subscription will move to the next state (as defined by the status property) if not renewed by the tenant. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def next_lifecycle_date_time
                return @next_lifecycle_date_time
            end
            ## 
            ## Sets the nextLifecycleDateTime property value. The date and time when the subscription will move to the next state (as defined by the status property) if not renewed by the tenant. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the nextLifecycleDateTime property.
            ## @return a void
            ## 
            def next_lifecycle_date_time=(value)
                @next_lifecycle_date_time = value
            end
            ## 
            ## Gets the ocpSubscriptionId property value. The ocpSubscriptionId property
            ## @return a string
            ## 
            def ocp_subscription_id
                return @ocp_subscription_id
            end
            ## 
            ## Sets the ocpSubscriptionId property value. The ocpSubscriptionId property
            ## @param value Value to set for the ocpSubscriptionId property.
            ## @return a void
            ## 
            def ocp_subscription_id=(value)
                @ocp_subscription_id = value
            end
            ## 
            ## Gets the ownerId property value. The object ID of the account admin.
            ## @return a string
            ## 
            def owner_id
                return @owner_id
            end
            ## 
            ## Sets the ownerId property value. The object ID of the account admin.
            ## @param value Value to set for the ownerId property.
            ## @return a void
            ## 
            def owner_id=(value)
                @owner_id = value
            end
            ## 
            ## Gets the ownerTenantId property value. The unique identifier for the Microsoft partner tenant that created the subscription on a customer tenant.
            ## @return a string
            ## 
            def owner_tenant_id
                return @owner_tenant_id
            end
            ## 
            ## Sets the ownerTenantId property value. The unique identifier for the Microsoft partner tenant that created the subscription on a customer tenant.
            ## @param value Value to set for the ownerTenantId property.
            ## @return a void
            ## 
            def owner_tenant_id=(value)
                @owner_tenant_id = value
            end
            ## 
            ## Gets the ownerType property value. Indicates the entity that ownerId belongs to, for example, 'User'.
            ## @return a string
            ## 
            def owner_type
                return @owner_type
            end
            ## 
            ## Sets the ownerType property value. Indicates the entity that ownerId belongs to, for example, 'User'.
            ## @param value Value to set for the ownerType property.
            ## @return a void
            ## 
            def owner_type=(value)
                @owner_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("commerceSubscriptionId", @commerce_subscription_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_boolean_value("isTrial", @is_trial)
                writer.write_date_time_value("nextLifecycleDateTime", @next_lifecycle_date_time)
                writer.write_string_value("ocpSubscriptionId", @ocp_subscription_id)
                writer.write_string_value("ownerId", @owner_id)
                writer.write_string_value("ownerTenantId", @owner_tenant_id)
                writer.write_string_value("ownerType", @owner_type)
                writer.write_collection_of_object_values("serviceStatus", @service_status)
                writer.write_string_value("skuId", @sku_id)
                writer.write_string_value("skuPartNumber", @sku_part_number)
                writer.write_string_value("status", @status)
                writer.write_number_value("totalLicenses", @total_licenses)
            end
            ## 
            ## Gets the serviceStatus property value. The provisioning status of each service that's included in this subscription.
            ## @return a service_plan_info
            ## 
            def service_status
                return @service_status
            end
            ## 
            ## Sets the serviceStatus property value. The provisioning status of each service that's included in this subscription.
            ## @param value Value to set for the serviceStatus property.
            ## @return a void
            ## 
            def service_status=(value)
                @service_status = value
            end
            ## 
            ## Gets the skuId property value. The object ID of the SKU associated with this subscription.
            ## @return a string
            ## 
            def sku_id
                return @sku_id
            end
            ## 
            ## Sets the skuId property value. The object ID of the SKU associated with this subscription.
            ## @param value Value to set for the skuId property.
            ## @return a void
            ## 
            def sku_id=(value)
                @sku_id = value
            end
            ## 
            ## Gets the skuPartNumber property value. The SKU associated with this subscription.
            ## @return a string
            ## 
            def sku_part_number
                return @sku_part_number
            end
            ## 
            ## Sets the skuPartNumber property value. The SKU associated with this subscription.
            ## @param value Value to set for the skuPartNumber property.
            ## @return a void
            ## 
            def sku_part_number=(value)
                @sku_part_number = value
            end
            ## 
            ## Gets the status property value. The status of this subscription. Possible values are: Enabled, Expired, Suspended, Warning, LockedOut.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of this subscription. Possible values are: Enabled, Expired, Suspended, Warning, LockedOut.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the totalLicenses property value. The number of seats included in this subscription.
            ## @return a integer
            ## 
            def total_licenses
                return @total_licenses
            end
            ## 
            ## Sets the totalLicenses property value. The number of seats included in this subscription.
            ## @param value Value to set for the totalLicenses property.
            ## @return a void
            ## 
            def total_licenses=(value)
                @total_licenses = value
            end
        end
    end
end
