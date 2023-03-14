require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesPublishingSingleSignOn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The Kerberos Constrained Delegation settings for applications that use Integrated Window Authentication.
            @kerberos_sign_on_settings
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The preferred single-sign on mode for the application. Possible values are: none, onPremisesKerberos, aadHeaderBased,pingHeaderBased, oAuthToken.
            @single_sign_on_mode
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
            ## Instantiates a new onPremisesPublishingSingleSignOn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_publishing_single_sign_on
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesPublishingSingleSignOn.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "kerberosSignOnSettings" => lambda {|n| @kerberos_sign_on_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::KerberosSignOnSettings.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "singleSignOnMode" => lambda {|n| @single_sign_on_mode = n.get_enum_value(MicrosoftGraphBeta::Models::SingleSignOnMode) },
                }
            end
            ## 
            ## Gets the kerberosSignOnSettings property value. The Kerberos Constrained Delegation settings for applications that use Integrated Window Authentication.
            ## @return a kerberos_sign_on_settings
            ## 
            def kerberos_sign_on_settings
                return @kerberos_sign_on_settings
            end
            ## 
            ## Sets the kerberosSignOnSettings property value. The Kerberos Constrained Delegation settings for applications that use Integrated Window Authentication.
            ## @param value Value to set for the kerberos_sign_on_settings property.
            ## @return a void
            ## 
            def kerberos_sign_on_settings=(value)
                @kerberos_sign_on_settings = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_object_value("kerberosSignOnSettings", @kerberos_sign_on_settings)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("singleSignOnMode", @single_sign_on_mode)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the singleSignOnMode property value. The preferred single-sign on mode for the application. Possible values are: none, onPremisesKerberos, aadHeaderBased,pingHeaderBased, oAuthToken.
            ## @return a single_sign_on_mode
            ## 
            def single_sign_on_mode
                return @single_sign_on_mode
            end
            ## 
            ## Sets the singleSignOnMode property value. The preferred single-sign on mode for the application. Possible values are: none, onPremisesKerberos, aadHeaderBased,pingHeaderBased, oAuthToken.
            ## @param value Value to set for the single_sign_on_mode property.
            ## @return a void
            ## 
            def single_sign_on_mode=(value)
                @single_sign_on_mode = value
            end
        end
    end
end
