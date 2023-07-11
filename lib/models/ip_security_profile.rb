require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IpSecurityProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activityGroupNames property
            @activity_group_names
            ## 
            # The address property
            @address
            ## 
            # The azureSubscriptionId property
            @azure_subscription_id
            ## 
            # The azureTenantId property
            @azure_tenant_id
            ## 
            # The countHits property
            @count_hits
            ## 
            # The countHosts property
            @count_hosts
            ## 
            # The firstSeenDateTime property
            @first_seen_date_time
            ## 
            # The ipCategories property
            @ip_categories
            ## 
            # The ipReferenceData property
            @ip_reference_data
            ## 
            # The lastSeenDateTime property
            @last_seen_date_time
            ## 
            # The riskScore property
            @risk_score
            ## 
            # The tags property
            @tags
            ## 
            # The vendorInformation property
            @vendor_information
            ## 
            ## Gets the activityGroupNames property value. The activityGroupNames property
            ## @return a string
            ## 
            def activity_group_names
                return @activity_group_names
            end
            ## 
            ## Sets the activityGroupNames property value. The activityGroupNames property
            ## @param value Value to set for the activity_group_names property.
            ## @return a void
            ## 
            def activity_group_names=(value)
                @activity_group_names = value
            end
            ## 
            ## Gets the address property value. The address property
            ## @return a string
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The address property
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the azureSubscriptionId property value. The azureSubscriptionId property
            ## @return a string
            ## 
            def azure_subscription_id
                return @azure_subscription_id
            end
            ## 
            ## Sets the azureSubscriptionId property value. The azureSubscriptionId property
            ## @param value Value to set for the azure_subscription_id property.
            ## @return a void
            ## 
            def azure_subscription_id=(value)
                @azure_subscription_id = value
            end
            ## 
            ## Gets the azureTenantId property value. The azureTenantId property
            ## @return a string
            ## 
            def azure_tenant_id
                return @azure_tenant_id
            end
            ## 
            ## Sets the azureTenantId property value. The azureTenantId property
            ## @param value Value to set for the azure_tenant_id property.
            ## @return a void
            ## 
            def azure_tenant_id=(value)
                @azure_tenant_id = value
            end
            ## 
            ## Instantiates a new ipSecurityProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the countHits property value. The countHits property
            ## @return a integer
            ## 
            def count_hits
                return @count_hits
            end
            ## 
            ## Sets the countHits property value. The countHits property
            ## @param value Value to set for the count_hits property.
            ## @return a void
            ## 
            def count_hits=(value)
                @count_hits = value
            end
            ## 
            ## Gets the countHosts property value. The countHosts property
            ## @return a integer
            ## 
            def count_hosts
                return @count_hosts
            end
            ## 
            ## Sets the countHosts property value. The countHosts property
            ## @param value Value to set for the count_hosts property.
            ## @return a void
            ## 
            def count_hosts=(value)
                @count_hosts = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ip_security_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IpSecurityProfile.new
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
            ## @param value Value to set for the first_seen_date_time property.
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
                    "activityGroupNames" => lambda {|n| @activity_group_names = n.get_collection_of_primitive_values(String) },
                    "address" => lambda {|n| @address = n.get_string_value() },
                    "azureSubscriptionId" => lambda {|n| @azure_subscription_id = n.get_string_value() },
                    "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                    "countHits" => lambda {|n| @count_hits = n.get_number_value() },
                    "countHosts" => lambda {|n| @count_hosts = n.get_number_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "ipCategories" => lambda {|n| @ip_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpCategory.create_from_discriminator_value(pn) }) },
                    "ipReferenceData" => lambda {|n| @ip_reference_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpReferenceData.create_from_discriminator_value(pn) }) },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the ipCategories property value. The ipCategories property
            ## @return a ip_category
            ## 
            def ip_categories
                return @ip_categories
            end
            ## 
            ## Sets the ipCategories property value. The ipCategories property
            ## @param value Value to set for the ip_categories property.
            ## @return a void
            ## 
            def ip_categories=(value)
                @ip_categories = value
            end
            ## 
            ## Gets the ipReferenceData property value. The ipReferenceData property
            ## @return a ip_reference_data
            ## 
            def ip_reference_data
                return @ip_reference_data
            end
            ## 
            ## Sets the ipReferenceData property value. The ipReferenceData property
            ## @param value Value to set for the ip_reference_data property.
            ## @return a void
            ## 
            def ip_reference_data=(value)
                @ip_reference_data = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The lastSeenDateTime property
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The lastSeenDateTime property
            ## @param value Value to set for the last_seen_date_time property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the riskScore property value. The riskScore property
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. The riskScore property
            ## @param value Value to set for the risk_score property.
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
                writer.write_collection_of_primitive_values("activityGroupNames", @activity_group_names)
                writer.write_string_value("address", @address)
                writer.write_string_value("azureSubscriptionId", @azure_subscription_id)
                writer.write_string_value("azureTenantId", @azure_tenant_id)
                writer.write_number_value("countHits", @count_hits)
                writer.write_number_value("countHosts", @count_hosts)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_collection_of_object_values("ipCategories", @ip_categories)
                writer.write_collection_of_object_values("ipReferenceData", @ip_reference_data)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_string_value("riskScore", @risk_score)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_object_value("vendorInformation", @vendor_information)
            end
            ## 
            ## Gets the tags property value. The tags property
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The tags property
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the vendorInformation property value. The vendorInformation property
            ## @return a security_vendor_information
            ## 
            def vendor_information
                return @vendor_information
            end
            ## 
            ## Sets the vendorInformation property value. The vendorInformation property
            ## @param value Value to set for the vendor_information property.
            ## @return a void
            ## 
            def vendor_information=(value)
                @vendor_information = value
            end
        end
    end
end
