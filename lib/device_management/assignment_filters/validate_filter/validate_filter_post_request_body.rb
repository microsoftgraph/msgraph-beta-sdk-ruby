require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/device_and_app_management_assignment_filter'
require_relative '../../device_management'
require_relative '../assignment_filters'
require_relative './validate_filter'

module MicrosoftGraphBeta
    module DeviceManagement
        module AssignmentFilters
            module ValidateFilter
                class ValidateFilterPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The deviceAndAppManagementAssignmentFilter property
                    @device_and_app_management_assignment_filter
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
                    ## Instantiates a new validateFilterPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a validate_filter_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ValidateFilterPostRequestBody.new
                    end
                    ## 
                    ## Gets the deviceAndAppManagementAssignmentFilter property value. The deviceAndAppManagementAssignmentFilter property
                    ## @return a device_and_app_management_assignment_filter
                    ## 
                    def device_and_app_management_assignment_filter
                        return @device_and_app_management_assignment_filter
                    end
                    ## 
                    ## Sets the deviceAndAppManagementAssignmentFilter property value. The deviceAndAppManagementAssignmentFilter property
                    ## @param value Value to set for the deviceAndAppManagementAssignmentFilter property.
                    ## @return a void
                    ## 
                    def device_and_app_management_assignment_filter=(value)
                        @device_and_app_management_assignment_filter = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "deviceAndAppManagementAssignmentFilter" => lambda {|n| @device_and_app_management_assignment_filter = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentFilter.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("deviceAndAppManagementAssignmentFilter", @device_and_app_management_assignment_filter)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
