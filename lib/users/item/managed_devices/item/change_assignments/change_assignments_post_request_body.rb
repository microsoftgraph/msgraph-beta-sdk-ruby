require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/device_assignment_item'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './change_assignments'

module MicrosoftGraphBeta
    module Users
        module Item
            module ManagedDevices
                module Item
                    module ChangeAssignments
                        class ChangeAssignmentsPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The deviceAssignmentItems property
                            @device_assignment_items
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
                            ## Instantiates a new ChangeAssignmentsPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a change_assignments_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ChangeAssignmentsPostRequestBody.new
                            end
                            ## 
                            ## Gets the deviceAssignmentItems property value. The deviceAssignmentItems property
                            ## @return a device_assignment_item
                            ## 
                            def device_assignment_items
                                return @device_assignment_items
                            end
                            ## 
                            ## Sets the deviceAssignmentItems property value. The deviceAssignmentItems property
                            ## @param value Value to set for the deviceAssignmentItems property.
                            ## @return a void
                            ## 
                            def device_assignment_items=(value)
                                @device_assignment_items = value
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "deviceAssignmentItems" => lambda {|n| @device_assignment_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAssignmentItem.create_from_discriminator_value(pn) }) },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_collection_of_object_values("deviceAssignmentItems", @device_assignment_items)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
