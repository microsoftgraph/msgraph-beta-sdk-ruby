require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Office365GroupsActivityGroupCounts < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The number of active groups. A group is considered active if any of the following occurred: group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups.
        @active
        ## 
        # The date on which a number of groups were active.
        @report_date
        ## 
        # The number of days the report covers.
        @report_period
        ## 
        # The latest date of the content.
        @report_refresh_date
        ## 
        # The total number of groups.
        @total
        ## 
        ## Gets the active property value. The number of active groups. A group is considered active if any of the following occurred: group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups.
        ## @return a int64
        ## 
        def active
            return @active
        end
        ## 
        ## Sets the active property value. The number of active groups. A group is considered active if any of the following occurred: group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups.
        ## @param value Value to set for the active property.
        ## @return a void
        ## 
        def active=(value)
            @active = value
        end
        ## 
        ## Instantiates a new Office365GroupsActivityGroupCounts and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a office365_groups_activity_group_counts
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Office365GroupsActivityGroupCounts.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "active" => lambda {|n| @active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "reportDate" => lambda {|n| @report_date = n.get_date_value() },
                "reportPeriod" => lambda {|n| @report_period = n.get_string_value() },
                "reportRefreshDate" => lambda {|n| @report_refresh_date = n.get_date_value() },
                "total" => lambda {|n| @total = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the reportDate property value. The date on which a number of groups were active.
        ## @return a date
        ## 
        def report_date
            return @report_date
        end
        ## 
        ## Sets the reportDate property value. The date on which a number of groups were active.
        ## @param value Value to set for the reportDate property.
        ## @return a void
        ## 
        def report_date=(value)
            @report_date = value
        end
        ## 
        ## Gets the reportPeriod property value. The number of days the report covers.
        ## @return a string
        ## 
        def report_period
            return @report_period
        end
        ## 
        ## Sets the reportPeriod property value. The number of days the report covers.
        ## @param value Value to set for the reportPeriod property.
        ## @return a void
        ## 
        def report_period=(value)
            @report_period = value
        end
        ## 
        ## Gets the reportRefreshDate property value. The latest date of the content.
        ## @return a date
        ## 
        def report_refresh_date
            return @report_refresh_date
        end
        ## 
        ## Sets the reportRefreshDate property value. The latest date of the content.
        ## @param value Value to set for the reportRefreshDate property.
        ## @return a void
        ## 
        def report_refresh_date=(value)
            @report_refresh_date = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("active", @active)
            writer.write_date_value("reportDate", @report_date)
            writer.write_string_value("reportPeriod", @report_period)
            writer.write_date_value("reportRefreshDate", @report_refresh_date)
            writer.write_object_value("total", @total)
        end
        ## 
        ## Gets the total property value. The total number of groups.
        ## @return a int64
        ## 
        def total
            return @total
        end
        ## 
        ## Sets the total property value. The total number of groups.
        ## @param value Value to set for the total property.
        ## @return a void
        ## 
        def total=(value)
            @total = value
        end
    end
end
