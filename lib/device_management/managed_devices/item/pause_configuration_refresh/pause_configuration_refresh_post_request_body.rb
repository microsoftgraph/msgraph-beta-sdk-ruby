require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './pause_configuration_refresh'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module Item
                module PauseConfigurationRefresh
                    class PauseConfigurationRefreshPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The pauseTimePeriodInMinutes property
                        @pause_time_period_in_minutes
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
                        ## Instantiates a new pauseConfigurationRefreshPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a pause_configuration_refresh_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return PauseConfigurationRefreshPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "pauseTimePeriodInMinutes" => lambda {|n| @pause_time_period_in_minutes = n.get_number_value() },
                            }
                        end
                        ## 
                        ## Gets the pauseTimePeriodInMinutes property value. The pauseTimePeriodInMinutes property
                        ## @return a integer
                        ## 
                        def pause_time_period_in_minutes
                            return @pause_time_period_in_minutes
                        end
                        ## 
                        ## Sets the pauseTimePeriodInMinutes property value. The pauseTimePeriodInMinutes property
                        ## @param value Value to set for the pauseTimePeriodInMinutes property.
                        ## @return a void
                        ## 
                        def pause_time_period_in_minutes=(value)
                            @pause_time_period_in_minutes = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_number_value("pauseTimePeriodInMinutes", @pause_time_period_in_minutes)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
