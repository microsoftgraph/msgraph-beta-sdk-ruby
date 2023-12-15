require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageSubject < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Not Supported.
            @alt_sec_id
            ## 
            # The connected organization of the subject. Read-only. Nullable.
            @connected_organization
            ## 
            # The identifier of the connected organization of the subject.
            @connected_organization_id
            ## 
            # The display name of the subject.
            @display_name
            ## 
            # The email address of the subject.
            @email
            ## 
            # The object identifier of the subject. null if the subject is not yet a user in the tenant. Alternate key.
            @object_id_escaped
            ## 
            # The onPremisesSecurityIdentifier property
            @on_premises_security_identifier
            ## 
            # The principal name, if known, of the subject.
            @principal_name
            ## 
            # The lifecycle of the subject user, if a guest. The possible values are: notDefined, notGoverned, governed, unknownFutureValue.
            @subject_lifecycle
            ## 
            # The resource type of the subject.
            @type
            ## 
            ## Gets the altSecId property value. Not Supported.
            ## @return a string
            ## 
            def alt_sec_id
                return @alt_sec_id
            end
            ## 
            ## Sets the altSecId property value. Not Supported.
            ## @param value Value to set for the altSecId property.
            ## @return a void
            ## 
            def alt_sec_id=(value)
                @alt_sec_id = value
            end
            ## 
            ## Gets the connectedOrganization property value. The connected organization of the subject. Read-only. Nullable.
            ## @return a connected_organization
            ## 
            def connected_organization
                return @connected_organization
            end
            ## 
            ## Sets the connectedOrganization property value. The connected organization of the subject. Read-only. Nullable.
            ## @param value Value to set for the connectedOrganization property.
            ## @return a void
            ## 
            def connected_organization=(value)
                @connected_organization = value
            end
            ## 
            ## Gets the connectedOrganizationId property value. The identifier of the connected organization of the subject.
            ## @return a string
            ## 
            def connected_organization_id
                return @connected_organization_id
            end
            ## 
            ## Sets the connectedOrganizationId property value. The identifier of the connected organization of the subject.
            ## @param value Value to set for the connectedOrganizationId property.
            ## @return a void
            ## 
            def connected_organization_id=(value)
                @connected_organization_id = value
            end
            ## 
            ## Instantiates a new accessPackageSubject and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_subject
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageSubject.new
            end
            ## 
            ## Gets the displayName property value. The display name of the subject.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the subject.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the email property value. The email address of the subject.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address of the subject.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "altSecId" => lambda {|n| @alt_sec_id = n.get_string_value() },
                    "connectedOrganization" => lambda {|n| @connected_organization = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConnectedOrganization.create_from_discriminator_value(pn) }) },
                    "connectedOrganizationId" => lambda {|n| @connected_organization_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "objectId" => lambda {|n| @object_id_escaped = n.get_string_value() },
                    "onPremisesSecurityIdentifier" => lambda {|n| @on_premises_security_identifier = n.get_string_value() },
                    "principalName" => lambda {|n| @principal_name = n.get_string_value() },
                    "subjectLifecycle" => lambda {|n| @subject_lifecycle = n.get_enum_value(MicrosoftGraphBeta::Models::AccessPackageSubjectLifecycle) },
                    "type" => lambda {|n| @type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the objectId property value. The object identifier of the subject. null if the subject is not yet a user in the tenant. Alternate key.
            ## @return a string
            ## 
            def object_id_escaped
                return @object_id_escaped
            end
            ## 
            ## Sets the objectId property value. The object identifier of the subject. null if the subject is not yet a user in the tenant. Alternate key.
            ## @param value Value to set for the objectId property.
            ## @return a void
            ## 
            def object_id_escaped=(value)
                @object_id_escaped = value
            end
            ## 
            ## Gets the onPremisesSecurityIdentifier property value. The onPremisesSecurityIdentifier property
            ## @return a string
            ## 
            def on_premises_security_identifier
                return @on_premises_security_identifier
            end
            ## 
            ## Sets the onPremisesSecurityIdentifier property value. The onPremisesSecurityIdentifier property
            ## @param value Value to set for the onPremisesSecurityIdentifier property.
            ## @return a void
            ## 
            def on_premises_security_identifier=(value)
                @on_premises_security_identifier = value
            end
            ## 
            ## Gets the principalName property value. The principal name, if known, of the subject.
            ## @return a string
            ## 
            def principal_name
                return @principal_name
            end
            ## 
            ## Sets the principalName property value. The principal name, if known, of the subject.
            ## @param value Value to set for the principalName property.
            ## @return a void
            ## 
            def principal_name=(value)
                @principal_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("altSecId", @alt_sec_id)
                writer.write_object_value("connectedOrganization", @connected_organization)
                writer.write_string_value("connectedOrganizationId", @connected_organization_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_string_value("objectId", @object_id_escaped)
                writer.write_string_value("onPremisesSecurityIdentifier", @on_premises_security_identifier)
                writer.write_string_value("principalName", @principal_name)
                writer.write_enum_value("subjectLifecycle", @subject_lifecycle)
                writer.write_string_value("type", @type)
            end
            ## 
            ## Gets the subjectLifecycle property value. The lifecycle of the subject user, if a guest. The possible values are: notDefined, notGoverned, governed, unknownFutureValue.
            ## @return a access_package_subject_lifecycle
            ## 
            def subject_lifecycle
                return @subject_lifecycle
            end
            ## 
            ## Sets the subjectLifecycle property value. The lifecycle of the subject user, if a guest. The possible values are: notDefined, notGoverned, governed, unknownFutureValue.
            ## @param value Value to set for the subjectLifecycle property.
            ## @return a void
            ## 
            def subject_lifecycle=(value)
                @subject_lifecycle = value
            end
            ## 
            ## Gets the type property value. The resource type of the subject.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The resource type of the subject.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
