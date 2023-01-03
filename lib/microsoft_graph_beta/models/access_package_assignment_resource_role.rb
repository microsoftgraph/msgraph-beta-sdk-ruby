require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class AccessPackageAssignmentResourceRole < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The access package assignments resulting in this role assignment. Read-only. Nullable.
        @access_package_assignments
        ## 
        # The accessPackageResourceRole property
        @access_package_resource_role
        ## 
        # The accessPackageResourceScope property
        @access_package_resource_scope
        ## 
        # Read-only. Nullable. Supports $filter (eq) on objectId and $expand query parameters.
        @access_package_subject
        ## 
        # A unique identifier relative to the origin system, corresponding to the originId property of the accessPackageResourceRole.
        @origin_id
        ## 
        # The system where the role assignment is to be created or has been created for an access package assignment, such as SharePointOnline, AadGroup or AadApplication, corresponding to the originSystem property of the accessPackageResourceRole.
        @origin_system
        ## 
        # The value is PendingFulfillment when the access package assignment has not yet been delivered to the origin system, and Fulfilled when the access package assignment has been delivered to the origin system.
        @status
        ## 
        ## Gets the accessPackageAssignments property value. The access package assignments resulting in this role assignment. Read-only. Nullable.
        ## @return a access_package_assignment
        ## 
        def access_package_assignments
            return @access_package_assignments
        end
        ## 
        ## Sets the accessPackageAssignments property value. The access package assignments resulting in this role assignment. Read-only. Nullable.
        ## @param value Value to set for the accessPackageAssignments property.
        ## @return a void
        ## 
        def access_package_assignments=(value)
            @access_package_assignments = value
        end
        ## 
        ## Gets the accessPackageResourceRole property value. The accessPackageResourceRole property
        ## @return a access_package_resource_role
        ## 
        def access_package_resource_role
            return @access_package_resource_role
        end
        ## 
        ## Sets the accessPackageResourceRole property value. The accessPackageResourceRole property
        ## @param value Value to set for the accessPackageResourceRole property.
        ## @return a void
        ## 
        def access_package_resource_role=(value)
            @access_package_resource_role = value
        end
        ## 
        ## Gets the accessPackageResourceScope property value. The accessPackageResourceScope property
        ## @return a access_package_resource_scope
        ## 
        def access_package_resource_scope
            return @access_package_resource_scope
        end
        ## 
        ## Sets the accessPackageResourceScope property value. The accessPackageResourceScope property
        ## @param value Value to set for the accessPackageResourceScope property.
        ## @return a void
        ## 
        def access_package_resource_scope=(value)
            @access_package_resource_scope = value
        end
        ## 
        ## Gets the accessPackageSubject property value. Read-only. Nullable. Supports $filter (eq) on objectId and $expand query parameters.
        ## @return a access_package_subject
        ## 
        def access_package_subject
            return @access_package_subject
        end
        ## 
        ## Sets the accessPackageSubject property value. Read-only. Nullable. Supports $filter (eq) on objectId and $expand query parameters.
        ## @param value Value to set for the accessPackageSubject property.
        ## @return a void
        ## 
        def access_package_subject=(value)
            @access_package_subject = value
        end
        ## 
        ## Instantiates a new accessPackageAssignmentResourceRole and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_package_assignment_resource_role
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessPackageAssignmentResourceRole.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "accessPackageAssignments" => lambda {|n| @access_package_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignment.create_from_discriminator_value(pn) }) },
                "accessPackageResourceRole" => lambda {|n| @access_package_resource_role = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }) },
                "accessPackageResourceScope" => lambda {|n| @access_package_resource_scope = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }) },
                "accessPackageSubject" => lambda {|n| @access_package_subject = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageSubject.create_from_discriminator_value(pn) }) },
                "originId" => lambda {|n| @origin_id = n.get_string_value() },
                "originSystem" => lambda {|n| @origin_system = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_string_value() },
            })
        end
        ## 
        ## Gets the originId property value. A unique identifier relative to the origin system, corresponding to the originId property of the accessPackageResourceRole.
        ## @return a string
        ## 
        def origin_id
            return @origin_id
        end
        ## 
        ## Sets the originId property value. A unique identifier relative to the origin system, corresponding to the originId property of the accessPackageResourceRole.
        ## @param value Value to set for the originId property.
        ## @return a void
        ## 
        def origin_id=(value)
            @origin_id = value
        end
        ## 
        ## Gets the originSystem property value. The system where the role assignment is to be created or has been created for an access package assignment, such as SharePointOnline, AadGroup or AadApplication, corresponding to the originSystem property of the accessPackageResourceRole.
        ## @return a string
        ## 
        def origin_system
            return @origin_system
        end
        ## 
        ## Sets the originSystem property value. The system where the role assignment is to be created or has been created for an access package assignment, such as SharePointOnline, AadGroup or AadApplication, corresponding to the originSystem property of the accessPackageResourceRole.
        ## @param value Value to set for the originSystem property.
        ## @return a void
        ## 
        def origin_system=(value)
            @origin_system = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("accessPackageAssignments", @access_package_assignments)
            writer.write_object_value("accessPackageResourceRole", @access_package_resource_role)
            writer.write_object_value("accessPackageResourceScope", @access_package_resource_scope)
            writer.write_object_value("accessPackageSubject", @access_package_subject)
            writer.write_string_value("originId", @origin_id)
            writer.write_string_value("originSystem", @origin_system)
            writer.write_string_value("status", @status)
        end
        ## 
        ## Gets the status property value. The value is PendingFulfillment when the access package assignment has not yet been delivered to the origin system, and Fulfilled when the access package assignment has been delivered to the origin system.
        ## @return a string
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The value is PendingFulfillment when the access package assignment has not yet been delivered to the origin system, and Fulfilled when the access package assignment has been delivered to the origin system.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
