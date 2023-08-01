require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents a Chromebook tenant settings
        class ChromeOSOnboardingSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ChromebookTenant's LastDirectorySyncDateTime
            @last_directory_sync_date_time
            ## 
            # The ChromebookTenant's LastModifiedDateTime
            @last_modified_date_time
            ## 
            # The onboarding status of the tenant.
            @onboarding_status
            ## 
            # The ChromebookTenant's OwnerUserPrincipalName
            @owner_user_principal_name
            ## 
            ## Instantiates a new chromeOSOnboardingSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a chrome_o_s_onboarding_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChromeOSOnboardingSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastDirectorySyncDateTime" => lambda {|n| @last_directory_sync_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "onboardingStatus" => lambda {|n| @onboarding_status = n.get_enum_value(MicrosoftGraphBeta::Models::OnboardingStatus) },
                    "ownerUserPrincipalName" => lambda {|n| @owner_user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastDirectorySyncDateTime property value. The ChromebookTenant's LastDirectorySyncDateTime
            ## @return a date_time
            ## 
            def last_directory_sync_date_time
                return @last_directory_sync_date_time
            end
            ## 
            ## Sets the lastDirectorySyncDateTime property value. The ChromebookTenant's LastDirectorySyncDateTime
            ## @param value Value to set for the lastDirectorySyncDateTime property.
            ## @return a void
            ## 
            def last_directory_sync_date_time=(value)
                @last_directory_sync_date_time = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The ChromebookTenant's LastModifiedDateTime
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The ChromebookTenant's LastModifiedDateTime
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the onboardingStatus property value. The onboarding status of the tenant.
            ## @return a onboarding_status
            ## 
            def onboarding_status
                return @onboarding_status
            end
            ## 
            ## Sets the onboardingStatus property value. The onboarding status of the tenant.
            ## @param value Value to set for the onboardingStatus property.
            ## @return a void
            ## 
            def onboarding_status=(value)
                @onboarding_status = value
            end
            ## 
            ## Gets the ownerUserPrincipalName property value. The ChromebookTenant's OwnerUserPrincipalName
            ## @return a string
            ## 
            def owner_user_principal_name
                return @owner_user_principal_name
            end
            ## 
            ## Sets the ownerUserPrincipalName property value. The ChromebookTenant's OwnerUserPrincipalName
            ## @param value Value to set for the ownerUserPrincipalName property.
            ## @return a void
            ## 
            def owner_user_principal_name=(value)
                @owner_user_principal_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastDirectorySyncDateTime", @last_directory_sync_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("onboardingStatus", @onboarding_status)
                writer.write_string_value("ownerUserPrincipalName", @owner_user_principal_name)
            end
        end
    end
end
