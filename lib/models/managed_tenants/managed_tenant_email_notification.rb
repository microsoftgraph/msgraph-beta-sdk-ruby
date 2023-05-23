require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class ManagedTenantEmailNotification < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The alert property
                @alert
                ## 
                # The createdByUserId property
                @created_by_user_id
                ## 
                # The createdDateTime property
                @created_date_time
                ## 
                # The emailAddresses property
                @email_addresses
                ## 
                # The emailBody property
                @email_body
                ## 
                # The lastActionByUserId property
                @last_action_by_user_id
                ## 
                # The lastActionDateTime property
                @last_action_date_time
                ## 
                # The subject property
                @subject
                ## 
                ## Gets the alert property value. The alert property
                ## @return a managed_tenant_alert
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
                ## Instantiates a new managedTenantEmailNotification and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
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
                ## @param value Value to set for the created_by_user_id property.
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
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a managed_tenant_email_notification
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ManagedTenantEmailNotification.new
                end
                ## 
                ## Gets the emailAddresses property value. The emailAddresses property
                ## @return a email
                ## 
                def email_addresses
                    return @email_addresses
                end
                ## 
                ## Sets the emailAddresses property value. The emailAddresses property
                ## @param value Value to set for the email_addresses property.
                ## @return a void
                ## 
                def email_addresses=(value)
                    @email_addresses = value
                end
                ## 
                ## Gets the emailBody property value. The emailBody property
                ## @return a string
                ## 
                def email_body
                    return @email_body
                end
                ## 
                ## Sets the emailBody property value. The emailBody property
                ## @param value Value to set for the email_body property.
                ## @return a void
                ## 
                def email_body=(value)
                    @email_body = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "alert" => lambda {|n| @alert = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagedTenantAlert.create_from_discriminator_value(pn) }) },
                        "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "emailAddresses" => lambda {|n| @email_addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::Email.create_from_discriminator_value(pn) }) },
                        "emailBody" => lambda {|n| @email_body = n.get_string_value() },
                        "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                        "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                        "subject" => lambda {|n| @subject = n.get_string_value() },
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
                ## @param value Value to set for the last_action_by_user_id property.
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
                ## @param value Value to set for the last_action_date_time property.
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
                    writer.write_string_value("createdByUserId", @created_by_user_id)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_collection_of_object_values("emailAddresses", @email_addresses)
                    writer.write_string_value("emailBody", @email_body)
                    writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                    writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                    writer.write_string_value("subject", @subject)
                end
                ## 
                ## Gets the subject property value. The subject property
                ## @return a string
                ## 
                def subject
                    return @subject
                end
                ## 
                ## Sets the subject property value. The subject property
                ## @param value Value to set for the subject property.
                ## @return a void
                ## 
                def subject=(value)
                    @subject = value
                end
            end
        end
    end
end
