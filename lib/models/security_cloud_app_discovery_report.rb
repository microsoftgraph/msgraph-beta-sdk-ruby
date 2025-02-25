require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityCloudAppDiscoveryReport < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Use 1 if the machine information is anonymized; otherwise use 0.
            @anonymize_machine_data
            ## 
            # Use 1 if the user information is anonymized; otherwise use 0.
            @anonymize_user_data
            ## 
            # The date in the format specified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # A comment or description for the report.
            @description
            ## 
            # The display name of the continuous report.
            @display_name
            ## 
            # Use 1 for a snapshot report; otherwise use 0.
            @is_snapshot_report
            ## 
            # The date when the data was last received. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_data_received_date_time
            ## 
            # The date when the continuous report was last modified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The applicable log data provider. Possible values are: barracuda, bluecoat, checkpoint, ciscoAsa, ciscoIronportProxy, fortigate, paloAlto, squid, zscaler, mcafeeSwg, ciscoScanSafe, juniperSrx, sophosSg, websenseV75, websenseSiemCef, machineZoneMeraki, squidNative, ciscoFwsm, microsoftIsaW3C, sonicwall, sophosCyberoam, clavister, customParser, juniperSsg, zscalerQradar, juniperSrxSd, juniperSrxWelf, microsoftConditionalAppAccess, ciscoAsaFirepower, genericCef, genericLeef, genericW3C, iFilter, checkpointXml, checkpointSmartViewTracker, barracudaNextGenFw, barracudaNextGenFwWeblog, microsoftDefenderForEndpoint, zscalerCef, sophosXg, iboss, forcepoint, fortios, ciscoIronportWsaIi, paloAltoLeef, forcepointLeef, stormshield, contentkeeper, ciscoIronportWsaIii, checkpointCef, corrata, ciscoFirepowerV6, menloSecurityCef, watchguardXtm, openSystemsSecureWebGateway, wandera, unknownFutureValue.
            @log_data_provider
            ## 
            # The count of log files history.
            @log_file_count
            ## 
            # The applicable receiver protocol. Possible values are: ftp, ftps, syslogUdp, syslogTcp, syslogTls, unknownFutureValue.
            @receiver_protocol
            ## 
            # The supported entity type. Possible values are: userName, ipAddress, machineName, other, unknown, unknownFutureValue.
            @supported_entity_types
            ## 
            # The supported traffic type. Possible values are: downloadedBytes, uploadedBytes, unknown, unknownFutureValue.
            @supported_traffic_types
            ## 
            ## Gets the anonymizeMachineData property value. Use 1 if the machine information is anonymized; otherwise use 0.
            ## @return a boolean
            ## 
            def anonymize_machine_data
                return @anonymize_machine_data
            end
            ## 
            ## Sets the anonymizeMachineData property value. Use 1 if the machine information is anonymized; otherwise use 0.
            ## @param value Value to set for the anonymizeMachineData property.
            ## @return a void
            ## 
            def anonymize_machine_data=(value)
                @anonymize_machine_data = value
            end
            ## 
            ## Gets the anonymizeUserData property value. Use 1 if the user information is anonymized; otherwise use 0.
            ## @return a boolean
            ## 
            def anonymize_user_data
                return @anonymize_user_data
            end
            ## 
            ## Sets the anonymizeUserData property value. Use 1 if the user information is anonymized; otherwise use 0.
            ## @param value Value to set for the anonymizeUserData property.
            ## @return a void
            ## 
            def anonymize_user_data=(value)
                @anonymize_user_data = value
            end
            ## 
            ## Instantiates a new SecurityCloudAppDiscoveryReport and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date in the format specified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date in the format specified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_cloud_app_discovery_report
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityCloudAppDiscoveryReport.new
            end
            ## 
            ## Gets the description property value. A comment or description for the report.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A comment or description for the report.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the continuous report.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the continuous report.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "anonymizeMachineData" => lambda {|n| @anonymize_machine_data = n.get_boolean_value() },
                    "anonymizeUserData" => lambda {|n| @anonymize_user_data = n.get_boolean_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isSnapshotReport" => lambda {|n| @is_snapshot_report = n.get_boolean_value() },
                    "lastDataReceivedDateTime" => lambda {|n| @last_data_received_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "logDataProvider" => lambda {|n| @log_data_provider = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityLogDataProvider) },
                    "logFileCount" => lambda {|n| @log_file_count = n.get_number_value() },
                    "receiverProtocol" => lambda {|n| @receiver_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityReceiverProtocol) },
                    "supportedEntityTypes" => lambda {|n| @supported_entity_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityEntityType.create_from_discriminator_value(pn) }) },
                    "supportedTrafficTypes" => lambda {|n| @supported_traffic_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityTrafficType.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isSnapshotReport property value. Use 1 for a snapshot report; otherwise use 0.
            ## @return a boolean
            ## 
            def is_snapshot_report
                return @is_snapshot_report
            end
            ## 
            ## Sets the isSnapshotReport property value. Use 1 for a snapshot report; otherwise use 0.
            ## @param value Value to set for the isSnapshotReport property.
            ## @return a void
            ## 
            def is_snapshot_report=(value)
                @is_snapshot_report = value
            end
            ## 
            ## Gets the lastDataReceivedDateTime property value. The date when the data was last received. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_data_received_date_time
                return @last_data_received_date_time
            end
            ## 
            ## Sets the lastDataReceivedDateTime property value. The date when the data was last received. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastDataReceivedDateTime property.
            ## @return a void
            ## 
            def last_data_received_date_time=(value)
                @last_data_received_date_time = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date when the continuous report was last modified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date when the continuous report was last modified. The Timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the logDataProvider property value. The applicable log data provider. Possible values are: barracuda, bluecoat, checkpoint, ciscoAsa, ciscoIronportProxy, fortigate, paloAlto, squid, zscaler, mcafeeSwg, ciscoScanSafe, juniperSrx, sophosSg, websenseV75, websenseSiemCef, machineZoneMeraki, squidNative, ciscoFwsm, microsoftIsaW3C, sonicwall, sophosCyberoam, clavister, customParser, juniperSsg, zscalerQradar, juniperSrxSd, juniperSrxWelf, microsoftConditionalAppAccess, ciscoAsaFirepower, genericCef, genericLeef, genericW3C, iFilter, checkpointXml, checkpointSmartViewTracker, barracudaNextGenFw, barracudaNextGenFwWeblog, microsoftDefenderForEndpoint, zscalerCef, sophosXg, iboss, forcepoint, fortios, ciscoIronportWsaIi, paloAltoLeef, forcepointLeef, stormshield, contentkeeper, ciscoIronportWsaIii, checkpointCef, corrata, ciscoFirepowerV6, menloSecurityCef, watchguardXtm, openSystemsSecureWebGateway, wandera, unknownFutureValue.
            ## @return a security_log_data_provider
            ## 
            def log_data_provider
                return @log_data_provider
            end
            ## 
            ## Sets the logDataProvider property value. The applicable log data provider. Possible values are: barracuda, bluecoat, checkpoint, ciscoAsa, ciscoIronportProxy, fortigate, paloAlto, squid, zscaler, mcafeeSwg, ciscoScanSafe, juniperSrx, sophosSg, websenseV75, websenseSiemCef, machineZoneMeraki, squidNative, ciscoFwsm, microsoftIsaW3C, sonicwall, sophosCyberoam, clavister, customParser, juniperSsg, zscalerQradar, juniperSrxSd, juniperSrxWelf, microsoftConditionalAppAccess, ciscoAsaFirepower, genericCef, genericLeef, genericW3C, iFilter, checkpointXml, checkpointSmartViewTracker, barracudaNextGenFw, barracudaNextGenFwWeblog, microsoftDefenderForEndpoint, zscalerCef, sophosXg, iboss, forcepoint, fortios, ciscoIronportWsaIi, paloAltoLeef, forcepointLeef, stormshield, contentkeeper, ciscoIronportWsaIii, checkpointCef, corrata, ciscoFirepowerV6, menloSecurityCef, watchguardXtm, openSystemsSecureWebGateway, wandera, unknownFutureValue.
            ## @param value Value to set for the logDataProvider property.
            ## @return a void
            ## 
            def log_data_provider=(value)
                @log_data_provider = value
            end
            ## 
            ## Gets the logFileCount property value. The count of log files history.
            ## @return a integer
            ## 
            def log_file_count
                return @log_file_count
            end
            ## 
            ## Sets the logFileCount property value. The count of log files history.
            ## @param value Value to set for the logFileCount property.
            ## @return a void
            ## 
            def log_file_count=(value)
                @log_file_count = value
            end
            ## 
            ## Gets the receiverProtocol property value. The applicable receiver protocol. Possible values are: ftp, ftps, syslogUdp, syslogTcp, syslogTls, unknownFutureValue.
            ## @return a security_receiver_protocol
            ## 
            def receiver_protocol
                return @receiver_protocol
            end
            ## 
            ## Sets the receiverProtocol property value. The applicable receiver protocol. Possible values are: ftp, ftps, syslogUdp, syslogTcp, syslogTls, unknownFutureValue.
            ## @param value Value to set for the receiverProtocol property.
            ## @return a void
            ## 
            def receiver_protocol=(value)
                @receiver_protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("anonymizeMachineData", @anonymize_machine_data)
                writer.write_boolean_value("anonymizeUserData", @anonymize_user_data)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isSnapshotReport", @is_snapshot_report)
                writer.write_date_time_value("lastDataReceivedDateTime", @last_data_received_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("logDataProvider", @log_data_provider)
                writer.write_number_value("logFileCount", @log_file_count)
                writer.write_enum_value("receiverProtocol", @receiver_protocol)
                writer.write_collection_of_object_values("supportedEntityTypes", @supported_entity_types)
                writer.write_collection_of_object_values("supportedTrafficTypes", @supported_traffic_types)
            end
            ## 
            ## Gets the supportedEntityTypes property value. The supported entity type. Possible values are: userName, ipAddress, machineName, other, unknown, unknownFutureValue.
            ## @return a security_entity_type
            ## 
            def supported_entity_types
                return @supported_entity_types
            end
            ## 
            ## Sets the supportedEntityTypes property value. The supported entity type. Possible values are: userName, ipAddress, machineName, other, unknown, unknownFutureValue.
            ## @param value Value to set for the supportedEntityTypes property.
            ## @return a void
            ## 
            def supported_entity_types=(value)
                @supported_entity_types = value
            end
            ## 
            ## Gets the supportedTrafficTypes property value. The supported traffic type. Possible values are: downloadedBytes, uploadedBytes, unknown, unknownFutureValue.
            ## @return a security_traffic_type
            ## 
            def supported_traffic_types
                return @supported_traffic_types
            end
            ## 
            ## Sets the supportedTrafficTypes property value. The supported traffic type. Possible values are: downloadedBytes, uploadedBytes, unknown, unknownFutureValue.
            ## @param value Value to set for the supportedTrafficTypes property.
            ## @return a void
            ## 
            def supported_traffic_types=(value)
                @supported_traffic_types = value
            end
        end
    end
end
