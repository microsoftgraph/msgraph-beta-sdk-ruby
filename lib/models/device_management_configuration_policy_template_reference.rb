require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Policy template reference information
        class DeviceManagementConfigurationPolicyTemplateReference
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Template Display Name of the referenced template. This property is read-only.
            @template_display_name
            ## 
            # Template Display Version of the referenced Template. This property is read-only.
            @template_display_version
            ## 
            # Describes the TemplateFamily for the Template entity
            @template_family
            ## 
            # Template id
            @template_id
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
            ## Instantiates a new DeviceManagementConfigurationPolicyTemplateReference and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_policy_template_reference
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationPolicyTemplateReference.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "templateDisplayName" => lambda {|n| @template_display_name = n.get_string_value() },
                    "templateDisplayVersion" => lambda {|n| @template_display_version = n.get_string_value() },
                    "templateFamily" => lambda {|n| @template_family = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationTemplateFamily) },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("templateFamily", @template_family)
                writer.write_string_value("templateId", @template_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the templateDisplayName property value. Template Display Name of the referenced template. This property is read-only.
            ## @return a string
            ## 
            def template_display_name
                return @template_display_name
            end
            ## 
            ## Sets the templateDisplayName property value. Template Display Name of the referenced template. This property is read-only.
            ## @param value Value to set for the templateDisplayName property.
            ## @return a void
            ## 
            def template_display_name=(value)
                @template_display_name = value
            end
            ## 
            ## Gets the templateDisplayVersion property value. Template Display Version of the referenced Template. This property is read-only.
            ## @return a string
            ## 
            def template_display_version
                return @template_display_version
            end
            ## 
            ## Sets the templateDisplayVersion property value. Template Display Version of the referenced Template. This property is read-only.
            ## @param value Value to set for the templateDisplayVersion property.
            ## @return a void
            ## 
            def template_display_version=(value)
                @template_display_version = value
            end
            ## 
            ## Gets the templateFamily property value. Describes the TemplateFamily for the Template entity
            ## @return a device_management_configuration_template_family
            ## 
            def template_family
                return @template_family
            end
            ## 
            ## Sets the templateFamily property value. Describes the TemplateFamily for the Template entity
            ## @param value Value to set for the templateFamily property.
            ## @return a void
            ## 
            def template_family=(value)
                @template_family = value
            end
            ## 
            ## Gets the templateId property value. Template id
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. Template id
            ## @param value Value to set for the templateId property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
        end
    end
end
