require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MacOSRedirectSingleSignOnExtension < MicrosoftGraphBeta::Models::MacOSSingleSignOnExtension
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.
            @configurations
            ## 
            # Gets or sets the bundle ID of the app extension that performs SSO for the specified URLs.
            @extension_identifier
            ## 
            # Gets or sets the team ID of the app extension that performs SSO for the specified URLs.
            @team_identifier
            ## 
            # One or more URL prefixes of identity providers on whose behalf the app extension performs single sign-on. URLs must begin with http:// or https://. All URL prefixes must be unique for all profiles.
            @url_prefixes
            ## 
            ## Gets the configurations property value. Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.
            ## @return a key_typed_value_pair
            ## 
            def configurations
                return @configurations
            end
            ## 
            ## Sets the configurations property value. Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the configurations property.
            ## @return a void
            ## 
            def configurations=(value)
                @configurations = value
            end
            ## 
            ## Instantiates a new MacOSRedirectSingleSignOnExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSRedirectSingleSignOnExtension"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_redirect_single_sign_on_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSRedirectSingleSignOnExtension.new
            end
            ## 
            ## Gets the extensionIdentifier property value. Gets or sets the bundle ID of the app extension that performs SSO for the specified URLs.
            ## @return a string
            ## 
            def extension_identifier
                return @extension_identifier
            end
            ## 
            ## Sets the extensionIdentifier property value. Gets or sets the bundle ID of the app extension that performs SSO for the specified URLs.
            ## @param value Value to set for the extension_identifier property.
            ## @return a void
            ## 
            def extension_identifier=(value)
                @extension_identifier = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configurations" => lambda {|n| @configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyTypedValuePair.create_from_discriminator_value(pn) }) },
                    "extensionIdentifier" => lambda {|n| @extension_identifier = n.get_string_value() },
                    "teamIdentifier" => lambda {|n| @team_identifier = n.get_string_value() },
                    "urlPrefixes" => lambda {|n| @url_prefixes = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_object_values("configurations", @configurations)
                writer.write_string_value("extensionIdentifier", @extension_identifier)
                writer.write_string_value("teamIdentifier", @team_identifier)
                writer.write_collection_of_primitive_values("urlPrefixes", @url_prefixes)
            end
            ## 
            ## Gets the teamIdentifier property value. Gets or sets the team ID of the app extension that performs SSO for the specified URLs.
            ## @return a string
            ## 
            def team_identifier
                return @team_identifier
            end
            ## 
            ## Sets the teamIdentifier property value. Gets or sets the team ID of the app extension that performs SSO for the specified URLs.
            ## @param value Value to set for the team_identifier property.
            ## @return a void
            ## 
            def team_identifier=(value)
                @team_identifier = value
            end
            ## 
            ## Gets the urlPrefixes property value. One or more URL prefixes of identity providers on whose behalf the app extension performs single sign-on. URLs must begin with http:// or https://. All URL prefixes must be unique for all profiles.
            ## @return a string
            ## 
            def url_prefixes
                return @url_prefixes
            end
            ## 
            ## Sets the urlPrefixes property value. One or more URL prefixes of identity providers on whose behalf the app extension performs single sign-on. URLs must begin with http:// or https://. All URL prefixes must be unique for all profiles.
            ## @param value Value to set for the url_prefixes property.
            ## @return a void
            ## 
            def url_prefixes=(value)
                @url_prefixes = value
            end
        end
    end
end
