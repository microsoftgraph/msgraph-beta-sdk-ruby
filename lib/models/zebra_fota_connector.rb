require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The Zebra FOTA connector entity that represents the tenant's authorization status for Intune to call Zebra Update Services.
        class ZebraFotaConnector < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Complete account enrollment authorization URL. This corresponds to verification_uri_complete in the Zebra API documentations.
            @enrollment_authorization_url
            ## 
            # Tenant enrollment token from Zebra. The token is used to enroll Zebra devices in the FOTA Service via app config.
            @enrollment_token
            ## 
            # Flag indicating if required Firmware Over-the-Air (FOTA) Apps have been approved.
            @fota_apps_approved
            ## 
            # Date and time when the account was last synched with Zebra
            @last_sync_date_time
            ## 
            # Represents various states for Zebra FOTA connector.
            @state
            ## 
            ## Instantiates a new zebraFotaConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a zebra_fota_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ZebraFotaConnector.new
            end
            ## 
            ## Gets the enrollmentAuthorizationUrl property value. Complete account enrollment authorization URL. This corresponds to verification_uri_complete in the Zebra API documentations.
            ## @return a string
            ## 
            def enrollment_authorization_url
                return @enrollment_authorization_url
            end
            ## 
            ## Sets the enrollmentAuthorizationUrl property value. Complete account enrollment authorization URL. This corresponds to verification_uri_complete in the Zebra API documentations.
            ## @param value Value to set for the enrollment_authorization_url property.
            ## @return a void
            ## 
            def enrollment_authorization_url=(value)
                @enrollment_authorization_url = value
            end
            ## 
            ## Gets the enrollmentToken property value. Tenant enrollment token from Zebra. The token is used to enroll Zebra devices in the FOTA Service via app config.
            ## @return a string
            ## 
            def enrollment_token
                return @enrollment_token
            end
            ## 
            ## Sets the enrollmentToken property value. Tenant enrollment token from Zebra. The token is used to enroll Zebra devices in the FOTA Service via app config.
            ## @param value Value to set for the enrollment_token property.
            ## @return a void
            ## 
            def enrollment_token=(value)
                @enrollment_token = value
            end
            ## 
            ## Gets the fotaAppsApproved property value. Flag indicating if required Firmware Over-the-Air (FOTA) Apps have been approved.
            ## @return a boolean
            ## 
            def fota_apps_approved
                return @fota_apps_approved
            end
            ## 
            ## Sets the fotaAppsApproved property value. Flag indicating if required Firmware Over-the-Air (FOTA) Apps have been approved.
            ## @param value Value to set for the fota_apps_approved property.
            ## @return a void
            ## 
            def fota_apps_approved=(value)
                @fota_apps_approved = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enrollmentAuthorizationUrl" => lambda {|n| @enrollment_authorization_url = n.get_string_value() },
                    "enrollmentToken" => lambda {|n| @enrollment_token = n.get_string_value() },
                    "fotaAppsApproved" => lambda {|n| @fota_apps_approved = n.get_boolean_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::ZebraFotaConnectorState) },
                })
            end
            ## 
            ## Gets the lastSyncDateTime property value. Date and time when the account was last synched with Zebra
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. Date and time when the account was last synched with Zebra
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("enrollmentAuthorizationUrl", @enrollment_authorization_url)
                writer.write_string_value("enrollmentToken", @enrollment_token)
                writer.write_boolean_value("fotaAppsApproved", @fota_apps_approved)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. Represents various states for Zebra FOTA connector.
            ## @return a zebra_fota_connector_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Represents various states for Zebra FOTA connector.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
