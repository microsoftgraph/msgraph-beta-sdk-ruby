require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # A mapping of application identifiers to associated domains.
    class MacOSAssociatedDomainsItem
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The application identifier of the app to associate domains with.
        @application_identifier
        ## 
        # Determines whether data should be downloaded directly or via a CDN.
        @direct_downloads_enabled
        ## 
        # The list of domains to associate.
        @domains
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the applicationIdentifier property value. The application identifier of the app to associate domains with.
        ## @return a string
        ## 
        def application_identifier
            return @application_identifier
        end
        ## 
        ## Sets the applicationIdentifier property value. The application identifier of the app to associate domains with.
        ## @param value Value to set for the application_identifier property.
        ## @return a void
        ## 
        def application_identifier=(value)
            @application_identifier = value
        end
        ## 
        ## Instantiates a new macOSAssociatedDomainsItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mac_o_s_associated_domains_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MacOSAssociatedDomainsItem.new
        end
        ## 
        ## Gets the directDownloadsEnabled property value. Determines whether data should be downloaded directly or via a CDN.
        ## @return a boolean
        ## 
        def direct_downloads_enabled
            return @direct_downloads_enabled
        end
        ## 
        ## Sets the directDownloadsEnabled property value. Determines whether data should be downloaded directly or via a CDN.
        ## @param value Value to set for the direct_downloads_enabled property.
        ## @return a void
        ## 
        def direct_downloads_enabled=(value)
            @direct_downloads_enabled = value
        end
        ## 
        ## Gets the domains property value. The list of domains to associate.
        ## @return a string
        ## 
        def domains
            return @domains
        end
        ## 
        ## Sets the domains property value. The list of domains to associate.
        ## @param value Value to set for the domains property.
        ## @return a void
        ## 
        def domains=(value)
            @domains = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "applicationIdentifier" => lambda {|n| @application_identifier = n.get_string_value() },
                "directDownloadsEnabled" => lambda {|n| @direct_downloads_enabled = n.get_boolean_value() },
                "domains" => lambda {|n| @domains = n.get_collection_of_primitive_values(String) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
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
            writer.write_string_value("applicationIdentifier", @application_identifier)
            writer.write_boolean_value("directDownloadsEnabled", @direct_downloads_enabled)
            writer.write_collection_of_primitive_values("domains", @domains)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
