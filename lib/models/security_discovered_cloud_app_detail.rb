require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityDiscoveredCloudAppDetail < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The application information.
            @app_info
            ## 
            # The category property
            @category
            ## 
            # The description property
            @description
            ## 
            # The app name.
            @display_name
            ## 
            # The domain.
            @domains
            ## 
            # The download traffic size.
            @download_network_traffic_in_bytes
            ## 
            # The firstSeenDateTime property
            @first_seen_date_time
            ## 
            # The IP address.
            @ip_address_count
            ## 
            # The list of IP addresses accessed by the app.
            @ip_addresses
            ## 
            # The last seen date of the discovered app. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # The risk score of the app.
            @risk_score
            ## 
            # The tags applied to an app. Possible values include Unsanctioned, Sanctioned, Monitored, or a custom value.
            @tags
            ## 
            # The app transaction count.
            @transaction_count
            ## 
            # The app upload traffic size, in bytes.
            @upload_network_traffic_in_bytes
            ## 
            # The count of users who use the app.
            @user_count
            ## 
            # The list of users who access the app.
            @users
            ## 
            ## Gets the appInfo property value. The application information.
            ## @return a security_discovered_cloud_app_info
            ## 
            def app_info
                return @app_info
            end
            ## 
            ## Sets the appInfo property value. The application information.
            ## @param value Value to set for the appInfo property.
            ## @return a void
            ## 
            def app_info=(value)
                @app_info = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a security_app_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new SecurityDiscoveredCloudAppDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_discovered_cloud_app_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.endpointDiscoveredCloudAppDetail"
                            return SecurityEndpointDiscoveredCloudAppDetail.new
                    end
                end
                return SecurityDiscoveredCloudAppDetail.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The app name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The app name.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the domains property value. The domain.
            ## @return a string
            ## 
            def domains
                return @domains
            end
            ## 
            ## Sets the domains property value. The domain.
            ## @param value Value to set for the domains property.
            ## @return a void
            ## 
            def domains=(value)
                @domains = value
            end
            ## 
            ## Gets the downloadNetworkTrafficInBytes property value. The download traffic size.
            ## @return a int64
            ## 
            def download_network_traffic_in_bytes
                return @download_network_traffic_in_bytes
            end
            ## 
            ## Sets the downloadNetworkTrafficInBytes property value. The download traffic size.
            ## @param value Value to set for the downloadNetworkTrafficInBytes property.
            ## @return a void
            ## 
            def download_network_traffic_in_bytes=(value)
                @download_network_traffic_in_bytes = value
            end
            ## 
            ## Gets the firstSeenDateTime property value. The firstSeenDateTime property
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The firstSeenDateTime property
            ## @param value Value to set for the firstSeenDateTime property.
            ## @return a void
            ## 
            def first_seen_date_time=(value)
                @first_seen_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appInfo" => lambda {|n| @app_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDiscoveredCloudAppInfo.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppCategory) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "domains" => lambda {|n| @domains = n.get_collection_of_primitive_values(String) },
                    "downloadNetworkTrafficInBytes" => lambda {|n| @download_network_traffic_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "ipAddressCount" => lambda {|n| @ip_address_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "ipAddresses" => lambda {|n| @ip_addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDiscoveredCloudAppIPAddress.create_from_discriminator_value(pn) }) },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "transactionCount" => lambda {|n| @transaction_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "uploadNetworkTrafficInBytes" => lambda {|n| @upload_network_traffic_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "userCount" => lambda {|n| @user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "users" => lambda {|n| @users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDiscoveredCloudAppUser.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the ipAddressCount property value. The IP address.
            ## @return a int64
            ## 
            def ip_address_count
                return @ip_address_count
            end
            ## 
            ## Sets the ipAddressCount property value. The IP address.
            ## @param value Value to set for the ipAddressCount property.
            ## @return a void
            ## 
            def ip_address_count=(value)
                @ip_address_count = value
            end
            ## 
            ## Gets the ipAddresses property value. The list of IP addresses accessed by the app.
            ## @return a security_discovered_cloud_app_i_p_address
            ## 
            def ip_addresses
                return @ip_addresses
            end
            ## 
            ## Sets the ipAddresses property value. The list of IP addresses accessed by the app.
            ## @param value Value to set for the ipAddresses property.
            ## @return a void
            ## 
            def ip_addresses=(value)
                @ip_addresses = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The last seen date of the discovered app. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The last seen date of the discovered app. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the riskScore property value. The risk score of the app.
            ## @return a int64
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. The risk score of the app.
            ## @param value Value to set for the riskScore property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appInfo", @app_info)
                writer.write_enum_value("category", @category)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_primitive_values("domains", @domains)
                writer.write_object_value("downloadNetworkTrafficInBytes", @download_network_traffic_in_bytes)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_object_value("ipAddressCount", @ip_address_count)
                writer.write_collection_of_object_values("ipAddresses", @ip_addresses)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_object_value("riskScore", @risk_score)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_object_value("transactionCount", @transaction_count)
                writer.write_object_value("uploadNetworkTrafficInBytes", @upload_network_traffic_in_bytes)
                writer.write_object_value("userCount", @user_count)
                writer.write_collection_of_object_values("users", @users)
            end
            ## 
            ## Gets the tags property value. The tags applied to an app. Possible values include Unsanctioned, Sanctioned, Monitored, or a custom value.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The tags applied to an app. Possible values include Unsanctioned, Sanctioned, Monitored, or a custom value.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the transactionCount property value. The app transaction count.
            ## @return a int64
            ## 
            def transaction_count
                return @transaction_count
            end
            ## 
            ## Sets the transactionCount property value. The app transaction count.
            ## @param value Value to set for the transactionCount property.
            ## @return a void
            ## 
            def transaction_count=(value)
                @transaction_count = value
            end
            ## 
            ## Gets the uploadNetworkTrafficInBytes property value. The app upload traffic size, in bytes.
            ## @return a int64
            ## 
            def upload_network_traffic_in_bytes
                return @upload_network_traffic_in_bytes
            end
            ## 
            ## Sets the uploadNetworkTrafficInBytes property value. The app upload traffic size, in bytes.
            ## @param value Value to set for the uploadNetworkTrafficInBytes property.
            ## @return a void
            ## 
            def upload_network_traffic_in_bytes=(value)
                @upload_network_traffic_in_bytes = value
            end
            ## 
            ## Gets the userCount property value. The count of users who use the app.
            ## @return a int64
            ## 
            def user_count
                return @user_count
            end
            ## 
            ## Sets the userCount property value. The count of users who use the app.
            ## @param value Value to set for the userCount property.
            ## @return a void
            ## 
            def user_count=(value)
                @user_count = value
            end
            ## 
            ## Gets the users property value. The list of users who access the app.
            ## @return a security_discovered_cloud_app_user
            ## 
            def users
                return @users
            end
            ## 
            ## Sets the users property value. The list of users who access the app.
            ## @param value Value to set for the users property.
            ## @return a void
            ## 
            def users=(value)
                @users = value
            end
        end
    end
end
