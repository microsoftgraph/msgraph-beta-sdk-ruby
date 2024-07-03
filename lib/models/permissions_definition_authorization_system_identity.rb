require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionsDefinitionAuthorizationSystemIdentity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Unique ID of the identity within the external system. Prefixed with rsn: if this is a SAML or ED user in AWS. Alternate key.
            @external_id
            ## 
            # The identityType property
            @identity_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The source property
            @source
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
            ## Instantiates a new PermissionsDefinitionAuthorizationSystemIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permissions_definition_authorization_system_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionsDefinitionAuthorizationSystemIdentity.new
            end
            ## 
            ## Gets the externalId property value. Unique ID of the identity within the external system. Prefixed with rsn: if this is a SAML or ED user in AWS. Alternate key.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. Unique ID of the identity within the external system. Prefixed with rsn: if this is a SAML or ED user in AWS. Alternate key.
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "identityType" => lambda {|n| @identity_type = n.get_enum_value(MicrosoftGraphBeta::Models::PermissionsDefinitionIdentityType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "source" => lambda {|n| @source = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsDefinitionIdentitySource.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the identityType property value. The identityType property
            ## @return a permissions_definition_identity_type
            ## 
            def identity_type
                return @identity_type
            end
            ## 
            ## Sets the identityType property value. The identityType property
            ## @param value Value to set for the identityType property.
            ## @return a void
            ## 
            def identity_type=(value)
                @identity_type = value
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
                writer.write_string_value("externalId", @external_id)
                writer.write_enum_value("identityType", @identity_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("source", @source)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the source property value. The source property
            ## @return a permissions_definition_identity_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source property
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
        end
    end
end
