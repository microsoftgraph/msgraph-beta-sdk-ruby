require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../role_management'
require_relative '../../../../enterprise_apps'
require_relative '../../../item'
require_relative '../../resource_namespaces'
require_relative '../item'
require_relative './import_resource_actions'

module MicrosoftGraphBeta
    module RoleManagement
        module EnterpriseApps
            module Item
                module ResourceNamespaces
                    module Item
                        module ImportResourceActions
                            class ImportResourceActionsPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The format property
                                @format
                                ## 
                                # The overwriteResourceNamespace property
                                @overwrite_resource_namespace
                                ## 
                                # The value property
                                @value
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
                                ## Instantiates a new importResourceActionsPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a import_resource_actions_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return ImportResourceActionsPostRequestBody.new
                                end
                                ## 
                                ## Gets the format property value. The format property
                                ## @return a string
                                ## 
                                def format
                                    return @format
                                end
                                ## 
                                ## Sets the format property value. The format property
                                ## @param value Value to set for the format property.
                                ## @return a void
                                ## 
                                def format=(value)
                                    @format = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "format" => lambda {|n| @format = n.get_string_value() },
                                        "overwriteResourceNamespace" => lambda {|n| @overwrite_resource_namespace = n.get_boolean_value() },
                                        "value" => lambda {|n| @value = n.get_string_value() },
                                    }
                                end
                                ## 
                                ## Gets the overwriteResourceNamespace property value. The overwriteResourceNamespace property
                                ## @return a boolean
                                ## 
                                def overwrite_resource_namespace
                                    return @overwrite_resource_namespace
                                end
                                ## 
                                ## Sets the overwriteResourceNamespace property value. The overwriteResourceNamespace property
                                ## @param value Value to set for the overwriteResourceNamespace property.
                                ## @return a void
                                ## 
                                def overwrite_resource_namespace=(value)
                                    @overwrite_resource_namespace = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_string_value("format", @format)
                                    writer.write_boolean_value("overwriteResourceNamespace", @overwrite_resource_namespace)
                                    writer.write_string_value("value", @value)
                                    writer.write_additional_data(@additional_data)
                                end
                                ## 
                                ## Gets the value property value. The value property
                                ## @return a string
                                ## 
                                def value
                                    return @value
                                end
                                ## 
                                ## Sets the value property value. The value property
                                ## @param value Value to set for the value property.
                                ## @return a void
                                ## 
                                def value=(value)
                                    @value = value
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
