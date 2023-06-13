require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationBehaviors
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The removeUnverifiedEmailClaim property
            @remove_unverified_email_claim
            ## 
            # The requireClientServicePrincipal property
            @require_client_service_principal
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
            ## Instantiates a new authenticationBehaviors and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_behaviors
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationBehaviors.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "removeUnverifiedEmailClaim" => lambda {|n| @remove_unverified_email_claim = n.get_boolean_value() },
                    "requireClientServicePrincipal" => lambda {|n| @require_client_service_principal = n.get_boolean_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the removeUnverifiedEmailClaim property value. The removeUnverifiedEmailClaim property
            ## @return a boolean
            ## 
            def remove_unverified_email_claim
                return @remove_unverified_email_claim
            end
            ## 
            ## Sets the removeUnverifiedEmailClaim property value. The removeUnverifiedEmailClaim property
            ## @param value Value to set for the remove_unverified_email_claim property.
            ## @return a void
            ## 
            def remove_unverified_email_claim=(value)
                @remove_unverified_email_claim = value
            end
            ## 
            ## Gets the requireClientServicePrincipal property value. The requireClientServicePrincipal property
            ## @return a boolean
            ## 
            def require_client_service_principal
                return @require_client_service_principal
            end
            ## 
            ## Sets the requireClientServicePrincipal property value. The requireClientServicePrincipal property
            ## @param value Value to set for the require_client_service_principal property.
            ## @return a void
            ## 
            def require_client_service_principal=(value)
                @require_client_service_principal = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("removeUnverifiedEmailClaim", @remove_unverified_email_claim)
                writer.write_boolean_value("requireClientServicePrincipal", @require_client_service_principal)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
