require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class TenantDetailedInformation < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The city where the managed tenant is located. Optional. Read-only.
                @city
                ## 
                # The code for the country where the managed tenant is located. Optional. Read-only.
                @country_code
                ## 
                # The name for the country where the managed tenant is located. Optional. Read-only.
                @country_name
                ## 
                # The default domain name for the managed tenant. Optional. Read-only.
                @default_domain_name
                ## 
                # The display name for the managed tenant.
                @display_name
                ## 
                # The business industry associated with the managed tenant. Optional. Read-only.
                @industry_name
                ## 
                # The region where the managed tenant is located. Optional. Read-only.
                @region
                ## 
                # The business segment associated with the managed tenant. Optional. Read-only.
                @segment_name
                ## 
                # The Azure Active Directory tenant identifier for the managed tenant.
                @tenant_id
                ## 
                # The vertical associated with the managed tenant. Optional. Read-only.
                @vertical_name
                ## 
                ## Gets the city property value. The city where the managed tenant is located. Optional. Read-only.
                ## @return a string
                ## 
                def city
                    return @city
                end
                ## 
                ## Sets the city property value. The city where the managed tenant is located. Optional. Read-only.
                ## @param value Value to set for the city property.
                ## @return a void
                ## 
                def city=(value)
                    @city = value
                end
                ## 
                ## Instantiates a new tenantDetailedInformation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the countryCode property value. The code for the country where the managed tenant is located. Optional. Read-only.
                ## @return a string
                ## 
                def country_code
                    return @country_code
                end
                ## 
                ## Sets the countryCode property value. The code for the country where the managed tenant is located. Optional. Read-only.
                ## @param value Value to set for the country_code property.
                ## @return a void
                ## 
                def country_code=(value)
                    @country_code = value
                end
                ## 
                ## Gets the countryName property value. The name for the country where the managed tenant is located. Optional. Read-only.
                ## @return a string
                ## 
                def country_name
                    return @country_name
                end
                ## 
                ## Sets the countryName property value. The name for the country where the managed tenant is located. Optional. Read-only.
                ## @param value Value to set for the country_name property.
                ## @return a void
                ## 
                def country_name=(value)
                    @country_name = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a tenant_detailed_information
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TenantDetailedInformation.new
                end
                ## 
                ## Gets the defaultDomainName property value. The default domain name for the managed tenant. Optional. Read-only.
                ## @return a string
                ## 
                def default_domain_name
                    return @default_domain_name
                end
                ## 
                ## Sets the defaultDomainName property value. The default domain name for the managed tenant. Optional. Read-only.
                ## @param value Value to set for the default_domain_name property.
                ## @return a void
                ## 
                def default_domain_name=(value)
                    @default_domain_name = value
                end
                ## 
                ## Gets the displayName property value. The display name for the managed tenant.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name for the managed tenant.
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
                    return super.merge({
                        "city" => lambda {|n| @city = n.get_string_value() },
                        "countryCode" => lambda {|n| @country_code = n.get_string_value() },
                        "countryName" => lambda {|n| @country_name = n.get_string_value() },
                        "defaultDomainName" => lambda {|n| @default_domain_name = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "industryName" => lambda {|n| @industry_name = n.get_string_value() },
                        "region" => lambda {|n| @region = n.get_string_value() },
                        "segmentName" => lambda {|n| @segment_name = n.get_string_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "verticalName" => lambda {|n| @vertical_name = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the industryName property value. The business industry associated with the managed tenant. Optional. Read-only.
                ## @return a string
                ## 
                def industry_name
                    return @industry_name
                end
                ## 
                ## Sets the industryName property value. The business industry associated with the managed tenant. Optional. Read-only.
                ## @param value Value to set for the industry_name property.
                ## @return a void
                ## 
                def industry_name=(value)
                    @industry_name = value
                end
                ## 
                ## Gets the region property value. The region where the managed tenant is located. Optional. Read-only.
                ## @return a string
                ## 
                def region
                    return @region
                end
                ## 
                ## Sets the region property value. The region where the managed tenant is located. Optional. Read-only.
                ## @param value Value to set for the region property.
                ## @return a void
                ## 
                def region=(value)
                    @region = value
                end
                ## 
                ## Gets the segmentName property value. The business segment associated with the managed tenant. Optional. Read-only.
                ## @return a string
                ## 
                def segment_name
                    return @segment_name
                end
                ## 
                ## Sets the segmentName property value. The business segment associated with the managed tenant. Optional. Read-only.
                ## @param value Value to set for the segment_name property.
                ## @return a void
                ## 
                def segment_name=(value)
                    @segment_name = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("city", @city)
                    writer.write_string_value("countryCode", @country_code)
                    writer.write_string_value("countryName", @country_name)
                    writer.write_string_value("defaultDomainName", @default_domain_name)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("industryName", @industry_name)
                    writer.write_string_value("region", @region)
                    writer.write_string_value("segmentName", @segment_name)
                    writer.write_string_value("tenantId", @tenant_id)
                    writer.write_string_value("verticalName", @vertical_name)
                end
                ## 
                ## Gets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant.
                ## @return a string
                ## 
                def tenant_id
                    return @tenant_id
                end
                ## 
                ## Sets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant.
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
                ## 
                ## Gets the verticalName property value. The vertical associated with the managed tenant. Optional. Read-only.
                ## @return a string
                ## 
                def vertical_name
                    return @vertical_name
                end
                ## 
                ## Sets the verticalName property value. The vertical associated with the managed tenant. Optional. Read-only.
                ## @param value Value to set for the vertical_name property.
                ## @return a void
                ## 
                def vertical_name=(value)
                    @vertical_name = value
                end
            end
        end
    end
end
