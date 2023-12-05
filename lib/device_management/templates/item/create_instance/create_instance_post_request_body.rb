require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/device_management_setting_instance'
require_relative '../../../device_management'
require_relative '../../templates'
require_relative '../item'
require_relative './create_instance'

module MicrosoftGraphBeta
    module DeviceManagement
        module Templates
            module Item
                module CreateInstance
                    class CreateInstancePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The description property
                        @description
                        ## 
                        # The displayName property
                        @display_name
                        ## 
                        # The roleScopeTagIds property
                        @role_scope_tag_ids
                        ## 
                        # The settingsDelta property
                        @settings_delta
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
                        ## Instantiates a new createInstancePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a create_instance_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return CreateInstancePostRequestBody.new
                        end
                        ## 
                        ## Gets the description property value. The description property
                        ## @return a string
                        ## 
                        def description
                            return @description
                        end
                        ## 
                        ## Sets the description property value. The description property
                        ## @param value Value to set for the description property.
                        ## @return a void
                        ## 
                        def description=(value)
                            @description = value
                        end
                        ## 
                        ## Gets the displayName property value. The displayName property
                        ## @return a string
                        ## 
                        def display_name
                            return @display_name
                        end
                        ## 
                        ## Sets the displayName property value. The displayName property
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
                                "description" => lambda {|n| @description = n.get_string_value() },
                                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                                "settingsDelta" => lambda {|n| @settings_delta = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInstance.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the roleScopeTagIds property value. The roleScopeTagIds property
                        ## @return a string
                        ## 
                        def role_scope_tag_ids
                            return @role_scope_tag_ids
                        end
                        ## 
                        ## Sets the roleScopeTagIds property value. The roleScopeTagIds property
                        ## @param value Value to set for the roleScopeTagIds property.
                        ## @return a void
                        ## 
                        def role_scope_tag_ids=(value)
                            @role_scope_tag_ids = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("description", @description)
                            writer.write_string_value("displayName", @display_name)
                            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                            writer.write_collection_of_object_values("settingsDelta", @settings_delta)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the settingsDelta property value. The settingsDelta property
                        ## @return a device_management_setting_instance
                        ## 
                        def settings_delta
                            return @settings_delta
                        end
                        ## 
                        ## Sets the settingsDelta property value. The settingsDelta property
                        ## @param value Value to set for the settingsDelta property.
                        ## @return a void
                        ## 
                        def settings_delta=(value)
                            @settings_delta = value
                        end
                    end
                end
            end
        end
    end
end
