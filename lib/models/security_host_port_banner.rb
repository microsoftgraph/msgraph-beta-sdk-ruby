require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityHostPortBanner
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The banner property
            @banner
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
            # The scanProtocol property
            @scan_protocol
            ## 
            # The timesObserved property
            @times_observed
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
            ## Gets the banner property value. The banner property
            ## @return a string
            ## 
            def banner
                return @banner
            end
            ## 
            ## Sets the banner property value. The banner property
            ## @param value Value to set for the banner property.
            ## @return a void
            ## 
            def banner=(value)
                @banner = value
            end
            ## 
            ## Instantiates a new securityHostPortBanner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host_port_banner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHostPortBanner.new
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
                    "banner" => lambda {|n| @banner = n.get_string_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scanProtocol" => lambda {|n| @scan_protocol = n.get_string_value() },
                    "timesObserved" => lambda {|n| @times_observed = n.get_number_value() },
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
            ## Gets the scanProtocol property value. The scanProtocol property
            ## @return a string
            ## 
            def scan_protocol
                return @scan_protocol
            end
            ## 
            ## Sets the scanProtocol property value. The scanProtocol property
            ## @param value Value to set for the scanProtocol property.
            ## @return a void
            ## 
            def scan_protocol=(value)
                @scan_protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("banner", @banner)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("scanProtocol", @scan_protocol)
                writer.write_number_value("timesObserved", @times_observed)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timesObserved property value. The timesObserved property
            ## @return a integer
            ## 
            def times_observed
                return @times_observed
            end
            ## 
            ## Sets the timesObserved property value. The timesObserved property
            ## @param value Value to set for the timesObserved property.
            ## @return a void
            ## 
            def times_observed=(value)
                @times_observed = value
            end
        end
    end
end
