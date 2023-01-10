require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TiIndicator < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The action to apply if the indicator is matched from within the targetProduct security tool. Possible values are: unknown, allow, block, alert. Required.
        @action
        ## 
        # The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
        @activity_group_names
        ## 
        # A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
        @additional_information
        ## 
        # Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
        @azure_tenant_id
        ## 
        # An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
        @confidence
        ## 
        # Brief description (100 characters or less) of the threat represented by the indicator. Required.
        @description
        ## 
        # The area of the Diamond Model in which this indicator exists. Possible values are: unknown, adversary, capability, infrastructure, victim.
        @diamond_model
        ## 
        # The domainName property
        @domain_name
        ## 
        # The emailEncoding property
        @email_encoding
        ## 
        # The emailLanguage property
        @email_language
        ## 
        # The emailRecipient property
        @email_recipient
        ## 
        # The emailSenderAddress property
        @email_sender_address
        ## 
        # The emailSenderName property
        @email_sender_name
        ## 
        # The emailSourceDomain property
        @email_source_domain
        ## 
        # The emailSourceIpAddress property
        @email_source_ip_address
        ## 
        # The emailSubject property
        @email_subject
        ## 
        # The emailXMailer property
        @email_x_mailer
        ## 
        # DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
        @expiration_date_time
        ## 
        # An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
        @external_id
        ## 
        # The fileCompileDateTime property
        @file_compile_date_time
        ## 
        # The fileCreatedDateTime property
        @file_created_date_time
        ## 
        # The fileHashType property
        @file_hash_type
        ## 
        # The fileHashValue property
        @file_hash_value
        ## 
        # The fileMutexName property
        @file_mutex_name
        ## 
        # The fileName property
        @file_name
        ## 
        # The filePacker property
        @file_packer
        ## 
        # The filePath property
        @file_path
        ## 
        # The fileSize property
        @file_size
        ## 
        # The fileType property
        @file_type
        ## 
        # Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @ingested_date_time
        ## 
        # Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
        @is_active
        ## 
        # A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
        @kill_chain
        ## 
        # Scenarios in which the indicator may cause false positives. This should be human-readable text.
        @known_false_positives
        ## 
        # The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @last_reported_date_time
        ## 
        # The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
        @malware_family_names
        ## 
        # The networkCidrBlock property
        @network_cidr_block
        ## 
        # The networkDestinationAsn property
        @network_destination_asn
        ## 
        # The networkDestinationCidrBlock property
        @network_destination_cidr_block
        ## 
        # The networkDestinationIPv4 property
        @network_destination_i_pv4
        ## 
        # The networkDestinationIPv6 property
        @network_destination_i_pv6
        ## 
        # The networkDestinationPort property
        @network_destination_port
        ## 
        # The networkIPv4 property
        @network_i_pv4
        ## 
        # The networkIPv6 property
        @network_i_pv6
        ## 
        # The networkPort property
        @network_port
        ## 
        # The networkProtocol property
        @network_protocol
        ## 
        # The networkSourceAsn property
        @network_source_asn
        ## 
        # The networkSourceCidrBlock property
        @network_source_cidr_block
        ## 
        # The networkSourceIPv4 property
        @network_source_i_pv4
        ## 
        # The networkSourceIPv6 property
        @network_source_i_pv6
        ## 
        # The networkSourcePort property
        @network_source_port
        ## 
        # Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
        @passive_only
        ## 
        # An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
        @severity
        ## 
        # A JSON array of strings that stores arbitrary tags/keywords.
        @tags
        ## 
        # A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
        @target_product
        ## 
        # Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
        @threat_type
        ## 
        # Traffic Light Protocol value for the indicator. Possible values are: unknown, white, green, amber, red. Required.
        @tlp_level
        ## 
        # The url property
        @url
        ## 
        # The userAgent property
        @user_agent
        ## 
        ## Gets the action property value. The action to apply if the indicator is matched from within the targetProduct security tool. Possible values are: unknown, allow, block, alert. Required.
        ## @return a ti_action
        ## 
        def action
            return @action
        end
        ## 
        ## Sets the action property value. The action to apply if the indicator is matched from within the targetProduct security tool. Possible values are: unknown, allow, block, alert. Required.
        ## @param value Value to set for the action property.
        ## @return a void
        ## 
        def action=(value)
            @action = value
        end
        ## 
        ## Gets the activityGroupNames property value. The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
        ## @return a string
        ## 
        def activity_group_names
            return @activity_group_names
        end
        ## 
        ## Sets the activityGroupNames property value. The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.
        ## @param value Value to set for the activityGroupNames property.
        ## @return a void
        ## 
        def activity_group_names=(value)
            @activity_group_names = value
        end
        ## 
        ## Gets the additionalInformation property value. A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
        ## @return a string
        ## 
        def additional_information
            return @additional_information
        end
        ## 
        ## Sets the additionalInformation property value. A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.
        ## @param value Value to set for the additionalInformation property.
        ## @return a void
        ## 
        def additional_information=(value)
            @additional_information = value
        end
        ## 
        ## Gets the azureTenantId property value. Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
        ## @return a string
        ## 
        def azure_tenant_id
            return @azure_tenant_id
        end
        ## 
        ## Sets the azureTenantId property value. Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. Required.
        ## @param value Value to set for the azureTenantId property.
        ## @return a void
        ## 
        def azure_tenant_id=(value)
            @azure_tenant_id = value
        end
        ## 
        ## Gets the confidence property value. An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
        ## @return a integer
        ## 
        def confidence
            return @confidence
        end
        ## 
        ## Sets the confidence property value. An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.
        ## @param value Value to set for the confidence property.
        ## @return a void
        ## 
        def confidence=(value)
            @confidence = value
        end
        ## 
        ## Instantiates a new tiIndicator and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ti_indicator
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TiIndicator.new
        end
        ## 
        ## Gets the description property value. Brief description (100 characters or less) of the threat represented by the indicator. Required.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Brief description (100 characters or less) of the threat represented by the indicator. Required.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the diamondModel property value. The area of the Diamond Model in which this indicator exists. Possible values are: unknown, adversary, capability, infrastructure, victim.
        ## @return a diamond_model
        ## 
        def diamond_model
            return @diamond_model
        end
        ## 
        ## Sets the diamondModel property value. The area of the Diamond Model in which this indicator exists. Possible values are: unknown, adversary, capability, infrastructure, victim.
        ## @param value Value to set for the diamondModel property.
        ## @return a void
        ## 
        def diamond_model=(value)
            @diamond_model = value
        end
        ## 
        ## Gets the domainName property value. The domainName property
        ## @return a string
        ## 
        def domain_name
            return @domain_name
        end
        ## 
        ## Sets the domainName property value. The domainName property
        ## @param value Value to set for the domainName property.
        ## @return a void
        ## 
        def domain_name=(value)
            @domain_name = value
        end
        ## 
        ## Gets the emailEncoding property value. The emailEncoding property
        ## @return a string
        ## 
        def email_encoding
            return @email_encoding
        end
        ## 
        ## Sets the emailEncoding property value. The emailEncoding property
        ## @param value Value to set for the emailEncoding property.
        ## @return a void
        ## 
        def email_encoding=(value)
            @email_encoding = value
        end
        ## 
        ## Gets the emailLanguage property value. The emailLanguage property
        ## @return a string
        ## 
        def email_language
            return @email_language
        end
        ## 
        ## Sets the emailLanguage property value. The emailLanguage property
        ## @param value Value to set for the emailLanguage property.
        ## @return a void
        ## 
        def email_language=(value)
            @email_language = value
        end
        ## 
        ## Gets the emailRecipient property value. The emailRecipient property
        ## @return a string
        ## 
        def email_recipient
            return @email_recipient
        end
        ## 
        ## Sets the emailRecipient property value. The emailRecipient property
        ## @param value Value to set for the emailRecipient property.
        ## @return a void
        ## 
        def email_recipient=(value)
            @email_recipient = value
        end
        ## 
        ## Gets the emailSenderAddress property value. The emailSenderAddress property
        ## @return a string
        ## 
        def email_sender_address
            return @email_sender_address
        end
        ## 
        ## Sets the emailSenderAddress property value. The emailSenderAddress property
        ## @param value Value to set for the emailSenderAddress property.
        ## @return a void
        ## 
        def email_sender_address=(value)
            @email_sender_address = value
        end
        ## 
        ## Gets the emailSenderName property value. The emailSenderName property
        ## @return a string
        ## 
        def email_sender_name
            return @email_sender_name
        end
        ## 
        ## Sets the emailSenderName property value. The emailSenderName property
        ## @param value Value to set for the emailSenderName property.
        ## @return a void
        ## 
        def email_sender_name=(value)
            @email_sender_name = value
        end
        ## 
        ## Gets the emailSourceDomain property value. The emailSourceDomain property
        ## @return a string
        ## 
        def email_source_domain
            return @email_source_domain
        end
        ## 
        ## Sets the emailSourceDomain property value. The emailSourceDomain property
        ## @param value Value to set for the emailSourceDomain property.
        ## @return a void
        ## 
        def email_source_domain=(value)
            @email_source_domain = value
        end
        ## 
        ## Gets the emailSourceIpAddress property value. The emailSourceIpAddress property
        ## @return a string
        ## 
        def email_source_ip_address
            return @email_source_ip_address
        end
        ## 
        ## Sets the emailSourceIpAddress property value. The emailSourceIpAddress property
        ## @param value Value to set for the emailSourceIpAddress property.
        ## @return a void
        ## 
        def email_source_ip_address=(value)
            @email_source_ip_address = value
        end
        ## 
        ## Gets the emailSubject property value. The emailSubject property
        ## @return a string
        ## 
        def email_subject
            return @email_subject
        end
        ## 
        ## Sets the emailSubject property value. The emailSubject property
        ## @param value Value to set for the emailSubject property.
        ## @return a void
        ## 
        def email_subject=(value)
            @email_subject = value
        end
        ## 
        ## Gets the emailXMailer property value. The emailXMailer property
        ## @return a string
        ## 
        def email_x_mailer
            return @email_x_mailer
        end
        ## 
        ## Sets the emailXMailer property value. The emailXMailer property
        ## @param value Value to set for the emailXMailer property.
        ## @return a void
        ## 
        def email_x_mailer=(value)
            @email_x_mailer = value
        end
        ## 
        ## Gets the expirationDateTime property value. DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
        ## @return a date_time
        ## 
        def expiration_date_time
            return @expiration_date_time
        end
        ## 
        ## Sets the expirationDateTime property value. DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Required.
        ## @param value Value to set for the expirationDateTime property.
        ## @return a void
        ## 
        def expiration_date_time=(value)
            @expiration_date_time = value
        end
        ## 
        ## Gets the externalId property value. An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
        ## @return a string
        ## 
        def external_id
            return @external_id
        end
        ## 
        ## Sets the externalId property value. An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).
        ## @param value Value to set for the externalId property.
        ## @return a void
        ## 
        def external_id=(value)
            @external_id = value
        end
        ## 
        ## Gets the fileCompileDateTime property value. The fileCompileDateTime property
        ## @return a date_time
        ## 
        def file_compile_date_time
            return @file_compile_date_time
        end
        ## 
        ## Sets the fileCompileDateTime property value. The fileCompileDateTime property
        ## @param value Value to set for the fileCompileDateTime property.
        ## @return a void
        ## 
        def file_compile_date_time=(value)
            @file_compile_date_time = value
        end
        ## 
        ## Gets the fileCreatedDateTime property value. The fileCreatedDateTime property
        ## @return a date_time
        ## 
        def file_created_date_time
            return @file_created_date_time
        end
        ## 
        ## Sets the fileCreatedDateTime property value. The fileCreatedDateTime property
        ## @param value Value to set for the fileCreatedDateTime property.
        ## @return a void
        ## 
        def file_created_date_time=(value)
            @file_created_date_time = value
        end
        ## 
        ## Gets the fileHashType property value. The fileHashType property
        ## @return a file_hash_type
        ## 
        def file_hash_type
            return @file_hash_type
        end
        ## 
        ## Sets the fileHashType property value. The fileHashType property
        ## @param value Value to set for the fileHashType property.
        ## @return a void
        ## 
        def file_hash_type=(value)
            @file_hash_type = value
        end
        ## 
        ## Gets the fileHashValue property value. The fileHashValue property
        ## @return a string
        ## 
        def file_hash_value
            return @file_hash_value
        end
        ## 
        ## Sets the fileHashValue property value. The fileHashValue property
        ## @param value Value to set for the fileHashValue property.
        ## @return a void
        ## 
        def file_hash_value=(value)
            @file_hash_value = value
        end
        ## 
        ## Gets the fileMutexName property value. The fileMutexName property
        ## @return a string
        ## 
        def file_mutex_name
            return @file_mutex_name
        end
        ## 
        ## Sets the fileMutexName property value. The fileMutexName property
        ## @param value Value to set for the fileMutexName property.
        ## @return a void
        ## 
        def file_mutex_name=(value)
            @file_mutex_name = value
        end
        ## 
        ## Gets the fileName property value. The fileName property
        ## @return a string
        ## 
        def file_name
            return @file_name
        end
        ## 
        ## Sets the fileName property value. The fileName property
        ## @param value Value to set for the fileName property.
        ## @return a void
        ## 
        def file_name=(value)
            @file_name = value
        end
        ## 
        ## Gets the filePacker property value. The filePacker property
        ## @return a string
        ## 
        def file_packer
            return @file_packer
        end
        ## 
        ## Sets the filePacker property value. The filePacker property
        ## @param value Value to set for the filePacker property.
        ## @return a void
        ## 
        def file_packer=(value)
            @file_packer = value
        end
        ## 
        ## Gets the filePath property value. The filePath property
        ## @return a string
        ## 
        def file_path
            return @file_path
        end
        ## 
        ## Sets the filePath property value. The filePath property
        ## @param value Value to set for the filePath property.
        ## @return a void
        ## 
        def file_path=(value)
            @file_path = value
        end
        ## 
        ## Gets the fileSize property value. The fileSize property
        ## @return a int64
        ## 
        def file_size
            return @file_size
        end
        ## 
        ## Sets the fileSize property value. The fileSize property
        ## @param value Value to set for the fileSize property.
        ## @return a void
        ## 
        def file_size=(value)
            @file_size = value
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
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::TiAction) },
                "activityGroupNames" => lambda {|n| @activity_group_names = n.get_collection_of_primitive_values(String) },
                "additionalInformation" => lambda {|n| @additional_information = n.get_string_value() },
                "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                "confidence" => lambda {|n| @confidence = n.get_number_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "diamondModel" => lambda {|n| @diamond_model = n.get_enum_value(MicrosoftGraphBeta::Models::DiamondModel) },
                "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                "emailEncoding" => lambda {|n| @email_encoding = n.get_string_value() },
                "emailLanguage" => lambda {|n| @email_language = n.get_string_value() },
                "emailRecipient" => lambda {|n| @email_recipient = n.get_string_value() },
                "emailSenderAddress" => lambda {|n| @email_sender_address = n.get_string_value() },
                "emailSenderName" => lambda {|n| @email_sender_name = n.get_string_value() },
                "emailSourceDomain" => lambda {|n| @email_source_domain = n.get_string_value() },
                "emailSourceIpAddress" => lambda {|n| @email_source_ip_address = n.get_string_value() },
                "emailSubject" => lambda {|n| @email_subject = n.get_string_value() },
                "emailXMailer" => lambda {|n| @email_x_mailer = n.get_string_value() },
                "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                "externalId" => lambda {|n| @external_id = n.get_string_value() },
                "fileCompileDateTime" => lambda {|n| @file_compile_date_time = n.get_date_time_value() },
                "fileCreatedDateTime" => lambda {|n| @file_created_date_time = n.get_date_time_value() },
                "fileHashType" => lambda {|n| @file_hash_type = n.get_enum_value(MicrosoftGraphBeta::Models::FileHashType) },
                "fileHashValue" => lambda {|n| @file_hash_value = n.get_string_value() },
                "fileMutexName" => lambda {|n| @file_mutex_name = n.get_string_value() },
                "fileName" => lambda {|n| @file_name = n.get_string_value() },
                "filePacker" => lambda {|n| @file_packer = n.get_string_value() },
                "filePath" => lambda {|n| @file_path = n.get_string_value() },
                "fileSize" => lambda {|n| @file_size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "fileType" => lambda {|n| @file_type = n.get_string_value() },
                "ingestedDateTime" => lambda {|n| @ingested_date_time = n.get_date_time_value() },
                "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                "killChain" => lambda {|n| @kill_chain = n.get_collection_of_primitive_values(String) },
                "knownFalsePositives" => lambda {|n| @known_false_positives = n.get_string_value() },
                "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                "malwareFamilyNames" => lambda {|n| @malware_family_names = n.get_collection_of_primitive_values(String) },
                "networkCidrBlock" => lambda {|n| @network_cidr_block = n.get_string_value() },
                "networkDestinationAsn" => lambda {|n| @network_destination_asn = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "networkDestinationCidrBlock" => lambda {|n| @network_destination_cidr_block = n.get_string_value() },
                "networkDestinationIPv4" => lambda {|n| @network_destination_i_pv4 = n.get_string_value() },
                "networkDestinationIPv6" => lambda {|n| @network_destination_i_pv6 = n.get_string_value() },
                "networkDestinationPort" => lambda {|n| @network_destination_port = n.get_number_value() },
                "networkIPv4" => lambda {|n| @network_i_pv4 = n.get_string_value() },
                "networkIPv6" => lambda {|n| @network_i_pv6 = n.get_string_value() },
                "networkPort" => lambda {|n| @network_port = n.get_number_value() },
                "networkProtocol" => lambda {|n| @network_protocol = n.get_number_value() },
                "networkSourceAsn" => lambda {|n| @network_source_asn = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "networkSourceCidrBlock" => lambda {|n| @network_source_cidr_block = n.get_string_value() },
                "networkSourceIPv4" => lambda {|n| @network_source_i_pv4 = n.get_string_value() },
                "networkSourceIPv6" => lambda {|n| @network_source_i_pv6 = n.get_string_value() },
                "networkSourcePort" => lambda {|n| @network_source_port = n.get_number_value() },
                "passiveOnly" => lambda {|n| @passive_only = n.get_boolean_value() },
                "severity" => lambda {|n| @severity = n.get_number_value() },
                "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                "targetProduct" => lambda {|n| @target_product = n.get_string_value() },
                "threatType" => lambda {|n| @threat_type = n.get_string_value() },
                "tlpLevel" => lambda {|n| @tlp_level = n.get_enum_value(MicrosoftGraphBeta::Models::TlpLevel) },
                "url" => lambda {|n| @url = n.get_string_value() },
                "userAgent" => lambda {|n| @user_agent = n.get_string_value() },
            })
        end
        ## 
        ## Gets the ingestedDateTime property value. Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def ingested_date_time
            return @ingested_date_time
        end
        ## 
        ## Sets the ingestedDateTime property value. Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the ingestedDateTime property.
        ## @return a void
        ## 
        def ingested_date_time=(value)
            @ingested_date_time = value
        end
        ## 
        ## Gets the isActive property value. Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
        ## @return a boolean
        ## 
        def is_active
            return @is_active
        end
        ## 
        ## Sets the isActive property value. Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.
        ## @param value Value to set for the isActive property.
        ## @return a void
        ## 
        def is_active=(value)
            @is_active = value
        end
        ## 
        ## Gets the killChain property value. A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
        ## @return a string
        ## 
        def kill_chain
            return @kill_chain
        end
        ## 
        ## Sets the killChain property value. A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values.
        ## @param value Value to set for the killChain property.
        ## @return a void
        ## 
        def kill_chain=(value)
            @kill_chain = value
        end
        ## 
        ## Gets the knownFalsePositives property value. Scenarios in which the indicator may cause false positives. This should be human-readable text.
        ## @return a string
        ## 
        def known_false_positives
            return @known_false_positives
        end
        ## 
        ## Sets the knownFalsePositives property value. Scenarios in which the indicator may cause false positives. This should be human-readable text.
        ## @param value Value to set for the knownFalsePositives property.
        ## @return a void
        ## 
        def known_false_positives=(value)
            @known_false_positives = value
        end
        ## 
        ## Gets the lastReportedDateTime property value. The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def last_reported_date_time
            return @last_reported_date_time
        end
        ## 
        ## Sets the lastReportedDateTime property value. The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the lastReportedDateTime property.
        ## @return a void
        ## 
        def last_reported_date_time=(value)
            @last_reported_date_time = value
        end
        ## 
        ## Gets the malwareFamilyNames property value. The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
        ## @return a string
        ## 
        def malware_family_names
            return @malware_family_names
        end
        ## 
        ## Sets the malwareFamilyNames property value. The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence threat encyclopedia.
        ## @param value Value to set for the malwareFamilyNames property.
        ## @return a void
        ## 
        def malware_family_names=(value)
            @malware_family_names = value
        end
        ## 
        ## Gets the networkCidrBlock property value. The networkCidrBlock property
        ## @return a string
        ## 
        def network_cidr_block
            return @network_cidr_block
        end
        ## 
        ## Sets the networkCidrBlock property value. The networkCidrBlock property
        ## @param value Value to set for the networkCidrBlock property.
        ## @return a void
        ## 
        def network_cidr_block=(value)
            @network_cidr_block = value
        end
        ## 
        ## Gets the networkDestinationAsn property value. The networkDestinationAsn property
        ## @return a int64
        ## 
        def network_destination_asn
            return @network_destination_asn
        end
        ## 
        ## Sets the networkDestinationAsn property value. The networkDestinationAsn property
        ## @param value Value to set for the networkDestinationAsn property.
        ## @return a void
        ## 
        def network_destination_asn=(value)
            @network_destination_asn = value
        end
        ## 
        ## Gets the networkDestinationCidrBlock property value. The networkDestinationCidrBlock property
        ## @return a string
        ## 
        def network_destination_cidr_block
            return @network_destination_cidr_block
        end
        ## 
        ## Sets the networkDestinationCidrBlock property value. The networkDestinationCidrBlock property
        ## @param value Value to set for the networkDestinationCidrBlock property.
        ## @return a void
        ## 
        def network_destination_cidr_block=(value)
            @network_destination_cidr_block = value
        end
        ## 
        ## Gets the networkDestinationIPv4 property value. The networkDestinationIPv4 property
        ## @return a string
        ## 
        def network_destination_i_pv4
            return @network_destination_i_pv4
        end
        ## 
        ## Sets the networkDestinationIPv4 property value. The networkDestinationIPv4 property
        ## @param value Value to set for the networkDestinationIPv4 property.
        ## @return a void
        ## 
        def network_destination_i_pv4=(value)
            @network_destination_i_pv4 = value
        end
        ## 
        ## Gets the networkDestinationIPv6 property value. The networkDestinationIPv6 property
        ## @return a string
        ## 
        def network_destination_i_pv6
            return @network_destination_i_pv6
        end
        ## 
        ## Sets the networkDestinationIPv6 property value. The networkDestinationIPv6 property
        ## @param value Value to set for the networkDestinationIPv6 property.
        ## @return a void
        ## 
        def network_destination_i_pv6=(value)
            @network_destination_i_pv6 = value
        end
        ## 
        ## Gets the networkDestinationPort property value. The networkDestinationPort property
        ## @return a integer
        ## 
        def network_destination_port
            return @network_destination_port
        end
        ## 
        ## Sets the networkDestinationPort property value. The networkDestinationPort property
        ## @param value Value to set for the networkDestinationPort property.
        ## @return a void
        ## 
        def network_destination_port=(value)
            @network_destination_port = value
        end
        ## 
        ## Gets the networkIPv4 property value. The networkIPv4 property
        ## @return a string
        ## 
        def network_i_pv4
            return @network_i_pv4
        end
        ## 
        ## Sets the networkIPv4 property value. The networkIPv4 property
        ## @param value Value to set for the networkIPv4 property.
        ## @return a void
        ## 
        def network_i_pv4=(value)
            @network_i_pv4 = value
        end
        ## 
        ## Gets the networkIPv6 property value. The networkIPv6 property
        ## @return a string
        ## 
        def network_i_pv6
            return @network_i_pv6
        end
        ## 
        ## Sets the networkIPv6 property value. The networkIPv6 property
        ## @param value Value to set for the networkIPv6 property.
        ## @return a void
        ## 
        def network_i_pv6=(value)
            @network_i_pv6 = value
        end
        ## 
        ## Gets the networkPort property value. The networkPort property
        ## @return a integer
        ## 
        def network_port
            return @network_port
        end
        ## 
        ## Sets the networkPort property value. The networkPort property
        ## @param value Value to set for the networkPort property.
        ## @return a void
        ## 
        def network_port=(value)
            @network_port = value
        end
        ## 
        ## Gets the networkProtocol property value. The networkProtocol property
        ## @return a integer
        ## 
        def network_protocol
            return @network_protocol
        end
        ## 
        ## Sets the networkProtocol property value. The networkProtocol property
        ## @param value Value to set for the networkProtocol property.
        ## @return a void
        ## 
        def network_protocol=(value)
            @network_protocol = value
        end
        ## 
        ## Gets the networkSourceAsn property value. The networkSourceAsn property
        ## @return a int64
        ## 
        def network_source_asn
            return @network_source_asn
        end
        ## 
        ## Sets the networkSourceAsn property value. The networkSourceAsn property
        ## @param value Value to set for the networkSourceAsn property.
        ## @return a void
        ## 
        def network_source_asn=(value)
            @network_source_asn = value
        end
        ## 
        ## Gets the networkSourceCidrBlock property value. The networkSourceCidrBlock property
        ## @return a string
        ## 
        def network_source_cidr_block
            return @network_source_cidr_block
        end
        ## 
        ## Sets the networkSourceCidrBlock property value. The networkSourceCidrBlock property
        ## @param value Value to set for the networkSourceCidrBlock property.
        ## @return a void
        ## 
        def network_source_cidr_block=(value)
            @network_source_cidr_block = value
        end
        ## 
        ## Gets the networkSourceIPv4 property value. The networkSourceIPv4 property
        ## @return a string
        ## 
        def network_source_i_pv4
            return @network_source_i_pv4
        end
        ## 
        ## Sets the networkSourceIPv4 property value. The networkSourceIPv4 property
        ## @param value Value to set for the networkSourceIPv4 property.
        ## @return a void
        ## 
        def network_source_i_pv4=(value)
            @network_source_i_pv4 = value
        end
        ## 
        ## Gets the networkSourceIPv6 property value. The networkSourceIPv6 property
        ## @return a string
        ## 
        def network_source_i_pv6
            return @network_source_i_pv6
        end
        ## 
        ## Sets the networkSourceIPv6 property value. The networkSourceIPv6 property
        ## @param value Value to set for the networkSourceIPv6 property.
        ## @return a void
        ## 
        def network_source_i_pv6=(value)
            @network_source_i_pv6 = value
        end
        ## 
        ## Gets the networkSourcePort property value. The networkSourcePort property
        ## @return a integer
        ## 
        def network_source_port
            return @network_source_port
        end
        ## 
        ## Sets the networkSourcePort property value. The networkSourcePort property
        ## @param value Value to set for the networkSourcePort property.
        ## @return a void
        ## 
        def network_source_port=(value)
            @network_source_port = value
        end
        ## 
        ## Gets the passiveOnly property value. Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
        ## @return a boolean
        ## 
        def passive_only
            return @passive_only
        end
        ## 
        ## Sets the passiveOnly property value. Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.
        ## @param value Value to set for the passiveOnly property.
        ## @return a void
        ## 
        def passive_only=(value)
            @passive_only = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("action", @action)
            writer.write_collection_of_primitive_values("activityGroupNames", @activity_group_names)
            writer.write_string_value("additionalInformation", @additional_information)
            writer.write_string_value("azureTenantId", @azure_tenant_id)
            writer.write_number_value("confidence", @confidence)
            writer.write_string_value("description", @description)
            writer.write_enum_value("diamondModel", @diamond_model)
            writer.write_string_value("domainName", @domain_name)
            writer.write_string_value("emailEncoding", @email_encoding)
            writer.write_string_value("emailLanguage", @email_language)
            writer.write_string_value("emailRecipient", @email_recipient)
            writer.write_string_value("emailSenderAddress", @email_sender_address)
            writer.write_string_value("emailSenderName", @email_sender_name)
            writer.write_string_value("emailSourceDomain", @email_source_domain)
            writer.write_string_value("emailSourceIpAddress", @email_source_ip_address)
            writer.write_string_value("emailSubject", @email_subject)
            writer.write_string_value("emailXMailer", @email_x_mailer)
            writer.write_date_time_value("expirationDateTime", @expiration_date_time)
            writer.write_string_value("externalId", @external_id)
            writer.write_date_time_value("fileCompileDateTime", @file_compile_date_time)
            writer.write_date_time_value("fileCreatedDateTime", @file_created_date_time)
            writer.write_enum_value("fileHashType", @file_hash_type)
            writer.write_string_value("fileHashValue", @file_hash_value)
            writer.write_string_value("fileMutexName", @file_mutex_name)
            writer.write_string_value("fileName", @file_name)
            writer.write_string_value("filePacker", @file_packer)
            writer.write_string_value("filePath", @file_path)
            writer.write_object_value("fileSize", @file_size)
            writer.write_string_value("fileType", @file_type)
            writer.write_date_time_value("ingestedDateTime", @ingested_date_time)
            writer.write_boolean_value("isActive", @is_active)
            writer.write_collection_of_primitive_values("killChain", @kill_chain)
            writer.write_string_value("knownFalsePositives", @known_false_positives)
            writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
            writer.write_collection_of_primitive_values("malwareFamilyNames", @malware_family_names)
            writer.write_string_value("networkCidrBlock", @network_cidr_block)
            writer.write_object_value("networkDestinationAsn", @network_destination_asn)
            writer.write_string_value("networkDestinationCidrBlock", @network_destination_cidr_block)
            writer.write_string_value("networkDestinationIPv4", @network_destination_i_pv4)
            writer.write_string_value("networkDestinationIPv6", @network_destination_i_pv6)
            writer.write_number_value("networkDestinationPort", @network_destination_port)
            writer.write_string_value("networkIPv4", @network_i_pv4)
            writer.write_string_value("networkIPv6", @network_i_pv6)
            writer.write_number_value("networkPort", @network_port)
            writer.write_number_value("networkProtocol", @network_protocol)
            writer.write_object_value("networkSourceAsn", @network_source_asn)
            writer.write_string_value("networkSourceCidrBlock", @network_source_cidr_block)
            writer.write_string_value("networkSourceIPv4", @network_source_i_pv4)
            writer.write_string_value("networkSourceIPv6", @network_source_i_pv6)
            writer.write_number_value("networkSourcePort", @network_source_port)
            writer.write_boolean_value("passiveOnly", @passive_only)
            writer.write_number_value("severity", @severity)
            writer.write_collection_of_primitive_values("tags", @tags)
            writer.write_string_value("targetProduct", @target_product)
            writer.write_string_value("threatType", @threat_type)
            writer.write_enum_value("tlpLevel", @tlp_level)
            writer.write_string_value("url", @url)
            writer.write_string_value("userAgent", @user_agent)
        end
        ## 
        ## Gets the severity property value. An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
        ## @return a integer
        ## 
        def severity
            return @severity
        end
        ## 
        ## Sets the severity property value. An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.
        ## @param value Value to set for the severity property.
        ## @return a void
        ## 
        def severity=(value)
            @severity = value
        end
        ## 
        ## Gets the tags property value. A JSON array of strings that stores arbitrary tags/keywords.
        ## @return a string
        ## 
        def tags
            return @tags
        end
        ## 
        ## Sets the tags property value. A JSON array of strings that stores arbitrary tags/keywords.
        ## @param value Value to set for the tags property.
        ## @return a void
        ## 
        def tags=(value)
            @tags = value
        end
        ## 
        ## Gets the targetProduct property value. A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
        ## @return a string
        ## 
        def target_product
            return @target_product
        end
        ## 
        ## Sets the targetProduct property value. A string value representing a single security product to which the indicator should be applied. Acceptable values are: Azure Sentinel, Microsoft Defender ATP. Required
        ## @param value Value to set for the targetProduct property.
        ## @return a void
        ## 
        def target_product=(value)
            @target_product = value
        end
        ## 
        ## Gets the threatType property value. Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
        ## @return a string
        ## 
        def threat_type
            return @threat_type
        end
        ## 
        ## Sets the threatType property value. Each indicator must have a valid Indicator Threat Type. Possible values are: Botnet, C2, CryptoMining, Darknet, DDoS, MaliciousUrl, Malware, Phishing, Proxy, PUA, WatchList. Required.
        ## @param value Value to set for the threatType property.
        ## @return a void
        ## 
        def threat_type=(value)
            @threat_type = value
        end
        ## 
        ## Gets the tlpLevel property value. Traffic Light Protocol value for the indicator. Possible values are: unknown, white, green, amber, red. Required.
        ## @return a tlp_level
        ## 
        def tlp_level
            return @tlp_level
        end
        ## 
        ## Sets the tlpLevel property value. Traffic Light Protocol value for the indicator. Possible values are: unknown, white, green, amber, red. Required.
        ## @param value Value to set for the tlpLevel property.
        ## @return a void
        ## 
        def tlp_level=(value)
            @tlp_level = value
        end
        ## 
        ## Gets the url property value. The url property
        ## @return a string
        ## 
        def url
            return @url
        end
        ## 
        ## Sets the url property value. The url property
        ## @param value Value to set for the url property.
        ## @return a void
        ## 
        def url=(value)
            @url = value
        end
        ## 
        ## Gets the userAgent property value. The userAgent property
        ## @return a string
        ## 
        def user_agent
            return @user_agent
        end
        ## 
        ## Sets the userAgent property value. The userAgent property
        ## @param value Value to set for the userAgent property.
        ## @return a void
        ## 
        def user_agent=(value)
            @user_agent = value
        end
    end
end
