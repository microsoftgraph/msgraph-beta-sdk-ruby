require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Announcement < MicrosoftGraphBeta::Models::ChangeItemBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Change announcement date. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            @announcement_date_time
            ## 
            # The changeType property
            @change_type
            ## 
            # Change impact URL. Supports $filter (eq, ne, in) and $orderby.
            @impact_link
            ## 
            # Indicates whether the customer needs to take any action for this change. Supports $filter (eq, ne).
            @is_customer_action_required
            ## 
            # Date on which the change rolls out. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            @target_date_time
            ## 
            ## Gets the announcementDateTime property value. Change announcement date. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            ## @return a date_time
            ## 
            def announcement_date_time
                return @announcement_date_time
            end
            ## 
            ## Sets the announcementDateTime property value. Change announcement date. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            ## @param value Value to set for the announcementDateTime property.
            ## @return a void
            ## 
            def announcement_date_time=(value)
                @announcement_date_time = value
            end
            ## 
            ## Gets the changeType property value. The changeType property
            ## @return a change_announcement_change_type
            ## 
            def change_type
                return @change_type
            end
            ## 
            ## Sets the changeType property value. The changeType property
            ## @param value Value to set for the changeType property.
            ## @return a void
            ## 
            def change_type=(value)
                @change_type = value
            end
            ## 
            ## Instantiates a new Announcement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.announcement"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a announcement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Announcement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "announcementDateTime" => lambda {|n| @announcement_date_time = n.get_date_time_value() },
                    "changeType" => lambda {|n| @change_type = n.get_enum_value(MicrosoftGraphBeta::Models::ChangeAnnouncementChangeType) },
                    "impactLink" => lambda {|n| @impact_link = n.get_string_value() },
                    "isCustomerActionRequired" => lambda {|n| @is_customer_action_required = n.get_boolean_value() },
                    "targetDateTime" => lambda {|n| @target_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the impactLink property value. Change impact URL. Supports $filter (eq, ne, in) and $orderby.
            ## @return a string
            ## 
            def impact_link
                return @impact_link
            end
            ## 
            ## Sets the impactLink property value. Change impact URL. Supports $filter (eq, ne, in) and $orderby.
            ## @param value Value to set for the impactLink property.
            ## @return a void
            ## 
            def impact_link=(value)
                @impact_link = value
            end
            ## 
            ## Gets the isCustomerActionRequired property value. Indicates whether the customer needs to take any action for this change. Supports $filter (eq, ne).
            ## @return a boolean
            ## 
            def is_customer_action_required
                return @is_customer_action_required
            end
            ## 
            ## Sets the isCustomerActionRequired property value. Indicates whether the customer needs to take any action for this change. Supports $filter (eq, ne).
            ## @param value Value to set for the isCustomerActionRequired property.
            ## @return a void
            ## 
            def is_customer_action_required=(value)
                @is_customer_action_required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("announcementDateTime", @announcement_date_time)
                writer.write_enum_value("changeType", @change_type)
                writer.write_string_value("impactLink", @impact_link)
                writer.write_boolean_value("isCustomerActionRequired", @is_customer_action_required)
                writer.write_date_time_value("targetDateTime", @target_date_time)
            end
            ## 
            ## Gets the targetDateTime property value. Date on which the change rolls out. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            ## @return a date_time
            ## 
            def target_date_time
                return @target_date_time
            end
            ## 
            ## Sets the targetDateTime property value. Date on which the change rolls out. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            ## @param value Value to set for the targetDateTime property.
            ## @return a void
            ## 
            def target_date_time=(value)
                @target_date_time = value
            end
        end
    end
end
