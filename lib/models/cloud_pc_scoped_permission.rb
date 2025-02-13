require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcScopedPermission
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operations allowed on scoped resources for the authenticated user. Example permission is Microsoft.CloudPC/ProvisioningPolicies/Create.
            @permission
            ## 
            # The scope IDs of corresponding permission. Currently, it's Intune scope tag ID.
            @scope_ids
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
            ## Instantiates a new CloudPcScopedPermission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_scoped_permission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcScopedPermission.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "permission" => lambda {|n| @permission = n.get_string_value() },
                    "scopeIds" => lambda {|n| @scope_ids = n.get_collection_of_primitive_values(String) },
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
            ## Gets the permission property value. The operations allowed on scoped resources for the authenticated user. Example permission is Microsoft.CloudPC/ProvisioningPolicies/Create.
            ## @return a string
            ## 
            def permission
                return @permission
            end
            ## 
            ## Sets the permission property value. The operations allowed on scoped resources for the authenticated user. Example permission is Microsoft.CloudPC/ProvisioningPolicies/Create.
            ## @param value Value to set for the permission property.
            ## @return a void
            ## 
            def permission=(value)
                @permission = value
            end
            ## 
            ## Gets the scopeIds property value. The scope IDs of corresponding permission. Currently, it's Intune scope tag ID.
            ## @return a string
            ## 
            def scope_ids
                return @scope_ids
            end
            ## 
            ## Sets the scopeIds property value. The scope IDs of corresponding permission. Currently, it's Intune scope tag ID.
            ## @param value Value to set for the scopeIds property.
            ## @return a void
            ## 
            def scope_ids=(value)
                @scope_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("permission", @permission)
                writer.write_collection_of_primitive_values("scopeIds", @scope_ids)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
