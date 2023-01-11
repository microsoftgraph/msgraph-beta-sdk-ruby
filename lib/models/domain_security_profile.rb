require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DomainSecurityProfile < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The activityGroupNames property
        @activity_group_names
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
        # The countInOrg property
        @count_in_org
        ## 
        # The domainCategories property
        @domain_categories
        ## 
        # The domainRegisteredDateTime property
        @domain_registered_date_time
        ## 
        # The firstSeenDateTime property
        @first_seen_date_time
        ## 
        # The lastSeenDateTime property
        @last_seen_date_time
        ## 
        # The name property
        @name
        ## 
        # The registrant property
        @registrant
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
        ## @param value Value to set for the activityGroupNames property.
        ## @return a void
        ## 
        def activity_group_names=(value)
            @activity_group_names = value
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
        ## @param value Value to set for the azureSubscriptionId property.
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
        ## @param value Value to set for the azureTenantId property.
        ## @return a void
        ## 
        def azure_tenant_id=(value)
            @azure_tenant_id = value
        end
        ## 
        ## Instantiates a new domainSecurityProfile and sets the default values.
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
        ## @param value Value to set for the countHits property.
        ## @return a void
        ## 
        def count_hits=(value)
            @count_hits = value
        end
        ## 
        ## Gets the countInOrg property value. The countInOrg property
        ## @return a integer
        ## 
        def count_in_org
            return @count_in_org
        end
        ## 
        ## Sets the countInOrg property value. The countInOrg property
        ## @param value Value to set for the countInOrg property.
        ## @return a void
        ## 
        def count_in_org=(value)
            @count_in_org = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a domain_security_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DomainSecurityProfile.new
        end
        ## 
        ## Gets the domainCategories property value. The domainCategories property
        ## @return a reputation_category
        ## 
        def domain_categories
            return @domain_categories
        end
        ## 
        ## Sets the domainCategories property value. The domainCategories property
        ## @param value Value to set for the domainCategories property.
        ## @return a void
        ## 
        def domain_categories=(value)
            @domain_categories = value
        end
        ## 
        ## Gets the domainRegisteredDateTime property value. The domainRegisteredDateTime property
        ## @return a date_time
        ## 
        def domain_registered_date_time
            return @domain_registered_date_time
        end
        ## 
        ## Sets the domainRegisteredDateTime property value. The domainRegisteredDateTime property
        ## @param value Value to set for the domainRegisteredDateTime property.
        ## @return a void
        ## 
        def domain_registered_date_time=(value)
            @domain_registered_date_time = value
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
                "activityGroupNames" => lambda {|n| @activity_group_names = n.get_collection_of_primitive_values(String) },
                "azureSubscriptionId" => lambda {|n| @azure_subscription_id = n.get_string_value() },
                "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                "countHits" => lambda {|n| @count_hits = n.get_number_value() },
                "countInOrg" => lambda {|n| @count_in_org = n.get_number_value() },
                "domainCategories" => lambda {|n| @domain_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ReputationCategory.create_from_discriminator_value(pn) }) },
                "domainRegisteredDateTime" => lambda {|n| @domain_registered_date_time = n.get_date_time_value() },
                "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "registrant" => lambda {|n| @registrant = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DomainRegistrant.create_from_discriminator_value(pn) }) },
                "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
            })
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
        ## @param value Value to set for the lastSeenDateTime property.
        ## @return a void
        ## 
        def last_seen_date_time=(value)
            @last_seen_date_time = value
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
        ## Gets the registrant property value. The registrant property
        ## @return a domain_registrant
        ## 
        def registrant
            return @registrant
        end
        ## 
        ## Sets the registrant property value. The registrant property
        ## @param value Value to set for the registrant property.
        ## @return a void
        ## 
        def registrant=(value)
            @registrant = value
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
            writer.write_collection_of_primitive_values("activityGroupNames", @activity_group_names)
            writer.write_string_value("azureSubscriptionId", @azure_subscription_id)
            writer.write_string_value("azureTenantId", @azure_tenant_id)
            writer.write_number_value("countHits", @count_hits)
            writer.write_number_value("countInOrg", @count_in_org)
            writer.write_collection_of_object_values("domainCategories", @domain_categories)
            writer.write_date_time_value("domainRegisteredDateTime", @domain_registered_date_time)
            writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
            writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
            writer.write_string_value("name", @name)
            writer.write_object_value("registrant", @registrant)
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
        ## @param value Value to set for the vendorInformation property.
        ## @return a void
        ## 
        def vendor_information=(value)
            @vendor_information = value
        end
    end
end
