require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './tenant_admin/sharepoint'

module MicrosoftGraphBeta
    module Models
        class Admin
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A container for Microsoft Edge resources. Read-only.
            @edge
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A container for administrative resources to manage reports.
            @report_settings
            ## 
            # A container for service communications resources. Read-only.
            @service_announcement
            ## 
            # A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive.
            @sharepoint
            ## 
            # A container for all Windows administrator functionalities. Read-only.
            @windows
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new Admin and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a admin
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Admin.new
            end
            ## 
            ## Gets the edge property value. A container for Microsoft Edge resources. Read-only.
            ## @return a edge
            ## 
            def edge
                return @edge
            end
            ## 
            ## Sets the edge property value. A container for Microsoft Edge resources. Read-only.
            ## @param value Value to set for the edge property.
            ## @return a void
            ## 
            def edge=(value)
                @edge = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "edge" => lambda {|n| @edge = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Edge.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reportSettings" => lambda {|n| @report_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminReportSettings.create_from_discriminator_value(pn) }) },
                    "serviceAnnouncement" => lambda {|n| @service_announcement = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ServiceAnnouncement.create_from_discriminator_value(pn) }) },
                    "sharepoint" => lambda {|n| @sharepoint = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TenantAdmin::Sharepoint.create_from_discriminator_value(pn) }) },
                    "windows" => lambda {|n| @windows = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminWindows.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the reportSettings property value. A container for administrative resources to manage reports.
            ## @return a admin_report_settings
            ## 
            def report_settings
                return @report_settings
            end
            ## 
            ## Sets the reportSettings property value. A container for administrative resources to manage reports.
            ## @param value Value to set for the report_settings property.
            ## @return a void
            ## 
            def report_settings=(value)
                @report_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("edge", @edge)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("reportSettings", @report_settings)
                writer.write_object_value("serviceAnnouncement", @service_announcement)
                writer.write_object_value("sharepoint", @sharepoint)
                writer.write_object_value("windows", @windows)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serviceAnnouncement property value. A container for service communications resources. Read-only.
            ## @return a service_announcement
            ## 
            def service_announcement
                return @service_announcement
            end
            ## 
            ## Sets the serviceAnnouncement property value. A container for service communications resources. Read-only.
            ## @param value Value to set for the service_announcement property.
            ## @return a void
            ## 
            def service_announcement=(value)
                @service_announcement = value
            end
            ## 
            ## Gets the sharepoint property value. A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive.
            ## @return a sharepoint
            ## 
            def sharepoint
                return @sharepoint
            end
            ## 
            ## Sets the sharepoint property value. A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive.
            ## @param value Value to set for the sharepoint property.
            ## @return a void
            ## 
            def sharepoint=(value)
                @sharepoint = value
            end
            ## 
            ## Gets the windows property value. A container for all Windows administrator functionalities. Read-only.
            ## @return a admin_windows
            ## 
            def windows
                return @windows
            end
            ## 
            ## Sets the windows property value. A container for all Windows administrator functionalities. Read-only.
            ## @param value Value to set for the windows property.
            ## @return a void
            ## 
            def windows=(value)
                @windows = value
            end
        end
    end
end
