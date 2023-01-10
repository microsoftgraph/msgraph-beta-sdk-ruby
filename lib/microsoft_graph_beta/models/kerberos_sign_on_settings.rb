require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class KerberosSignOnSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The Internal Application SPN of the application server. This SPN needs to be in the list of services to which the connector can present delegated credentials.
        @kerberos_service_principal_name
        ## 
        # The Delegated Login Identity for the connector to use on behalf of your users. For more information, see Working with different on-premises and cloud identities . Possible values are: userPrincipalName, onPremisesUserPrincipalName, userPrincipalUsername, onPremisesUserPrincipalUsername, onPremisesSAMAccountName.
        @kerberos_sign_on_mapping_attribute_type
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
        ## Instantiates a new kerberosSignOnSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a kerberos_sign_on_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return KerberosSignOnSettings.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "kerberosServicePrincipalName" => lambda {|n| @kerberos_service_principal_name = n.get_string_value() },
                "kerberosSignOnMappingAttributeType" => lambda {|n| @kerberos_sign_on_mapping_attribute_type = n.get_enum_value(MicrosoftGraphBeta::Models::KerberosSignOnMappingAttributeType) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the kerberosServicePrincipalName property value. The Internal Application SPN of the application server. This SPN needs to be in the list of services to which the connector can present delegated credentials.
        ## @return a string
        ## 
        def kerberos_service_principal_name
            return @kerberos_service_principal_name
        end
        ## 
        ## Sets the kerberosServicePrincipalName property value. The Internal Application SPN of the application server. This SPN needs to be in the list of services to which the connector can present delegated credentials.
        ## @param value Value to set for the kerberosServicePrincipalName property.
        ## @return a void
        ## 
        def kerberos_service_principal_name=(value)
            @kerberos_service_principal_name = value
        end
        ## 
        ## Gets the kerberosSignOnMappingAttributeType property value. The Delegated Login Identity for the connector to use on behalf of your users. For more information, see Working with different on-premises and cloud identities . Possible values are: userPrincipalName, onPremisesUserPrincipalName, userPrincipalUsername, onPremisesUserPrincipalUsername, onPremisesSAMAccountName.
        ## @return a kerberos_sign_on_mapping_attribute_type
        ## 
        def kerberos_sign_on_mapping_attribute_type
            return @kerberos_sign_on_mapping_attribute_type
        end
        ## 
        ## Sets the kerberosSignOnMappingAttributeType property value. The Delegated Login Identity for the connector to use on behalf of your users. For more information, see Working with different on-premises and cloud identities . Possible values are: userPrincipalName, onPremisesUserPrincipalName, userPrincipalUsername, onPremisesUserPrincipalUsername, onPremisesSAMAccountName.
        ## @param value Value to set for the kerberosSignOnMappingAttributeType property.
        ## @return a void
        ## 
        def kerberos_sign_on_mapping_attribute_type=(value)
            @kerberos_sign_on_mapping_attribute_type = value
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
            writer.write_string_value("kerberosServicePrincipalName", @kerberos_service_principal_name)
            writer.write_enum_value("kerberosSignOnMappingAttributeType", @kerberos_sign_on_mapping_attribute_type)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
