require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../device_management'
require_relative '../../../../reusable_policy_settings'
require_relative '../../../item'
require_relative '../../referencing_configuration_policies'
require_relative '../item'
require_relative './create_copy'

module MicrosoftGraphBeta
    module DeviceManagement
        module ReusablePolicySettings
            module Item
                module ReferencingConfigurationPolicies
                    module Item
                        module CreateCopy
                            class CreateCopyPostRequestBody
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
                                ## Instantiates a new createCopyPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a create_copy_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return CreateCopyPostRequestBody.new
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
                                    }
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
                                    writer.write_additional_data(@additional_data)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
