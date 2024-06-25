require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Singleton entity that acts as a container for all reports functionality.
        class DeviceManagementReports < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Entity representing the configuration of a cached report.
            @cached_report_configurations
            ## 
            # Entity representing a job to export a report.
            @export_jobs
            ## 
            ## Gets the cachedReportConfigurations property value. Entity representing the configuration of a cached report.
            ## @return a device_management_cached_report_configuration
            ## 
            def cached_report_configurations
                return @cached_report_configurations
            end
            ## 
            ## Sets the cachedReportConfigurations property value. Entity representing the configuration of a cached report.
            ## @param value Value to set for the cachedReportConfigurations property.
            ## @return a void
            ## 
            def cached_report_configurations=(value)
                @cached_report_configurations = value
            end
            ## 
            ## Instantiates a new DeviceManagementReports and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_reports
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementReports.new
            end
            ## 
            ## Gets the exportJobs property value. Entity representing a job to export a report.
            ## @return a device_management_export_job
            ## 
            def export_jobs
                return @export_jobs
            end
            ## 
            ## Sets the exportJobs property value. Entity representing a job to export a report.
            ## @param value Value to set for the exportJobs property.
            ## @return a void
            ## 
            def export_jobs=(value)
                @export_jobs = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cachedReportConfigurations" => lambda {|n| @cached_report_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementCachedReportConfiguration.create_from_discriminator_value(pn) }) },
                    "exportJobs" => lambda {|n| @export_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementExportJob.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("cachedReportConfigurations", @cached_report_configurations)
                writer.write_collection_of_object_values("exportJobs", @export_jobs)
            end
        end
    end
end
