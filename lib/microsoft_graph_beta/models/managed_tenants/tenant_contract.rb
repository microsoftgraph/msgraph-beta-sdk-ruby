require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    class TenantContract
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The type of relationship that exists between the managing entity and tenant. Optional. Read-only.
        @contract_type
        ## 
        # The default domain name for the tenant. Required. Read-only.
        @default_domain_name
        ## 
        # The display name for the tenant. Optional. Read-only.
        @display_name
        ## 
        # The OdataType property
        @odata_type
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
        ## Instantiates a new tenantContract and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the contractType property value. The type of relationship that exists between the managing entity and tenant. Optional. Read-only.
        ## @return a integer
        ## 
        def contract_type
            return @contract_type
        end
        ## 
        ## Sets the contractType property value. The type of relationship that exists between the managing entity and tenant. Optional. Read-only.
        ## @param value Value to set for the contractType property.
        ## @return a void
        ## 
        def contract_type=(value)
            @contract_type = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a tenant_contract
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TenantContract.new
        end
        ## 
        ## Gets the defaultDomainName property value. The default domain name for the tenant. Required. Read-only.
        ## @return a string
        ## 
        def default_domain_name
            return @default_domain_name
        end
        ## 
        ## Sets the defaultDomainName property value. The default domain name for the tenant. Required. Read-only.
        ## @param value Value to set for the defaultDomainName property.
        ## @return a void
        ## 
        def default_domain_name=(value)
            @default_domain_name = value
        end
        ## 
        ## Gets the displayName property value. The display name for the tenant. Optional. Read-only.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name for the tenant. Optional. Read-only.
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
            return {
                "contractType" => lambda {|n| @contract_type = n.get_number_value() },
                "defaultDomainName" => lambda {|n| @default_domain_name = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_number_value("contractType", @contract_type)
            writer.write_string_value("defaultDomainName", @default_domain_name)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
