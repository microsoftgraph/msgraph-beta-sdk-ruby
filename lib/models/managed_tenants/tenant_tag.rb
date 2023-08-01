require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class TenantTag < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The identifier for the account that created the tenant tag. Required. Read-only.
                @created_by_user_id
                ## 
                # The date and time when the tenant tag was created. Required. Read-only.
                @created_date_time
                ## 
                # The date and time when the tenant tag was deleted. Required. Read-only.
                @deleted_date_time
                ## 
                # The description for the tenant tag. Optional. Read-only.
                @description
                ## 
                # The display name for the tenant tag. Required. Read-only.
                @display_name
                ## 
                # The identifier for the account that lasted on the tenant tag. Optional. Read-only.
                @last_action_by_user_id
                ## 
                # The date and time the last action was performed against the tenant tag. Optional. Read-only.
                @last_action_date_time
                ## 
                # The collection of managed tenants associated with the tenant tag. Optional.
                @tenants
                ## 
                ## Instantiates a new tenantTag and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdByUserId property value. The identifier for the account that created the tenant tag. Required. Read-only.
                ## @return a string
                ## 
                def created_by_user_id
                    return @created_by_user_id
                end
                ## 
                ## Sets the createdByUserId property value. The identifier for the account that created the tenant tag. Required. Read-only.
                ## @param value Value to set for the createdByUserId property.
                ## @return a void
                ## 
                def created_by_user_id=(value)
                    @created_by_user_id = value
                end
                ## 
                ## Gets the createdDateTime property value. The date and time when the tenant tag was created. Required. Read-only.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The date and time when the tenant tag was created. Required. Read-only.
                ## @param value Value to set for the createdDateTime property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tenant_tag
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TenantTag.new
                end
                ## 
                ## Gets the deletedDateTime property value. The date and time when the tenant tag was deleted. Required. Read-only.
                ## @return a date_time
                ## 
                def deleted_date_time
                    return @deleted_date_time
                end
                ## 
                ## Sets the deletedDateTime property value. The date and time when the tenant tag was deleted. Required. Read-only.
                ## @param value Value to set for the deletedDateTime property.
                ## @return a void
                ## 
                def deleted_date_time=(value)
                    @deleted_date_time = value
                end
                ## 
                ## Gets the description property value. The description for the tenant tag. Optional. Read-only.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description for the tenant tag. Optional. Read-only.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. The display name for the tenant tag. Required. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name for the tenant tag. Required. Read-only.
                ## @param value Value to set for the displayName property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "deletedDateTime" => lambda {|n| @deleted_date_time = n.get_date_time_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                        "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                        "tenants" => lambda {|n| @tenants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::TenantInfo.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastActionByUserId property value. The identifier for the account that lasted on the tenant tag. Optional. Read-only.
                ## @return a string
                ## 
                def last_action_by_user_id
                    return @last_action_by_user_id
                end
                ## 
                ## Sets the lastActionByUserId property value. The identifier for the account that lasted on the tenant tag. Optional. Read-only.
                ## @param value Value to set for the lastActionByUserId property.
                ## @return a void
                ## 
                def last_action_by_user_id=(value)
                    @last_action_by_user_id = value
                end
                ## 
                ## Gets the lastActionDateTime property value. The date and time the last action was performed against the tenant tag. Optional. Read-only.
                ## @return a date_time
                ## 
                def last_action_date_time
                    return @last_action_date_time
                end
                ## 
                ## Sets the lastActionDateTime property value. The date and time the last action was performed against the tenant tag. Optional. Read-only.
                ## @param value Value to set for the lastActionDateTime property.
                ## @return a void
                ## 
                def last_action_date_time=(value)
                    @last_action_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("createdByUserId", @created_by_user_id)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_date_time_value("deletedDateTime", @deleted_date_time)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                    writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                    writer.write_collection_of_object_values("tenants", @tenants)
                end
                ## 
                ## Gets the tenants property value. The collection of managed tenants associated with the tenant tag. Optional.
                ## @return a tenant_info
                ## 
                def tenants
                    return @tenants
                end
                ## 
                ## Sets the tenants property value. The collection of managed tenants associated with the tenant tag. Optional.
                ## @param value Value to set for the tenants property.
                ## @return a void
                ## 
                def tenants=(value)
                    @tenants = value
                end
            end
        end
    end
end
