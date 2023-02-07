require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Certificate connector settings.
    class CertificateConnectorSetting
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Certificate expire time
        @cert_expiry_time
        ## 
        # Version of certificate connector
        @connector_version
        ## 
        # Certificate connector enrollment error
        @enrollment_error
        ## 
        # Last time certificate connector connected
        @last_connector_connection_time
        ## 
        # Version of last uploaded certificate connector
        @last_upload_version
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Certificate connector status
        @status
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the certExpiryTime property value. Certificate expire time
        ## @return a date_time
        ## 
        def cert_expiry_time
            return @cert_expiry_time
        end
        ## 
        ## Sets the certExpiryTime property value. Certificate expire time
        ## @param value Value to set for the cert_expiry_time property.
        ## @return a void
        ## 
        def cert_expiry_time=(value)
            @cert_expiry_time = value
        end
        ## 
        ## Gets the connectorVersion property value. Version of certificate connector
        ## @return a string
        ## 
        def connector_version
            return @connector_version
        end
        ## 
        ## Sets the connectorVersion property value. Version of certificate connector
        ## @param value Value to set for the connector_version property.
        ## @return a void
        ## 
        def connector_version=(value)
            @connector_version = value
        end
        ## 
        ## Instantiates a new certificateConnectorSetting and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a certificate_connector_setting
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CertificateConnectorSetting.new
        end
        ## 
        ## Gets the enrollmentError property value. Certificate connector enrollment error
        ## @return a string
        ## 
        def enrollment_error
            return @enrollment_error
        end
        ## 
        ## Sets the enrollmentError property value. Certificate connector enrollment error
        ## @param value Value to set for the enrollment_error property.
        ## @return a void
        ## 
        def enrollment_error=(value)
            @enrollment_error = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "certExpiryTime" => lambda {|n| @cert_expiry_time = n.get_date_time_value() },
                "connectorVersion" => lambda {|n| @connector_version = n.get_string_value() },
                "enrollmentError" => lambda {|n| @enrollment_error = n.get_string_value() },
                "lastConnectorConnectionTime" => lambda {|n| @last_connector_connection_time = n.get_date_time_value() },
                "lastUploadVersion" => lambda {|n| @last_upload_version = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_number_value() },
            }
        end
        ## 
        ## Gets the lastConnectorConnectionTime property value. Last time certificate connector connected
        ## @return a date_time
        ## 
        def last_connector_connection_time
            return @last_connector_connection_time
        end
        ## 
        ## Sets the lastConnectorConnectionTime property value. Last time certificate connector connected
        ## @param value Value to set for the last_connector_connection_time property.
        ## @return a void
        ## 
        def last_connector_connection_time=(value)
            @last_connector_connection_time = value
        end
        ## 
        ## Gets the lastUploadVersion property value. Version of last uploaded certificate connector
        ## @return a int64
        ## 
        def last_upload_version
            return @last_upload_version
        end
        ## 
        ## Sets the lastUploadVersion property value. Version of last uploaded certificate connector
        ## @param value Value to set for the last_upload_version property.
        ## @return a void
        ## 
        def last_upload_version=(value)
            @last_upload_version = value
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_date_time_value("certExpiryTime", @cert_expiry_time)
            writer.write_string_value("connectorVersion", @connector_version)
            writer.write_string_value("enrollmentError", @enrollment_error)
            writer.write_date_time_value("lastConnectorConnectionTime", @last_connector_connection_time)
            writer.write_object_value("lastUploadVersion", @last_upload_version)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("status", @status)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the status property value. Certificate connector status
        ## @return a integer
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Certificate connector status
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
