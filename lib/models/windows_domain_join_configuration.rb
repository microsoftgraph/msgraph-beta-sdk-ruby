require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsDomainJoinConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Active Directory domain name to join.
            @active_directory_domain_name
            ## 
            # Fixed prefix to be used for computer name.
            @computer_name_static_prefix
            ## 
            # Dynamically generated characters used as suffix for computer name. Valid values 3 to 14
            @computer_name_suffix_random_char_count
            ## 
            # Reference to device configurations required for network connectivity
            @network_access_configurations
            ## 
            # Organizational unit (OU) where the computer account will be created. If this parameter is NULL, the well known computer object container will be used as published in the domain.
            @organizational_unit
            ## 
            ## Gets the activeDirectoryDomainName property value. Active Directory domain name to join.
            ## @return a string
            ## 
            def active_directory_domain_name
                return @active_directory_domain_name
            end
            ## 
            ## Sets the activeDirectoryDomainName property value. Active Directory domain name to join.
            ## @param value Value to set for the active_directory_domain_name property.
            ## @return a void
            ## 
            def active_directory_domain_name=(value)
                @active_directory_domain_name = value
            end
            ## 
            ## Gets the computerNameStaticPrefix property value. Fixed prefix to be used for computer name.
            ## @return a string
            ## 
            def computer_name_static_prefix
                return @computer_name_static_prefix
            end
            ## 
            ## Sets the computerNameStaticPrefix property value. Fixed prefix to be used for computer name.
            ## @param value Value to set for the computer_name_static_prefix property.
            ## @return a void
            ## 
            def computer_name_static_prefix=(value)
                @computer_name_static_prefix = value
            end
            ## 
            ## Gets the computerNameSuffixRandomCharCount property value. Dynamically generated characters used as suffix for computer name. Valid values 3 to 14
            ## @return a integer
            ## 
            def computer_name_suffix_random_char_count
                return @computer_name_suffix_random_char_count
            end
            ## 
            ## Sets the computerNameSuffixRandomCharCount property value. Dynamically generated characters used as suffix for computer name. Valid values 3 to 14
            ## @param value Value to set for the computer_name_suffix_random_char_count property.
            ## @return a void
            ## 
            def computer_name_suffix_random_char_count=(value)
                @computer_name_suffix_random_char_count = value
            end
            ## 
            ## Instantiates a new WindowsDomainJoinConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsDomainJoinConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_domain_join_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDomainJoinConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDirectoryDomainName" => lambda {|n| @active_directory_domain_name = n.get_string_value() },
                    "computerNameStaticPrefix" => lambda {|n| @computer_name_static_prefix = n.get_string_value() },
                    "computerNameSuffixRandomCharCount" => lambda {|n| @computer_name_suffix_random_char_count = n.get_number_value() },
                    "networkAccessConfigurations" => lambda {|n| @network_access_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfiguration.create_from_discriminator_value(pn) }) },
                    "organizationalUnit" => lambda {|n| @organizational_unit = n.get_string_value() },
                })
            end
            ## 
            ## Gets the networkAccessConfigurations property value. Reference to device configurations required for network connectivity
            ## @return a device_configuration
            ## 
            def network_access_configurations
                return @network_access_configurations
            end
            ## 
            ## Sets the networkAccessConfigurations property value. Reference to device configurations required for network connectivity
            ## @param value Value to set for the network_access_configurations property.
            ## @return a void
            ## 
            def network_access_configurations=(value)
                @network_access_configurations = value
            end
            ## 
            ## Gets the organizationalUnit property value. Organizational unit (OU) where the computer account will be created. If this parameter is NULL, the well known computer object container will be used as published in the domain.
            ## @return a string
            ## 
            def organizational_unit
                return @organizational_unit
            end
            ## 
            ## Sets the organizationalUnit property value. Organizational unit (OU) where the computer account will be created. If this parameter is NULL, the well known computer object container will be used as published in the domain.
            ## @param value Value to set for the organizational_unit property.
            ## @return a void
            ## 
            def organizational_unit=(value)
                @organizational_unit = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("activeDirectoryDomainName", @active_directory_domain_name)
                writer.write_string_value("computerNameStaticPrefix", @computer_name_static_prefix)
                writer.write_number_value("computerNameSuffixRandomCharCount", @computer_name_suffix_random_char_count)
                writer.write_collection_of_object_values("networkAccessConfigurations", @network_access_configurations)
                writer.write_string_value("organizationalUnit", @organizational_unit)
            end
        end
    end
end
