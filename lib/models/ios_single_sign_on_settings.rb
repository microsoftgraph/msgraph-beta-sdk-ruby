require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # iOS Kerberos authentication settings for single sign-on
        class IosSingleSignOnSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # List of app identifiers that are allowed to use this login. If this field is omitted, the login applies to all applications on the device. This collection can contain a maximum of 500 elements.
            @allowed_apps_list
            ## 
            # List of HTTP URLs that must be matched in order to use this login. With iOS 9.0 or later, a wildcard characters may be used.
            @allowed_urls
            ## 
            # The display name of login settings shown on the receiving device.
            @display_name
            ## 
            # A Kerberos principal name. If not provided, the user is prompted for one during profile installation.
            @kerberos_principal_name
            ## 
            # A Kerberos realm name. Case sensitive.
            @kerberos_realm
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
            ## Gets the allowedAppsList property value. List of app identifiers that are allowed to use this login. If this field is omitted, the login applies to all applications on the device. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def allowed_apps_list
                return @allowed_apps_list
            end
            ## 
            ## Sets the allowedAppsList property value. List of app identifiers that are allowed to use this login. If this field is omitted, the login applies to all applications on the device. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the allowedAppsList property.
            ## @return a void
            ## 
            def allowed_apps_list=(value)
                @allowed_apps_list = value
            end
            ## 
            ## Gets the allowedUrls property value. List of HTTP URLs that must be matched in order to use this login. With iOS 9.0 or later, a wildcard characters may be used.
            ## @return a string
            ## 
            def allowed_urls
                return @allowed_urls
            end
            ## 
            ## Sets the allowedUrls property value. List of HTTP URLs that must be matched in order to use this login. With iOS 9.0 or later, a wildcard characters may be used.
            ## @param value Value to set for the allowedUrls property.
            ## @return a void
            ## 
            def allowed_urls=(value)
                @allowed_urls = value
            end
            ## 
            ## Instantiates a new iosSingleSignOnSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_single_sign_on_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosSingleSignOnSettings.new
            end
            ## 
            ## Gets the displayName property value. The display name of login settings shown on the receiving device.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of login settings shown on the receiving device.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedAppsList" => lambda {|n| @allowed_apps_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "allowedUrls" => lambda {|n| @allowed_urls = n.get_collection_of_primitive_values(String) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "kerberosPrincipalName" => lambda {|n| @kerberos_principal_name = n.get_string_value() },
                    "kerberosRealm" => lambda {|n| @kerberos_realm = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the kerberosPrincipalName property value. A Kerberos principal name. If not provided, the user is prompted for one during profile installation.
            ## @return a string
            ## 
            def kerberos_principal_name
                return @kerberos_principal_name
            end
            ## 
            ## Sets the kerberosPrincipalName property value. A Kerberos principal name. If not provided, the user is prompted for one during profile installation.
            ## @param value Value to set for the kerberosPrincipalName property.
            ## @return a void
            ## 
            def kerberos_principal_name=(value)
                @kerberos_principal_name = value
            end
            ## 
            ## Gets the kerberosRealm property value. A Kerberos realm name. Case sensitive.
            ## @return a string
            ## 
            def kerberos_realm
                return @kerberos_realm
            end
            ## 
            ## Sets the kerberosRealm property value. A Kerberos realm name. Case sensitive.
            ## @param value Value to set for the kerberosRealm property.
            ## @return a void
            ## 
            def kerberos_realm=(value)
                @kerberos_realm = value
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
                writer.write_collection_of_object_values("allowedAppsList", @allowed_apps_list)
                writer.write_collection_of_primitive_values("allowedUrls", @allowed_urls)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("kerberosPrincipalName", @kerberos_principal_name)
                writer.write_string_value("kerberosRealm", @kerberos_realm)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
