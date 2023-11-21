require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PartnerInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The commerceUrl property
            @commerce_url
            ## 
            # The companyName property
            @company_name
            ## 
            # The companyType property
            @company_type
            ## 
            # The helpUrl property
            @help_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The partnerTenantId property
            @partner_tenant_id
            ## 
            # The supportEmails property
            @support_emails
            ## 
            # The supportTelephones property
            @support_telephones
            ## 
            # The supportUrl property
            @support_url
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
            ## Gets the commerceUrl property value. The commerceUrl property
            ## @return a string
            ## 
            def commerce_url
                return @commerce_url
            end
            ## 
            ## Sets the commerceUrl property value. The commerceUrl property
            ## @param value Value to set for the commerceUrl property.
            ## @return a void
            ## 
            def commerce_url=(value)
                @commerce_url = value
            end
            ## 
            ## Gets the companyName property value. The companyName property
            ## @return a string
            ## 
            def company_name
                return @company_name
            end
            ## 
            ## Sets the companyName property value. The companyName property
            ## @param value Value to set for the companyName property.
            ## @return a void
            ## 
            def company_name=(value)
                @company_name = value
            end
            ## 
            ## Gets the companyType property value. The companyType property
            ## @return a partner_tenant_type
            ## 
            def company_type
                return @company_type
            end
            ## 
            ## Sets the companyType property value. The companyType property
            ## @param value Value to set for the companyType property.
            ## @return a void
            ## 
            def company_type=(value)
                @company_type = value
            end
            ## 
            ## Instantiates a new partnerInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a partner_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PartnerInformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "commerceUrl" => lambda {|n| @commerce_url = n.get_string_value() },
                    "companyName" => lambda {|n| @company_name = n.get_string_value() },
                    "companyType" => lambda {|n| @company_type = n.get_enum_value(MicrosoftGraphBeta::Models::PartnerTenantType) },
                    "helpUrl" => lambda {|n| @help_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "partnerTenantId" => lambda {|n| @partner_tenant_id = n.get_string_value() },
                    "supportEmails" => lambda {|n| @support_emails = n.get_collection_of_primitive_values(String) },
                    "supportTelephones" => lambda {|n| @support_telephones = n.get_collection_of_primitive_values(String) },
                    "supportUrl" => lambda {|n| @support_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the helpUrl property value. The helpUrl property
            ## @return a string
            ## 
            def help_url
                return @help_url
            end
            ## 
            ## Sets the helpUrl property value. The helpUrl property
            ## @param value Value to set for the helpUrl property.
            ## @return a void
            ## 
            def help_url=(value)
                @help_url = value
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
            ## Gets the partnerTenantId property value. The partnerTenantId property
            ## @return a string
            ## 
            def partner_tenant_id
                return @partner_tenant_id
            end
            ## 
            ## Sets the partnerTenantId property value. The partnerTenantId property
            ## @param value Value to set for the partnerTenantId property.
            ## @return a void
            ## 
            def partner_tenant_id=(value)
                @partner_tenant_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("commerceUrl", @commerce_url)
                writer.write_string_value("companyName", @company_name)
                writer.write_enum_value("companyType", @company_type)
                writer.write_string_value("helpUrl", @help_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("partnerTenantId", @partner_tenant_id)
                writer.write_collection_of_primitive_values("supportEmails", @support_emails)
                writer.write_collection_of_primitive_values("supportTelephones", @support_telephones)
                writer.write_string_value("supportUrl", @support_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportEmails property value. The supportEmails property
            ## @return a string
            ## 
            def support_emails
                return @support_emails
            end
            ## 
            ## Sets the supportEmails property value. The supportEmails property
            ## @param value Value to set for the supportEmails property.
            ## @return a void
            ## 
            def support_emails=(value)
                @support_emails = value
            end
            ## 
            ## Gets the supportTelephones property value. The supportTelephones property
            ## @return a string
            ## 
            def support_telephones
                return @support_telephones
            end
            ## 
            ## Sets the supportTelephones property value. The supportTelephones property
            ## @param value Value to set for the supportTelephones property.
            ## @return a void
            ## 
            def support_telephones=(value)
                @support_telephones = value
            end
            ## 
            ## Gets the supportUrl property value. The supportUrl property
            ## @return a string
            ## 
            def support_url
                return @support_url
            end
            ## 
            ## Sets the supportUrl property value. The supportUrl property
            ## @param value Value to set for the supportUrl property.
            ## @return a void
            ## 
            def support_url=(value)
                @support_url = value
            end
        end
    end
end
