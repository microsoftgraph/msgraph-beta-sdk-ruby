require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConfigurationUri
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The single sign-on mode that the URI is configured for. Possible values are: saml, password.
            @applies_to_single_sign_on_mode
            ## 
            # The various formats that the URI should follow.
            @examples
            ## 
            # Indicates whether this URI is required for the single sign-on configuration.
            @is_required
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The usage property
            @usage
            ## 
            # The suggested values for the URI. Developers may need to customize these values for their tenant.
            @values
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
            ## Gets the appliesToSingleSignOnMode property value. The single sign-on mode that the URI is configured for. Possible values are: saml, password.
            ## @return a string
            ## 
            def applies_to_single_sign_on_mode
                return @applies_to_single_sign_on_mode
            end
            ## 
            ## Sets the appliesToSingleSignOnMode property value. The single sign-on mode that the URI is configured for. Possible values are: saml, password.
            ## @param value Value to set for the appliesToSingleSignOnMode property.
            ## @return a void
            ## 
            def applies_to_single_sign_on_mode=(value)
                @applies_to_single_sign_on_mode = value
            end
            ## 
            ## Instantiates a new ConfigurationUri and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a configuration_uri
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConfigurationUri.new
            end
            ## 
            ## Gets the examples property value. The various formats that the URI should follow.
            ## @return a string
            ## 
            def examples
                return @examples
            end
            ## 
            ## Sets the examples property value. The various formats that the URI should follow.
            ## @param value Value to set for the examples property.
            ## @return a void
            ## 
            def examples=(value)
                @examples = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appliesToSingleSignOnMode" => lambda {|n| @applies_to_single_sign_on_mode = n.get_string_value() },
                    "examples" => lambda {|n| @examples = n.get_collection_of_primitive_values(String) },
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "usage" => lambda {|n| @usage = n.get_enum_value(MicrosoftGraphBeta::Models::UriUsageType) },
                    "values" => lambda {|n| @values = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the isRequired property value. Indicates whether this URI is required for the single sign-on configuration.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Indicates whether this URI is required for the single sign-on configuration.
            ## @param value Value to set for the isRequired property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
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
                writer.write_string_value("appliesToSingleSignOnMode", @applies_to_single_sign_on_mode)
                writer.write_collection_of_primitive_values("examples", @examples)
                writer.write_boolean_value("isRequired", @is_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("usage", @usage)
                writer.write_collection_of_primitive_values("values", @values)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the usage property value. The usage property
            ## @return a uri_usage_type
            ## 
            def usage
                return @usage
            end
            ## 
            ## Sets the usage property value. The usage property
            ## @param value Value to set for the usage property.
            ## @return a void
            ## 
            def usage=(value)
                @usage = value
            end
            ## 
            ## Gets the values property value. The suggested values for the URI. Developers may need to customize these values for their tenant.
            ## @return a string
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. The suggested values for the URI. Developers may need to customize these values for their tenant.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
