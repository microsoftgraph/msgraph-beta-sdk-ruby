require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/profile'
require_relative '../me'
require_relative './account/account_request_builder'
require_relative './account/item/user_account_information_item_request_builder'
require_relative './addresses/addresses_request_builder'
require_relative './addresses/item/item_address_item_request_builder'
require_relative './anniversaries/anniversaries_request_builder'
require_relative './anniversaries/item/person_annual_event_item_request_builder'
require_relative './awards/awards_request_builder'
require_relative './awards/item/person_award_item_request_builder'
require_relative './certifications/certifications_request_builder'
require_relative './certifications/item/person_certification_item_request_builder'
require_relative './educational_activities/educational_activities_request_builder'
require_relative './educational_activities/item/educational_activity_item_request_builder'
require_relative './emails/emails_request_builder'
require_relative './emails/item/item_email_item_request_builder'
require_relative './interests/interests_request_builder'
require_relative './interests/item/person_interest_item_request_builder'
require_relative './languages/item/language_proficiency_item_request_builder'
require_relative './languages/languages_request_builder'
require_relative './names/item/person_name_item_request_builder'
require_relative './names/names_request_builder'
require_relative './notes/item/person_annotation_item_request_builder'
require_relative './notes/notes_request_builder'
require_relative './patents/item/item_patent_item_request_builder'
require_relative './patents/patents_request_builder'
require_relative './phones/item/item_phone_item_request_builder'
require_relative './phones/phones_request_builder'
require_relative './positions/item/work_position_item_request_builder'
require_relative './positions/positions_request_builder'
require_relative './profile'
require_relative './projects/item/project_participation_item_request_builder'
require_relative './projects/projects_request_builder'
require_relative './publications/item/item_publication_item_request_builder'
require_relative './publications/publications_request_builder'
require_relative './skills/item/skill_proficiency_item_request_builder'
require_relative './skills/skills_request_builder'
require_relative './web_accounts/item/web_account_item_request_builder'
require_relative './web_accounts/web_accounts_request_builder'
require_relative './websites/item/person_website_item_request_builder'
require_relative './websites/websites_request_builder'

module MicrosoftGraphBeta::Me::Profile
    ## 
    # Provides operations to manage the profile property of the microsoft.graph.user entity.
    class ProfileRequestBuilder
        
        ## 
        # Provides operations to manage the account property of the microsoft.graph.profile entity.
        def account()
            return MicrosoftGraphBeta::Me::Profile::Account::AccountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the addresses property of the microsoft.graph.profile entity.
        def addresses()
            return MicrosoftGraphBeta::Me::Profile::Addresses::AddressesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the anniversaries property of the microsoft.graph.profile entity.
        def anniversaries()
            return MicrosoftGraphBeta::Me::Profile::Anniversaries::AnniversariesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the awards property of the microsoft.graph.profile entity.
        def awards()
            return MicrosoftGraphBeta::Me::Profile::Awards::AwardsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the certifications property of the microsoft.graph.profile entity.
        def certifications()
            return MicrosoftGraphBeta::Me::Profile::Certifications::CertificationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the educationalActivities property of the microsoft.graph.profile entity.
        def educational_activities()
            return MicrosoftGraphBeta::Me::Profile::EducationalActivities::EducationalActivitiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the emails property of the microsoft.graph.profile entity.
        def emails()
            return MicrosoftGraphBeta::Me::Profile::Emails::EmailsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the interests property of the microsoft.graph.profile entity.
        def interests()
            return MicrosoftGraphBeta::Me::Profile::Interests::InterestsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the languages property of the microsoft.graph.profile entity.
        def languages()
            return MicrosoftGraphBeta::Me::Profile::Languages::LanguagesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the names property of the microsoft.graph.profile entity.
        def names()
            return MicrosoftGraphBeta::Me::Profile::Names::NamesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the notes property of the microsoft.graph.profile entity.
        def notes()
            return MicrosoftGraphBeta::Me::Profile::Notes::NotesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the patents property of the microsoft.graph.profile entity.
        def patents()
            return MicrosoftGraphBeta::Me::Profile::Patents::PatentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the phones property of the microsoft.graph.profile entity.
        def phones()
            return MicrosoftGraphBeta::Me::Profile::Phones::PhonesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the positions property of the microsoft.graph.profile entity.
        def positions()
            return MicrosoftGraphBeta::Me::Profile::Positions::PositionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the projects property of the microsoft.graph.profile entity.
        def projects()
            return MicrosoftGraphBeta::Me::Profile::Projects::ProjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the publications property of the microsoft.graph.profile entity.
        def publications()
            return MicrosoftGraphBeta::Me::Profile::Publications::PublicationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the skills property of the microsoft.graph.profile entity.
        def skills()
            return MicrosoftGraphBeta::Me::Profile::Skills::SkillsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the webAccounts property of the microsoft.graph.profile entity.
        def web_accounts()
            return MicrosoftGraphBeta::Me::Profile::WebAccounts::WebAccountsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the websites property of the microsoft.graph.profile entity.
        def websites()
            return MicrosoftGraphBeta::Me::Profile::Websites::WebsitesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the account property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a user_account_information_item_request_builder
        ## 
        def account_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["userAccountInformation%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Account::Item::UserAccountInformationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the addresses property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a item_address_item_request_builder
        ## 
        def addresses_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["itemAddress%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Addresses::Item::ItemAddressItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the anniversaries property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a person_annual_event_item_request_builder
        ## 
        def anniversaries_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["personAnnualEvent%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Anniversaries::Item::PersonAnnualEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the awards property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a person_award_item_request_builder
        ## 
        def awards_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["personAward%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Awards::Item::PersonAwardItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the certifications property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a person_certification_item_request_builder
        ## 
        def certifications_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["personCertification%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Certifications::Item::PersonCertificationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new ProfileRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/me/profile{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Deletes a profile object from a user's account.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.to_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Provides operations to manage the educationalActivities property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a educational_activity_item_request_builder
        ## 
        def educational_activities_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["educationalActivity%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::EducationalActivities::Item::EducationalActivityItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the emails property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a item_email_item_request_builder
        ## 
        def emails_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["itemEmail%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Emails::Item::ItemEmailItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Retrieve the properties and relationships of a profile object for a given user. The **profile** resource exposes various rich properties that are descriptive of the user as relationships, for example, anniversaries and education activities. To get one of these navigation properties, use the corresponding GET method on that property. See the methods exposed by **profile**.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of profile
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Profile.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the interests property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a person_interest_item_request_builder
        ## 
        def interests_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["personInterest%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Interests::Item::PersonInterestItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the languages property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a language_proficiency_item_request_builder
        ## 
        def languages_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["languageProficiency%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Languages::Item::LanguageProficiencyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the names property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a person_name_item_request_builder
        ## 
        def names_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["personName%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Names::Item::PersonNameItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the notes property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a person_annotation_item_request_builder
        ## 
        def notes_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["personAnnotation%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Notes::Item::PersonAnnotationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property profile in me
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of profile
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Profile.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the patents property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a item_patent_item_request_builder
        ## 
        def patents_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["itemPatent%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Patents::Item::ItemPatentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the phones property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a item_phone_item_request_builder
        ## 
        def phones_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["itemPhone%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Phones::Item::ItemPhoneItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the positions property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a work_position_item_request_builder
        ## 
        def positions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["workPosition%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Positions::Item::WorkPositionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the projects property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a project_participation_item_request_builder
        ## 
        def projects_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["projectParticipation%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Projects::Item::ProjectParticipationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the publications property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a item_publication_item_request_builder
        ## 
        def publications_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["itemPublication%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Publications::Item::ItemPublicationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the skills property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a skill_proficiency_item_request_builder
        ## 
        def skills_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["skillProficiency%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Skills::Item::SkillProficiencyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Deletes a profile object from a user's account.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_delete_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :DELETE
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Retrieve the properties and relationships of a profile object for a given user. The **profile** resource exposes various rich properties that are descriptive of the user as relationships, for example, anniversaries and education activities. To get one of these navigation properties, use the corresponding GET method on that property. See the methods exposed by **profile**.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Update the navigation property profile in me
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end
        ## 
        ## Provides operations to manage the webAccounts property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a web_account_item_request_builder
        ## 
        def web_accounts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["webAccount%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::WebAccounts::Item::WebAccountItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the websites property of the microsoft.graph.profile entity.
        ## @param id Unique identifier of the item
        ## @return a person_website_item_request_builder
        ## 
        def websites_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["personWebsite%2Did"] = id
            return MicrosoftGraphBeta::Me::Profile::Websites::Item::PersonWebsiteItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ProfileRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Retrieve the properties and relationships of a profile object for a given user. The **profile** resource exposes various rich properties that are descriptive of the user as relationships, for example, anniversaries and education activities. To get one of these navigation properties, use the corresponding GET method on that property. See the methods exposed by **profile**.
        class ProfileRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
            ## @return a string
            ## 
            def get_query_parameter(original_name)
                raise StandardError, 'original_name cannot be null' if original_name.nil?
                case original_name
                    when "expand"
                        return "%24expand"
                    when "select"
                        return "%24select"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ProfileRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ProfileRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
