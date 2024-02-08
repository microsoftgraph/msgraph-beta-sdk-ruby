require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class containing the properties used for PolicySet.
        class PolicySet < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Assignments of the PolicySet.
            @assignments
            ## 
            # Creation time of the PolicySet.
            @created_date_time
            ## 
            # Description of the PolicySet.
            @description
            ## 
            # DisplayName of the PolicySet.
            @display_name
            ## 
            # The errorCode property
            @error_code
            ## 
            # Tags of the guided deployment
            @guided_deployment_tags
            ## 
            # Items of the PolicySet with maximum count 100.
            @items
            ## 
            # Last modified time of the PolicySet.
            @last_modified_date_time
            ## 
            # RoleScopeTags of the PolicySet
            @role_scope_tags
            ## 
            # The enum to specify the status of PolicySet.
            @status
            ## 
            ## Gets the assignments property value. Assignments of the PolicySet.
            ## @return a policy_set_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Assignments of the PolicySet.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new PolicySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Creation time of the PolicySet.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Creation time of the PolicySet.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a policy_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PolicySet.new
            end
            ## 
            ## Gets the description property value. Description of the PolicySet.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the PolicySet.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. DisplayName of the PolicySet.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. DisplayName of the PolicySet.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the errorCode property value. The errorCode property
            ## @return a error_code
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The errorCode property
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PolicySetAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "errorCode" => lambda {|n| @error_code = n.get_enum_value(MicrosoftGraphBeta::Models::ErrorCode) },
                    "guidedDeploymentTags" => lambda {|n| @guided_deployment_tags = n.get_collection_of_primitive_values(String) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PolicySetItem.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "roleScopeTags" => lambda {|n| @role_scope_tags = n.get_collection_of_primitive_values(String) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::PolicySetStatus) },
                })
            end
            ## 
            ## Gets the guidedDeploymentTags property value. Tags of the guided deployment
            ## @return a string
            ## 
            def guided_deployment_tags
                return @guided_deployment_tags
            end
            ## 
            ## Sets the guidedDeploymentTags property value. Tags of the guided deployment
            ## @param value Value to set for the guidedDeploymentTags property.
            ## @return a void
            ## 
            def guided_deployment_tags=(value)
                @guided_deployment_tags = value
            end
            ## 
            ## Gets the items property value. Items of the PolicySet with maximum count 100.
            ## @return a policy_set_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. Items of the PolicySet with maximum count 100.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last modified time of the PolicySet.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last modified time of the PolicySet.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the roleScopeTags property value. RoleScopeTags of the PolicySet
            ## @return a string
            ## 
            def role_scope_tags
                return @role_scope_tags
            end
            ## 
            ## Sets the roleScopeTags property value. RoleScopeTags of the PolicySet
            ## @param value Value to set for the roleScopeTags property.
            ## @return a void
            ## 
            def role_scope_tags=(value)
                @role_scope_tags = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("errorCode", @error_code)
                writer.write_collection_of_primitive_values("guidedDeploymentTags", @guided_deployment_tags)
                writer.write_collection_of_object_values("items", @items)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("roleScopeTags", @role_scope_tags)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The enum to specify the status of PolicySet.
            ## @return a policy_set_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The enum to specify the status of PolicySet.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
