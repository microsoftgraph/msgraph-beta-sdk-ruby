require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PreApprovalDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The permissions property
            @permissions
            ## 
            # The scopeType property
            @scope_type
            ## 
            # The sensitivityLabels property
            @sensitivity_labels
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
            ## Instantiates a new PreApprovalDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a pre_approval_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PreApprovalDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "permissions" => lambda {|n| @permissions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PreApprovedPermissions.create_from_discriminator_value(pn) }) },
                    "scopeType" => lambda {|n| @scope_type = n.get_enum_value(MicrosoftGraphBeta::Models::ResourceScopeType) },
                    "sensitivityLabels" => lambda {|n| @sensitivity_labels = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ScopeSensitivityLabels.create_from_discriminator_value(pn) }) },
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
            ## Gets the permissions property value. The permissions property
            ## @return a pre_approved_permissions
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. The permissions property
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the scopeType property value. The scopeType property
            ## @return a resource_scope_type
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. The scopeType property
            ## @param value Value to set for the scopeType property.
            ## @return a void
            ## 
            def scope_type=(value)
                @scope_type = value
            end
            ## 
            ## Gets the sensitivityLabels property value. The sensitivityLabels property
            ## @return a scope_sensitivity_labels
            ## 
            def sensitivity_labels
                return @sensitivity_labels
            end
            ## 
            ## Sets the sensitivityLabels property value. The sensitivityLabels property
            ## @param value Value to set for the sensitivityLabels property.
            ## @return a void
            ## 
            def sensitivity_labels=(value)
                @sensitivity_labels = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("permissions", @permissions)
                writer.write_enum_value("scopeType", @scope_type)
                writer.write_object_value("sensitivityLabels", @sensitivity_labels)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
