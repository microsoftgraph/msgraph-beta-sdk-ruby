require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './security/security'

module MicrosoftGraphBeta
    module Models
        class SecurityHostSslCertificate < MicrosoftGraphBeta::Models::SecurityArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The firstSeenDateTime property
            @first_seen_date_time
            ## 
            # The host property
            @host
            ## 
            # The lastSeenDateTime property
            @last_seen_date_time
            ## 
            # The ports property
            @ports
            ## 
            # The sslCertificate property
            @ssl_certificate
            ## 
            ## Instantiates a new hostSslCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.hostSslCertificate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host_ssl_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHostSslCertificate.new
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
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityHost.create_from_discriminator_value(pn) }) },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "ports" => lambda {|n| @ports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityHostSslCertificatePort.create_from_discriminator_value(pn) }) },
                    "sslCertificate" => lambda {|n| @ssl_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecuritySslCertificate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the host property value. The host property
            ## @return a security_host
            ## 
            def host
                return @host
            end
            ## 
            ## Sets the host property value. The host property
            ## @param value Value to set for the host property.
            ## @return a void
            ## 
            def host=(value)
                @host = value
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
            ## Gets the ports property value. The ports property
            ## @return a security_host_ssl_certificate_port
            ## 
            def ports
                return @ports
            end
            ## 
            ## Sets the ports property value. The ports property
            ## @param value Value to set for the ports property.
            ## @return a void
            ## 
            def ports=(value)
                @ports = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_object_value("host", @host)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_collection_of_object_values("ports", @ports)
                writer.write_object_value("sslCertificate", @ssl_certificate)
            end
            ## 
            ## Gets the sslCertificate property value. The sslCertificate property
            ## @return a security_ssl_certificate
            ## 
            def ssl_certificate
                return @ssl_certificate
            end
            ## 
            ## Sets the sslCertificate property value. The sslCertificate property
            ## @param value Value to set for the sslCertificate property.
            ## @return a void
            ## 
            def ssl_certificate=(value)
                @ssl_certificate = value
            end
        end
    end
end
