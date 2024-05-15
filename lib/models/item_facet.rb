require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemFacet < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The audiences that are able to see the values contained within the associated entity. Possible values are: me, family, contacts, groupMembers, organization, federatedOrganizations, everyone, unknownFutureValue.
            @allowed_audiences
            ## 
            # The createdBy property
            @created_by
            ## 
            # Provides the dateTimeOffset for when the entity was created.
            @created_date_time
            ## 
            # Contains inference detail if the entity is inferred by the creating or modifying application.
            @inference
            ## 
            # The isSearchable property
            @is_searchable
            ## 
            # The lastModifiedBy property
            @last_modified_by
            ## 
            # Provides the dateTimeOffset for when the entity was created.
            @last_modified_date_time
            ## 
            # Where the values within an entity originated if synced from another service.
            @source
            ## 
            # The sources property
            @sources
            ## 
            ## Gets the allowedAudiences property value. The audiences that are able to see the values contained within the associated entity. Possible values are: me, family, contacts, groupMembers, organization, federatedOrganizations, everyone, unknownFutureValue.
            ## @return a allowed_audiences
            ## 
            def allowed_audiences
                return @allowed_audiences
            end
            ## 
            ## Sets the allowedAudiences property value. The audiences that are able to see the values contained within the associated entity. Possible values are: me, family, contacts, groupMembers, organization, federatedOrganizations, everyone, unknownFutureValue.
            ## @param value Value to set for the allowedAudiences property.
            ## @return a void
            ## 
            def allowed_audiences=(value)
                @allowed_audiences = value
            end
            ## 
            ## Instantiates a new ItemFacet and sets the default values.
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
            ## Gets the createdDateTime property value. Provides the dateTimeOffset for when the entity was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Provides the dateTimeOffset for when the entity was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a item_facet
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.educationalActivity"
                            return EducationalActivity.new
                        when "#microsoft.graph.itemAddress"
                            return ItemAddress.new
                        when "#microsoft.graph.itemEmail"
                            return ItemEmail.new
                        when "#microsoft.graph.itemPatent"
                            return ItemPatent.new
                        when "#microsoft.graph.itemPhone"
                            return ItemPhone.new
                        when "#microsoft.graph.itemPublication"
                            return ItemPublication.new
                        when "#microsoft.graph.languageProficiency"
                            return LanguageProficiency.new
                        when "#microsoft.graph.personAnnotation"
                            return PersonAnnotation.new
                        when "#microsoft.graph.personAnnualEvent"
                            return PersonAnnualEvent.new
                        when "#microsoft.graph.personAward"
                            return PersonAward.new
                        when "#microsoft.graph.personCertification"
                            return PersonCertification.new
                        when "#microsoft.graph.personInterest"
                            return PersonInterest.new
                        when "#microsoft.graph.personName"
                            return PersonName.new
                        when "#microsoft.graph.personResponsibility"
                            return PersonResponsibility.new
                        when "#microsoft.graph.personWebsite"
                            return PersonWebsite.new
                        when "#microsoft.graph.projectParticipation"
                            return ProjectParticipation.new
                        when "#microsoft.graph.skillProficiency"
                            return SkillProficiency.new
                        when "#microsoft.graph.userAccountInformation"
                            return UserAccountInformation.new
                        when "#microsoft.graph.webAccount"
                            return WebAccount.new
                        when "#microsoft.graph.workPosition"
                            return WorkPosition.new
                    end
                end
                return ItemFacet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedAudiences" => lambda {|n| @allowed_audiences = n.get_enum_values(MicrosoftGraphBeta::Models::AllowedAudiences) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "inference" => lambda {|n| @inference = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InferenceData.create_from_discriminator_value(pn) }) },
                    "isSearchable" => lambda {|n| @is_searchable = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "source" => lambda {|n| @source = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PersonDataSources.create_from_discriminator_value(pn) }) },
                    "sources" => lambda {|n| @sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProfileSourceAnnotation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the inference property value. Contains inference detail if the entity is inferred by the creating or modifying application.
            ## @return a inference_data
            ## 
            def inference
                return @inference
            end
            ## 
            ## Sets the inference property value. Contains inference detail if the entity is inferred by the creating or modifying application.
            ## @param value Value to set for the inference property.
            ## @return a void
            ## 
            def inference=(value)
                @inference = value
            end
            ## 
            ## Gets the isSearchable property value. The isSearchable property
            ## @return a boolean
            ## 
            def is_searchable
                return @is_searchable
            end
            ## 
            ## Sets the isSearchable property value. The isSearchable property
            ## @param value Value to set for the isSearchable property.
            ## @return a void
            ## 
            def is_searchable=(value)
                @is_searchable = value
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
            ## Gets the lastModifiedDateTime property value. Provides the dateTimeOffset for when the entity was created.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Provides the dateTimeOffset for when the entity was created.
            ## @param value Value to set for the lastModifiedDateTime property.
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
                writer.write_enum_value("allowedAudiences", @allowed_audiences)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("inference", @inference)
                writer.write_boolean_value("isSearchable", @is_searchable)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("source", @source)
                writer.write_collection_of_object_values("sources", @sources)
            end
            ## 
            ## Gets the source property value. Where the values within an entity originated if synced from another service.
            ## @return a person_data_sources
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. Where the values within an entity originated if synced from another service.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the sources property value. The sources property
            ## @return a profile_source_annotation
            ## 
            def sources
                return @sources
            end
            ## 
            ## Sets the sources property value. The sources property
            ## @param value Value to set for the sources property.
            ## @return a void
            ## 
            def sources=(value)
                @sources = value
            end
        end
    end
end
