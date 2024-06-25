require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConditionalAccessWhatIfConditions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The authenticationFlow property
            @authentication_flow
            ## 
            # The clientAppType property
            @client_app_type
            ## 
            # The country property
            @country
            ## 
            # The deviceInfo property
            @device_info
            ## 
            # The devicePlatform property
            @device_platform
            ## 
            # The insiderRiskLevel property
            @insider_risk_level
            ## 
            # The ipAddress property
            @ip_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The servicePrincipalRiskLevel property
            @service_principal_risk_level
            ## 
            # The signInRiskLevel property
            @sign_in_risk_level
            ## 
            # The userRiskLevel property
            @user_risk_level
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
            ## Gets the authenticationFlow property value. The authenticationFlow property
            ## @return a authentication_flow
            ## 
            def authentication_flow
                return @authentication_flow
            end
            ## 
            ## Sets the authenticationFlow property value. The authenticationFlow property
            ## @param value Value to set for the authenticationFlow property.
            ## @return a void
            ## 
            def authentication_flow=(value)
                @authentication_flow = value
            end
            ## 
            ## Gets the clientAppType property value. The clientAppType property
            ## @return a conditional_access_client_app
            ## 
            def client_app_type
                return @client_app_type
            end
            ## 
            ## Sets the clientAppType property value. The clientAppType property
            ## @param value Value to set for the clientAppType property.
            ## @return a void
            ## 
            def client_app_type=(value)
                @client_app_type = value
            end
            ## 
            ## Instantiates a new ConditionalAccessWhatIfConditions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the country property value. The country property
            ## @return a string
            ## 
            def country
                return @country
            end
            ## 
            ## Sets the country property value. The country property
            ## @param value Value to set for the country property.
            ## @return a void
            ## 
            def country=(value)
                @country = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_what_if_conditions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessWhatIfConditions.new
            end
            ## 
            ## Gets the deviceInfo property value. The deviceInfo property
            ## @return a device_info
            ## 
            def device_info
                return @device_info
            end
            ## 
            ## Sets the deviceInfo property value. The deviceInfo property
            ## @param value Value to set for the deviceInfo property.
            ## @return a void
            ## 
            def device_info=(value)
                @device_info = value
            end
            ## 
            ## Gets the devicePlatform property value. The devicePlatform property
            ## @return a conditional_access_device_platform
            ## 
            def device_platform
                return @device_platform
            end
            ## 
            ## Sets the devicePlatform property value. The devicePlatform property
            ## @param value Value to set for the devicePlatform property.
            ## @return a void
            ## 
            def device_platform=(value)
                @device_platform = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authenticationFlow" => lambda {|n| @authentication_flow = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationFlow.create_from_discriminator_value(pn) }) },
                    "clientAppType" => lambda {|n| @client_app_type = n.get_enum_value(MicrosoftGraphBeta::Models::ConditionalAccessClientApp) },
                    "country" => lambda {|n| @country = n.get_string_value() },
                    "deviceInfo" => lambda {|n| @device_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceInfo.create_from_discriminator_value(pn) }) },
                    "devicePlatform" => lambda {|n| @device_platform = n.get_enum_value(MicrosoftGraphBeta::Models::ConditionalAccessDevicePlatform) },
                    "insiderRiskLevel" => lambda {|n| @insider_risk_level = n.get_enum_value(MicrosoftGraphBeta::Models::InsiderRiskLevel) },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "servicePrincipalRiskLevel" => lambda {|n| @service_principal_risk_level = n.get_enum_value(MicrosoftGraphBeta::Models::RiskLevel) },
                    "signInRiskLevel" => lambda {|n| @sign_in_risk_level = n.get_enum_value(MicrosoftGraphBeta::Models::RiskLevel) },
                    "userRiskLevel" => lambda {|n| @user_risk_level = n.get_enum_value(MicrosoftGraphBeta::Models::RiskLevel) },
                }
            end
            ## 
            ## Gets the insiderRiskLevel property value. The insiderRiskLevel property
            ## @return a insider_risk_level
            ## 
            def insider_risk_level
                return @insider_risk_level
            end
            ## 
            ## Sets the insiderRiskLevel property value. The insiderRiskLevel property
            ## @param value Value to set for the insiderRiskLevel property.
            ## @return a void
            ## 
            def insider_risk_level=(value)
                @insider_risk_level = value
            end
            ## 
            ## Gets the ipAddress property value. The ipAddress property
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The ipAddress property
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("authenticationFlow", @authentication_flow)
                writer.write_enum_value("clientAppType", @client_app_type)
                writer.write_string_value("country", @country)
                writer.write_object_value("deviceInfo", @device_info)
                writer.write_enum_value("devicePlatform", @device_platform)
                writer.write_enum_value("insiderRiskLevel", @insider_risk_level)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("servicePrincipalRiskLevel", @service_principal_risk_level)
                writer.write_enum_value("signInRiskLevel", @sign_in_risk_level)
                writer.write_enum_value("userRiskLevel", @user_risk_level)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servicePrincipalRiskLevel property value. The servicePrincipalRiskLevel property
            ## @return a risk_level
            ## 
            def service_principal_risk_level
                return @service_principal_risk_level
            end
            ## 
            ## Sets the servicePrincipalRiskLevel property value. The servicePrincipalRiskLevel property
            ## @param value Value to set for the servicePrincipalRiskLevel property.
            ## @return a void
            ## 
            def service_principal_risk_level=(value)
                @service_principal_risk_level = value
            end
            ## 
            ## Gets the signInRiskLevel property value. The signInRiskLevel property
            ## @return a risk_level
            ## 
            def sign_in_risk_level
                return @sign_in_risk_level
            end
            ## 
            ## Sets the signInRiskLevel property value. The signInRiskLevel property
            ## @param value Value to set for the signInRiskLevel property.
            ## @return a void
            ## 
            def sign_in_risk_level=(value)
                @sign_in_risk_level = value
            end
            ## 
            ## Gets the userRiskLevel property value. The userRiskLevel property
            ## @return a risk_level
            ## 
            def user_risk_level
                return @user_risk_level
            end
            ## 
            ## Sets the userRiskLevel property value. The userRiskLevel property
            ## @param value Value to set for the userRiskLevel property.
            ## @return a void
            ## 
            def user_risk_level=(value)
                @user_risk_level = value
            end
        end
    end
end
