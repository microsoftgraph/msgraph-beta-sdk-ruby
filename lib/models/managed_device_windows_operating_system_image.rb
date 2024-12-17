require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This entity defines different Windows Operating System products, like 'Windows 11 22H1', 'Windows 11 22H2' etc., along with their available configurations.
        class ManagedDeviceWindowsOperatingSystemImage < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the available Quality/Security updates for a specific Windows product version (example: Windows 11 22H1), for upto last 3 Patch Tuesdays . This value in the API response would be updated 2-3 days after every Patch Tuesday. Supports: $filter, $select, $top, $skip. Read-only.
            @available_updates
            ## 
            # Indicates the list of architectures supported by the image. E.g. ['ARM64','X86']. Supports: $filter, $select, $top, $skip. Read-only.
            @supported_architectures
            ## 
            # Indicates the list of editions supported by the image along with their support dates. Supports: $filter, $select, $top, $skip. Read-only.
            @supported_editions
            ## 
            ## Gets the availableUpdates property value. Indicates the available Quality/Security updates for a specific Windows product version (example: Windows 11 22H1), for upto last 3 Patch Tuesdays . This value in the API response would be updated 2-3 days after every Patch Tuesday. Supports: $filter, $select, $top, $skip. Read-only.
            ## @return a managed_device_windows_operating_system_update
            ## 
            def available_updates
                return @available_updates
            end
            ## 
            ## Sets the availableUpdates property value. Indicates the available Quality/Security updates for a specific Windows product version (example: Windows 11 22H1), for upto last 3 Patch Tuesdays . This value in the API response would be updated 2-3 days after every Patch Tuesday. Supports: $filter, $select, $top, $skip. Read-only.
            ## @param value Value to set for the availableUpdates property.
            ## @return a void
            ## 
            def available_updates=(value)
                @available_updates = value
            end
            ## 
            ## Instantiates a new ManagedDeviceWindowsOperatingSystemImage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_windows_operating_system_image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceWindowsOperatingSystemImage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availableUpdates" => lambda {|n| @available_updates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceWindowsOperatingSystemUpdate.create_from_discriminator_value(pn) }) },
                    "supportedArchitectures" => lambda {|n| @supported_architectures = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceArchitecture.create_from_discriminator_value(pn) }) },
                    "supportedEditions" => lambda {|n| @supported_editions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceWindowsOperatingSystemEdition.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("availableUpdates", @available_updates)
                writer.write_collection_of_object_values("supportedArchitectures", @supported_architectures)
                writer.write_collection_of_object_values("supportedEditions", @supported_editions)
            end
            ## 
            ## Gets the supportedArchitectures property value. Indicates the list of architectures supported by the image. E.g. ['ARM64','X86']. Supports: $filter, $select, $top, $skip. Read-only.
            ## @return a managed_device_architecture
            ## 
            def supported_architectures
                return @supported_architectures
            end
            ## 
            ## Sets the supportedArchitectures property value. Indicates the list of architectures supported by the image. E.g. ['ARM64','X86']. Supports: $filter, $select, $top, $skip. Read-only.
            ## @param value Value to set for the supportedArchitectures property.
            ## @return a void
            ## 
            def supported_architectures=(value)
                @supported_architectures = value
            end
            ## 
            ## Gets the supportedEditions property value. Indicates the list of editions supported by the image along with their support dates. Supports: $filter, $select, $top, $skip. Read-only.
            ## @return a managed_device_windows_operating_system_edition
            ## 
            def supported_editions
                return @supported_editions
            end
            ## 
            ## Sets the supportedEditions property value. Indicates the list of editions supported by the image along with their support dates. Supports: $filter, $select, $top, $skip. Read-only.
            ## @param value Value to set for the supportedEditions property.
            ## @return a void
            ## 
            def supported_editions=(value)
                @supported_editions = value
            end
        end
    end
end
