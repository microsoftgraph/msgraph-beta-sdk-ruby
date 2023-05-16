require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConnectedOrganization < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # UPN of the user who created this resource. Read-only.
            @created_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # The description of the connected organization.
            @description
            ## 
            # The display name of the connected organization. Supports $filter (eq).
            @display_name
            ## 
            # The externalSponsors property
            @external_sponsors
            ## 
            # The identity sources in this connected organization, one of azureActiveDirectoryTenant, crossCloudAzureActiveDirectoryTenant, domainIdentitySource or externalDomainFederation. Read-only. Nullable. Supports $select and $filter(eq). To filter by the derived types, you must declare the resource using its full OData cast, for example, $filter=identitySources/any(is:is/microsoft.graph.azureActiveDirectoryTenant/tenantId eq 'bcfdfff4-cbc3-43f2-9000-ba7b7515054f').
            @identity_sources
            ## 
            # The internalSponsors property
            @internal_sponsors
            ## 
            # UPN of the user who last modified this resource. Read-only.
            @modified_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @modified_date_time
            ## 
            # The state of a connected organization defines whether assignment policies with requestor scope type AllConfiguredConnectedOrganizationSubjects are applicable or not. Possible values are: configured, proposed.
            @state
            ## 
            ## Instantiates a new connectedOrganization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. UPN of the user who created this resource. Read-only.
            ## @return a string
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. UPN of the user who created this resource. Read-only.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a connected_organization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConnectedOrganization.new
            end
            ## 
            ## Gets the description property value. The description of the connected organization.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the connected organization.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the connected organization. Supports $filter (eq).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the connected organization. Supports $filter (eq).
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalSponsors property value. The externalSponsors property
            ## @return a directory_object
            ## 
            def external_sponsors
                return @external_sponsors
            end
            ## 
            ## Sets the externalSponsors property value. The externalSponsors property
            ## @param value Value to set for the external_sponsors property.
            ## @return a void
            ## 
            def external_sponsors=(value)
                @external_sponsors = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalSponsors" => lambda {|n| @external_sponsors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "identitySources" => lambda {|n| @identity_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySource.create_from_discriminator_value(pn) }) },
                    "internalSponsors" => lambda {|n| @internal_sponsors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "modifiedBy" => lambda {|n| @modified_by = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::ConnectedOrganizationState) },
                })
            end
            ## 
            ## Gets the identitySources property value. The identity sources in this connected organization, one of azureActiveDirectoryTenant, crossCloudAzureActiveDirectoryTenant, domainIdentitySource or externalDomainFederation. Read-only. Nullable. Supports $select and $filter(eq). To filter by the derived types, you must declare the resource using its full OData cast, for example, $filter=identitySources/any(is:is/microsoft.graph.azureActiveDirectoryTenant/tenantId eq 'bcfdfff4-cbc3-43f2-9000-ba7b7515054f').
            ## @return a identity_source
            ## 
            def identity_sources
                return @identity_sources
            end
            ## 
            ## Sets the identitySources property value. The identity sources in this connected organization, one of azureActiveDirectoryTenant, crossCloudAzureActiveDirectoryTenant, domainIdentitySource or externalDomainFederation. Read-only. Nullable. Supports $select and $filter(eq). To filter by the derived types, you must declare the resource using its full OData cast, for example, $filter=identitySources/any(is:is/microsoft.graph.azureActiveDirectoryTenant/tenantId eq 'bcfdfff4-cbc3-43f2-9000-ba7b7515054f').
            ## @param value Value to set for the identity_sources property.
            ## @return a void
            ## 
            def identity_sources=(value)
                @identity_sources = value
            end
            ## 
            ## Gets the internalSponsors property value. The internalSponsors property
            ## @return a directory_object
            ## 
            def internal_sponsors
                return @internal_sponsors
            end
            ## 
            ## Sets the internalSponsors property value. The internalSponsors property
            ## @param value Value to set for the internal_sponsors property.
            ## @return a void
            ## 
            def internal_sponsors=(value)
                @internal_sponsors = value
            end
            ## 
            ## Gets the modifiedBy property value. UPN of the user who last modified this resource. Read-only.
            ## @return a string
            ## 
            def modified_by
                return @modified_by
            end
            ## 
            ## Sets the modifiedBy property value. UPN of the user who last modified this resource. Read-only.
            ## @param value Value to set for the modified_by property.
            ## @return a void
            ## 
            def modified_by=(value)
                @modified_by = value
            end
            ## 
            ## Gets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("externalSponsors", @external_sponsors)
                writer.write_collection_of_object_values("identitySources", @identity_sources)
                writer.write_collection_of_object_values("internalSponsors", @internal_sponsors)
                writer.write_string_value("modifiedBy", @modified_by)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. The state of a connected organization defines whether assignment policies with requestor scope type AllConfiguredConnectedOrganizationSubjects are applicable or not. Possible values are: configured, proposed.
            ## @return a connected_organization_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state of a connected organization defines whether assignment policies with requestor scope type AllConfiguredConnectedOrganizationSubjects are applicable or not. Possible values are: configured, proposed.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
