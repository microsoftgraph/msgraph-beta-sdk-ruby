require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcExportJob < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the export job expires.
            @expiration_date_time
            ## 
            # The status of the export job. The possible values are: notStarted, inProgress, completed, unknownFutureValue. Read-only.
            @export_job_status
            ## 
            # The storage account URL of the exported report. It can be used to download the file.
            @export_url
            ## 
            # The filter applied on the report.
            @filter
            ## 
            # The format of the exported report.
            @format
            ## 
            # The report name. The possible values are: remoteConnectionHistoricalReports, dailyAggregatedRemoteConnectionReports, totalAggregatedRemoteConnectionReports, sharedUseLicenseUsageReport, sharedUseLicenseUsageRealTimeReport, unknownFutureValue,  noLicenseAvailableConnectivityFailureReport. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: noLicenseAvailableConnectivityFailureReport.
            @report_name
            ## 
            # The date and time when the export job was requested.
            @request_date_time
            ## 
            # The selected columns of the report.
            @select
            ## 
            ## Instantiates a new cloudPcExportJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_export_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcExportJob.new
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time when the export job expires.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time when the export job expires.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the exportJobStatus property value. The status of the export job. The possible values are: notStarted, inProgress, completed, unknownFutureValue. Read-only.
            ## @return a cloud_pc_export_job_status
            ## 
            def export_job_status
                return @export_job_status
            end
            ## 
            ## Sets the exportJobStatus property value. The status of the export job. The possible values are: notStarted, inProgress, completed, unknownFutureValue. Read-only.
            ## @param value Value to set for the exportJobStatus property.
            ## @return a void
            ## 
            def export_job_status=(value)
                @export_job_status = value
            end
            ## 
            ## Gets the exportUrl property value. The storage account URL of the exported report. It can be used to download the file.
            ## @return a string
            ## 
            def export_url
                return @export_url
            end
            ## 
            ## Sets the exportUrl property value. The storage account URL of the exported report. It can be used to download the file.
            ## @param value Value to set for the exportUrl property.
            ## @return a void
            ## 
            def export_url=(value)
                @export_url = value
            end
            ## 
            ## Gets the filter property value. The filter applied on the report.
            ## @return a string
            ## 
            def filter
                return @filter
            end
            ## 
            ## Sets the filter property value. The filter applied on the report.
            ## @param value Value to set for the filter property.
            ## @return a void
            ## 
            def filter=(value)
                @filter = value
            end
            ## 
            ## Gets the format property value. The format of the exported report.
            ## @return a string
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. The format of the exported report.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "exportJobStatus" => lambda {|n| @export_job_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcExportJobStatus) },
                    "exportUrl" => lambda {|n| @export_url = n.get_string_value() },
                    "filter" => lambda {|n| @filter = n.get_string_value() },
                    "format" => lambda {|n| @format = n.get_string_value() },
                    "reportName" => lambda {|n| @report_name = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcReportName) },
                    "requestDateTime" => lambda {|n| @request_date_time = n.get_date_time_value() },
                    "select" => lambda {|n| @select = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the reportName property value. The report name. The possible values are: remoteConnectionHistoricalReports, dailyAggregatedRemoteConnectionReports, totalAggregatedRemoteConnectionReports, sharedUseLicenseUsageReport, sharedUseLicenseUsageRealTimeReport, unknownFutureValue,  noLicenseAvailableConnectivityFailureReport. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: noLicenseAvailableConnectivityFailureReport.
            ## @return a cloud_pc_report_name
            ## 
            def report_name
                return @report_name
            end
            ## 
            ## Sets the reportName property value. The report name. The possible values are: remoteConnectionHistoricalReports, dailyAggregatedRemoteConnectionReports, totalAggregatedRemoteConnectionReports, sharedUseLicenseUsageReport, sharedUseLicenseUsageRealTimeReport, unknownFutureValue,  noLicenseAvailableConnectivityFailureReport. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: noLicenseAvailableConnectivityFailureReport.
            ## @param value Value to set for the reportName property.
            ## @return a void
            ## 
            def report_name=(value)
                @report_name = value
            end
            ## 
            ## Gets the requestDateTime property value. The date and time when the export job was requested.
            ## @return a date_time
            ## 
            def request_date_time
                return @request_date_time
            end
            ## 
            ## Sets the requestDateTime property value. The date and time when the export job was requested.
            ## @param value Value to set for the requestDateTime property.
            ## @return a void
            ## 
            def request_date_time=(value)
                @request_date_time = value
            end
            ## 
            ## Gets the select property value. The selected columns of the report.
            ## @return a string
            ## 
            def select
                return @select
            end
            ## 
            ## Sets the select property value. The selected columns of the report.
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
                writer.write_enum_value("exportJobStatus", @export_job_status)
                writer.write_string_value("exportUrl", @export_url)
                writer.write_string_value("filter", @filter)
                writer.write_string_value("format", @format)
                writer.write_enum_value("reportName", @report_name)
                writer.write_date_time_value("requestDateTime", @request_date_time)
                writer.write_collection_of_primitive_values("select", @select)
            end
        end
    end
end
