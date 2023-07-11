require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Office365GroupsActivityStorage < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The storage used in group mailbox.
            @mailbox_storage_used_in_bytes
            ## 
            # The snapshot date for Exchange and SharePoint used storage.
            @report_date
            ## 
            # The number of days the report covers.
            @report_period
            ## 
            # The latest date of the content.
            @report_refresh_date
            ## 
            # The storage used in SharePoint document library.
            @site_storage_used_in_bytes
            ## 
            ## Instantiates a new office365GroupsActivityStorage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a office365_groups_activity_storage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Office365GroupsActivityStorage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mailboxStorageUsedInBytes" => lambda {|n| @mailbox_storage_used_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "reportDate" => lambda {|n| @report_date = n.get_date_value() },
                    "reportPeriod" => lambda {|n| @report_period = n.get_string_value() },
                    "reportRefreshDate" => lambda {|n| @report_refresh_date = n.get_date_value() },
                    "siteStorageUsedInBytes" => lambda {|n| @site_storage_used_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the mailboxStorageUsedInBytes property value. The storage used in group mailbox.
            ## @return a int64
            ## 
            def mailbox_storage_used_in_bytes
                return @mailbox_storage_used_in_bytes
            end
            ## 
            ## Sets the mailboxStorageUsedInBytes property value. The storage used in group mailbox.
            ## @param value Value to set for the mailbox_storage_used_in_bytes property.
            ## @return a void
            ## 
            def mailbox_storage_used_in_bytes=(value)
                @mailbox_storage_used_in_bytes = value
            end
            ## 
            ## Gets the reportDate property value. The snapshot date for Exchange and SharePoint used storage.
            ## @return a date
            ## 
            def report_date
                return @report_date
            end
            ## 
            ## Sets the reportDate property value. The snapshot date for Exchange and SharePoint used storage.
            ## @param value Value to set for the report_date property.
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
            ## @param value Value to set for the report_period property.
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
            ## @param value Value to set for the report_refresh_date property.
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
                writer.write_object_value("mailboxStorageUsedInBytes", @mailbox_storage_used_in_bytes)
                writer.write_date_value("reportDate", @report_date)
                writer.write_string_value("reportPeriod", @report_period)
                writer.write_date_value("reportRefreshDate", @report_refresh_date)
                writer.write_object_value("siteStorageUsedInBytes", @site_storage_used_in_bytes)
            end
            ## 
            ## Gets the siteStorageUsedInBytes property value. The storage used in SharePoint document library.
            ## @return a int64
            ## 
            def site_storage_used_in_bytes
                return @site_storage_used_in_bytes
            end
            ## 
            ## Sets the siteStorageUsedInBytes property value. The storage used in SharePoint document library.
            ## @param value Value to set for the site_storage_used_in_bytes property.
            ## @return a void
            ## 
            def site_storage_used_in_bytes=(value)
                @site_storage_used_in_bytes = value
            end
        end
    end
end
