require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessForwardingOptions < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The skipDnsLookupState property
            @skip_dns_lookup_state
            ## 
            ## Instantiates a new NetworkaccessForwardingOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_forwarding_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessForwardingOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "skipDnsLookupState" => lambda {|n| @skip_dns_lookup_state = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessStatus) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("skipDnsLookupState", @skip_dns_lookup_state)
            end
            ## 
            ## Gets the skipDnsLookupState property value. The skipDnsLookupState property
            ## @return a networkaccess_status
            ## 
            def skip_dns_lookup_state
                return @skip_dns_lookup_state
            end
            ## 
            ## Sets the skipDnsLookupState property value. The skipDnsLookupState property
            ## @param value Value to set for the skipDnsLookupState property.
            ## @return a void
            ## 
            def skip_dns_lookup_state=(value)
                @skip_dns_lookup_state = value
            end
        end
    end
end
