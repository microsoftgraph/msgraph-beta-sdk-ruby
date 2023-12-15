require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EdiscoverySourceCollection < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Adds the results of the sourceCollection to the specified reviewSet.
            @add_to_review_set_operation
            ## 
            # Adds an additional source to the sourceCollection.
            @additional_sources
            ## 
            # The query string in KQL (Keyword Query Language) query. For details, see Keyword queries and search conditions for Content Search and eDiscovery. You can refine searches by using fields paired with values; for example, subject:'Quarterly Financials' AND Date>=06/01/2016 AND Date<=07/01/2016.
            @content_query
            ## 
            # The user who created the sourceCollection.
            @created_by
            ## 
            # The date and time the sourceCollection was created.
            @created_date_time
            ## 
            # Custodian sources that are included in the sourceCollection.
            @custodian_sources
            ## 
            # When specified, the collection will span across a service for an entire workload. Possible values are: none, allTenantMailboxes, allTenantSites, allCaseCustodians, allCaseNoncustodialDataSources.
            @data_source_scopes
            ## 
            # The description of the sourceCollection.
            @description
            ## 
            # The display name of the sourceCollection.
            @display_name
            ## 
            # The last estimate operation associated with the sourceCollection.
            @last_estimate_statistics_operation
            ## 
            # The last user who modified the sourceCollection.
            @last_modified_by
            ## 
            # The last date and time the sourceCollection was modified.
            @last_modified_date_time
            ## 
            # noncustodialDataSource sources that are included in the sourceCollection
            @noncustodial_sources
            ## 
            ## Gets the addToReviewSetOperation property value. Adds the results of the sourceCollection to the specified reviewSet.
            ## @return a ediscovery_add_to_review_set_operation
            ## 
            def add_to_review_set_operation
                return @add_to_review_set_operation
            end
            ## 
            ## Sets the addToReviewSetOperation property value. Adds the results of the sourceCollection to the specified reviewSet.
            ## @param value Value to set for the addToReviewSetOperation property.
            ## @return a void
            ## 
            def add_to_review_set_operation=(value)
                @add_to_review_set_operation = value
            end
            ## 
            ## Gets the additionalSources property value. Adds an additional source to the sourceCollection.
            ## @return a ediscovery_data_source
            ## 
            def additional_sources
                return @additional_sources
            end
            ## 
            ## Sets the additionalSources property value. Adds an additional source to the sourceCollection.
            ## @param value Value to set for the additionalSources property.
            ## @return a void
            ## 
            def additional_sources=(value)
                @additional_sources = value
            end
            ## 
            ## Instantiates a new ediscoverySourceCollection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentQuery property value. The query string in KQL (Keyword Query Language) query. For details, see Keyword queries and search conditions for Content Search and eDiscovery. You can refine searches by using fields paired with values; for example, subject:'Quarterly Financials' AND Date>=06/01/2016 AND Date<=07/01/2016.
            ## @return a string
            ## 
            def content_query
                return @content_query
            end
            ## 
            ## Sets the contentQuery property value. The query string in KQL (Keyword Query Language) query. For details, see Keyword queries and search conditions for Content Search and eDiscovery. You can refine searches by using fields paired with values; for example, subject:'Quarterly Financials' AND Date>=06/01/2016 AND Date<=07/01/2016.
            ## @param value Value to set for the contentQuery property.
            ## @return a void
            ## 
            def content_query=(value)
                @content_query = value
            end
            ## 
            ## Gets the createdBy property value. The user who created the sourceCollection.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The user who created the sourceCollection.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the sourceCollection was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the sourceCollection was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ediscovery_source_collection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EdiscoverySourceCollection.new
            end
            ## 
            ## Gets the custodianSources property value. Custodian sources that are included in the sourceCollection.
            ## @return a ediscovery_data_source
            ## 
            def custodian_sources
                return @custodian_sources
            end
            ## 
            ## Sets the custodianSources property value. Custodian sources that are included in the sourceCollection.
            ## @param value Value to set for the custodianSources property.
            ## @return a void
            ## 
            def custodian_sources=(value)
                @custodian_sources = value
            end
            ## 
            ## Gets the dataSourceScopes property value. When specified, the collection will span across a service for an entire workload. Possible values are: none, allTenantMailboxes, allTenantSites, allCaseCustodians, allCaseNoncustodialDataSources.
            ## @return a ediscovery_data_source_scopes
            ## 
            def data_source_scopes
                return @data_source_scopes
            end
            ## 
            ## Sets the dataSourceScopes property value. When specified, the collection will span across a service for an entire workload. Possible values are: none, allTenantMailboxes, allTenantSites, allCaseCustodians, allCaseNoncustodialDataSources.
            ## @param value Value to set for the dataSourceScopes property.
            ## @return a void
            ## 
            def data_source_scopes=(value)
                @data_source_scopes = value
            end
            ## 
            ## Gets the description property value. The description of the sourceCollection.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the sourceCollection.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the sourceCollection.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the sourceCollection.
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
                    "addToReviewSetOperation" => lambda {|n| @add_to_review_set_operation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryAddToReviewSetOperation.create_from_discriminator_value(pn) }) },
                    "additionalSources" => lambda {|n| @additional_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryDataSource.create_from_discriminator_value(pn) }) },
                    "contentQuery" => lambda {|n| @content_query = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "custodianSources" => lambda {|n| @custodian_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryDataSource.create_from_discriminator_value(pn) }) },
                    "dataSourceScopes" => lambda {|n| @data_source_scopes = n.get_enum_value(MicrosoftGraphBeta::Models::EdiscoveryDataSourceScopes) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastEstimateStatisticsOperation" => lambda {|n| @last_estimate_statistics_operation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryEstimateStatisticsOperation.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "noncustodialSources" => lambda {|n| @noncustodial_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryNoncustodialDataSource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastEstimateStatisticsOperation property value. The last estimate operation associated with the sourceCollection.
            ## @return a ediscovery_estimate_statistics_operation
            ## 
            def last_estimate_statistics_operation
                return @last_estimate_statistics_operation
            end
            ## 
            ## Sets the lastEstimateStatisticsOperation property value. The last estimate operation associated with the sourceCollection.
            ## @param value Value to set for the lastEstimateStatisticsOperation property.
            ## @return a void
            ## 
            def last_estimate_statistics_operation=(value)
                @last_estimate_statistics_operation = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The last user who modified the sourceCollection.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The last user who modified the sourceCollection.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The last date and time the sourceCollection was modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The last date and time the sourceCollection was modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the noncustodialSources property value. noncustodialDataSource sources that are included in the sourceCollection
            ## @return a ediscovery_noncustodial_data_source
            ## 
            def noncustodial_sources
                return @noncustodial_sources
            end
            ## 
            ## Sets the noncustodialSources property value. noncustodialDataSource sources that are included in the sourceCollection
            ## @param value Value to set for the noncustodialSources property.
            ## @return a void
            ## 
            def noncustodial_sources=(value)
                @noncustodial_sources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("addToReviewSetOperation", @add_to_review_set_operation)
                writer.write_collection_of_object_values("additionalSources", @additional_sources)
                writer.write_string_value("contentQuery", @content_query)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("custodianSources", @custodian_sources)
                writer.write_enum_value("dataSourceScopes", @data_source_scopes)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("lastEstimateStatisticsOperation", @last_estimate_statistics_operation)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("noncustodialSources", @noncustodial_sources)
            end
        end
    end
end
