require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../me'
require_relative '../../device_enrollment_configurations'
require_relative '../item'
require_relative './set_priority'

module MicrosoftGraphBeta
    module Me
        module DeviceEnrollmentConfigurations
            module Item
                module SetPriority
                    class SetPriorityPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The priority property
                        @priority
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
                        ## Instantiates a new setPriorityPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a set_priority_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SetPriorityPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "priority" => lambda {|n| @priority = n.get_number_value() },
                            }
                        end
                        ## 
                        ## Gets the priority property value. The priority property
                        ## @return a integer
                        ## 
                        def priority
                            return @priority
                        end
                        ## 
                        ## Sets the priority property value. The priority property
                        ## @param value Value to set for the priority property.
                        ## @return a void
                        ## 
                        def priority=(value)
                            @priority = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_number_value("priority", @priority)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
