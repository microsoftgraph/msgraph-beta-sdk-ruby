require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesDeploymentSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Settings for governing whether content is applicable to a device.
            @content_applicability
            ## 
            # Settings for governing whether updates should be expedited.
            @expedite
            ## 
            # Settings for governing conditions to monitor and automated actions to take.
            @monitoring
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Settings for governing how and when the content is rolled out.
            @schedule
            ## 
            # Settings for governing end user update experience.
            @user_experience
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
            ## Instantiates a new windowsUpdatesDeploymentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentApplicability property value. Settings for governing whether content is applicable to a device.
            ## @return a windows_updates_content_applicability_settings
            ## 
            def content_applicability
                return @content_applicability
            end
            ## 
            ## Sets the contentApplicability property value. Settings for governing whether content is applicable to a device.
            ## @param value Value to set for the contentApplicability property.
            ## @return a void
            ## 
            def content_applicability=(value)
                @content_applicability = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_deployment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesDeploymentSettings.new
            end
            ## 
            ## Gets the expedite property value. Settings for governing whether updates should be expedited.
            ## @return a windows_updates_expedite_settings
            ## 
            def expedite
                return @expedite
            end
            ## 
            ## Sets the expedite property value. Settings for governing whether updates should be expedited.
            ## @param value Value to set for the expedite property.
            ## @return a void
            ## 
            def expedite=(value)
                @expedite = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentApplicability" => lambda {|n| @content_applicability = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesContentApplicabilitySettings.create_from_discriminator_value(pn) }) },
                    "expedite" => lambda {|n| @expedite = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesExpediteSettings.create_from_discriminator_value(pn) }) },
                    "monitoring" => lambda {|n| @monitoring = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesMonitoringSettings.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesScheduleSettings.create_from_discriminator_value(pn) }) },
                    "userExperience" => lambda {|n| @user_experience = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUserExperienceSettings.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the monitoring property value. Settings for governing conditions to monitor and automated actions to take.
            ## @return a windows_updates_monitoring_settings
            ## 
            def monitoring
                return @monitoring
            end
            ## 
            ## Sets the monitoring property value. Settings for governing conditions to monitor and automated actions to take.
            ## @param value Value to set for the monitoring property.
            ## @return a void
            ## 
            def monitoring=(value)
                @monitoring = value
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
            ## Gets the schedule property value. Settings for governing how and when the content is rolled out.
            ## @return a windows_updates_schedule_settings
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. Settings for governing how and when the content is rolled out.
            ## @param value Value to set for the schedule property.
            ## @return a void
            ## 
            def schedule=(value)
                @schedule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("contentApplicability", @content_applicability)
                writer.write_object_value("expedite", @expedite)
                writer.write_object_value("monitoring", @monitoring)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("schedule", @schedule)
                writer.write_object_value("userExperience", @user_experience)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userExperience property value. Settings for governing end user update experience.
            ## @return a windows_updates_user_experience_settings
            ## 
            def user_experience
                return @user_experience
            end
            ## 
            ## Sets the userExperience property value. Settings for governing end user update experience.
            ## @param value Value to set for the userExperience property.
            ## @return a void
            ## 
            def user_experience=(value)
                @user_experience = value
            end
        end
    end
end
