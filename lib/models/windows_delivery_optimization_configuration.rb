require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsDeliveryOptimizationConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies number of seconds to delay an HTTP source in a background download that is allowed to use peer-to-peer. Valid values 0 to 4294967295
            @background_download_from_http_delay_in_seconds
            ## 
            # Specifies foreground and background bandwidth usage using percentages, absolutes, or hours.
            @bandwidth_mode
            ## 
            # Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a background download. Valid values 0 to 2592000.
            @cache_server_background_download_fallback_to_http_delay_in_seconds
            ## 
            # Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a foreground download. Valid values 0 to 2592000.​
            @cache_server_foreground_download_fallback_to_http_delay_in_seconds
            ## 
            # Specifies cache servers host names.
            @cache_server_host_names
            ## 
            # Delivery optimization mode for peer distribution
            @delivery_optimization_mode
            ## 
            # Specifies number of seconds to delay an HTTP source in a foreground download that is allowed to use peer-to-peer (0-86400). Valid values 0 to 86400
            @foreground_download_from_http_delay_in_seconds
            ## 
            # Specifies to restrict peer selection to a specfic source.
            @group_id_source
            ## 
            # Specifies the maximum time in days that each file is held in the Delivery Optimization cache after downloading successfully (0-3650). Valid values 0 to 3650
            @maximum_cache_age_in_days
            ## 
            # Specifies the maximum cache size that Delivery Optimization either as a percentage or in GB.
            @maximum_cache_size
            ## 
            # Specifies the minimum battery percentage to allow the device to upload data (0-100). Valid values 0 to 100
            @minimum_battery_percentage_allowed_to_upload
            ## 
            # Specifies the minimum disk size in GB to use Peer Caching (1-100000). Valid values 1 to 100000
            @minimum_disk_size_allowed_to_peer_in_gigabytes
            ## 
            # Specifies the minimum content file size in MB enabled to use Peer Caching (1-100000). Valid values 1 to 100000
            @minimum_file_size_to_cache_in_megabytes
            ## 
            # Specifies the minimum RAM size in GB to use Peer Caching (1-100000). Valid values 1 to 100000
            @minimum_ram_allowed_to_peer_in_gigabytes
            ## 
            # Specifies the drive that Delivery Optimization should use for its cache.
            @modify_cache_location
            ## 
            # Values to restrict peer selection by.
            @restrict_peer_selection_by
            ## 
            # Possible values of a property
            @vpn_peer_caching
            ## 
            ## Gets the backgroundDownloadFromHttpDelayInSeconds property value. Specifies number of seconds to delay an HTTP source in a background download that is allowed to use peer-to-peer. Valid values 0 to 4294967295
            ## @return a int64
            ## 
            def background_download_from_http_delay_in_seconds
                return @background_download_from_http_delay_in_seconds
            end
            ## 
            ## Sets the backgroundDownloadFromHttpDelayInSeconds property value. Specifies number of seconds to delay an HTTP source in a background download that is allowed to use peer-to-peer. Valid values 0 to 4294967295
            ## @param value Value to set for the background_download_from_http_delay_in_seconds property.
            ## @return a void
            ## 
            def background_download_from_http_delay_in_seconds=(value)
                @background_download_from_http_delay_in_seconds = value
            end
            ## 
            ## Gets the bandwidthMode property value. Specifies foreground and background bandwidth usage using percentages, absolutes, or hours.
            ## @return a delivery_optimization_bandwidth
            ## 
            def bandwidth_mode
                return @bandwidth_mode
            end
            ## 
            ## Sets the bandwidthMode property value. Specifies foreground and background bandwidth usage using percentages, absolutes, or hours.
            ## @param value Value to set for the bandwidth_mode property.
            ## @return a void
            ## 
            def bandwidth_mode=(value)
                @bandwidth_mode = value
            end
            ## 
            ## Gets the cacheServerBackgroundDownloadFallbackToHttpDelayInSeconds property value. Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a background download. Valid values 0 to 2592000.
            ## @return a integer
            ## 
            def cache_server_background_download_fallback_to_http_delay_in_seconds
                return @cache_server_background_download_fallback_to_http_delay_in_seconds
            end
            ## 
            ## Sets the cacheServerBackgroundDownloadFallbackToHttpDelayInSeconds property value. Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a background download. Valid values 0 to 2592000.
            ## @param value Value to set for the cache_server_background_download_fallback_to_http_delay_in_seconds property.
            ## @return a void
            ## 
            def cache_server_background_download_fallback_to_http_delay_in_seconds=(value)
                @cache_server_background_download_fallback_to_http_delay_in_seconds = value
            end
            ## 
            ## Gets the cacheServerForegroundDownloadFallbackToHttpDelayInSeconds property value. Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a foreground download. Valid values 0 to 2592000.​
            ## @return a integer
            ## 
            def cache_server_foreground_download_fallback_to_http_delay_in_seconds
                return @cache_server_foreground_download_fallback_to_http_delay_in_seconds
            end
            ## 
            ## Sets the cacheServerForegroundDownloadFallbackToHttpDelayInSeconds property value. Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a foreground download. Valid values 0 to 2592000.​
            ## @param value Value to set for the cache_server_foreground_download_fallback_to_http_delay_in_seconds property.
            ## @return a void
            ## 
            def cache_server_foreground_download_fallback_to_http_delay_in_seconds=(value)
                @cache_server_foreground_download_fallback_to_http_delay_in_seconds = value
            end
            ## 
            ## Gets the cacheServerHostNames property value. Specifies cache servers host names.
            ## @return a string
            ## 
            def cache_server_host_names
                return @cache_server_host_names
            end
            ## 
            ## Sets the cacheServerHostNames property value. Specifies cache servers host names.
            ## @param value Value to set for the cache_server_host_names property.
            ## @return a void
            ## 
            def cache_server_host_names=(value)
                @cache_server_host_names = value
            end
            ## 
            ## Instantiates a new WindowsDeliveryOptimizationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsDeliveryOptimizationConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_delivery_optimization_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDeliveryOptimizationConfiguration.new
            end
            ## 
            ## Gets the deliveryOptimizationMode property value. Delivery optimization mode for peer distribution
            ## @return a windows_delivery_optimization_mode
            ## 
            def delivery_optimization_mode
                return @delivery_optimization_mode
            end
            ## 
            ## Sets the deliveryOptimizationMode property value. Delivery optimization mode for peer distribution
            ## @param value Value to set for the delivery_optimization_mode property.
            ## @return a void
            ## 
            def delivery_optimization_mode=(value)
                @delivery_optimization_mode = value
            end
            ## 
            ## Gets the foregroundDownloadFromHttpDelayInSeconds property value. Specifies number of seconds to delay an HTTP source in a foreground download that is allowed to use peer-to-peer (0-86400). Valid values 0 to 86400
            ## @return a int64
            ## 
            def foreground_download_from_http_delay_in_seconds
                return @foreground_download_from_http_delay_in_seconds
            end
            ## 
            ## Sets the foregroundDownloadFromHttpDelayInSeconds property value. Specifies number of seconds to delay an HTTP source in a foreground download that is allowed to use peer-to-peer (0-86400). Valid values 0 to 86400
            ## @param value Value to set for the foreground_download_from_http_delay_in_seconds property.
            ## @return a void
            ## 
            def foreground_download_from_http_delay_in_seconds=(value)
                @foreground_download_from_http_delay_in_seconds = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "backgroundDownloadFromHttpDelayInSeconds" => lambda {|n| @background_download_from_http_delay_in_seconds = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "bandwidthMode" => lambda {|n| @bandwidth_mode = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeliveryOptimizationBandwidth.create_from_discriminator_value(pn) }) },
                    "cacheServerBackgroundDownloadFallbackToHttpDelayInSeconds" => lambda {|n| @cache_server_background_download_fallback_to_http_delay_in_seconds = n.get_number_value() },
                    "cacheServerForegroundDownloadFallbackToHttpDelayInSeconds" => lambda {|n| @cache_server_foreground_download_fallback_to_http_delay_in_seconds = n.get_number_value() },
                    "cacheServerHostNames" => lambda {|n| @cache_server_host_names = n.get_collection_of_primitive_values(String) },
                    "deliveryOptimizationMode" => lambda {|n| @delivery_optimization_mode = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsDeliveryOptimizationMode) },
                    "foregroundDownloadFromHttpDelayInSeconds" => lambda {|n| @foreground_download_from_http_delay_in_seconds = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "groupIdSource" => lambda {|n| @group_id_source = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeliveryOptimizationGroupIdSource.create_from_discriminator_value(pn) }) },
                    "maximumCacheAgeInDays" => lambda {|n| @maximum_cache_age_in_days = n.get_number_value() },
                    "maximumCacheSize" => lambda {|n| @maximum_cache_size = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeliveryOptimizationMaxCacheSize.create_from_discriminator_value(pn) }) },
                    "minimumBatteryPercentageAllowedToUpload" => lambda {|n| @minimum_battery_percentage_allowed_to_upload = n.get_number_value() },
                    "minimumDiskSizeAllowedToPeerInGigabytes" => lambda {|n| @minimum_disk_size_allowed_to_peer_in_gigabytes = n.get_number_value() },
                    "minimumFileSizeToCacheInMegabytes" => lambda {|n| @minimum_file_size_to_cache_in_megabytes = n.get_number_value() },
                    "minimumRamAllowedToPeerInGigabytes" => lambda {|n| @minimum_ram_allowed_to_peer_in_gigabytes = n.get_number_value() },
                    "modifyCacheLocation" => lambda {|n| @modify_cache_location = n.get_string_value() },
                    "restrictPeerSelectionBy" => lambda {|n| @restrict_peer_selection_by = n.get_enum_value(MicrosoftGraphBeta::Models::DeliveryOptimizationRestrictPeerSelectionByOptions) },
                    "vpnPeerCaching" => lambda {|n| @vpn_peer_caching = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                })
            end
            ## 
            ## Gets the groupIdSource property value. Specifies to restrict peer selection to a specfic source.
            ## @return a delivery_optimization_group_id_source
            ## 
            def group_id_source
                return @group_id_source
            end
            ## 
            ## Sets the groupIdSource property value. Specifies to restrict peer selection to a specfic source.
            ## @param value Value to set for the group_id_source property.
            ## @return a void
            ## 
            def group_id_source=(value)
                @group_id_source = value
            end
            ## 
            ## Gets the maximumCacheAgeInDays property value. Specifies the maximum time in days that each file is held in the Delivery Optimization cache after downloading successfully (0-3650). Valid values 0 to 3650
            ## @return a integer
            ## 
            def maximum_cache_age_in_days
                return @maximum_cache_age_in_days
            end
            ## 
            ## Sets the maximumCacheAgeInDays property value. Specifies the maximum time in days that each file is held in the Delivery Optimization cache after downloading successfully (0-3650). Valid values 0 to 3650
            ## @param value Value to set for the maximum_cache_age_in_days property.
            ## @return a void
            ## 
            def maximum_cache_age_in_days=(value)
                @maximum_cache_age_in_days = value
            end
            ## 
            ## Gets the maximumCacheSize property value. Specifies the maximum cache size that Delivery Optimization either as a percentage or in GB.
            ## @return a delivery_optimization_max_cache_size
            ## 
            def maximum_cache_size
                return @maximum_cache_size
            end
            ## 
            ## Sets the maximumCacheSize property value. Specifies the maximum cache size that Delivery Optimization either as a percentage or in GB.
            ## @param value Value to set for the maximum_cache_size property.
            ## @return a void
            ## 
            def maximum_cache_size=(value)
                @maximum_cache_size = value
            end
            ## 
            ## Gets the minimumBatteryPercentageAllowedToUpload property value. Specifies the minimum battery percentage to allow the device to upload data (0-100). Valid values 0 to 100
            ## @return a integer
            ## 
            def minimum_battery_percentage_allowed_to_upload
                return @minimum_battery_percentage_allowed_to_upload
            end
            ## 
            ## Sets the minimumBatteryPercentageAllowedToUpload property value. Specifies the minimum battery percentage to allow the device to upload data (0-100). Valid values 0 to 100
            ## @param value Value to set for the minimum_battery_percentage_allowed_to_upload property.
            ## @return a void
            ## 
            def minimum_battery_percentage_allowed_to_upload=(value)
                @minimum_battery_percentage_allowed_to_upload = value
            end
            ## 
            ## Gets the minimumDiskSizeAllowedToPeerInGigabytes property value. Specifies the minimum disk size in GB to use Peer Caching (1-100000). Valid values 1 to 100000
            ## @return a integer
            ## 
            def minimum_disk_size_allowed_to_peer_in_gigabytes
                return @minimum_disk_size_allowed_to_peer_in_gigabytes
            end
            ## 
            ## Sets the minimumDiskSizeAllowedToPeerInGigabytes property value. Specifies the minimum disk size in GB to use Peer Caching (1-100000). Valid values 1 to 100000
            ## @param value Value to set for the minimum_disk_size_allowed_to_peer_in_gigabytes property.
            ## @return a void
            ## 
            def minimum_disk_size_allowed_to_peer_in_gigabytes=(value)
                @minimum_disk_size_allowed_to_peer_in_gigabytes = value
            end
            ## 
            ## Gets the minimumFileSizeToCacheInMegabytes property value. Specifies the minimum content file size in MB enabled to use Peer Caching (1-100000). Valid values 1 to 100000
            ## @return a integer
            ## 
            def minimum_file_size_to_cache_in_megabytes
                return @minimum_file_size_to_cache_in_megabytes
            end
            ## 
            ## Sets the minimumFileSizeToCacheInMegabytes property value. Specifies the minimum content file size in MB enabled to use Peer Caching (1-100000). Valid values 1 to 100000
            ## @param value Value to set for the minimum_file_size_to_cache_in_megabytes property.
            ## @return a void
            ## 
            def minimum_file_size_to_cache_in_megabytes=(value)
                @minimum_file_size_to_cache_in_megabytes = value
            end
            ## 
            ## Gets the minimumRamAllowedToPeerInGigabytes property value. Specifies the minimum RAM size in GB to use Peer Caching (1-100000). Valid values 1 to 100000
            ## @return a integer
            ## 
            def minimum_ram_allowed_to_peer_in_gigabytes
                return @minimum_ram_allowed_to_peer_in_gigabytes
            end
            ## 
            ## Sets the minimumRamAllowedToPeerInGigabytes property value. Specifies the minimum RAM size in GB to use Peer Caching (1-100000). Valid values 1 to 100000
            ## @param value Value to set for the minimum_ram_allowed_to_peer_in_gigabytes property.
            ## @return a void
            ## 
            def minimum_ram_allowed_to_peer_in_gigabytes=(value)
                @minimum_ram_allowed_to_peer_in_gigabytes = value
            end
            ## 
            ## Gets the modifyCacheLocation property value. Specifies the drive that Delivery Optimization should use for its cache.
            ## @return a string
            ## 
            def modify_cache_location
                return @modify_cache_location
            end
            ## 
            ## Sets the modifyCacheLocation property value. Specifies the drive that Delivery Optimization should use for its cache.
            ## @param value Value to set for the modify_cache_location property.
            ## @return a void
            ## 
            def modify_cache_location=(value)
                @modify_cache_location = value
            end
            ## 
            ## Gets the restrictPeerSelectionBy property value. Values to restrict peer selection by.
            ## @return a delivery_optimization_restrict_peer_selection_by_options
            ## 
            def restrict_peer_selection_by
                return @restrict_peer_selection_by
            end
            ## 
            ## Sets the restrictPeerSelectionBy property value. Values to restrict peer selection by.
            ## @param value Value to set for the restrict_peer_selection_by property.
            ## @return a void
            ## 
            def restrict_peer_selection_by=(value)
                @restrict_peer_selection_by = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("backgroundDownloadFromHttpDelayInSeconds", @background_download_from_http_delay_in_seconds)
                writer.write_object_value("bandwidthMode", @bandwidth_mode)
                writer.write_number_value("cacheServerBackgroundDownloadFallbackToHttpDelayInSeconds", @cache_server_background_download_fallback_to_http_delay_in_seconds)
                writer.write_number_value("cacheServerForegroundDownloadFallbackToHttpDelayInSeconds", @cache_server_foreground_download_fallback_to_http_delay_in_seconds)
                writer.write_collection_of_primitive_values("cacheServerHostNames", @cache_server_host_names)
                writer.write_enum_value("deliveryOptimizationMode", @delivery_optimization_mode)
                writer.write_object_value("foregroundDownloadFromHttpDelayInSeconds", @foreground_download_from_http_delay_in_seconds)
                writer.write_object_value("groupIdSource", @group_id_source)
                writer.write_number_value("maximumCacheAgeInDays", @maximum_cache_age_in_days)
                writer.write_object_value("maximumCacheSize", @maximum_cache_size)
                writer.write_number_value("minimumBatteryPercentageAllowedToUpload", @minimum_battery_percentage_allowed_to_upload)
                writer.write_number_value("minimumDiskSizeAllowedToPeerInGigabytes", @minimum_disk_size_allowed_to_peer_in_gigabytes)
                writer.write_number_value("minimumFileSizeToCacheInMegabytes", @minimum_file_size_to_cache_in_megabytes)
                writer.write_number_value("minimumRamAllowedToPeerInGigabytes", @minimum_ram_allowed_to_peer_in_gigabytes)
                writer.write_string_value("modifyCacheLocation", @modify_cache_location)
                writer.write_enum_value("restrictPeerSelectionBy", @restrict_peer_selection_by)
                writer.write_enum_value("vpnPeerCaching", @vpn_peer_caching)
            end
            ## 
            ## Gets the vpnPeerCaching property value. Possible values of a property
            ## @return a enablement
            ## 
            def vpn_peer_caching
                return @vpn_peer_caching
            end
            ## 
            ## Sets the vpnPeerCaching property value. Possible values of a property
            ## @param value Value to set for the vpn_peer_caching property.
            ## @return a void
            ## 
            def vpn_peer_caching=(value)
                @vpn_peer_caching = value
            end
        end
    end
end
