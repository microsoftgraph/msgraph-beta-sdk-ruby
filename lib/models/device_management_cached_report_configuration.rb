require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity representing the configuration of a cached report
        class DeviceManagementCachedReportConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Time that the cached report expires
            @expiration_date_time
            ## 
            # Filters applied on report creation.
            @filter
            ## 
            # Time that the cached report was last refreshed
            @last_refresh_date_time
            ## 
            # Caller-managed metadata associated with the report
            @metadata
            ## 
            # Ordering of columns in the report
            @order_by
            ## 
            # Name of the report
            @report_name
            ## 
            # Columns selected from the report
            @select
            ## 
            # Possible statuses associated with a generated report
            @status
            ## 
            ## Instantiates a new deviceManagementCachedReportConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_cached_report_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementCachedReportConfiguration.new
            end
            ## 
            ## Gets the expirationDateTime property value. Time that the cached report expires
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Time that the cached report expires
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the filter property value. Filters applied on report creation.
            ## @return a string
            ## 
            def filter
                return @filter
            end
            ## 
            ## Sets the filter property value. Filters applied on report creation.
            ## @param value Value to set for the filter property.
            ## @return a void
            ## 
            def filter=(value)
                @filter = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "filter" => lambda {|n| @filter = n.get_string_value() },
                    "lastRefreshDateTime" => lambda {|n| @last_refresh_date_time = n.get_date_time_value() },
                    "metadata" => lambda {|n| @metadata = n.get_string_value() },
                    "orderBy" => lambda {|n| @order_by = n.get_collection_of_primitive_values(String) },
                    "reportName" => lambda {|n| @report_name = n.get_string_value() },
                    "select" => lambda {|n| @select = n.get_collection_of_primitive_values(String) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementReportStatus) },
                })
            end
            ## 
            ## Gets the lastRefreshDateTime property value. Time that the cached report was last refreshed
            ## @return a date_time
            ## 
            def last_refresh_date_time
                return @last_refresh_date_time
            end
            ## 
            ## Sets the lastRefreshDateTime property value. Time that the cached report was last refreshed
            ## @param value Value to set for the last_refresh_date_time property.
            ## @return a void
            ## 
            def last_refresh_date_time=(value)
                @last_refresh_date_time = value
            end
            ## 
            ## Gets the metadata property value. Caller-managed metadata associated with the report
            ## @return a string
            ## 
            def metadata
                return @metadata
            end
            ## 
            ## Sets the metadata property value. Caller-managed metadata associated with the report
            ## @param value Value to set for the metadata property.
            ## @return a void
            ## 
            def metadata=(value)
                @metadata = value
            end
            ## 
            ## Gets the orderBy property value. Ordering of columns in the report
            ## @return a string
            ## 
            def order_by
                return @order_by
            end
            ## 
            ## Sets the orderBy property value. Ordering of columns in the report
            ## @param value Value to set for the order_by property.
            ## @return a void
            ## 
            def order_by=(value)
                @order_by = value
            end
            ## 
            ## Gets the reportName property value. Name of the report
            ## @return a string
            ## 
            def report_name
                return @report_name
            end
            ## 
            ## Sets the reportName property value. Name of the report
            ## @param value Value to set for the report_name property.
            ## @return a void
            ## 
            def report_name=(value)
                @report_name = value
            end
            ## 
            ## Gets the select property value. Columns selected from the report
            ## @return a string
            ## 
            def select
                return @select
            end
            ## 
            ## Sets the select property value. Columns selected from the report
            ## @param value Value to set for the select property.
            ## @return a void
            ## 
            def select=(value)
                @select = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("filter", @filter)
                writer.write_date_time_value("lastRefreshDateTime", @last_refresh_date_time)
                writer.write_string_value("metadata", @metadata)
                writer.write_collection_of_primitive_values("orderBy", @order_by)
                writer.write_string_value("reportName", @report_name)
                writer.write_collection_of_primitive_values("select", @select)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Possible statuses associated with a generated report
            ## @return a device_management_report_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Possible statuses associated with a generated report
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
