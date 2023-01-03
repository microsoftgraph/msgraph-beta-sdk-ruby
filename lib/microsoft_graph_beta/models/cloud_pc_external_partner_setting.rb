require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcExternalPartnerSetting < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Enable or disable the connection to an external partner. If true, an external partner API will accept incoming calls from external partners. Required. Supports $filter (eq).
        @enable_connection
        ## 
        # Last data sync time for this external partner. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'.
        @last_sync_date_time
        ## 
        # The external partner ID.
        @partner_id
        ## 
        # The status property
        @status
        ## 
        # Status details message.
        @status_details
        ## 
        ## Instantiates a new CloudPcExternalPartnerSetting and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_external_partner_setting
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcExternalPartnerSetting.new
        end
        ## 
        ## Gets the enableConnection property value. Enable or disable the connection to an external partner. If true, an external partner API will accept incoming calls from external partners. Required. Supports $filter (eq).
        ## @return a boolean
        ## 
        def enable_connection
            return @enable_connection
        end
        ## 
        ## Sets the enableConnection property value. Enable or disable the connection to an external partner. If true, an external partner API will accept incoming calls from external partners. Required. Supports $filter (eq).
        ## @param value Value to set for the enableConnection property.
        ## @return a void
        ## 
        def enable_connection=(value)
            @enable_connection = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "enableConnection" => lambda {|n| @enable_connection = n.get_boolean_value() },
                "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                "partnerId" => lambda {|n| @partner_id = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcExternalPartnerStatus) },
                "statusDetails" => lambda {|n| @status_details = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastSyncDateTime property value. Last data sync time for this external partner. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'.
        ## @return a date_time
        ## 
        def last_sync_date_time
            return @last_sync_date_time
        end
        ## 
        ## Sets the lastSyncDateTime property value. Last data sync time for this external partner. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'.
        ## @param value Value to set for the lastSyncDateTime property.
        ## @return a void
        ## 
        def last_sync_date_time=(value)
            @last_sync_date_time = value
        end
        ## 
        ## Gets the partnerId property value. The external partner ID.
        ## @return a string
        ## 
        def partner_id
            return @partner_id
        end
        ## 
        ## Sets the partnerId property value. The external partner ID.
        ## @param value Value to set for the partnerId property.
        ## @return a void
        ## 
        def partner_id=(value)
            @partner_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("enableConnection", @enable_connection)
            writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
            writer.write_string_value("partnerId", @partner_id)
            writer.write_enum_value("status", @status)
            writer.write_string_value("statusDetails", @status_details)
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a cloud_pc_external_partner_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status property
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
        ## 
        ## Gets the statusDetails property value. Status details message.
        ## @return a string
        ## 
        def status_details
            return @status_details
        end
        ## 
        ## Sets the statusDetails property value. Status details message.
        ## @param value Value to set for the statusDetails property.
        ## @return a void
        ## 
        def status_details=(value)
            @status_details = value
        end
    end
end
