require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './ediscovery'

module MicrosoftGraphBeta
    module Models
        module Ediscovery
            class LegalHold < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # KQL query that specifies content to be held in the specified locations. To learn more, see Keyword queries and search conditions for Content Search and eDiscovery.  To hold all content in the specified locations, leave contentQuery blank.
                @content_query
                ## 
                # The user who created the legal hold.
                @created_by
                ## 
                # The date and time the legal hold was created.
                @created_date_time
                ## 
                # The legal hold description.
                @description
                ## 
                # The display name of the legal hold.
                @display_name
                ## 
                # Lists any errors that happened while placing the hold.
                @errors
                ## 
                # Indicates whether the hold is enabled and actively holding content.
                @is_enabled
                ## 
                # the user who last modified the legal hold.
                @last_modified_by
                ## 
                # The date and time the legal hold was last modified.
                @last_modified_date_time
                ## 
                # Data source entity for SharePoint sites associated with the legal hold.
                @site_sources
                ## 
                # The status of the legal hold. Possible values are: Pending, Error, Success, UnknownFutureValue.
                @status
                ## 
                # The unifiedGroupSources property
                @unified_group_sources
                ## 
                # Data source entity for a the legal hold. This is the container for a mailbox and OneDrive for Business site.
                @user_sources
                ## 
                ## Instantiates a new legalHold and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the contentQuery property value. KQL query that specifies content to be held in the specified locations. To learn more, see Keyword queries and search conditions for Content Search and eDiscovery.  To hold all content in the specified locations, leave contentQuery blank.
                ## @return a string
                ## 
                def content_query
                    return @content_query
                end
                ## 
                ## Sets the contentQuery property value. KQL query that specifies content to be held in the specified locations. To learn more, see Keyword queries and search conditions for Content Search and eDiscovery.  To hold all content in the specified locations, leave contentQuery blank.
                ## @param value Value to set for the content_query property.
                ## @return a void
                ## 
                def content_query=(value)
                    @content_query = value
                end
                ## 
                ## Gets the createdBy property value. The user who created the legal hold.
                ## @return a identity_set
                ## 
                def created_by
                    return @created_by
                end
                ## 
                ## Sets the createdBy property value. The user who created the legal hold.
                ## @param value Value to set for the created_by property.
                ## @return a void
                ## 
                def created_by=(value)
                    @created_by = value
                end
                ## 
                ## Gets the createdDateTime property value. The date and time the legal hold was created.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The date and time the legal hold was created.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a legal_hold
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LegalHold.new
                end
                ## 
                ## Gets the description property value. The legal hold description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The legal hold description.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. The display name of the legal hold.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name of the legal hold.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## Gets the errors property value. Lists any errors that happened while placing the hold.
                ## @return a string
                ## 
                def errors
                    return @errors
                end
                ## 
                ## Sets the errors property value. Lists any errors that happened while placing the hold.
                ## @param value Value to set for the errors property.
                ## @return a void
                ## 
                def errors=(value)
                    @errors = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "contentQuery" => lambda {|n| @content_query = n.get_string_value() },
                        "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "errors" => lambda {|n| @errors = n.get_collection_of_primitive_values(String) },
                        "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                        "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                        "siteSources" => lambda {|n| @site_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::SiteSource.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::Ediscovery::LegalHoldStatus) },
                        "unifiedGroupSources" => lambda {|n| @unified_group_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::UnifiedGroupSource.create_from_discriminator_value(pn) }) },
                        "userSources" => lambda {|n| @user_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::UserSource.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the isEnabled property value. Indicates whether the hold is enabled and actively holding content.
                ## @return a boolean
                ## 
                def is_enabled
                    return @is_enabled
                end
                ## 
                ## Sets the isEnabled property value. Indicates whether the hold is enabled and actively holding content.
                ## @param value Value to set for the is_enabled property.
                ## @return a void
                ## 
                def is_enabled=(value)
                    @is_enabled = value
                end
                ## 
                ## Gets the lastModifiedBy property value. the user who last modified the legal hold.
                ## @return a identity_set
                ## 
                def last_modified_by
                    return @last_modified_by
                end
                ## 
                ## Sets the lastModifiedBy property value. the user who last modified the legal hold.
                ## @param value Value to set for the last_modified_by property.
                ## @return a void
                ## 
                def last_modified_by=(value)
                    @last_modified_by = value
                end
                ## 
                ## Gets the lastModifiedDateTime property value. The date and time the legal hold was last modified.
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. The date and time the legal hold was last modified.
                ## @param value Value to set for the last_modified_date_time property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("contentQuery", @content_query)
                    writer.write_object_value("createdBy", @created_by)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_collection_of_primitive_values("errors", @errors)
                    writer.write_boolean_value("isEnabled", @is_enabled)
                    writer.write_object_value("lastModifiedBy", @last_modified_by)
                    writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                    writer.write_collection_of_object_values("siteSources", @site_sources)
                    writer.write_enum_value("status", @status)
                    writer.write_collection_of_object_values("unifiedGroupSources", @unified_group_sources)
                    writer.write_collection_of_object_values("userSources", @user_sources)
                end
                ## 
                ## Gets the siteSources property value. Data source entity for SharePoint sites associated with the legal hold.
                ## @return a site_source
                ## 
                def site_sources
                    return @site_sources
                end
                ## 
                ## Sets the siteSources property value. Data source entity for SharePoint sites associated with the legal hold.
                ## @param value Value to set for the site_sources property.
                ## @return a void
                ## 
                def site_sources=(value)
                    @site_sources = value
                end
                ## 
                ## Gets the status property value. The status of the legal hold. Possible values are: Pending, Error, Success, UnknownFutureValue.
                ## @return a legal_hold_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. The status of the legal hold. Possible values are: Pending, Error, Success, UnknownFutureValue.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the unifiedGroupSources property value. The unifiedGroupSources property
                ## @return a unified_group_source
                ## 
                def unified_group_sources
                    return @unified_group_sources
                end
                ## 
                ## Sets the unifiedGroupSources property value. The unifiedGroupSources property
                ## @param value Value to set for the unified_group_sources property.
                ## @return a void
                ## 
                def unified_group_sources=(value)
                    @unified_group_sources = value
                end
                ## 
                ## Gets the userSources property value. Data source entity for a the legal hold. This is the container for a mailbox and OneDrive for Business site.
                ## @return a user_source
                ## 
                def user_sources
                    return @user_sources
                end
                ## 
                ## Sets the userSources property value. Data source entity for a the legal hold. This is the container for a mailbox and OneDrive for Business site.
                ## @param value Value to set for the user_sources property.
                ## @return a void
                ## 
                def user_sources=(value)
                    @user_sources = value
                end
            end
        end
    end
end
