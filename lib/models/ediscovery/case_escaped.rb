require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './ediscovery'

module MicrosoftGraphBeta::Models::Ediscovery
    class Case_escaped < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The user who closed the case.
        @closed_by
        ## 
        # The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @closed_date_time
        ## 
        # The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @created_date_time
        ## 
        # Returns a list of case custodian objects for this case.  Nullable.
        @custodians
        ## 
        # The case description.
        @description
        ## 
        # The case name.
        @display_name
        ## 
        # The external case number for customer reference.
        @external_id
        ## 
        # The last user who modified the entity.
        @last_modified_by
        ## 
        # The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @last_modified_date_time
        ## 
        # Returns a list of case legalHold objects for this case.  Nullable.
        @legal_holds
        ## 
        # Returns a list of case noncustodialDataSource objects for this case.  Nullable.
        @noncustodial_data_sources
        ## 
        # Returns a list of case operation objects for this case. Nullable.
        @operations
        ## 
        # Returns a list of reviewSet objects in the case. Read-only. Nullable.
        @review_sets
        ## 
        # The settings property
        @settings
        ## 
        # Returns a list of sourceCollection objects associated with this case.
        @source_collections
        ## 
        # The case status. Possible values are unknown, active, pendingDelete, closing, closed, and closedWithError. For details, see the following table.
        @status
        ## 
        # Returns a list of tag objects associated to this case.
        @tags
        ## 
        ## Gets the closedBy property value. The user who closed the case.
        ## @return a identity_set
        ## 
        def closed_by
            return @closed_by
        end
        ## 
        ## Sets the closedBy property value. The user who closed the case.
        ## @param value Value to set for the closedBy property.
        ## @return a void
        ## 
        def closed_by=(value)
            @closed_by = value
        end
        ## 
        ## Gets the closedDateTime property value. The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def closed_date_time
            return @closed_date_time
        end
        ## 
        ## Sets the closedDateTime property value. The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the closedDateTime property.
        ## @return a void
        ## 
        def closed_date_time=(value)
            @closed_date_time = value
        end
        ## 
        ## Instantiates a new case and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a case_escaped
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Case_escaped.new
        end
        ## 
        ## Gets the custodians property value. Returns a list of case custodian objects for this case.  Nullable.
        ## @return a custodian
        ## 
        def custodians
            return @custodians
        end
        ## 
        ## Sets the custodians property value. Returns a list of case custodian objects for this case.  Nullable.
        ## @param value Value to set for the custodians property.
        ## @return a void
        ## 
        def custodians=(value)
            @custodians = value
        end
        ## 
        ## Gets the description property value. The case description.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The case description.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The case name.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The case name.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the externalId property value. The external case number for customer reference.
        ## @return a string
        ## 
        def external_id
            return @external_id
        end
        ## 
        ## Sets the externalId property value. The external case number for customer reference.
        ## @param value Value to set for the externalId property.
        ## @return a void
        ## 
        def external_id=(value)
            @external_id = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "closedBy" => lambda {|n| @closed_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "closedDateTime" => lambda {|n| @closed_date_time = n.get_date_time_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "custodians" => lambda {|n| @custodians = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::Custodian.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "externalId" => lambda {|n| @external_id = n.get_string_value() },
                "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "legalHolds" => lambda {|n| @legal_holds = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::LegalHold.create_from_discriminator_value(pn) }) },
                "noncustodialDataSources" => lambda {|n| @noncustodial_data_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::NoncustodialDataSource.create_from_discriminator_value(pn) }) },
                "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::CaseOperation.create_from_discriminator_value(pn) }) },
                "reviewSets" => lambda {|n| @review_sets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::ReviewSet.create_from_discriminator_value(pn) }) },
                "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::CaseSettings.create_from_discriminator_value(pn) }) },
                "sourceCollections" => lambda {|n| @source_collections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::SourceCollection.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::Ediscovery::CaseStatus) },
                "tags" => lambda {|n| @tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::Tag.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the lastModifiedBy property value. The last user who modified the entity.
        ## @return a identity_set
        ## 
        def last_modified_by
            return @last_modified_by
        end
        ## 
        ## Sets the lastModifiedBy property value. The last user who modified the entity.
        ## @param value Value to set for the lastModifiedBy property.
        ## @return a void
        ## 
        def last_modified_by=(value)
            @last_modified_by = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the legalHolds property value. Returns a list of case legalHold objects for this case.  Nullable.
        ## @return a legal_hold
        ## 
        def legal_holds
            return @legal_holds
        end
        ## 
        ## Sets the legalHolds property value. Returns a list of case legalHold objects for this case.  Nullable.
        ## @param value Value to set for the legalHolds property.
        ## @return a void
        ## 
        def legal_holds=(value)
            @legal_holds = value
        end
        ## 
        ## Gets the noncustodialDataSources property value. Returns a list of case noncustodialDataSource objects for this case.  Nullable.
        ## @return a noncustodial_data_source
        ## 
        def noncustodial_data_sources
            return @noncustodial_data_sources
        end
        ## 
        ## Sets the noncustodialDataSources property value. Returns a list of case noncustodialDataSource objects for this case.  Nullable.
        ## @param value Value to set for the noncustodialDataSources property.
        ## @return a void
        ## 
        def noncustodial_data_sources=(value)
            @noncustodial_data_sources = value
        end
        ## 
        ## Gets the operations property value. Returns a list of case operation objects for this case. Nullable.
        ## @return a case_operation
        ## 
        def operations
            return @operations
        end
        ## 
        ## Sets the operations property value. Returns a list of case operation objects for this case. Nullable.
        ## @param value Value to set for the operations property.
        ## @return a void
        ## 
        def operations=(value)
            @operations = value
        end
        ## 
        ## Gets the reviewSets property value. Returns a list of reviewSet objects in the case. Read-only. Nullable.
        ## @return a review_set
        ## 
        def review_sets
            return @review_sets
        end
        ## 
        ## Sets the reviewSets property value. Returns a list of reviewSet objects in the case. Read-only. Nullable.
        ## @param value Value to set for the reviewSets property.
        ## @return a void
        ## 
        def review_sets=(value)
            @review_sets = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("closedBy", @closed_by)
            writer.write_date_time_value("closedDateTime", @closed_date_time)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_collection_of_object_values("custodians", @custodians)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("externalId", @external_id)
            writer.write_object_value("lastModifiedBy", @last_modified_by)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_collection_of_object_values("legalHolds", @legal_holds)
            writer.write_collection_of_object_values("noncustodialDataSources", @noncustodial_data_sources)
            writer.write_collection_of_object_values("operations", @operations)
            writer.write_collection_of_object_values("reviewSets", @review_sets)
            writer.write_object_value("settings", @settings)
            writer.write_collection_of_object_values("sourceCollections", @source_collections)
            writer.write_enum_value("status", @status)
            writer.write_collection_of_object_values("tags", @tags)
        end
        ## 
        ## Gets the settings property value. The settings property
        ## @return a case_settings
        ## 
        def settings
            return @settings
        end
        ## 
        ## Sets the settings property value. The settings property
        ## @param value Value to set for the settings property.
        ## @return a void
        ## 
        def settings=(value)
            @settings = value
        end
        ## 
        ## Gets the sourceCollections property value. Returns a list of sourceCollection objects associated with this case.
        ## @return a source_collection
        ## 
        def source_collections
            return @source_collections
        end
        ## 
        ## Sets the sourceCollections property value. Returns a list of sourceCollection objects associated with this case.
        ## @param value Value to set for the sourceCollections property.
        ## @return a void
        ## 
        def source_collections=(value)
            @source_collections = value
        end
        ## 
        ## Gets the status property value. The case status. Possible values are unknown, active, pendingDelete, closing, closed, and closedWithError. For details, see the following table.
        ## @return a case_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The case status. Possible values are unknown, active, pendingDelete, closing, closed, and closedWithError. For details, see the following table.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
        ## 
        ## Gets the tags property value. Returns a list of tag objects associated to this case.
        ## @return a tag
        ## 
        def tags
            return @tags
        end
        ## 
        ## Sets the tags property value. Returns a list of tag objects associated to this case.
        ## @param value Value to set for the tags property.
        ## @return a void
        ## 
        def tags=(value)
            @tags = value
        end
    end
end
