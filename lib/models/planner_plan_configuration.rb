require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PlannerPlanConfiguration < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # List the buckets that should be created in the plan.
        @buckets
        ## 
        # The identity of the creator of the plan configuration.
        @created_by
        ## 
        # The date and time when the plan configuration was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        @created_date_time
        ## 
        # The language code for the default language to be used for the names of the objects created for the plan.
        @default_language
        ## 
        # The identity of the user who last modified the plan configuration.
        @last_modified_by
        ## 
        # The date and time when the plan configuration was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        @last_modified_date_time
        ## 
        # Localized names for the plan configuration.
        @localizations
        ## 
        ## Gets the buckets property value. List the buckets that should be created in the plan.
        ## @return a planner_plan_configuration_bucket_definition
        ## 
        def buckets
            return @buckets
        end
        ## 
        ## Sets the buckets property value. List the buckets that should be created in the plan.
        ## @param value Value to set for the buckets property.
        ## @return a void
        ## 
        def buckets=(value)
            @buckets = value
        end
        ## 
        ## Instantiates a new plannerPlanConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. The identity of the creator of the plan configuration.
        ## @return a identity_set
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. The identity of the creator of the plan configuration.
        ## @param value Value to set for the createdBy property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Gets the createdDateTime property value. The date and time when the plan configuration was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time when the plan configuration was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a planner_plan_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PlannerPlanConfiguration.new
        end
        ## 
        ## Gets the defaultLanguage property value. The language code for the default language to be used for the names of the objects created for the plan.
        ## @return a string
        ## 
        def default_language
            return @default_language
        end
        ## 
        ## Sets the defaultLanguage property value. The language code for the default language to be used for the names of the objects created for the plan.
        ## @param value Value to set for the defaultLanguage property.
        ## @return a void
        ## 
        def default_language=(value)
            @default_language = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "buckets" => lambda {|n| @buckets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlanConfigurationBucketDefinition.create_from_discriminator_value(pn) }) },
                "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "defaultLanguage" => lambda {|n| @default_language = n.get_string_value() },
                "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "localizations" => lambda {|n| @localizations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlanConfigurationLocalization.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the lastModifiedBy property value. The identity of the user who last modified the plan configuration.
        ## @return a identity_set
        ## 
        def last_modified_by
            return @last_modified_by
        end
        ## 
        ## Sets the lastModifiedBy property value. The identity of the user who last modified the plan configuration.
        ## @param value Value to set for the lastModifiedBy property.
        ## @return a void
        ## 
        def last_modified_by=(value)
            @last_modified_by = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The date and time when the plan configuration was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The date and time when the plan configuration was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the localizations property value. Localized names for the plan configuration.
        ## @return a planner_plan_configuration_localization
        ## 
        def localizations
            return @localizations
        end
        ## 
        ## Sets the localizations property value. Localized names for the plan configuration.
        ## @param value Value to set for the localizations property.
        ## @return a void
        ## 
        def localizations=(value)
            @localizations = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("buckets", @buckets)
            writer.write_object_value("createdBy", @created_by)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("defaultLanguage", @default_language)
            writer.write_object_value("lastModifiedBy", @last_modified_by)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_collection_of_object_values("localizations", @localizations)
        end
    end
end
