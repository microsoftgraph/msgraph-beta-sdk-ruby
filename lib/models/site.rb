require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Site < MicrosoftGraphBeta::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Analytics about the view activities that took place in this site.
            @analytics
            ## 
            # The collection of column definitions reusable across lists under this site.
            @columns
            ## 
            # The collection of content types defined for this site.
            @content_types
            ## 
            # The deleted property
            @deleted
            ## 
            # The full title for the site. Read-only.
            @display_name
            ## 
            # The default drive (document library) for this site.
            @drive
            ## 
            # The collection of drives (document libraries) under this site.
            @drives
            ## 
            # The collection of column definitions available in the site that are referenced from the sites in the parent hierarchy of the current site.
            @external_columns
            ## 
            # The informationProtection property
            @information_protection
            ## 
            # Used to address any item contained in this site. This collection cannot be enumerated.
            @items
            ## 
            # The collection of lists under this site.
            @lists
            ## 
            # The onenote property
            @onenote
            ## 
            # The collection of long running operations for the site.
            @operations
            ## 
            # The collection of pages in the baseSitePages list in this site.
            @pages
            ## 
            # The permissions associated with the site. Nullable.
            @permissions
            ## 
            # If present, indicates that this is the root site in the site collection. Read-only.
            @root
            ## 
            # The settings on this site. Read-only.
            @settings
            ## 
            # Returns identifiers useful for SharePoint REST compatibility. Read-only.
            @sharepoint_ids
            ## 
            # Provides details about the site's site collection. Available only on the root site. Read-only.
            @site_collection
            ## 
            # The collection of the sub-sites under this site.
            @sites
            ## 
            # The termStore under this site.
            @term_store
            ## 
            ## Gets the analytics property value. Analytics about the view activities that took place in this site.
            ## @return a item_analytics
            ## 
            def analytics
                return @analytics
            end
            ## 
            ## Sets the analytics property value. Analytics about the view activities that took place in this site.
            ## @param value Value to set for the analytics property.
            ## @return a void
            ## 
            def analytics=(value)
                @analytics = value
            end
            ## 
            ## Gets the columns property value. The collection of column definitions reusable across lists under this site.
            ## @return a column_definition
            ## 
            def columns
                return @columns
            end
            ## 
            ## Sets the columns property value. The collection of column definitions reusable across lists under this site.
            ## @param value Value to set for the columns property.
            ## @return a void
            ## 
            def columns=(value)
                @columns = value
            end
            ## 
            ## Instantiates a new site and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.site"
            end
            ## 
            ## Gets the contentTypes property value. The collection of content types defined for this site.
            ## @return a content_type
            ## 
            def content_types
                return @content_types
            end
            ## 
            ## Sets the contentTypes property value. The collection of content types defined for this site.
            ## @param value Value to set for the contentTypes property.
            ## @return a void
            ## 
            def content_types=(value)
                @content_types = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a site
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Site.new
            end
            ## 
            ## Gets the deleted property value. The deleted property
            ## @return a deleted
            ## 
            def deleted
                return @deleted
            end
            ## 
            ## Sets the deleted property value. The deleted property
            ## @param value Value to set for the deleted property.
            ## @return a void
            ## 
            def deleted=(value)
                @deleted = value
            end
            ## 
            ## Gets the displayName property value. The full title for the site. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The full title for the site. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the drive property value. The default drive (document library) for this site.
            ## @return a drive
            ## 
            def drive
                return @drive
            end
            ## 
            ## Sets the drive property value. The default drive (document library) for this site.
            ## @param value Value to set for the drive property.
            ## @return a void
            ## 
            def drive=(value)
                @drive = value
            end
            ## 
            ## Gets the drives property value. The collection of drives (document libraries) under this site.
            ## @return a drive
            ## 
            def drives
                return @drives
            end
            ## 
            ## Sets the drives property value. The collection of drives (document libraries) under this site.
            ## @param value Value to set for the drives property.
            ## @return a void
            ## 
            def drives=(value)
                @drives = value
            end
            ## 
            ## Gets the externalColumns property value. The collection of column definitions available in the site that are referenced from the sites in the parent hierarchy of the current site.
            ## @return a column_definition
            ## 
            def external_columns
                return @external_columns
            end
            ## 
            ## Sets the externalColumns property value. The collection of column definitions available in the site that are referenced from the sites in the parent hierarchy of the current site.
            ## @param value Value to set for the externalColumns property.
            ## @return a void
            ## 
            def external_columns=(value)
                @external_columns = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "analytics" => lambda {|n| @analytics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemAnalytics.create_from_discriminator_value(pn) }) },
                    "columns" => lambda {|n| @columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "contentTypes" => lambda {|n| @content_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ContentType.create_from_discriminator_value(pn) }) },
                    "deleted" => lambda {|n| @deleted = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Deleted.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "drive" => lambda {|n| @drive = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Drive.create_from_discriminator_value(pn) }) },
                    "drives" => lambda {|n| @drives = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Drive.create_from_discriminator_value(pn) }) },
                    "externalColumns" => lambda {|n| @external_columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "informationProtection" => lambda {|n| @information_protection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InformationProtection.create_from_discriminator_value(pn) }) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BaseItem.create_from_discriminator_value(pn) }) },
                    "lists" => lambda {|n| @lists = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::List.create_from_discriminator_value(pn) }) },
                    "onenote" => lambda {|n| @onenote = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Onenote.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RichLongRunningOperation.create_from_discriminator_value(pn) }) },
                    "pages" => lambda {|n| @pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BaseSitePage.create_from_discriminator_value(pn) }) },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Permission.create_from_discriminator_value(pn) }) },
                    "root" => lambda {|n| @root = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Root.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SiteSettings.create_from_discriminator_value(pn) }) },
                    "sharepointIds" => lambda {|n| @sharepoint_ids = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "siteCollection" => lambda {|n| @site_collection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SiteCollection.create_from_discriminator_value(pn) }) },
                    "sites" => lambda {|n| @sites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Site.create_from_discriminator_value(pn) }) },
                    "termStore" => lambda {|n| @term_store = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TermStoreStore.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the informationProtection property value. The informationProtection property
            ## @return a information_protection
            ## 
            def information_protection
                return @information_protection
            end
            ## 
            ## Sets the informationProtection property value. The informationProtection property
            ## @param value Value to set for the informationProtection property.
            ## @return a void
            ## 
            def information_protection=(value)
                @information_protection = value
            end
            ## 
            ## Gets the items property value. Used to address any item contained in this site. This collection cannot be enumerated.
            ## @return a base_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. Used to address any item contained in this site. This collection cannot be enumerated.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the lists property value. The collection of lists under this site.
            ## @return a list
            ## 
            def lists
                return @lists
            end
            ## 
            ## Sets the lists property value. The collection of lists under this site.
            ## @param value Value to set for the lists property.
            ## @return a void
            ## 
            def lists=(value)
                @lists = value
            end
            ## 
            ## Gets the onenote property value. The onenote property
            ## @return a onenote
            ## 
            def onenote
                return @onenote
            end
            ## 
            ## Sets the onenote property value. The onenote property
            ## @param value Value to set for the onenote property.
            ## @return a void
            ## 
            def onenote=(value)
                @onenote = value
            end
            ## 
            ## Gets the operations property value. The collection of long running operations for the site.
            ## @return a rich_long_running_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The collection of long running operations for the site.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the pages property value. The collection of pages in the baseSitePages list in this site.
            ## @return a base_site_page
            ## 
            def pages
                return @pages
            end
            ## 
            ## Sets the pages property value. The collection of pages in the baseSitePages list in this site.
            ## @param value Value to set for the pages property.
            ## @return a void
            ## 
            def pages=(value)
                @pages = value
            end
            ## 
            ## Gets the permissions property value. The permissions associated with the site. Nullable.
            ## @return a permission
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. The permissions associated with the site. Nullable.
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the root property value. If present, indicates that this is the root site in the site collection. Read-only.
            ## @return a root
            ## 
            def root
                return @root
            end
            ## 
            ## Sets the root property value. If present, indicates that this is the root site in the site collection. Read-only.
            ## @param value Value to set for the root property.
            ## @return a void
            ## 
            def root=(value)
                @root = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("analytics", @analytics)
                writer.write_collection_of_object_values("columns", @columns)
                writer.write_collection_of_object_values("contentTypes", @content_types)
                writer.write_object_value("deleted", @deleted)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("drive", @drive)
                writer.write_collection_of_object_values("drives", @drives)
                writer.write_collection_of_object_values("externalColumns", @external_columns)
                writer.write_object_value("informationProtection", @information_protection)
                writer.write_collection_of_object_values("items", @items)
                writer.write_collection_of_object_values("lists", @lists)
                writer.write_object_value("onenote", @onenote)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("pages", @pages)
                writer.write_collection_of_object_values("permissions", @permissions)
                writer.write_object_value("root", @root)
                writer.write_object_value("settings", @settings)
                writer.write_object_value("sharepointIds", @sharepoint_ids)
                writer.write_object_value("siteCollection", @site_collection)
                writer.write_collection_of_object_values("sites", @sites)
                writer.write_object_value("termStore", @term_store)
            end
            ## 
            ## Gets the settings property value. The settings on this site. Read-only.
            ## @return a site_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings on this site. Read-only.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the sharepointIds property value. Returns identifiers useful for SharePoint REST compatibility. Read-only.
            ## @return a sharepoint_ids
            ## 
            def sharepoint_ids
                return @sharepoint_ids
            end
            ## 
            ## Sets the sharepointIds property value. Returns identifiers useful for SharePoint REST compatibility. Read-only.
            ## @param value Value to set for the sharepointIds property.
            ## @return a void
            ## 
            def sharepoint_ids=(value)
                @sharepoint_ids = value
            end
            ## 
            ## Gets the siteCollection property value. Provides details about the site's site collection. Available only on the root site. Read-only.
            ## @return a site_collection
            ## 
            def site_collection
                return @site_collection
            end
            ## 
            ## Sets the siteCollection property value. Provides details about the site's site collection. Available only on the root site. Read-only.
            ## @param value Value to set for the siteCollection property.
            ## @return a void
            ## 
            def site_collection=(value)
                @site_collection = value
            end
            ## 
            ## Gets the sites property value. The collection of the sub-sites under this site.
            ## @return a site
            ## 
            def sites
                return @sites
            end
            ## 
            ## Sets the sites property value. The collection of the sub-sites under this site.
            ## @param value Value to set for the sites property.
            ## @return a void
            ## 
            def sites=(value)
                @sites = value
            end
            ## 
            ## Gets the termStore property value. The termStore under this site.
            ## @return a term_store_store
            ## 
            def term_store
                return @term_store
            end
            ## 
            ## Sets the termStore property value. The termStore under this site.
            ## @param value Value to set for the termStore property.
            ## @return a void
            ## 
            def term_store=(value)
                @term_store = value
            end
        end
    end
end
