require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionsDefinition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The authorizationSystemInfo property
            @authorization_system_info
            ## 
            # The identityInfo property
            @identity_info
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the authorizationSystemInfo property value. The authorizationSystemInfo property
            ## @return a permissions_definition_authorization_system
            ## 
            def authorization_system_info
                return @authorization_system_info
            end
            ## 
            ## Sets the authorizationSystemInfo property value. The authorizationSystemInfo property
            ## @param value Value to set for the authorizationSystemInfo property.
            ## @return a void
            ## 
            def authorization_system_info=(value)
                @authorization_system_info = value
            end
            ## 
            ## Instantiates a new PermissionsDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permissions_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.awsPermissionsDefinition"
                            return AwsPermissionsDefinition.new
                        when "#microsoft.graph.singleResourceAzurePermissionsDefinition"
                            return SingleResourceAzurePermissionsDefinition.new
                        when "#microsoft.graph.singleResourceGcpPermissionsDefinition"
                            return SingleResourceGcpPermissionsDefinition.new
                    end
                end
                return PermissionsDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authorizationSystemInfo" => lambda {|n| @authorization_system_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsDefinitionAuthorizationSystem.create_from_discriminator_value(pn) }) },
                    "identityInfo" => lambda {|n| @identity_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsDefinitionAuthorizationSystemIdentity.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identityInfo property value. The identityInfo property
            ## @return a permissions_definition_authorization_system_identity
            ## 
            def identity_info
                return @identity_info
            end
            ## 
            ## Sets the identityInfo property value. The identityInfo property
            ## @param value Value to set for the identityInfo property.
            ## @return a void
            ## 
            def identity_info=(value)
                @identity_info = value
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
                writer.write_object_value("authorizationSystemInfo", @authorization_system_info)
                writer.write_object_value("identityInfo", @identity_info)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
