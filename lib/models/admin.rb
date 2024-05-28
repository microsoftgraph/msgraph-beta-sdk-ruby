require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Admin
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The appsAndServices property
            @apps_and_services
            ## 
            # The dynamics property
            @dynamics
            ## 
            # A container for Microsoft Edge resources. Read-only.
            @edge
            ## 
            # The forms property
            @forms
            ## 
            # A container for the Microsoft 365 apps admin functionality.
            @microsoft365_apps
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents a setting to control people-related admin settings in the tenant.
            @people
            ## 
            # A container for administrative resources to manage reports.
            @report_settings
            ## 
            # A container for service communications resources. Read-only.
            @service_announcement
            ## 
            # The sharepoint property
            @sharepoint
            ## 
            # The todo property
            @todo
            ## 
            # A container for all Windows administrator functionalities. Read-only.
            @windows
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appsAndServices property value. The appsAndServices property
            ## @return a admin_apps_and_services
            ## 
            def apps_and_services
                return @apps_and_services
            end
            ## 
            ## Sets the appsAndServices property value. The appsAndServices property
            ## @param value Value to set for the appsAndServices property.
            ## @return a void
            ## 
            def apps_and_services=(value)
                @apps_and_services = value
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
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a admin
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Admin.new
            end
            ## 
            ## Gets the dynamics property value. The dynamics property
            ## @return a admin_dynamics
            ## 
            def dynamics
                return @dynamics
            end
            ## 
            ## Sets the dynamics property value. The dynamics property
            ## @param value Value to set for the dynamics property.
            ## @return a void
            ## 
            def dynamics=(value)
                @dynamics = value
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
            ## Gets the forms property value. The forms property
            ## @return a admin_forms
            ## 
            def forms
                return @forms
            end
            ## 
            ## Sets the forms property value. The forms property
            ## @param value Value to set for the forms property.
            ## @return a void
            ## 
            def forms=(value)
                @forms = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appsAndServices" => lambda {|n| @apps_and_services = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminAppsAndServices.create_from_discriminator_value(pn) }) },
                    "dynamics" => lambda {|n| @dynamics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminDynamics.create_from_discriminator_value(pn) }) },
                    "edge" => lambda {|n| @edge = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Edge.create_from_discriminator_value(pn) }) },
                    "forms" => lambda {|n| @forms = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminForms.create_from_discriminator_value(pn) }) },
                    "microsoft365Apps" => lambda {|n| @microsoft365_apps = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminMicrosoft365Apps.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "people" => lambda {|n| @people = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PeopleAdminSettings.create_from_discriminator_value(pn) }) },
                    "reportSettings" => lambda {|n| @report_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminReportSettings.create_from_discriminator_value(pn) }) },
                    "serviceAnnouncement" => lambda {|n| @service_announcement = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ServiceAnnouncement.create_from_discriminator_value(pn) }) },
                    "sharepoint" => lambda {|n| @sharepoint = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Sharepoint.create_from_discriminator_value(pn) }) },
                    "todo" => lambda {|n| @todo = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminTodo.create_from_discriminator_value(pn) }) },
                    "windows" => lambda {|n| @windows = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminWindows.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the microsoft365Apps property value. A container for the Microsoft 365 apps admin functionality.
            ## @return a admin_microsoft365_apps
            ## 
            def microsoft365_apps
                return @microsoft365_apps
            end
            ## 
            ## Sets the microsoft365Apps property value. A container for the Microsoft 365 apps admin functionality.
            ## @param value Value to set for the microsoft365Apps property.
            ## @return a void
            ## 
            def microsoft365_apps=(value)
                @microsoft365_apps = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the people property value. Represents a setting to control people-related admin settings in the tenant.
            ## @return a people_admin_settings
            ## 
            def people
                return @people
            end
            ## 
            ## Sets the people property value. Represents a setting to control people-related admin settings in the tenant.
            ## @param value Value to set for the people property.
            ## @return a void
            ## 
            def people=(value)
                @people = value
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
            ## @param value Value to set for the reportSettings property.
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
                writer.write_object_value("appsAndServices", @apps_and_services)
                writer.write_object_value("dynamics", @dynamics)
                writer.write_object_value("edge", @edge)
                writer.write_object_value("forms", @forms)
                writer.write_object_value("microsoft365Apps", @microsoft365_apps)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("people", @people)
                writer.write_object_value("reportSettings", @report_settings)
                writer.write_object_value("serviceAnnouncement", @service_announcement)
                writer.write_object_value("sharepoint", @sharepoint)
                writer.write_object_value("todo", @todo)
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
            ## @param value Value to set for the serviceAnnouncement property.
            ## @return a void
            ## 
            def service_announcement=(value)
                @service_announcement = value
            end
            ## 
            ## Gets the sharepoint property value. The sharepoint property
            ## @return a sharepoint
            ## 
            def sharepoint
                return @sharepoint
            end
            ## 
            ## Sets the sharepoint property value. The sharepoint property
            ## @param value Value to set for the sharepoint property.
            ## @return a void
            ## 
            def sharepoint=(value)
                @sharepoint = value
            end
            ## 
            ## Gets the todo property value. The todo property
            ## @return a admin_todo
            ## 
            def todo
                return @todo
            end
            ## 
            ## Sets the todo property value. The todo property
            ## @param value Value to set for the todo property.
            ## @return a void
            ## 
            def todo=(value)
                @todo = value
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
