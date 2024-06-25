require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcManagementGroupAssignmentTarget < MicrosoftGraphBeta::Models::CloudPcManagementAssignmentTarget
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allotmentDisplayName property
            @allotment_display_name
            ## 
            # The allotmentLicensesCount property
            @allotment_licenses_count
            ## 
            # The ID of the target group for the assignment.
            @group_id
            ## 
            # The unique identifier for the service plan that indicates which size of the Cloud PC to provision for the user. Use a null value, when the provisioningType is dedicated.
            @service_plan_id
            ## 
            ## Gets the allotmentDisplayName property value. The allotmentDisplayName property
            ## @return a string
            ## 
            def allotment_display_name
                return @allotment_display_name
            end
            ## 
            ## Sets the allotmentDisplayName property value. The allotmentDisplayName property
            ## @param value Value to set for the allotmentDisplayName property.
            ## @return a void
            ## 
            def allotment_display_name=(value)
                @allotment_display_name = value
            end
            ## 
            ## Gets the allotmentLicensesCount property value. The allotmentLicensesCount property
            ## @return a integer
            ## 
            def allotment_licenses_count
                return @allotment_licenses_count
            end
            ## 
            ## Sets the allotmentLicensesCount property value. The allotmentLicensesCount property
            ## @param value Value to set for the allotmentLicensesCount property.
            ## @return a void
            ## 
            def allotment_licenses_count=(value)
                @allotment_licenses_count = value
            end
            ## 
            ## Instantiates a new CloudPcManagementGroupAssignmentTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcManagementGroupAssignmentTarget"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_management_group_assignment_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcManagementGroupAssignmentTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allotmentDisplayName" => lambda {|n| @allotment_display_name = n.get_string_value() },
                    "allotmentLicensesCount" => lambda {|n| @allotment_licenses_count = n.get_number_value() },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "servicePlanId" => lambda {|n| @service_plan_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupId property value. The ID of the target group for the assignment.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The ID of the target group for the assignment.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("allotmentDisplayName", @allotment_display_name)
                writer.write_number_value("allotmentLicensesCount", @allotment_licenses_count)
                writer.write_string_value("groupId", @group_id)
                writer.write_string_value("servicePlanId", @service_plan_id)
            end
            ## 
            ## Gets the servicePlanId property value. The unique identifier for the service plan that indicates which size of the Cloud PC to provision for the user. Use a null value, when the provisioningType is dedicated.
            ## @return a string
            ## 
            def service_plan_id
                return @service_plan_id
            end
            ## 
            ## Sets the servicePlanId property value. The unique identifier for the service plan that indicates which size of the Cloud PC to provision for the user. Use a null value, when the provisioningType is dedicated.
            ## @param value Value to set for the servicePlanId property.
            ## @return a void
            ## 
            def service_plan_id=(value)
                @service_plan_id = value
            end
        end
    end
end
