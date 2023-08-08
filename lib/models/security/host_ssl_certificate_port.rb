require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class HostSslCertificatePort
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The firstSeenDateTime property
                @first_seen_date_time
                ## 
                # The lastSeenDateTime property
                @last_seen_date_time
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The port property
                @port
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new hostSslCertificatePort and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a host_ssl_certificate_port
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return HostSslCertificatePort.new
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
                    return {
                        "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                        "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "port" => lambda {|n| @port = n.get_number_value() },
                    }
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
                ## Gets the @odata.type property value. The OdataType property
                ## @return a string
                ## 
                def odata_type
                    return @odata_type
                end
                ## 
                ## Sets the @odata.type property value. The OdataType property
                ## @param value Value to set for the @odata.type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Gets the port property value. The port property
                ## @return a integer
                ## 
                def port
                    return @port
                end
                ## 
                ## Sets the port property value. The port property
                ## @param value Value to set for the port property.
                ## @return a void
                ## 
                def port=(value)
                    @port = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                    writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("port", @port)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
