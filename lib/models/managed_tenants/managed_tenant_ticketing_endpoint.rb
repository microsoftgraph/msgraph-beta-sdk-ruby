require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    class ManagedTenantTicketingEndpoint < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The createdByUserId property
        @created_by_user_id
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The displayName property
        @display_name
        ## 
        # The emailAddress property
        @email_address
        ## 
        # The lastActionByUserId property
        @last_action_by_user_id
        ## 
        # The lastActionDateTime property
        @last_action_date_time
        ## 
        # The phoneNumber property
        @phone_number
        ## 
        ## Instantiates a new managedTenantTicketingEndpoint and sets the default values.
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
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_tenant_ticketing_endpoint
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagedTenantTicketingEndpoint.new
        end
        ## 
        ## Gets the displayName property value. The displayName property
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The displayName property
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the emailAddress property value. The emailAddress property
        ## @return a string
        ## 
        def email_address
            return @email_address
        end
        ## 
        ## Sets the emailAddress property value. The emailAddress property
        ## @param value Value to set for the emailAddress property.
        ## @return a void
        ## 
        def email_address=(value)
            @email_address = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
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
        ## Gets the phoneNumber property value. The phoneNumber property
        ## @return a string
        ## 
        def phone_number
            return @phone_number
        end
        ## 
        ## Sets the phoneNumber property value. The phoneNumber property
        ## @param value Value to set for the phoneNumber property.
        ## @return a void
        ## 
        def phone_number=(value)
            @phone_number = value
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
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("emailAddress", @email_address)
            writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
            writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
            writer.write_string_value("phoneNumber", @phone_number)
        end
    end
end
