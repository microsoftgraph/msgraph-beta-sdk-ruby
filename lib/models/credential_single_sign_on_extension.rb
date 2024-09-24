require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a Credential-type Single Sign-On extension profile.
        class CredentialSingleSignOnExtension < MicrosoftGraphBeta::Models::SingleSignOnExtension
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.
            @configurations
            ## 
            # Gets or sets a list of hosts or domain names for which the app extension performs SSO.
            @domains
            ## 
            # Gets or sets the bundle ID of the app extension that performs SSO for the specified URLs.
            @extension_identifier
            ## 
            # Gets or sets the case-sensitive realm name for this profile.
            @realm
            ## 
            # Gets or sets the team ID of the app extension that performs SSO for the specified URLs.
            @team_identifier
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
            ## Instantiates a new CredentialSingleSignOnExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.credentialSingleSignOnExtension"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a credential_single_sign_on_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CredentialSingleSignOnExtension.new
            end
            ## 
            ## Gets the domains property value. Gets or sets a list of hosts or domain names for which the app extension performs SSO.
            ## @return a string
            ## 
            def domains
                return @domains
            end
            ## 
            ## Sets the domains property value. Gets or sets a list of hosts or domain names for which the app extension performs SSO.
            ## @param value Value to set for the domains property.
            ## @return a void
            ## 
            def domains=(value)
                @domains = value
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
            ## @param value Value to set for the extensionIdentifier property.
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
                    "domains" => lambda {|n| @domains = n.get_collection_of_primitive_values(String) },
                    "extensionIdentifier" => lambda {|n| @extension_identifier = n.get_string_value() },
                    "realm" => lambda {|n| @realm = n.get_string_value() },
                    "teamIdentifier" => lambda {|n| @team_identifier = n.get_string_value() },
                })
            end
            ## 
            ## Gets the realm property value. Gets or sets the case-sensitive realm name for this profile.
            ## @return a string
            ## 
            def realm
                return @realm
            end
            ## 
            ## Sets the realm property value. Gets or sets the case-sensitive realm name for this profile.
            ## @param value Value to set for the realm property.
            ## @return a void
            ## 
            def realm=(value)
                @realm = value
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
                writer.write_collection_of_primitive_values("domains", @domains)
                writer.write_string_value("extensionIdentifier", @extension_identifier)
                writer.write_string_value("realm", @realm)
                writer.write_string_value("teamIdentifier", @team_identifier)
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
            ## @param value Value to set for the teamIdentifier property.
            ## @return a void
            ## 
            def team_identifier=(value)
                @team_identifier = value
            end
        end
    end
end
