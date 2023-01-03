require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class BusinessScenario < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The createdBy property
        @created_by
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The displayName property
        @display_name
        ## 
        # The lastModifiedBy property
        @last_modified_by
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        # The ownerAppIds property
        @owner_app_ids
        ## 
        # The planner property
        @planner
        ## 
        # The uniqueName property
        @unique_name
        ## 
        ## Instantiates a new BusinessScenario and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. The createdBy property
        ## @return a identity_set
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. The createdBy property
        ## @param value Value to set for the createdBy property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Gets the createdDateTime property value. The createdDateTime property
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The createdDateTime property
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a business_scenario
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return BusinessScenario.new
        end
        ## 
        ## Gets the displayName property value. The displayName property
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The displayName property
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
            return super.merge({
                "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "ownerAppIds" => lambda {|n| @owner_app_ids = n.get_collection_of_primitive_values(String) },
                "planner" => lambda {|n| @planner = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BusinessScenarioPlanner.create_from_discriminator_value(pn) }) },
                "uniqueName" => lambda {|n| @unique_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastModifiedBy property value. The lastModifiedBy property
        ## @return a identity_set
        ## 
        def last_modified_by
            return @last_modified_by
        end
        ## 
        ## Sets the lastModifiedBy property value. The lastModifiedBy property
        ## @param value Value to set for the lastModifiedBy property.
        ## @return a void
        ## 
        def last_modified_by=(value)
            @last_modified_by = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the ownerAppIds property value. The ownerAppIds property
        ## @return a string
        ## 
        def owner_app_ids
            return @owner_app_ids
        end
        ## 
        ## Sets the ownerAppIds property value. The ownerAppIds property
        ## @param value Value to set for the ownerAppIds property.
        ## @return a void
        ## 
        def owner_app_ids=(value)
            @owner_app_ids = value
        end
        ## 
        ## Gets the planner property value. The planner property
        ## @return a business_scenario_planner
        ## 
        def planner
            return @planner
        end
        ## 
        ## Sets the planner property value. The planner property
        ## @param value Value to set for the planner property.
        ## @return a void
        ## 
        def planner=(value)
            @planner = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("createdBy", @created_by)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("displayName", @display_name)
            writer.write_object_value("lastModifiedBy", @last_modified_by)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_collection_of_primitive_values("ownerAppIds", @owner_app_ids)
            writer.write_object_value("planner", @planner)
            writer.write_string_value("uniqueName", @unique_name)
        end
        ## 
        ## Gets the uniqueName property value. The uniqueName property
        ## @return a string
        ## 
        def unique_name
            return @unique_name
        end
        ## 
        ## Sets the uniqueName property value. The uniqueName property
        ## @param value Value to set for the uniqueName property.
        ## @return a void
        ## 
        def unique_name=(value)
            @unique_name = value
        end
    end
end
