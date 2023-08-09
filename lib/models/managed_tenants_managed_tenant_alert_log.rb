require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagedTenantAlertLog < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alert property
            @alert
            ## 
            # The content property
            @content
            ## 
            # The createdByUserId property
            @created_by_user_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The lastActionByUserId property
            @last_action_by_user_id
            ## 
            # The lastActionDateTime property
            @last_action_date_time
            ## 
            ## Gets the alert property value. The alert property
            ## @return a managed_tenants_managed_tenant_alert
            ## 
            def alert
                return @alert
            end
            ## 
            ## Sets the alert property value. The alert property
            ## @param value Value to set for the alert property.
            ## @return a void
            ## 
            def alert=(value)
                @alert = value
            end
            ## 
            ## Instantiates a new managedTenantsManagedTenantAlertLog and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content property
            ## @return a managed_tenants_alert_log_content
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content property
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the createdByUserId property value. The createdByUserId property
            ## @return a string
            ## 
            def created_by_user_id
                return @created_by_user_id
            end
            ## 
            ## Sets the createdByUserId property value. The createdByUserId property
            ## @param value Value to set for the createdByUserId property.
            ## @return a void
            ## 
            def created_by_user_id=(value)
                @created_by_user_id = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_managed_tenant_alert_log
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagedTenantAlertLog.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alert" => lambda {|n| @alert = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlert.create_from_discriminator_value(pn) }) },
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsAlertLogContent.create_from_discriminator_value(pn) }) },
                    "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the lastActionByUserId property value. The lastActionByUserId property
            ## @return a string
            ## 
            def last_action_by_user_id
                return @last_action_by_user_id
            end
            ## 
            ## Sets the lastActionByUserId property value. The lastActionByUserId property
            ## @param value Value to set for the lastActionByUserId property.
            ## @return a void
            ## 
            def last_action_by_user_id=(value)
                @last_action_by_user_id = value
            end
            ## 
            ## Gets the lastActionDateTime property value. The lastActionDateTime property
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. The lastActionDateTime property
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
                writer.write_object_value("alert", @alert)
                writer.write_object_value("content", @content)
                writer.write_string_value("createdByUserId", @created_by_user_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
            end
        end
    end
end
