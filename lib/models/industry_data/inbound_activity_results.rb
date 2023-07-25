require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class InboundActivityResults < MicrosoftGraphBeta::Models::IndustryData::IndustryDataActivityStatistics
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Number of errors encountered while processing the inbound flow.
                @errors
                ## 
                # Counts of active and inactive groups processed by the inbound flow.
                @groups
                ## 
                # Number of people matched to an Azure Active Directory user, by role.
                @matched_people_by_role
                ## 
                # Counts of active and inactive memberships processed by the inbound flow.
                @memberships
                ## 
                # Counts of active and inactive organizations processed by the inbound flow.
                @organizations
                ## 
                # Counts of active and inactive people processed by the inbound flow.
                @people
                ## 
                # Number of people not matched to an Azure Active Directory user, by role.
                @unmatched_people_by_role
                ## 
                # Number of warnings encountered while processing the inbound flow.
                @warnings
                ## 
                ## Instantiates a new inboundActivityResults and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.industryData.inboundActivityResults"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a inbound_activity_results
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return InboundActivityResults.new
                end
                ## 
                ## Gets the errors property value. Number of errors encountered while processing the inbound flow.
                ## @return a integer
                ## 
                def errors
                    return @errors
                end
                ## 
                ## Sets the errors property value. Number of errors encountered while processing the inbound flow.
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
                        "errors" => lambda {|n| @errors = n.get_number_value() },
                        "groups" => lambda {|n| @groups = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunEntityCountMetric.create_from_discriminator_value(pn) }) },
                        "matchedPeopleByRole" => lambda {|n| @matched_people_by_role = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunRoleCountMetric.create_from_discriminator_value(pn) }) },
                        "memberships" => lambda {|n| @memberships = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunEntityCountMetric.create_from_discriminator_value(pn) }) },
                        "organizations" => lambda {|n| @organizations = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunEntityCountMetric.create_from_discriminator_value(pn) }) },
                        "people" => lambda {|n| @people = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunEntityCountMetric.create_from_discriminator_value(pn) }) },
                        "unmatchedPeopleByRole" => lambda {|n| @unmatched_people_by_role = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunRoleCountMetric.create_from_discriminator_value(pn) }) },
                        "warnings" => lambda {|n| @warnings = n.get_number_value() },
                    })
                end
                ## 
                ## Gets the groups property value. Counts of active and inactive groups processed by the inbound flow.
                ## @return a industry_data_run_entity_count_metric
                ## 
                def groups
                    return @groups
                end
                ## 
                ## Sets the groups property value. Counts of active and inactive groups processed by the inbound flow.
                ## @param value Value to set for the groups property.
                ## @return a void
                ## 
                def groups=(value)
                    @groups = value
                end
                ## 
                ## Gets the matchedPeopleByRole property value. Number of people matched to an Azure Active Directory user, by role.
                ## @return a industry_data_run_role_count_metric
                ## 
                def matched_people_by_role
                    return @matched_people_by_role
                end
                ## 
                ## Sets the matchedPeopleByRole property value. Number of people matched to an Azure Active Directory user, by role.
                ## @param value Value to set for the matchedPeopleByRole property.
                ## @return a void
                ## 
                def matched_people_by_role=(value)
                    @matched_people_by_role = value
                end
                ## 
                ## Gets the memberships property value. Counts of active and inactive memberships processed by the inbound flow.
                ## @return a industry_data_run_entity_count_metric
                ## 
                def memberships
                    return @memberships
                end
                ## 
                ## Sets the memberships property value. Counts of active and inactive memberships processed by the inbound flow.
                ## @param value Value to set for the memberships property.
                ## @return a void
                ## 
                def memberships=(value)
                    @memberships = value
                end
                ## 
                ## Gets the organizations property value. Counts of active and inactive organizations processed by the inbound flow.
                ## @return a industry_data_run_entity_count_metric
                ## 
                def organizations
                    return @organizations
                end
                ## 
                ## Sets the organizations property value. Counts of active and inactive organizations processed by the inbound flow.
                ## @param value Value to set for the organizations property.
                ## @return a void
                ## 
                def organizations=(value)
                    @organizations = value
                end
                ## 
                ## Gets the people property value. Counts of active and inactive people processed by the inbound flow.
                ## @return a industry_data_run_entity_count_metric
                ## 
                def people
                    return @people
                end
                ## 
                ## Sets the people property value. Counts of active and inactive people processed by the inbound flow.
                ## @param value Value to set for the people property.
                ## @return a void
                ## 
                def people=(value)
                    @people = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                end
                ## 
                ## Gets the unmatchedPeopleByRole property value. Number of people not matched to an Azure Active Directory user, by role.
                ## @return a industry_data_run_role_count_metric
                ## 
                def unmatched_people_by_role
                    return @unmatched_people_by_role
                end
                ## 
                ## Sets the unmatchedPeopleByRole property value. Number of people not matched to an Azure Active Directory user, by role.
                ## @param value Value to set for the unmatchedPeopleByRole property.
                ## @return a void
                ## 
                def unmatched_people_by_role=(value)
                    @unmatched_people_by_role = value
                end
                ## 
                ## Gets the warnings property value. Number of warnings encountered while processing the inbound flow.
                ## @return a integer
                ## 
                def warnings
                    return @warnings
                end
                ## 
                ## Sets the warnings property value. Number of warnings encountered while processing the inbound flow.
                ## @param value Value to set for the warnings property.
                ## @return a void
                ## 
                def warnings=(value)
                    @warnings = value
                end
            end
        end
    end
end
