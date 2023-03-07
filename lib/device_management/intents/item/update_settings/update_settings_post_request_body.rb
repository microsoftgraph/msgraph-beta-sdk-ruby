require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/device_management_setting_instance'
require_relative '../../../device_management'
require_relative '../../intents'
require_relative '../item'
require_relative './update_settings'

module MicrosoftGraphBeta
    module DeviceManagement
        module Intents
            module Item
                module UpdateSettings
                    class UpdateSettingsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The settings property
                        @settings
                        ## 
                        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new updateSettingsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a update_settings_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UpdateSettingsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInstance.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("settings", @settings)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the settings property value. The settings property
                        ## @return a device_management_setting_instance
                        ## 
                        def settings
                            return @settings
                        end
                        ## 
                        ## Sets the settings property value. The settings property
                        ## @param value Value to set for the settings property.
                        ## @return a void
                        ## 
                        def settings=(value)
                            @settings = value
                        end
                    end
                end
            end
        end
    end
end
