require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/configuration_manager_action'
require_relative '../../../me'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './trigger_configuration_manager_action'

module MicrosoftGraphBeta
    module Me
        module ManagedDevices
            module Item
                module TriggerConfigurationManagerAction
                    class TriggerConfigurationManagerActionPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # Parameter for action triggerConfigurationManagerAction
                        @configuration_manager_action
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
                        ## Gets the configurationManagerAction property value. Parameter for action triggerConfigurationManagerAction
                        ## @return a configuration_manager_action
                        ## 
                        def configuration_manager_action
                            return @configuration_manager_action
                        end
                        ## 
                        ## Sets the configurationManagerAction property value. Parameter for action triggerConfigurationManagerAction
                        ## @param value Value to set for the configuration_manager_action property.
                        ## @return a void
                        ## 
                        def configuration_manager_action=(value)
                            @configuration_manager_action = value
                        end
                        ## 
                        ## Instantiates a new triggerConfigurationManagerActionPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a trigger_configuration_manager_action_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return TriggerConfigurationManagerActionPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "configurationManagerAction" => lambda {|n| @configuration_manager_action = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConfigurationManagerAction.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("configurationManagerAction", @configuration_manager_action)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
