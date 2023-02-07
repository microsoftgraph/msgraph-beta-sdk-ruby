require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './ediscovery'

module MicrosoftGraphBeta::Models::Ediscovery
    class ReviewSet < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The user who created the review set. Read-only.
        @created_by
        ## 
        # The datetime when the review set was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        @created_date_time
        ## 
        # The review set name. The name is unique with a maximum limit of 64 characters.
        @display_name
        ## 
        # The queries property
        @queries
        ## 
        ## Instantiates a new reviewSet and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. The user who created the review set. Read-only.
        ## @return a identity_set
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. The user who created the review set. Read-only.
        ## @param value Value to set for the created_by property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Gets the createdDateTime property value. The datetime when the review set was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The datetime when the review set was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a review_set
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ReviewSet.new
        end
        ## 
        ## Gets the displayName property value. The review set name. The name is unique with a maximum limit of 64 characters.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The review set name. The name is unique with a maximum limit of 64 characters.
        ## @param value Value to set for the display_name property.
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
                "queries" => lambda {|n| @queries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::ReviewSetQuery.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the queries property value. The queries property
        ## @return a review_set_query
        ## 
        def queries
            return @queries
        end
        ## 
        ## Sets the queries property value. The queries property
        ## @param value Value to set for the queries property.
        ## @return a void
        ## 
        def queries=(value)
            @queries = value
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
            writer.write_collection_of_object_values("queries", @queries)
        end
    end
end
