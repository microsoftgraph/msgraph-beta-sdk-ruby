require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Graph properties for Device Firmware Configuration Interface 
        class Windows10DeviceFirmwareConfigurationInterface < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values of a property
            @bluetooth
            ## 
            # Possible values of a property
            @boot_from_built_in_network_adapters
            ## 
            # Possible values of a property
            @boot_from_external_media
            ## 
            # Possible values of a property
            @cameras
            ## 
            # Defines the permission level granted to users to enable them change Uefi settings
            @change_uefi_settings_permission
            ## 
            # Possible values of a property
            @front_camera
            ## 
            # Possible values of a property
            @infrared_camera
            ## 
            # Possible values of a property
            @microphone
            ## 
            # Possible values of a property
            @microphones_and_speakers
            ## 
            # Possible values of a property
            @near_field_communication
            ## 
            # Possible values of a property
            @radios
            ## 
            # Possible values of a property
            @rear_camera
            ## 
            # Possible values of a property
            @sd_card
            ## 
            # Possible values of a property
            @simultaneous_multi_threading
            ## 
            # Possible values of a property
            @usb_type_a_port
            ## 
            # Possible values of a property
            @virtualization_of_cpu_and_i_o
            ## 
            # Possible values of a property
            @wake_on_l_a_n
            ## 
            # Possible values of a property
            @wake_on_power
            ## 
            # Possible values of a property
            @wi_fi
            ## 
            # Possible values of a property
            @windows_platform_binary_table
            ## 
            # Possible values of a property
            @wireless_wide_area_network
            ## 
            ## Gets the bluetooth property value. Possible values of a property
            ## @return a enablement
            ## 
            def bluetooth
                return @bluetooth
            end
            ## 
            ## Sets the bluetooth property value. Possible values of a property
            ## @param value Value to set for the bluetooth property.
            ## @return a void
            ## 
            def bluetooth=(value)
                @bluetooth = value
            end
            ## 
            ## Gets the bootFromBuiltInNetworkAdapters property value. Possible values of a property
            ## @return a enablement
            ## 
            def boot_from_built_in_network_adapters
                return @boot_from_built_in_network_adapters
            end
            ## 
            ## Sets the bootFromBuiltInNetworkAdapters property value. Possible values of a property
            ## @param value Value to set for the bootFromBuiltInNetworkAdapters property.
            ## @return a void
            ## 
            def boot_from_built_in_network_adapters=(value)
                @boot_from_built_in_network_adapters = value
            end
            ## 
            ## Gets the bootFromExternalMedia property value. Possible values of a property
            ## @return a enablement
            ## 
            def boot_from_external_media
                return @boot_from_external_media
            end
            ## 
            ## Sets the bootFromExternalMedia property value. Possible values of a property
            ## @param value Value to set for the bootFromExternalMedia property.
            ## @return a void
            ## 
            def boot_from_external_media=(value)
                @boot_from_external_media = value
            end
            ## 
            ## Gets the cameras property value. Possible values of a property
            ## @return a enablement
            ## 
            def cameras
                return @cameras
            end
            ## 
            ## Sets the cameras property value. Possible values of a property
            ## @param value Value to set for the cameras property.
            ## @return a void
            ## 
            def cameras=(value)
                @cameras = value
            end
            ## 
            ## Gets the changeUefiSettingsPermission property value. Defines the permission level granted to users to enable them change Uefi settings
            ## @return a change_uefi_settings_permission
            ## 
            def change_uefi_settings_permission
                return @change_uefi_settings_permission
            end
            ## 
            ## Sets the changeUefiSettingsPermission property value. Defines the permission level granted to users to enable them change Uefi settings
            ## @param value Value to set for the changeUefiSettingsPermission property.
            ## @return a void
            ## 
            def change_uefi_settings_permission=(value)
                @change_uefi_settings_permission = value
            end
            ## 
            ## Instantiates a new windows10DeviceFirmwareConfigurationInterface and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10DeviceFirmwareConfigurationInterface"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows10_device_firmware_configuration_interface
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10DeviceFirmwareConfigurationInterface.new
            end
            ## 
            ## Gets the frontCamera property value. Possible values of a property
            ## @return a enablement
            ## 
            def front_camera
                return @front_camera
            end
            ## 
            ## Sets the frontCamera property value. Possible values of a property
            ## @param value Value to set for the frontCamera property.
            ## @return a void
            ## 
            def front_camera=(value)
                @front_camera = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bluetooth" => lambda {|n| @bluetooth = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "bootFromBuiltInNetworkAdapters" => lambda {|n| @boot_from_built_in_network_adapters = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "bootFromExternalMedia" => lambda {|n| @boot_from_external_media = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "cameras" => lambda {|n| @cameras = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "changeUefiSettingsPermission" => lambda {|n| @change_uefi_settings_permission = n.get_enum_value(MicrosoftGraphBeta::Models::ChangeUefiSettingsPermission) },
                    "frontCamera" => lambda {|n| @front_camera = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "infraredCamera" => lambda {|n| @infrared_camera = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "microphone" => lambda {|n| @microphone = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "microphonesAndSpeakers" => lambda {|n| @microphones_and_speakers = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "nearFieldCommunication" => lambda {|n| @near_field_communication = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "radios" => lambda {|n| @radios = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "rearCamera" => lambda {|n| @rear_camera = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "sdCard" => lambda {|n| @sd_card = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "simultaneousMultiThreading" => lambda {|n| @simultaneous_multi_threading = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "usbTypeAPort" => lambda {|n| @usb_type_a_port = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "virtualizationOfCpuAndIO" => lambda {|n| @virtualization_of_cpu_and_i_o = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "wakeOnLAN" => lambda {|n| @wake_on_l_a_n = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "wakeOnPower" => lambda {|n| @wake_on_power = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "wiFi" => lambda {|n| @wi_fi = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "windowsPlatformBinaryTable" => lambda {|n| @windows_platform_binary_table = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "wirelessWideAreaNetwork" => lambda {|n| @wireless_wide_area_network = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                })
            end
            ## 
            ## Gets the infraredCamera property value. Possible values of a property
            ## @return a enablement
            ## 
            def infrared_camera
                return @infrared_camera
            end
            ## 
            ## Sets the infraredCamera property value. Possible values of a property
            ## @param value Value to set for the infraredCamera property.
            ## @return a void
            ## 
            def infrared_camera=(value)
                @infrared_camera = value
            end
            ## 
            ## Gets the microphone property value. Possible values of a property
            ## @return a enablement
            ## 
            def microphone
                return @microphone
            end
            ## 
            ## Sets the microphone property value. Possible values of a property
            ## @param value Value to set for the microphone property.
            ## @return a void
            ## 
            def microphone=(value)
                @microphone = value
            end
            ## 
            ## Gets the microphonesAndSpeakers property value. Possible values of a property
            ## @return a enablement
            ## 
            def microphones_and_speakers
                return @microphones_and_speakers
            end
            ## 
            ## Sets the microphonesAndSpeakers property value. Possible values of a property
            ## @param value Value to set for the microphonesAndSpeakers property.
            ## @return a void
            ## 
            def microphones_and_speakers=(value)
                @microphones_and_speakers = value
            end
            ## 
            ## Gets the nearFieldCommunication property value. Possible values of a property
            ## @return a enablement
            ## 
            def near_field_communication
                return @near_field_communication
            end
            ## 
            ## Sets the nearFieldCommunication property value. Possible values of a property
            ## @param value Value to set for the nearFieldCommunication property.
            ## @return a void
            ## 
            def near_field_communication=(value)
                @near_field_communication = value
            end
            ## 
            ## Gets the radios property value. Possible values of a property
            ## @return a enablement
            ## 
            def radios
                return @radios
            end
            ## 
            ## Sets the radios property value. Possible values of a property
            ## @param value Value to set for the radios property.
            ## @return a void
            ## 
            def radios=(value)
                @radios = value
            end
            ## 
            ## Gets the rearCamera property value. Possible values of a property
            ## @return a enablement
            ## 
            def rear_camera
                return @rear_camera
            end
            ## 
            ## Sets the rearCamera property value. Possible values of a property
            ## @param value Value to set for the rearCamera property.
            ## @return a void
            ## 
            def rear_camera=(value)
                @rear_camera = value
            end
            ## 
            ## Gets the sdCard property value. Possible values of a property
            ## @return a enablement
            ## 
            def sd_card
                return @sd_card
            end
            ## 
            ## Sets the sdCard property value. Possible values of a property
            ## @param value Value to set for the sdCard property.
            ## @return a void
            ## 
            def sd_card=(value)
                @sd_card = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("bluetooth", @bluetooth)
                writer.write_enum_value("bootFromBuiltInNetworkAdapters", @boot_from_built_in_network_adapters)
                writer.write_enum_value("bootFromExternalMedia", @boot_from_external_media)
                writer.write_enum_value("cameras", @cameras)
                writer.write_enum_value("changeUefiSettingsPermission", @change_uefi_settings_permission)
                writer.write_enum_value("frontCamera", @front_camera)
                writer.write_enum_value("infraredCamera", @infrared_camera)
                writer.write_enum_value("microphone", @microphone)
                writer.write_enum_value("microphonesAndSpeakers", @microphones_and_speakers)
                writer.write_enum_value("nearFieldCommunication", @near_field_communication)
                writer.write_enum_value("radios", @radios)
                writer.write_enum_value("rearCamera", @rear_camera)
                writer.write_enum_value("sdCard", @sd_card)
                writer.write_enum_value("simultaneousMultiThreading", @simultaneous_multi_threading)
                writer.write_enum_value("usbTypeAPort", @usb_type_a_port)
                writer.write_enum_value("virtualizationOfCpuAndIO", @virtualization_of_cpu_and_i_o)
                writer.write_enum_value("wakeOnLAN", @wake_on_l_a_n)
                writer.write_enum_value("wakeOnPower", @wake_on_power)
                writer.write_enum_value("wiFi", @wi_fi)
                writer.write_enum_value("windowsPlatformBinaryTable", @windows_platform_binary_table)
                writer.write_enum_value("wirelessWideAreaNetwork", @wireless_wide_area_network)
            end
            ## 
            ## Gets the simultaneousMultiThreading property value. Possible values of a property
            ## @return a enablement
            ## 
            def simultaneous_multi_threading
                return @simultaneous_multi_threading
            end
            ## 
            ## Sets the simultaneousMultiThreading property value. Possible values of a property
            ## @param value Value to set for the simultaneousMultiThreading property.
            ## @return a void
            ## 
            def simultaneous_multi_threading=(value)
                @simultaneous_multi_threading = value
            end
            ## 
            ## Gets the usbTypeAPort property value. Possible values of a property
            ## @return a enablement
            ## 
            def usb_type_a_port
                return @usb_type_a_port
            end
            ## 
            ## Sets the usbTypeAPort property value. Possible values of a property
            ## @param value Value to set for the usbTypeAPort property.
            ## @return a void
            ## 
            def usb_type_a_port=(value)
                @usb_type_a_port = value
            end
            ## 
            ## Gets the virtualizationOfCpuAndIO property value. Possible values of a property
            ## @return a enablement
            ## 
            def virtualization_of_cpu_and_i_o
                return @virtualization_of_cpu_and_i_o
            end
            ## 
            ## Sets the virtualizationOfCpuAndIO property value. Possible values of a property
            ## @param value Value to set for the virtualizationOfCpuAndIO property.
            ## @return a void
            ## 
            def virtualization_of_cpu_and_i_o=(value)
                @virtualization_of_cpu_and_i_o = value
            end
            ## 
            ## Gets the wakeOnLAN property value. Possible values of a property
            ## @return a enablement
            ## 
            def wake_on_l_a_n
                return @wake_on_l_a_n
            end
            ## 
            ## Sets the wakeOnLAN property value. Possible values of a property
            ## @param value Value to set for the wakeOnLAN property.
            ## @return a void
            ## 
            def wake_on_l_a_n=(value)
                @wake_on_l_a_n = value
            end
            ## 
            ## Gets the wakeOnPower property value. Possible values of a property
            ## @return a enablement
            ## 
            def wake_on_power
                return @wake_on_power
            end
            ## 
            ## Sets the wakeOnPower property value. Possible values of a property
            ## @param value Value to set for the wakeOnPower property.
            ## @return a void
            ## 
            def wake_on_power=(value)
                @wake_on_power = value
            end
            ## 
            ## Gets the wiFi property value. Possible values of a property
            ## @return a enablement
            ## 
            def wi_fi
                return @wi_fi
            end
            ## 
            ## Sets the wiFi property value. Possible values of a property
            ## @param value Value to set for the wiFi property.
            ## @return a void
            ## 
            def wi_fi=(value)
                @wi_fi = value
            end
            ## 
            ## Gets the windowsPlatformBinaryTable property value. Possible values of a property
            ## @return a enablement
            ## 
            def windows_platform_binary_table
                return @windows_platform_binary_table
            end
            ## 
            ## Sets the windowsPlatformBinaryTable property value. Possible values of a property
            ## @param value Value to set for the windowsPlatformBinaryTable property.
            ## @return a void
            ## 
            def windows_platform_binary_table=(value)
                @windows_platform_binary_table = value
            end
            ## 
            ## Gets the wirelessWideAreaNetwork property value. Possible values of a property
            ## @return a enablement
            ## 
            def wireless_wide_area_network
                return @wireless_wide_area_network
            end
            ## 
            ## Sets the wirelessWideAreaNetwork property value. Possible values of a property
            ## @param value Value to set for the wirelessWideAreaNetwork property.
            ## @return a void
            ## 
            def wireless_wide_area_network=(value)
                @wireless_wide_area_network = value
            end
        end
    end
end
