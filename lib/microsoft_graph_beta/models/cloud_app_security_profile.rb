require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudAppSecurityProfile < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
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
        # The deploymentPackageUrl property
        @deployment_package_url
        ## 
        # The destinationServiceName property
        @destination_service_name
        ## 
        # The isSigned property
        @is_signed
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        # The manifest property
        @manifest
        ## 
        # The name property
        @name
        ## 
        # The permissionsRequired property
        @permissions_required
        ## 
        # The platform property
        @platform
        ## 
        # The policyName property
        @policy_name
        ## 
        # The publisher property
        @publisher
        ## 
        # The riskScore property
        @risk_score
        ## 
        # The tags property
        @tags
        ## 
        # The type property
        @type
        ## 
        # The vendorInformation property
        @vendor_information
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
        ## Instantiates a new cloudAppSecurityProfile and sets the default values.
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
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_app_security_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudAppSecurityProfile.new
        end
        ## 
        ## Gets the deploymentPackageUrl property value. The deploymentPackageUrl property
        ## @return a string
        ## 
        def deployment_package_url
            return @deployment_package_url
        end
        ## 
        ## Sets the deploymentPackageUrl property value. The deploymentPackageUrl property
        ## @param value Value to set for the deploymentPackageUrl property.
        ## @return a void
        ## 
        def deployment_package_url=(value)
            @deployment_package_url = value
        end
        ## 
        ## Gets the destinationServiceName property value. The destinationServiceName property
        ## @return a string
        ## 
        def destination_service_name
            return @destination_service_name
        end
        ## 
        ## Sets the destinationServiceName property value. The destinationServiceName property
        ## @param value Value to set for the destinationServiceName property.
        ## @return a void
        ## 
        def destination_service_name=(value)
            @destination_service_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "azureSubscriptionId" => lambda {|n| @azure_subscription_id = n.get_string_value() },
                "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "deploymentPackageUrl" => lambda {|n| @deployment_package_url = n.get_string_value() },
                "destinationServiceName" => lambda {|n| @destination_service_name = n.get_string_value() },
                "isSigned" => lambda {|n| @is_signed = n.get_boolean_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "manifest" => lambda {|n| @manifest = n.get_string_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "permissionsRequired" => lambda {|n| @permissions_required = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationPermissionsRequired) },
                "platform" => lambda {|n| @platform = n.get_string_value() },
                "policyName" => lambda {|n| @policy_name = n.get_string_value() },
                "publisher" => lambda {|n| @publisher = n.get_string_value() },
                "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                "type" => lambda {|n| @type = n.get_string_value() },
                "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the isSigned property value. The isSigned property
        ## @return a boolean
        ## 
        def is_signed
            return @is_signed
        end
        ## 
        ## Sets the isSigned property value. The isSigned property
        ## @param value Value to set for the isSigned property.
        ## @return a void
        ## 
        def is_signed=(value)
            @is_signed = value
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
        ## Gets the manifest property value. The manifest property
        ## @return a string
        ## 
        def manifest
            return @manifest
        end
        ## 
        ## Sets the manifest property value. The manifest property
        ## @param value Value to set for the manifest property.
        ## @return a void
        ## 
        def manifest=(value)
            @manifest = value
        end
        ## 
        ## Gets the name property value. The name property
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name property
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Gets the permissionsRequired property value. The permissionsRequired property
        ## @return a application_permissions_required
        ## 
        def permissions_required
            return @permissions_required
        end
        ## 
        ## Sets the permissionsRequired property value. The permissionsRequired property
        ## @param value Value to set for the permissionsRequired property.
        ## @return a void
        ## 
        def permissions_required=(value)
            @permissions_required = value
        end
        ## 
        ## Gets the platform property value. The platform property
        ## @return a string
        ## 
        def platform
            return @platform
        end
        ## 
        ## Sets the platform property value. The platform property
        ## @param value Value to set for the platform property.
        ## @return a void
        ## 
        def platform=(value)
            @platform = value
        end
        ## 
        ## Gets the policyName property value. The policyName property
        ## @return a string
        ## 
        def policy_name
            return @policy_name
        end
        ## 
        ## Sets the policyName property value. The policyName property
        ## @param value Value to set for the policyName property.
        ## @return a void
        ## 
        def policy_name=(value)
            @policy_name = value
        end
        ## 
        ## Gets the publisher property value. The publisher property
        ## @return a string
        ## 
        def publisher
            return @publisher
        end
        ## 
        ## Sets the publisher property value. The publisher property
        ## @param value Value to set for the publisher property.
        ## @return a void
        ## 
        def publisher=(value)
            @publisher = value
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
            writer.write_string_value("azureSubscriptionId", @azure_subscription_id)
            writer.write_string_value("azureTenantId", @azure_tenant_id)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("deploymentPackageUrl", @deployment_package_url)
            writer.write_string_value("destinationServiceName", @destination_service_name)
            writer.write_boolean_value("isSigned", @is_signed)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("manifest", @manifest)
            writer.write_string_value("name", @name)
            writer.write_enum_value("permissionsRequired", @permissions_required)
            writer.write_string_value("platform", @platform)
            writer.write_string_value("policyName", @policy_name)
            writer.write_string_value("publisher", @publisher)
            writer.write_string_value("riskScore", @risk_score)
            writer.write_collection_of_primitive_values("tags", @tags)
            writer.write_string_value("type", @type)
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
        ## Gets the type property value. The type property
        ## @return a string
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. The type property
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
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
