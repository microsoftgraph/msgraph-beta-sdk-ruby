require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class StrongAuthenticationRequirements
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Sets the per-user MFA state for the user. The possible values are: disabled, enforced, enabled, unknownFutureValue.
            @per_user_mfa_state
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
            ## Instantiates a new StrongAuthenticationRequirements and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a strong_authentication_requirements
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return StrongAuthenticationRequirements.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "perUserMfaState" => lambda {|n| @per_user_mfa_state = n.get_enum_value(MicrosoftGraphBeta::Models::PerUserMfaState) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the perUserMfaState property value. Sets the per-user MFA state for the user. The possible values are: disabled, enforced, enabled, unknownFutureValue.
            ## @return a per_user_mfa_state
            ## 
            def per_user_mfa_state
                return @per_user_mfa_state
            end
            ## 
            ## Sets the perUserMfaState property value. Sets the per-user MFA state for the user. The possible values are: disabled, enforced, enabled, unknownFutureValue.
            ## @param value Value to set for the perUserMfaState property.
            ## @return a void
            ## 
            def per_user_mfa_state=(value)
                @per_user_mfa_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("perUserMfaState", @per_user_mfa_state)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
