require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './managed_tenants/managed_tenants'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagementTemplateDetailedInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The category property
            @category
            ## 
            # The display name for the management template. Required. Read-only.
            @display_name
            ## 
            # The unique identifier for the management template. Required. Read-only.
            @management_template_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The version property
            @version
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
            ## Gets the category property value. The category property
            ## @return a managed_tenants_management_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new managementTemplateDetailedInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_management_template_detailed_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagementTemplateDetailedInfo.new
            end
            ## 
            ## Gets the displayName property value. The display name for the management template. Required. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the management template. Required. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsManagementCategory) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "managementTemplateId" => lambda {|n| @management_template_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_number_value() },
                }
            end
            ## 
            ## Gets the managementTemplateId property value. The unique identifier for the management template. Required. Read-only.
            ## @return a string
            ## 
            def management_template_id
                return @management_template_id
            end
            ## 
            ## Sets the managementTemplateId property value. The unique identifier for the management template. Required. Read-only.
            ## @param value Value to set for the managementTemplateId property.
            ## @return a void
            ## 
            def management_template_id=(value)
                @management_template_id = value
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
                writer.write_enum_value("category", @category)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("managementTemplateId", @management_template_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("version", @version)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the version property value. The version property
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version property
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
