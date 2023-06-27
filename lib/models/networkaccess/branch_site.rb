require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class BranchSite < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The bandwidthCapacity property
                @bandwidth_capacity
                ## 
                # The connectivityState property
                @connectivity_state
                ## 
                # The country property
                @country
                ## 
                # The deviceLinks property
                @device_links
                ## 
                # The forwardingProfiles property
                @forwarding_profiles
                ## 
                # The lastModifiedDateTime property
                @last_modified_date_time
                ## 
                # The name property
                @name
                ## 
                # The region property
                @region
                ## 
                # The version property
                @version
                ## 
                ## Gets the bandwidthCapacity property value. The bandwidthCapacity property
                ## @return a int64
                ## 
                def bandwidth_capacity
                    return @bandwidth_capacity
                end
                ## 
                ## Sets the bandwidthCapacity property value. The bandwidthCapacity property
                ## @param value Value to set for the bandwidth_capacity property.
                ## @return a void
                ## 
                def bandwidth_capacity=(value)
                    @bandwidth_capacity = value
                end
                ## 
                ## Gets the connectivityState property value. The connectivityState property
                ## @return a connectivity_state
                ## 
                def connectivity_state
                    return @connectivity_state
                end
                ## 
                ## Sets the connectivityState property value. The connectivityState property
                ## @param value Value to set for the connectivity_state property.
                ## @return a void
                ## 
                def connectivity_state=(value)
                    @connectivity_state = value
                end
                ## 
                ## Instantiates a new branchSite and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the country property value. The country property
                ## @return a string
                ## 
                def country
                    return @country
                end
                ## 
                ## Sets the country property value. The country property
                ## @param value Value to set for the country property.
                ## @return a void
                ## 
                def country=(value)
                    @country = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a branch_site
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return BranchSite.new
                end
                ## 
                ## Gets the deviceLinks property value. The deviceLinks property
                ## @return a device_link
                ## 
                def device_links
                    return @device_links
                end
                ## 
                ## Sets the deviceLinks property value. The deviceLinks property
                ## @param value Value to set for the device_links property.
                ## @return a void
                ## 
                def device_links=(value)
                    @device_links = value
                end
                ## 
                ## Gets the forwardingProfiles property value. The forwardingProfiles property
                ## @return a forwarding_profile
                ## 
                def forwarding_profiles
                    return @forwarding_profiles
                end
                ## 
                ## Sets the forwardingProfiles property value. The forwardingProfiles property
                ## @param value Value to set for the forwarding_profiles property.
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
                        "bandwidthCapacity" => lambda {|n| @bandwidth_capacity = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "connectivityState" => lambda {|n| @connectivity_state = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::ConnectivityState) },
                        "country" => lambda {|n| @country = n.get_string_value() },
                        "deviceLinks" => lambda {|n| @device_links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::DeviceLink.create_from_discriminator_value(pn) }) },
                        "forwardingProfiles" => lambda {|n| @forwarding_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::ForwardingProfile.create_from_discriminator_value(pn) }) },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "region" => lambda {|n| @region = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::Region) },
                        "version" => lambda {|n| @version = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
                ## @param value Value to set for the last_modified_date_time property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the region property value. The region property
                ## @return a region
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
                    writer.write_object_value("bandwidthCapacity", @bandwidth_capacity)
                    writer.write_enum_value("connectivityState", @connectivity_state)
                    writer.write_string_value("country", @country)
                    writer.write_collection_of_object_values("deviceLinks", @device_links)
                    writer.write_collection_of_object_values("forwardingProfiles", @forwarding_profiles)
                    writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                    writer.write_string_value("name", @name)
                    writer.write_enum_value("region", @region)
                    writer.write_string_value("version", @version)
                end
                ## 
                ## Gets the version property value. The version property
                ## @return a string
                ## 
                def version
                    return @version
                end
                ## 
                ## Sets the version property value. The version property
                ## @param value Value to set for the version property.
                ## @return a void
                ## 
                def version=(value)
                    @version = value
                end
            end
        end
    end
end
