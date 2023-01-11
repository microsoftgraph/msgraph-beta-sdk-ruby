require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessPackageAssignment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
        @access_package
        ## 
        # Read-only. Nullable. Supports $filter (eq) on the id property
        @access_package_assignment_policy
        ## 
        # The accessPackageAssignmentRequests property
        @access_package_assignment_requests
        ## 
        # The resource roles delivered to the target user for this assignment. Read-only. Nullable.
        @access_package_assignment_resource_roles
        ## 
        # The identifier of the access package. Read-only.
        @access_package_id
        ## 
        # The identifier of the access package assignment policy. Read-only.
        @assignment_policy_id
        ## 
        # The state of the access package assignment. Possible values are Delivering, Delivered, or Expired. Read-only. Supports $filter (eq).
        @assignment_state
        ## 
        # More information about the assignment lifecycle.  Possible values include Delivering, Delivered, NearExpiry1DayNotificationTriggered, or ExpiredNotificationTriggered.  Read-only.
        @assignment_status
        ## 
        # The identifier of the catalog containing the access package. Read-only.
        @catalog_id
        ## 
        # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @expired_date_time
        ## 
        # Indicates whether the access package assignment is extended. Read-only.
        @is_extended
        ## 
        # When the access assignment is to be in place. Read-only.
        @schedule
        ## 
        # The subject of the access package assignment. Read-only. Nullable. Supports $expand. Supports $filter (eq) on objectId.
        @target
        ## 
        # The ID of the subject with the assignment. Read-only.
        @target_id
        ## 
        ## Gets the accessPackage property value. Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
        ## @return a access_package
        ## 
        def access_package
            return @access_package
        end
        ## 
        ## Sets the accessPackage property value. Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
        ## @param value Value to set for the accessPackage property.
        ## @return a void
        ## 
        def access_package=(value)
            @access_package = value
        end
        ## 
        ## Gets the accessPackageAssignmentPolicy property value. Read-only. Nullable. Supports $filter (eq) on the id property
        ## @return a access_package_assignment_policy
        ## 
        def access_package_assignment_policy
            return @access_package_assignment_policy
        end
        ## 
        ## Sets the accessPackageAssignmentPolicy property value. Read-only. Nullable. Supports $filter (eq) on the id property
        ## @param value Value to set for the accessPackageAssignmentPolicy property.
        ## @return a void
        ## 
        def access_package_assignment_policy=(value)
            @access_package_assignment_policy = value
        end
        ## 
        ## Gets the accessPackageAssignmentRequests property value. The accessPackageAssignmentRequests property
        ## @return a access_package_assignment_request
        ## 
        def access_package_assignment_requests
            return @access_package_assignment_requests
        end
        ## 
        ## Sets the accessPackageAssignmentRequests property value. The accessPackageAssignmentRequests property
        ## @param value Value to set for the accessPackageAssignmentRequests property.
        ## @return a void
        ## 
        def access_package_assignment_requests=(value)
            @access_package_assignment_requests = value
        end
        ## 
        ## Gets the accessPackageAssignmentResourceRoles property value. The resource roles delivered to the target user for this assignment. Read-only. Nullable.
        ## @return a access_package_assignment_resource_role
        ## 
        def access_package_assignment_resource_roles
            return @access_package_assignment_resource_roles
        end
        ## 
        ## Sets the accessPackageAssignmentResourceRoles property value. The resource roles delivered to the target user for this assignment. Read-only. Nullable.
        ## @param value Value to set for the accessPackageAssignmentResourceRoles property.
        ## @return a void
        ## 
        def access_package_assignment_resource_roles=(value)
            @access_package_assignment_resource_roles = value
        end
        ## 
        ## Gets the accessPackageId property value. The identifier of the access package. Read-only.
        ## @return a string
        ## 
        def access_package_id
            return @access_package_id
        end
        ## 
        ## Sets the accessPackageId property value. The identifier of the access package. Read-only.
        ## @param value Value to set for the accessPackageId property.
        ## @return a void
        ## 
        def access_package_id=(value)
            @access_package_id = value
        end
        ## 
        ## Gets the assignmentPolicyId property value. The identifier of the access package assignment policy. Read-only.
        ## @return a string
        ## 
        def assignment_policy_id
            return @assignment_policy_id
        end
        ## 
        ## Sets the assignmentPolicyId property value. The identifier of the access package assignment policy. Read-only.
        ## @param value Value to set for the assignmentPolicyId property.
        ## @return a void
        ## 
        def assignment_policy_id=(value)
            @assignment_policy_id = value
        end
        ## 
        ## Gets the assignmentState property value. The state of the access package assignment. Possible values are Delivering, Delivered, or Expired. Read-only. Supports $filter (eq).
        ## @return a string
        ## 
        def assignment_state
            return @assignment_state
        end
        ## 
        ## Sets the assignmentState property value. The state of the access package assignment. Possible values are Delivering, Delivered, or Expired. Read-only. Supports $filter (eq).
        ## @param value Value to set for the assignmentState property.
        ## @return a void
        ## 
        def assignment_state=(value)
            @assignment_state = value
        end
        ## 
        ## Gets the assignmentStatus property value. More information about the assignment lifecycle.  Possible values include Delivering, Delivered, NearExpiry1DayNotificationTriggered, or ExpiredNotificationTriggered.  Read-only.
        ## @return a string
        ## 
        def assignment_status
            return @assignment_status
        end
        ## 
        ## Sets the assignmentStatus property value. More information about the assignment lifecycle.  Possible values include Delivering, Delivered, NearExpiry1DayNotificationTriggered, or ExpiredNotificationTriggered.  Read-only.
        ## @param value Value to set for the assignmentStatus property.
        ## @return a void
        ## 
        def assignment_status=(value)
            @assignment_status = value
        end
        ## 
        ## Gets the catalogId property value. The identifier of the catalog containing the access package. Read-only.
        ## @return a string
        ## 
        def catalog_id
            return @catalog_id
        end
        ## 
        ## Sets the catalogId property value. The identifier of the catalog containing the access package. Read-only.
        ## @param value Value to set for the catalogId property.
        ## @return a void
        ## 
        def catalog_id=(value)
            @catalog_id = value
        end
        ## 
        ## Instantiates a new accessPackageAssignment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_package_assignment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessPackageAssignment.new
        end
        ## 
        ## Gets the expiredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def expired_date_time
            return @expired_date_time
        end
        ## 
        ## Sets the expiredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the expiredDateTime property.
        ## @return a void
        ## 
        def expired_date_time=(value)
            @expired_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "accessPackage" => lambda {|n| @access_package = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                "accessPackageAssignmentPolicy" => lambda {|n| @access_package_assignment_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentPolicy.create_from_discriminator_value(pn) }) },
                "accessPackageAssignmentRequests" => lambda {|n| @access_package_assignment_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentRequest.create_from_discriminator_value(pn) }) },
                "accessPackageAssignmentResourceRoles" => lambda {|n| @access_package_assignment_resource_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentResourceRole.create_from_discriminator_value(pn) }) },
                "accessPackageId" => lambda {|n| @access_package_id = n.get_string_value() },
                "assignmentPolicyId" => lambda {|n| @assignment_policy_id = n.get_string_value() },
                "assignmentState" => lambda {|n| @assignment_state = n.get_string_value() },
                "assignmentStatus" => lambda {|n| @assignment_status = n.get_string_value() },
                "catalogId" => lambda {|n| @catalog_id = n.get_string_value() },
                "expiredDateTime" => lambda {|n| @expired_date_time = n.get_date_time_value() },
                "isExtended" => lambda {|n| @is_extended = n.get_boolean_value() },
                "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
                "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageSubject.create_from_discriminator_value(pn) }) },
                "targetId" => lambda {|n| @target_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isExtended property value. Indicates whether the access package assignment is extended. Read-only.
        ## @return a boolean
        ## 
        def is_extended
            return @is_extended
        end
        ## 
        ## Sets the isExtended property value. Indicates whether the access package assignment is extended. Read-only.
        ## @param value Value to set for the isExtended property.
        ## @return a void
        ## 
        def is_extended=(value)
            @is_extended = value
        end
        ## 
        ## Gets the schedule property value. When the access assignment is to be in place. Read-only.
        ## @return a request_schedule
        ## 
        def schedule
            return @schedule
        end
        ## 
        ## Sets the schedule property value. When the access assignment is to be in place. Read-only.
        ## @param value Value to set for the schedule property.
        ## @return a void
        ## 
        def schedule=(value)
            @schedule = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("accessPackage", @access_package)
            writer.write_object_value("accessPackageAssignmentPolicy", @access_package_assignment_policy)
            writer.write_collection_of_object_values("accessPackageAssignmentRequests", @access_package_assignment_requests)
            writer.write_collection_of_object_values("accessPackageAssignmentResourceRoles", @access_package_assignment_resource_roles)
            writer.write_string_value("accessPackageId", @access_package_id)
            writer.write_string_value("assignmentPolicyId", @assignment_policy_id)
            writer.write_string_value("assignmentState", @assignment_state)
            writer.write_string_value("assignmentStatus", @assignment_status)
            writer.write_string_value("catalogId", @catalog_id)
            writer.write_date_time_value("expiredDateTime", @expired_date_time)
            writer.write_boolean_value("isExtended", @is_extended)
            writer.write_object_value("schedule", @schedule)
            writer.write_object_value("target", @target)
            writer.write_string_value("targetId", @target_id)
        end
        ## 
        ## Gets the target property value. The subject of the access package assignment. Read-only. Nullable. Supports $expand. Supports $filter (eq) on objectId.
        ## @return a access_package_subject
        ## 
        def target
            return @target
        end
        ## 
        ## Sets the target property value. The subject of the access package assignment. Read-only. Nullable. Supports $expand. Supports $filter (eq) on objectId.
        ## @param value Value to set for the target property.
        ## @return a void
        ## 
        def target=(value)
            @target = value
        end
        ## 
        ## Gets the targetId property value. The ID of the subject with the assignment. Read-only.
        ## @return a string
        ## 
        def target_id
            return @target_id
        end
        ## 
        ## Sets the targetId property value. The ID of the subject with the assignment. Read-only.
        ## @param value Value to set for the targetId property.
        ## @return a void
        ## 
        def target_id=(value)
            @target_id = value
        end
    end
end
