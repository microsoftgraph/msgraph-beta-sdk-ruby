require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # MacOS extensions configuration profile.
        class MacOSExtensionsConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # All kernel extensions validly signed by the team identifiers in this list will be allowed to load.
            @kernel_extension_allowed_team_identifiers
            ## 
            # If set to true, users can approve additional kernel extensions not explicitly allowed by configurations profiles.
            @kernel_extension_overrides_allowed
            ## 
            # A list of kernel extensions that will be allowed to load. . This collection can contain a maximum of 500 elements.
            @kernel_extensions_allowed
            ## 
            # Gets or sets a list of allowed macOS system extensions. This collection can contain a maximum of 500 elements.
            @system_extensions_allowed
            ## 
            # Gets or sets a list of allowed team identifiers. Any system extension signed with any of the specified team identifiers will be approved.
            @system_extensions_allowed_team_identifiers
            ## 
            # Gets or sets a list of allowed macOS system extension types. This collection can contain a maximum of 500 elements.
            @system_extensions_allowed_types
            ## 
            # Gets or sets whether to allow the user to approve additional system extensions not explicitly allowed by configuration profiles.
            @system_extensions_block_override
            ## 
            ## Instantiates a new macOSExtensionsConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSExtensionsConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_extensions_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSExtensionsConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "kernelExtensionAllowedTeamIdentifiers" => lambda {|n| @kernel_extension_allowed_team_identifiers = n.get_collection_of_primitive_values(String) },
                    "kernelExtensionOverridesAllowed" => lambda {|n| @kernel_extension_overrides_allowed = n.get_boolean_value() },
                    "kernelExtensionsAllowed" => lambda {|n| @kernel_extensions_allowed = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSKernelExtension.create_from_discriminator_value(pn) }) },
                    "systemExtensionsAllowed" => lambda {|n| @system_extensions_allowed = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSSystemExtension.create_from_discriminator_value(pn) }) },
                    "systemExtensionsAllowedTeamIdentifiers" => lambda {|n| @system_extensions_allowed_team_identifiers = n.get_collection_of_primitive_values(String) },
                    "systemExtensionsAllowedTypes" => lambda {|n| @system_extensions_allowed_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSSystemExtensionTypeMapping.create_from_discriminator_value(pn) }) },
                    "systemExtensionsBlockOverride" => lambda {|n| @system_extensions_block_override = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the kernelExtensionAllowedTeamIdentifiers property value. All kernel extensions validly signed by the team identifiers in this list will be allowed to load.
            ## @return a string
            ## 
            def kernel_extension_allowed_team_identifiers
                return @kernel_extension_allowed_team_identifiers
            end
            ## 
            ## Sets the kernelExtensionAllowedTeamIdentifiers property value. All kernel extensions validly signed by the team identifiers in this list will be allowed to load.
            ## @param value Value to set for the kernelExtensionAllowedTeamIdentifiers property.
            ## @return a void
            ## 
            def kernel_extension_allowed_team_identifiers=(value)
                @kernel_extension_allowed_team_identifiers = value
            end
            ## 
            ## Gets the kernelExtensionOverridesAllowed property value. If set to true, users can approve additional kernel extensions not explicitly allowed by configurations profiles.
            ## @return a boolean
            ## 
            def kernel_extension_overrides_allowed
                return @kernel_extension_overrides_allowed
            end
            ## 
            ## Sets the kernelExtensionOverridesAllowed property value. If set to true, users can approve additional kernel extensions not explicitly allowed by configurations profiles.
            ## @param value Value to set for the kernelExtensionOverridesAllowed property.
            ## @return a void
            ## 
            def kernel_extension_overrides_allowed=(value)
                @kernel_extension_overrides_allowed = value
            end
            ## 
            ## Gets the kernelExtensionsAllowed property value. A list of kernel extensions that will be allowed to load. . This collection can contain a maximum of 500 elements.
            ## @return a mac_o_s_kernel_extension
            ## 
            def kernel_extensions_allowed
                return @kernel_extensions_allowed
            end
            ## 
            ## Sets the kernelExtensionsAllowed property value. A list of kernel extensions that will be allowed to load. . This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the kernelExtensionsAllowed property.
            ## @return a void
            ## 
            def kernel_extensions_allowed=(value)
                @kernel_extensions_allowed = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("kernelExtensionAllowedTeamIdentifiers", @kernel_extension_allowed_team_identifiers)
                writer.write_boolean_value("kernelExtensionOverridesAllowed", @kernel_extension_overrides_allowed)
                writer.write_collection_of_object_values("kernelExtensionsAllowed", @kernel_extensions_allowed)
                writer.write_collection_of_object_values("systemExtensionsAllowed", @system_extensions_allowed)
                writer.write_collection_of_primitive_values("systemExtensionsAllowedTeamIdentifiers", @system_extensions_allowed_team_identifiers)
                writer.write_collection_of_object_values("systemExtensionsAllowedTypes", @system_extensions_allowed_types)
                writer.write_boolean_value("systemExtensionsBlockOverride", @system_extensions_block_override)
            end
            ## 
            ## Gets the systemExtensionsAllowed property value. Gets or sets a list of allowed macOS system extensions. This collection can contain a maximum of 500 elements.
            ## @return a mac_o_s_system_extension
            ## 
            def system_extensions_allowed
                return @system_extensions_allowed
            end
            ## 
            ## Sets the systemExtensionsAllowed property value. Gets or sets a list of allowed macOS system extensions. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the systemExtensionsAllowed property.
            ## @return a void
            ## 
            def system_extensions_allowed=(value)
                @system_extensions_allowed = value
            end
            ## 
            ## Gets the systemExtensionsAllowedTeamIdentifiers property value. Gets or sets a list of allowed team identifiers. Any system extension signed with any of the specified team identifiers will be approved.
            ## @return a string
            ## 
            def system_extensions_allowed_team_identifiers
                return @system_extensions_allowed_team_identifiers
            end
            ## 
            ## Sets the systemExtensionsAllowedTeamIdentifiers property value. Gets or sets a list of allowed team identifiers. Any system extension signed with any of the specified team identifiers will be approved.
            ## @param value Value to set for the systemExtensionsAllowedTeamIdentifiers property.
            ## @return a void
            ## 
            def system_extensions_allowed_team_identifiers=(value)
                @system_extensions_allowed_team_identifiers = value
            end
            ## 
            ## Gets the systemExtensionsAllowedTypes property value. Gets or sets a list of allowed macOS system extension types. This collection can contain a maximum of 500 elements.
            ## @return a mac_o_s_system_extension_type_mapping
            ## 
            def system_extensions_allowed_types
                return @system_extensions_allowed_types
            end
            ## 
            ## Sets the systemExtensionsAllowedTypes property value. Gets or sets a list of allowed macOS system extension types. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the systemExtensionsAllowedTypes property.
            ## @return a void
            ## 
            def system_extensions_allowed_types=(value)
                @system_extensions_allowed_types = value
            end
            ## 
            ## Gets the systemExtensionsBlockOverride property value. Gets or sets whether to allow the user to approve additional system extensions not explicitly allowed by configuration profiles.
            ## @return a boolean
            ## 
            def system_extensions_block_override
                return @system_extensions_block_override
            end
            ## 
            ## Sets the systemExtensionsBlockOverride property value. Gets or sets whether to allow the user to approve additional system extensions not explicitly allowed by configuration profiles.
            ## @param value Value to set for the systemExtensionsBlockOverride property.
            ## @return a void
            ## 
            def system_extensions_block_override=(value)
                @system_extensions_block_override = value
            end
        end
    end
end
