require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './ediscovery'

module MicrosoftGraphBeta::Models::Ediscovery
    class Custodian < MicrosoftGraphBeta::Models::Ediscovery::DataSourceContainer
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Date and time the custodian acknowledged a hold notification.
        @acknowledged_date_time
        ## 
        # Identifies whether a custodian's sources were placed on hold during creation.
        @apply_hold_to_sources
        ## 
        # Email address of the custodian.
        @email
        ## 
        # Data source entity for SharePoint sites associated with the custodian.
        @site_sources
        ## 
        # Data source entity for groups associated with the custodian.
        @unified_group_sources
        ## 
        # Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
        @user_sources
        ## 
        ## Gets the acknowledgedDateTime property value. Date and time the custodian acknowledged a hold notification.
        ## @return a date_time
        ## 
        def acknowledged_date_time
            return @acknowledged_date_time
        end
        ## 
        ## Sets the acknowledgedDateTime property value. Date and time the custodian acknowledged a hold notification.
        ## @param value Value to set for the acknowledgedDateTime property.
        ## @return a void
        ## 
        def acknowledged_date_time=(value)
            @acknowledged_date_time = value
        end
        ## 
        ## Gets the applyHoldToSources property value. Identifies whether a custodian's sources were placed on hold during creation.
        ## @return a boolean
        ## 
        def apply_hold_to_sources
            return @apply_hold_to_sources
        end
        ## 
        ## Sets the applyHoldToSources property value. Identifies whether a custodian's sources were placed on hold during creation.
        ## @param value Value to set for the applyHoldToSources property.
        ## @return a void
        ## 
        def apply_hold_to_sources=(value)
            @apply_hold_to_sources = value
        end
        ## 
        ## Instantiates a new Custodian and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.ediscovery.custodian"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a custodian
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Custodian.new
        end
        ## 
        ## Gets the email property value. Email address of the custodian.
        ## @return a string
        ## 
        def email
            return @email
        end
        ## 
        ## Sets the email property value. Email address of the custodian.
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
                "acknowledgedDateTime" => lambda {|n| @acknowledged_date_time = n.get_date_time_value() },
                "applyHoldToSources" => lambda {|n| @apply_hold_to_sources = n.get_boolean_value() },
                "email" => lambda {|n| @email = n.get_string_value() },
                "siteSources" => lambda {|n| @site_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::SiteSource.create_from_discriminator_value(pn) }) },
                "unifiedGroupSources" => lambda {|n| @unified_group_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::UnifiedGroupSource.create_from_discriminator_value(pn) }) },
                "userSources" => lambda {|n| @user_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::UserSource.create_from_discriminator_value(pn) }) },
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
            writer.write_date_time_value("acknowledgedDateTime", @acknowledged_date_time)
            writer.write_boolean_value("applyHoldToSources", @apply_hold_to_sources)
            writer.write_string_value("email", @email)
            writer.write_collection_of_object_values("siteSources", @site_sources)
            writer.write_collection_of_object_values("unifiedGroupSources", @unified_group_sources)
            writer.write_collection_of_object_values("userSources", @user_sources)
        end
        ## 
        ## Gets the siteSources property value. Data source entity for SharePoint sites associated with the custodian.
        ## @return a site_source
        ## 
        def site_sources
            return @site_sources
        end
        ## 
        ## Sets the siteSources property value. Data source entity for SharePoint sites associated with the custodian.
        ## @param value Value to set for the siteSources property.
        ## @return a void
        ## 
        def site_sources=(value)
            @site_sources = value
        end
        ## 
        ## Gets the unifiedGroupSources property value. Data source entity for groups associated with the custodian.
        ## @return a unified_group_source
        ## 
        def unified_group_sources
            return @unified_group_sources
        end
        ## 
        ## Sets the unifiedGroupSources property value. Data source entity for groups associated with the custodian.
        ## @param value Value to set for the unifiedGroupSources property.
        ## @return a void
        ## 
        def unified_group_sources=(value)
            @unified_group_sources = value
        end
        ## 
        ## Gets the userSources property value. Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
        ## @return a user_source
        ## 
        def user_sources
            return @user_sources
        end
        ## 
        ## Sets the userSources property value. Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
        ## @param value Value to set for the userSources property.
        ## @return a void
        ## 
        def user_sources=(value)
            @user_sources = value
        end
    end
end
