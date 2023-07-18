require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServiceLevelAgreementRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collects the Azure AD SLA attainment for each month for an Azure AD tenant.
            @azure_a_d_authentication
            ## 
            ## Gets the azureADAuthentication property value. Collects the Azure AD SLA attainment for each month for an Azure AD tenant.
            ## @return a azure_a_d_authentication
            ## 
            def azure_a_d_authentication
                return @azure_a_d_authentication
            end
            ## 
            ## Sets the azureADAuthentication property value. Collects the Azure AD SLA attainment for each month for an Azure AD tenant.
            ## @param value Value to set for the azure_a_d_authentication property.
            ## @return a void
            ## 
            def azure_a_d_authentication=(value)
                @azure_a_d_authentication = value
            end
            ## 
            ## Instantiates a new serviceLevelAgreementRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_level_agreement_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceLevelAgreementRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureADAuthentication" => lambda {|n| @azure_a_d_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AzureADAuthentication.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("azureADAuthentication", @azure_a_d_authentication)
            end
        end
    end
end
