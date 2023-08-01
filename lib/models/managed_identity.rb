require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedIdentity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The ARM resource ID of the Azure resource associated with the managed identity used for sign in.
            @associated_resource_id
            ## 
            # The possible values are: none, userAssigned, systemAssigned, unknownFutureValue.
            @msi_type
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the associatedResourceId property value. The ARM resource ID of the Azure resource associated with the managed identity used for sign in.
            ## @return a string
            ## 
            def associated_resource_id
                return @associated_resource_id
            end
            ## 
            ## Sets the associatedResourceId property value. The ARM resource ID of the Azure resource associated with the managed identity used for sign in.
            ## @param value Value to set for the associatedResourceId property.
            ## @return a void
            ## 
            def associated_resource_id=(value)
                @associated_resource_id = value
            end
            ## 
            ## Instantiates a new managedIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "associatedResourceId" => lambda {|n| @associated_resource_id = n.get_string_value() },
                    "msiType" => lambda {|n| @msi_type = n.get_enum_value(MicrosoftGraphBeta::Models::MsiType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the msiType property value. The possible values are: none, userAssigned, systemAssigned, unknownFutureValue.
            ## @return a msi_type
            ## 
            def msi_type
                return @msi_type
            end
            ## 
            ## Sets the msiType property value. The possible values are: none, userAssigned, systemAssigned, unknownFutureValue.
            ## @param value Value to set for the msiType property.
            ## @return a void
            ## 
            def msi_type=(value)
                @msi_type = value
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
                writer.write_string_value("associatedResourceId", @associated_resource_id)
                writer.write_enum_value("msiType", @msi_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
