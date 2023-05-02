require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ProviderTenantSetting < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The azureTenantId property
            @azure_tenant_id
            ## 
            # The enabled property
            @enabled
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The provider property
            @provider
            ## 
            # The vendor property
            @vendor
            ## 
            ## Gets the azureTenantId property value. The azureTenantId property
            ## @return a string
            ## 
            def azure_tenant_id
                return @azure_tenant_id
            end
            ## 
            ## Sets the azureTenantId property value. The azureTenantId property
            ## @param value Value to set for the azure_tenant_id property.
            ## @return a void
            ## 
            def azure_tenant_id=(value)
                @azure_tenant_id = value
            end
            ## 
            ## Instantiates a new providerTenantSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a provider_tenant_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProviderTenantSetting.new
            end
            ## 
            ## Gets the enabled property value. The enabled property
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. The enabled property
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "provider" => lambda {|n| @provider = n.get_string_value() },
                    "vendor" => lambda {|n| @vendor = n.get_string_value() },
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
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the provider property value. The provider property
            ## @return a string
            ## 
            def provider
                return @provider
            end
            ## 
            ## Sets the provider property value. The provider property
            ## @param value Value to set for the provider property.
            ## @return a void
            ## 
            def provider=(value)
                @provider = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("azureTenantId", @azure_tenant_id)
                writer.write_boolean_value("enabled", @enabled)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("provider", @provider)
                writer.write_string_value("vendor", @vendor)
            end
            ## 
            ## Gets the vendor property value. The vendor property
            ## @return a string
            ## 
            def vendor
                return @vendor
            end
            ## 
            ## Sets the vendor property value. The vendor property
            ## @param value Value to set for the vendor property.
            ## @return a void
            ## 
            def vendor=(value)
                @vendor = value
            end
        end
    end
end
