require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceTemplate < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A tenant-defined name for the party that's responsible for provisioning and managing devices on the Microsoft Entra tenant. For example, Tailwind Traders (the manufacturer) makes security cameras that are installed in customer buildings and managed by Lakeshore Retail (the device authority). This value is provided to the customer by the device authority (manufacturer or reseller).
            @device_authority
            ## 
            # Collection of device objects created based on this template.
            @device_instances
            ## 
            # Manufacturer name.
            @manufacturer
            ## 
            # Model name.
            @model
            ## 
            # Object ID of the mutualTlsOauthConfiguration. This value isn't required if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller).
            @mutual_tls_oauth_configuration_id
            ## 
            # ID (tenant ID for device authority) of the tenant that contains the mutualTlsOauthConfiguration. This value isn't required if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller).
            @mutual_tls_oauth_configuration_tenant_id
            ## 
            # Operating system type. Supports $filter (eq, in).
            @operating_system
            ## 
            # Collection of directory objects that can manage the device template and the related deviceInstances. Owners can be represented as service principals, users, or applications. An owner has full privileges over the device template and doesn't require other administrator roles to create, update, or delete devices from this template, as well as to add or remove template owners. There can be a maximum of 100 owners on a device template.  Supports $expand.
            @owners
            ## 
            ## Instantiates a new DeviceTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceTemplate.new
            end
            ## 
            ## Gets the deviceAuthority property value. A tenant-defined name for the party that's responsible for provisioning and managing devices on the Microsoft Entra tenant. For example, Tailwind Traders (the manufacturer) makes security cameras that are installed in customer buildings and managed by Lakeshore Retail (the device authority). This value is provided to the customer by the device authority (manufacturer or reseller).
            ## @return a string
            ## 
            def device_authority
                return @device_authority
            end
            ## 
            ## Sets the deviceAuthority property value. A tenant-defined name for the party that's responsible for provisioning and managing devices on the Microsoft Entra tenant. For example, Tailwind Traders (the manufacturer) makes security cameras that are installed in customer buildings and managed by Lakeshore Retail (the device authority). This value is provided to the customer by the device authority (manufacturer or reseller).
            ## @param value Value to set for the deviceAuthority property.
            ## @return a void
            ## 
            def device_authority=(value)
                @device_authority = value
            end
            ## 
            ## Gets the deviceInstances property value. Collection of device objects created based on this template.
            ## @return a device
            ## 
            def device_instances
                return @device_instances
            end
            ## 
            ## Sets the deviceInstances property value. Collection of device objects created based on this template.
            ## @param value Value to set for the deviceInstances property.
            ## @return a void
            ## 
            def device_instances=(value)
                @device_instances = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceAuthority" => lambda {|n| @device_authority = n.get_string_value() },
                    "deviceInstances" => lambda {|n| @device_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Device.create_from_discriminator_value(pn) }) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "mutualTlsOauthConfigurationId" => lambda {|n| @mutual_tls_oauth_configuration_id = n.get_string_value() },
                    "mutualTlsOauthConfigurationTenantId" => lambda {|n| @mutual_tls_oauth_configuration_tenant_id = n.get_string_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the manufacturer property value. Manufacturer name.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Manufacturer name.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. Model name.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. Model name.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the mutualTlsOauthConfigurationId property value. Object ID of the mutualTlsOauthConfiguration. This value isn't required if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller).
            ## @return a string
            ## 
            def mutual_tls_oauth_configuration_id
                return @mutual_tls_oauth_configuration_id
            end
            ## 
            ## Sets the mutualTlsOauthConfigurationId property value. Object ID of the mutualTlsOauthConfiguration. This value isn't required if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller).
            ## @param value Value to set for the mutualTlsOauthConfigurationId property.
            ## @return a void
            ## 
            def mutual_tls_oauth_configuration_id=(value)
                @mutual_tls_oauth_configuration_id = value
            end
            ## 
            ## Gets the mutualTlsOauthConfigurationTenantId property value. ID (tenant ID for device authority) of the tenant that contains the mutualTlsOauthConfiguration. This value isn't required if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller).
            ## @return a string
            ## 
            def mutual_tls_oauth_configuration_tenant_id
                return @mutual_tls_oauth_configuration_tenant_id
            end
            ## 
            ## Sets the mutualTlsOauthConfigurationTenantId property value. ID (tenant ID for device authority) of the tenant that contains the mutualTlsOauthConfiguration. This value isn't required if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller).
            ## @param value Value to set for the mutualTlsOauthConfigurationTenantId property.
            ## @return a void
            ## 
            def mutual_tls_oauth_configuration_tenant_id=(value)
                @mutual_tls_oauth_configuration_tenant_id = value
            end
            ## 
            ## Gets the operatingSystem property value. Operating system type. Supports $filter (eq, in).
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. Operating system type. Supports $filter (eq, in).
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the owners property value. Collection of directory objects that can manage the device template and the related deviceInstances. Owners can be represented as service principals, users, or applications. An owner has full privileges over the device template and doesn't require other administrator roles to create, update, or delete devices from this template, as well as to add or remove template owners. There can be a maximum of 100 owners on a device template.  Supports $expand.
            ## @return a directory_object
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. Collection of directory objects that can manage the device template and the related deviceInstances. Owners can be represented as service principals, users, or applications. An owner has full privileges over the device template and doesn't require other administrator roles to create, update, or delete devices from this template, as well as to add or remove template owners. There can be a maximum of 100 owners on a device template.  Supports $expand.
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("deviceAuthority", @device_authority)
                writer.write_collection_of_object_values("deviceInstances", @device_instances)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_string_value("mutualTlsOauthConfigurationId", @mutual_tls_oauth_configuration_id)
                writer.write_string_value("mutualTlsOauthConfigurationTenantId", @mutual_tls_oauth_configuration_tenant_id)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_collection_of_object_values("owners", @owners)
            end
        end
    end
end
