require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../device_management'
require_relative '../../../../reusable_policy_settings'
require_relative '../../../item'
require_relative '../../referencing_configuration_policies'
require_relative '../item'
require_relative './assign_just_in_time_configuration'

module MicrosoftGraphBeta
    module DeviceManagement
        module ReusablePolicySettings
            module Item
                module ReferencingConfigurationPolicies
                    module Item
                        module AssignJustInTimeConfiguration
                            class AssignJustInTimeConfigurationPostResponse
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The value property
                                @value
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
                                ## Instantiates a new AssignJustInTimeConfigurationPostResponse and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a assign_just_in_time_configuration_post_response
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return AssignJustInTimeConfigurationPostResponse.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "value" => lambda {|n| @value = n.get_boolean_value() },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_boolean_value("value", @value)
                                    writer.write_additional_data(@additional_data)
                                end
                                ## 
                                ## Gets the value property value. The value property
                                ## @return a boolean
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
