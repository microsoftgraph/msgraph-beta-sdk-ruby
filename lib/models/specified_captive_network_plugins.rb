require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Specifies all the Captive network plugins allowed during the IKEv2 AlwaysOn VPN connection
        class SpecifiedCaptiveNetworkPlugins
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN
            @allowed_bundle_identifiers
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowedBundleIdentifiers property value. Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN
            ## @return a string
            ## 
            def allowed_bundle_identifiers
                return @allowed_bundle_identifiers
            end
            ## 
            ## Sets the allowedBundleIdentifiers property value. Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN
            ## @param value Value to set for the allowedBundleIdentifiers property.
            ## @return a void
            ## 
            def allowed_bundle_identifiers=(value)
                @allowed_bundle_identifiers = value
            end
            ## 
            ## Instantiates a new specifiedCaptiveNetworkPlugins and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a specified_captive_network_plugins
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SpecifiedCaptiveNetworkPlugins.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedBundleIdentifiers" => lambda {|n| @allowed_bundle_identifiers = n.get_collection_of_primitive_values(String) },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_collection_of_primitive_values("allowedBundleIdentifiers", @allowed_bundle_identifiers)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
