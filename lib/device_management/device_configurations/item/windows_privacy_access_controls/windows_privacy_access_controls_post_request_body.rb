require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/windows_privacy_data_access_control_item'
require_relative '../../../device_management'
require_relative '../../device_configurations'
require_relative '../item'
require_relative './windows_privacy_access_controls'

module MicrosoftGraphBeta
    module DeviceManagement
        module DeviceConfigurations
            module Item
                module WindowsPrivacyAccessControls
                    class WindowsPrivacyAccessControlsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The windowsPrivacyAccessControls property
                        @windows_privacy_access_controls
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
                        ## Instantiates a new windowsPrivacyAccessControlsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a windows_privacy_access_controls_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return WindowsPrivacyAccessControlsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "windowsPrivacyAccessControls" => lambda {|n| @windows_privacy_access_controls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsPrivacyDataAccessControlItem.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("windowsPrivacyAccessControls", @windows_privacy_access_controls)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the windowsPrivacyAccessControls property value. The windowsPrivacyAccessControls property
                        ## @return a windows_privacy_data_access_control_item
                        ## 
                        def windows_privacy_access_controls
                            return @windows_privacy_access_controls
                        end
                        ## 
                        ## Sets the windowsPrivacyAccessControls property value. The windowsPrivacyAccessControls property
                        ## @param value Value to set for the windows_privacy_access_controls property.
                        ## @return a void
                        ## 
                        def windows_privacy_access_controls=(value)
                            @windows_privacy_access_controls = value
                        end
                    end
                end
            end
        end
    end
end
