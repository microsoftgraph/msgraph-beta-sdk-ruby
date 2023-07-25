require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkDeviceConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The camera configuration. Applicable only for Microsoft Teams Rooms-enabled devices.
            @camera_configuration
            ## 
            # Identity of the user who created the device configuration document.
            @created_by
            ## 
            # The UTC date and time when the device configuration document was created.
            @created_date_time
            ## 
            # The display configuration.
            @display_configuration
            ## 
            # The hardware configuration. Applicable only for Teams Rooms-enabled devices.
            @hardware_configuration
            ## 
            # Identity of the user who last modified the device configuration.
            @last_modified_by
            ## 
            # The UTC date and time when the device configuration was last modified.
            @last_modified_date_time
            ## 
            # The microphone configuration. Applicable only for Teams Rooms-enabled devices.
            @microphone_configuration
            ## 
            # Information related to software versions for the device, such as firmware, operating system, Teams client, and admin agent.
            @software_versions
            ## 
            # The speaker configuration. Applicable only for Teams Rooms-enabled devices.
            @speaker_configuration
            ## 
            # The system configuration. Not applicable for Teams Rooms-enabled devices.
            @system_configuration
            ## 
            # The Teams client configuration. Applicable only for Teams Rooms-enabled devices.
            @teams_client_configuration
            ## 
            ## Gets the cameraConfiguration property value. The camera configuration. Applicable only for Microsoft Teams Rooms-enabled devices.
            ## @return a teamwork_camera_configuration
            ## 
            def camera_configuration
                return @camera_configuration
            end
            ## 
            ## Sets the cameraConfiguration property value. The camera configuration. Applicable only for Microsoft Teams Rooms-enabled devices.
            ## @param value Value to set for the cameraConfiguration property.
            ## @return a void
            ## 
            def camera_configuration=(value)
                @camera_configuration = value
            end
            ## 
            ## Instantiates a new teamworkDeviceConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the device configuration document.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the device configuration document.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The UTC date and time when the device configuration document was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The UTC date and time when the device configuration document was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_device_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkDeviceConfiguration.new
            end
            ## 
            ## Gets the displayConfiguration property value. The display configuration.
            ## @return a teamwork_display_configuration
            ## 
            def display_configuration
                return @display_configuration
            end
            ## 
            ## Sets the displayConfiguration property value. The display configuration.
            ## @param value Value to set for the displayConfiguration property.
            ## @return a void
            ## 
            def display_configuration=(value)
                @display_configuration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cameraConfiguration" => lambda {|n| @camera_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkCameraConfiguration.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayConfiguration" => lambda {|n| @display_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDisplayConfiguration.create_from_discriminator_value(pn) }) },
                    "hardwareConfiguration" => lambda {|n| @hardware_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkHardwareConfiguration.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "microphoneConfiguration" => lambda {|n| @microphone_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkMicrophoneConfiguration.create_from_discriminator_value(pn) }) },
                    "softwareVersions" => lambda {|n| @software_versions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDeviceSoftwareVersions.create_from_discriminator_value(pn) }) },
                    "speakerConfiguration" => lambda {|n| @speaker_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSpeakerConfiguration.create_from_discriminator_value(pn) }) },
                    "systemConfiguration" => lambda {|n| @system_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSystemConfiguration.create_from_discriminator_value(pn) }) },
                    "teamsClientConfiguration" => lambda {|n| @teams_client_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkTeamsClientConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hardwareConfiguration property value. The hardware configuration. Applicable only for Teams Rooms-enabled devices.
            ## @return a teamwork_hardware_configuration
            ## 
            def hardware_configuration
                return @hardware_configuration
            end
            ## 
            ## Sets the hardwareConfiguration property value. The hardware configuration. Applicable only for Teams Rooms-enabled devices.
            ## @param value Value to set for the hardwareConfiguration property.
            ## @return a void
            ## 
            def hardware_configuration=(value)
                @hardware_configuration = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who last modified the device configuration.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who last modified the device configuration.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The UTC date and time when the device configuration was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The UTC date and time when the device configuration was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the microphoneConfiguration property value. The microphone configuration. Applicable only for Teams Rooms-enabled devices.
            ## @return a teamwork_microphone_configuration
            ## 
            def microphone_configuration
                return @microphone_configuration
            end
            ## 
            ## Sets the microphoneConfiguration property value. The microphone configuration. Applicable only for Teams Rooms-enabled devices.
            ## @param value Value to set for the microphoneConfiguration property.
            ## @return a void
            ## 
            def microphone_configuration=(value)
                @microphone_configuration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("cameraConfiguration", @camera_configuration)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("displayConfiguration", @display_configuration)
                writer.write_object_value("hardwareConfiguration", @hardware_configuration)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("microphoneConfiguration", @microphone_configuration)
                writer.write_object_value("softwareVersions", @software_versions)
                writer.write_object_value("speakerConfiguration", @speaker_configuration)
                writer.write_object_value("systemConfiguration", @system_configuration)
                writer.write_object_value("teamsClientConfiguration", @teams_client_configuration)
            end
            ## 
            ## Gets the softwareVersions property value. Information related to software versions for the device, such as firmware, operating system, Teams client, and admin agent.
            ## @return a teamwork_device_software_versions
            ## 
            def software_versions
                return @software_versions
            end
            ## 
            ## Sets the softwareVersions property value. Information related to software versions for the device, such as firmware, operating system, Teams client, and admin agent.
            ## @param value Value to set for the softwareVersions property.
            ## @return a void
            ## 
            def software_versions=(value)
                @software_versions = value
            end
            ## 
            ## Gets the speakerConfiguration property value. The speaker configuration. Applicable only for Teams Rooms-enabled devices.
            ## @return a teamwork_speaker_configuration
            ## 
            def speaker_configuration
                return @speaker_configuration
            end
            ## 
            ## Sets the speakerConfiguration property value. The speaker configuration. Applicable only for Teams Rooms-enabled devices.
            ## @param value Value to set for the speakerConfiguration property.
            ## @return a void
            ## 
            def speaker_configuration=(value)
                @speaker_configuration = value
            end
            ## 
            ## Gets the systemConfiguration property value. The system configuration. Not applicable for Teams Rooms-enabled devices.
            ## @return a teamwork_system_configuration
            ## 
            def system_configuration
                return @system_configuration
            end
            ## 
            ## Sets the systemConfiguration property value. The system configuration. Not applicable for Teams Rooms-enabled devices.
            ## @param value Value to set for the systemConfiguration property.
            ## @return a void
            ## 
            def system_configuration=(value)
                @system_configuration = value
            end
            ## 
            ## Gets the teamsClientConfiguration property value. The Teams client configuration. Applicable only for Teams Rooms-enabled devices.
            ## @return a teamwork_teams_client_configuration
            ## 
            def teams_client_configuration
                return @teams_client_configuration
            end
            ## 
            ## Sets the teamsClientConfiguration property value. The Teams client configuration. Applicable only for Teams Rooms-enabled devices.
            ## @param value Value to set for the teamsClientConfiguration property.
            ## @return a void
            ## 
            def teams_client_configuration=(value)
                @teams_client_configuration = value
            end
        end
    end
end
