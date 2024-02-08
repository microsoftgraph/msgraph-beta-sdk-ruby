require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionsManagement < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents a change event of the scheduledPermissionsRequest entity.
            @permissions_request_changes
            ## 
            # Represents a permissions request that Permissions Management uses to manage permissions for an identity on resources in the authorization system. This request can be granted, rejected or canceled by identities in Permissions Management.
            @scheduled_permissions_requests
            ## 
            ## Instantiates a new PermissionsManagement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permissions_management
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionsManagement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "permissionsRequestChanges" => lambda {|n| @permissions_request_changes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsRequestChange.create_from_discriminator_value(pn) }) },
                    "scheduledPermissionsRequests" => lambda {|n| @scheduled_permissions_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ScheduledPermissionsRequest.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the permissionsRequestChanges property value. Represents a change event of the scheduledPermissionsRequest entity.
            ## @return a permissions_request_change
            ## 
            def permissions_request_changes
                return @permissions_request_changes
            end
            ## 
            ## Sets the permissionsRequestChanges property value. Represents a change event of the scheduledPermissionsRequest entity.
            ## @param value Value to set for the permissionsRequestChanges property.
            ## @return a void
            ## 
            def permissions_request_changes=(value)
                @permissions_request_changes = value
            end
            ## 
            ## Gets the scheduledPermissionsRequests property value. Represents a permissions request that Permissions Management uses to manage permissions for an identity on resources in the authorization system. This request can be granted, rejected or canceled by identities in Permissions Management.
            ## @return a scheduled_permissions_request
            ## 
            def scheduled_permissions_requests
                return @scheduled_permissions_requests
            end
            ## 
            ## Sets the scheduledPermissionsRequests property value. Represents a permissions request that Permissions Management uses to manage permissions for an identity on resources in the authorization system. This request can be granted, rejected or canceled by identities in Permissions Management.
            ## @param value Value to set for the scheduledPermissionsRequests property.
            ## @return a void
            ## 
            def scheduled_permissions_requests=(value)
                @scheduled_permissions_requests = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("permissionsRequestChanges", @permissions_request_changes)
                writer.write_collection_of_object_values("scheduledPermissionsRequests", @scheduled_permissions_requests)
            end
        end
    end
end
