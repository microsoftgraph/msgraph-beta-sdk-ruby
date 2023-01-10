require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class FileSecurityProfile < MicrosoftGraphBeta::Models::Entity
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
        # The certificateThumbprint property
        @certificate_thumbprint
        ## 
        # The extensions property
        @extensions
        ## 
        # The fileType property
        @file_type
        ## 
        # The firstSeenDateTime property
        @first_seen_date_time
        ## 
        # The hashes property
        @hashes
        ## 
        # The lastSeenDateTime property
        @last_seen_date_time
        ## 
        # The malwareStates property
        @malware_states
        ## 
        # The names property
        @names
        ## 
        # The riskScore property
        @risk_score
        ## 
        # The size property
        @size
        ## 
        # The tags property
        @tags
        ## 
        # The vendorInformation property
        @vendor_information
        ## 
        # The vulnerabilityStates property
        @vulnerability_states
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
        ## Gets the certificateThumbprint property value. The certificateThumbprint property
        ## @return a string
        ## 
        def certificate_thumbprint
            return @certificate_thumbprint
        end
        ## 
        ## Sets the certificateThumbprint property value. The certificateThumbprint property
        ## @param value Value to set for the certificateThumbprint property.
        ## @return a void
        ## 
        def certificate_thumbprint=(value)
            @certificate_thumbprint = value
        end
        ## 
        ## Instantiates a new fileSecurityProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a file_security_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return FileSecurityProfile.new
        end
        ## 
        ## Gets the extensions property value. The extensions property
        ## @return a string
        ## 
        def extensions
            return @extensions
        end
        ## 
        ## Sets the extensions property value. The extensions property
        ## @param value Value to set for the extensions property.
        ## @return a void
        ## 
        def extensions=(value)
            @extensions = value
        end
        ## 
        ## Gets the fileType property value. The fileType property
        ## @return a string
        ## 
        def file_type
            return @file_type
        end
        ## 
        ## Sets the fileType property value. The fileType property
        ## @param value Value to set for the fileType property.
        ## @return a void
        ## 
        def file_type=(value)
            @file_type = value
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
                "certificateThumbprint" => lambda {|n| @certificate_thumbprint = n.get_string_value() },
                "extensions" => lambda {|n| @extensions = n.get_collection_of_primitive_values(String) },
                "fileType" => lambda {|n| @file_type = n.get_string_value() },
                "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                "hashes" => lambda {|n| @hashes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::FileHash.create_from_discriminator_value(pn) }) },
                "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                "malwareStates" => lambda {|n| @malware_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MalwareState.create_from_discriminator_value(pn) }) },
                "names" => lambda {|n| @names = n.get_collection_of_primitive_values(String) },
                "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
                "vulnerabilityStates" => lambda {|n| @vulnerability_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VulnerabilityState.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the hashes property value. The hashes property
        ## @return a file_hash
        ## 
        def hashes
            return @hashes
        end
        ## 
        ## Sets the hashes property value. The hashes property
        ## @param value Value to set for the hashes property.
        ## @return a void
        ## 
        def hashes=(value)
            @hashes = value
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
        ## Gets the malwareStates property value. The malwareStates property
        ## @return a malware_state
        ## 
        def malware_states
            return @malware_states
        end
        ## 
        ## Sets the malwareStates property value. The malwareStates property
        ## @param value Value to set for the malwareStates property.
        ## @return a void
        ## 
        def malware_states=(value)
            @malware_states = value
        end
        ## 
        ## Gets the names property value. The names property
        ## @return a string
        ## 
        def names
            return @names
        end
        ## 
        ## Sets the names property value. The names property
        ## @param value Value to set for the names property.
        ## @return a void
        ## 
        def names=(value)
            @names = value
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
            writer.write_string_value("certificateThumbprint", @certificate_thumbprint)
            writer.write_collection_of_primitive_values("extensions", @extensions)
            writer.write_string_value("fileType", @file_type)
            writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
            writer.write_collection_of_object_values("hashes", @hashes)
            writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
            writer.write_collection_of_object_values("malwareStates", @malware_states)
            writer.write_collection_of_primitive_values("names", @names)
            writer.write_string_value("riskScore", @risk_score)
            writer.write_object_value("size", @size)
            writer.write_collection_of_primitive_values("tags", @tags)
            writer.write_object_value("vendorInformation", @vendor_information)
            writer.write_collection_of_object_values("vulnerabilityStates", @vulnerability_states)
        end
        ## 
        ## Gets the size property value. The size property
        ## @return a int64
        ## 
        def size
            return @size
        end
        ## 
        ## Sets the size property value. The size property
        ## @param value Value to set for the size property.
        ## @return a void
        ## 
        def size=(value)
            @size = value
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
        ## 
        ## Gets the vulnerabilityStates property value. The vulnerabilityStates property
        ## @return a vulnerability_state
        ## 
        def vulnerability_states
            return @vulnerability_states
        end
        ## 
        ## Sets the vulnerabilityStates property value. The vulnerabilityStates property
        ## @param value Value to set for the vulnerabilityStates property.
        ## @return a void
        ## 
        def vulnerability_states=(value)
            @vulnerability_states = value
        end
    end
end
