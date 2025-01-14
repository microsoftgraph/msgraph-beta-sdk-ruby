require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRemoteNetwork < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the connectivity details of all device links associated with a remote network.
            @connectivity_configuration
            ## 
            # Each unique CPE device associated with a remote network is specified. Supports $expand.
            @device_links
            ## 
            # Each forwarding profile associated with a remote network is specified. Supports $expand and $select.
            @forwarding_profiles
            ## 
            # last modified time.
            @last_modified_date_time
            ## 
            # Name.
            @name
            ## 
            # The region property
            @region
            ## 
            # Remote network version.
            @version
            ## 
            ## Gets the connectivityConfiguration property value. Specifies the connectivity details of all device links associated with a remote network.
            ## @return a networkaccess_remote_network_connectivity_configuration
            ## 
            def connectivity_configuration
                return @connectivity_configuration
            end
            ## 
            ## Sets the connectivityConfiguration property value. Specifies the connectivity details of all device links associated with a remote network.
            ## @param value Value to set for the connectivityConfiguration property.
            ## @return a void
            ## 
            def connectivity_configuration=(value)
                @connectivity_configuration = value
            end
            ## 
            ## Instantiates a new NetworkaccessRemoteNetwork and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_remote_network
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRemoteNetwork.new
            end
            ## 
            ## Gets the deviceLinks property value. Each unique CPE device associated with a remote network is specified. Supports $expand.
            ## @return a networkaccess_device_link
            ## 
            def device_links
                return @device_links
            end
            ## 
            ## Sets the deviceLinks property value. Each unique CPE device associated with a remote network is specified. Supports $expand.
            ## @param value Value to set for the deviceLinks property.
            ## @return a void
            ## 
            def device_links=(value)
                @device_links = value
            end
            ## 
            ## Gets the forwardingProfiles property value. Each forwarding profile associated with a remote network is specified. Supports $expand and $select.
            ## @return a networkaccess_forwarding_profile
            ## 
            def forwarding_profiles
                return @forwarding_profiles
            end
            ## 
            ## Sets the forwardingProfiles property value. Each forwarding profile associated with a remote network is specified. Supports $expand and $select.
            ## @param value Value to set for the forwardingProfiles property.
            ## @return a void
            ## 
            def forwarding_profiles=(value)
                @forwarding_profiles = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectivityConfiguration" => lambda {|n| @connectivity_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessRemoteNetworkConnectivityConfiguration.create_from_discriminator_value(pn) }) },
                    "deviceLinks" => lambda {|n| @device_links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessDeviceLink.create_from_discriminator_value(pn) }) },
                    "forwardingProfiles" => lambda {|n| @forwarding_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessForwardingProfile.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "region" => lambda {|n| @region = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessRegion) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. last modified time.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. last modified time.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the name property value. Name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the region property value. The region property
            ## @return a networkaccess_region
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. The region property
            ## @param value Value to set for the region property.
            ## @return a void
            ## 
            def region=(value)
                @region = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("connectivityConfiguration", @connectivity_configuration)
                writer.write_collection_of_object_values("deviceLinks", @device_links)
                writer.write_collection_of_object_values("forwardingProfiles", @forwarding_profiles)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("name", @name)
                writer.write_enum_value("region", @region)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. Remote network version.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Remote network version.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
