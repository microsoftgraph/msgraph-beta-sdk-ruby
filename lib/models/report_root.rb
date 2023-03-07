require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ReportRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents a detailed summary of an application sign-in.
            @application_sign_in_detailed_summary
            ## 
            # Container for navigation properties for Azure AD authentication methods resources.
            @authentication_methods
            ## 
            # Details of the usage of self-service password reset and multi-factor authentication (MFA) for all registered users.
            @credential_user_registration_details
            ## 
            # The dailyPrintUsage property
            @daily_print_usage
            ## 
            # The dailyPrintUsageByPrinter property
            @daily_print_usage_by_printer
            ## 
            # The dailyPrintUsageByUser property
            @daily_print_usage_by_user
            ## 
            # The dailyPrintUsageSummariesByPrinter property
            @daily_print_usage_summaries_by_printer
            ## 
            # The dailyPrintUsageSummariesByUser property
            @daily_print_usage_summaries_by_user
            ## 
            # The monthlyPrintUsageByPrinter property
            @monthly_print_usage_by_printer
            ## 
            # The monthlyPrintUsageByUser property
            @monthly_print_usage_by_user
            ## 
            # The monthlyPrintUsageSummariesByPrinter property
            @monthly_print_usage_summaries_by_printer
            ## 
            # The monthlyPrintUsageSummariesByUser property
            @monthly_print_usage_summaries_by_user
            ## 
            # Provides the ability to launch a realistic simulated phishing attack that organizations can learn from.
            @security
            ## 
            # Represents the self-service password reset (SSPR) usage for a given tenant.
            @user_credential_usage_details
            ## 
            ## Gets the applicationSignInDetailedSummary property value. Represents a detailed summary of an application sign-in.
            ## @return a application_sign_in_detailed_summary
            ## 
            def application_sign_in_detailed_summary
                return @application_sign_in_detailed_summary
            end
            ## 
            ## Sets the applicationSignInDetailedSummary property value. Represents a detailed summary of an application sign-in.
            ## @param value Value to set for the application_sign_in_detailed_summary property.
            ## @return a void
            ## 
            def application_sign_in_detailed_summary=(value)
                @application_sign_in_detailed_summary = value
            end
            ## 
            ## Gets the authenticationMethods property value. Container for navigation properties for Azure AD authentication methods resources.
            ## @return a authentication_methods_root
            ## 
            def authentication_methods
                return @authentication_methods
            end
            ## 
            ## Sets the authenticationMethods property value. Container for navigation properties for Azure AD authentication methods resources.
            ## @param value Value to set for the authentication_methods property.
            ## @return a void
            ## 
            def authentication_methods=(value)
                @authentication_methods = value
            end
            ## 
            ## Instantiates a new ReportRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a report_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReportRoot.new
            end
            ## 
            ## Gets the credentialUserRegistrationDetails property value. Details of the usage of self-service password reset and multi-factor authentication (MFA) for all registered users.
            ## @return a credential_user_registration_details
            ## 
            def credential_user_registration_details
                return @credential_user_registration_details
            end
            ## 
            ## Sets the credentialUserRegistrationDetails property value. Details of the usage of self-service password reset and multi-factor authentication (MFA) for all registered users.
            ## @param value Value to set for the credential_user_registration_details property.
            ## @return a void
            ## 
            def credential_user_registration_details=(value)
                @credential_user_registration_details = value
            end
            ## 
            ## Gets the dailyPrintUsage property value. The dailyPrintUsage property
            ## @return a print_usage
            ## 
            def daily_print_usage
                return @daily_print_usage
            end
            ## 
            ## Sets the dailyPrintUsage property value. The dailyPrintUsage property
            ## @param value Value to set for the daily_print_usage property.
            ## @return a void
            ## 
            def daily_print_usage=(value)
                @daily_print_usage = value
            end
            ## 
            ## Gets the dailyPrintUsageByPrinter property value. The dailyPrintUsageByPrinter property
            ## @return a print_usage_by_printer
            ## 
            def daily_print_usage_by_printer
                return @daily_print_usage_by_printer
            end
            ## 
            ## Sets the dailyPrintUsageByPrinter property value. The dailyPrintUsageByPrinter property
            ## @param value Value to set for the daily_print_usage_by_printer property.
            ## @return a void
            ## 
            def daily_print_usage_by_printer=(value)
                @daily_print_usage_by_printer = value
            end
            ## 
            ## Gets the dailyPrintUsageByUser property value. The dailyPrintUsageByUser property
            ## @return a print_usage_by_user
            ## 
            def daily_print_usage_by_user
                return @daily_print_usage_by_user
            end
            ## 
            ## Sets the dailyPrintUsageByUser property value. The dailyPrintUsageByUser property
            ## @param value Value to set for the daily_print_usage_by_user property.
            ## @return a void
            ## 
            def daily_print_usage_by_user=(value)
                @daily_print_usage_by_user = value
            end
            ## 
            ## Gets the dailyPrintUsageSummariesByPrinter property value. The dailyPrintUsageSummariesByPrinter property
            ## @return a print_usage_by_printer
            ## 
            def daily_print_usage_summaries_by_printer
                return @daily_print_usage_summaries_by_printer
            end
            ## 
            ## Sets the dailyPrintUsageSummariesByPrinter property value. The dailyPrintUsageSummariesByPrinter property
            ## @param value Value to set for the daily_print_usage_summaries_by_printer property.
            ## @return a void
            ## 
            def daily_print_usage_summaries_by_printer=(value)
                @daily_print_usage_summaries_by_printer = value
            end
            ## 
            ## Gets the dailyPrintUsageSummariesByUser property value. The dailyPrintUsageSummariesByUser property
            ## @return a print_usage_by_user
            ## 
            def daily_print_usage_summaries_by_user
                return @daily_print_usage_summaries_by_user
            end
            ## 
            ## Sets the dailyPrintUsageSummariesByUser property value. The dailyPrintUsageSummariesByUser property
            ## @param value Value to set for the daily_print_usage_summaries_by_user property.
            ## @return a void
            ## 
            def daily_print_usage_summaries_by_user=(value)
                @daily_print_usage_summaries_by_user = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationSignInDetailedSummary" => lambda {|n| @application_sign_in_detailed_summary = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApplicationSignInDetailedSummary.create_from_discriminator_value(pn) }) },
                    "authenticationMethods" => lambda {|n| @authentication_methods = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodsRoot.create_from_discriminator_value(pn) }) },
                    "credentialUserRegistrationDetails" => lambda {|n| @credential_user_registration_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CredentialUserRegistrationDetails.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsage" => lambda {|n| @daily_print_usage = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsage.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsageByPrinter" => lambda {|n| @daily_print_usage_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsageByUser" => lambda {|n| @daily_print_usage_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsageSummariesByPrinter" => lambda {|n| @daily_print_usage_summaries_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "dailyPrintUsageSummariesByUser" => lambda {|n| @daily_print_usage_summaries_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageByPrinter" => lambda {|n| @monthly_print_usage_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageByUser" => lambda {|n| @monthly_print_usage_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageSummariesByPrinter" => lambda {|n| @monthly_print_usage_summaries_by_printer = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByPrinter.create_from_discriminator_value(pn) }) },
                    "monthlyPrintUsageSummariesByUser" => lambda {|n| @monthly_print_usage_summaries_by_user = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintUsageByUser.create_from_discriminator_value(pn) }) },
                    "security" => lambda {|n| @security = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityReportsRoot.create_from_discriminator_value(pn) }) },
                    "userCredentialUsageDetails" => lambda {|n| @user_credential_usage_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserCredentialUsageDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the monthlyPrintUsageByPrinter property value. The monthlyPrintUsageByPrinter property
            ## @return a print_usage_by_printer
            ## 
            def monthly_print_usage_by_printer
                return @monthly_print_usage_by_printer
            end
            ## 
            ## Sets the monthlyPrintUsageByPrinter property value. The monthlyPrintUsageByPrinter property
            ## @param value Value to set for the monthly_print_usage_by_printer property.
            ## @return a void
            ## 
            def monthly_print_usage_by_printer=(value)
                @monthly_print_usage_by_printer = value
            end
            ## 
            ## Gets the monthlyPrintUsageByUser property value. The monthlyPrintUsageByUser property
            ## @return a print_usage_by_user
            ## 
            def monthly_print_usage_by_user
                return @monthly_print_usage_by_user
            end
            ## 
            ## Sets the monthlyPrintUsageByUser property value. The monthlyPrintUsageByUser property
            ## @param value Value to set for the monthly_print_usage_by_user property.
            ## @return a void
            ## 
            def monthly_print_usage_by_user=(value)
                @monthly_print_usage_by_user = value
            end
            ## 
            ## Gets the monthlyPrintUsageSummariesByPrinter property value. The monthlyPrintUsageSummariesByPrinter property
            ## @return a print_usage_by_printer
            ## 
            def monthly_print_usage_summaries_by_printer
                return @monthly_print_usage_summaries_by_printer
            end
            ## 
            ## Sets the monthlyPrintUsageSummariesByPrinter property value. The monthlyPrintUsageSummariesByPrinter property
            ## @param value Value to set for the monthly_print_usage_summaries_by_printer property.
            ## @return a void
            ## 
            def monthly_print_usage_summaries_by_printer=(value)
                @monthly_print_usage_summaries_by_printer = value
            end
            ## 
            ## Gets the monthlyPrintUsageSummariesByUser property value. The monthlyPrintUsageSummariesByUser property
            ## @return a print_usage_by_user
            ## 
            def monthly_print_usage_summaries_by_user
                return @monthly_print_usage_summaries_by_user
            end
            ## 
            ## Sets the monthlyPrintUsageSummariesByUser property value. The monthlyPrintUsageSummariesByUser property
            ## @param value Value to set for the monthly_print_usage_summaries_by_user property.
            ## @return a void
            ## 
            def monthly_print_usage_summaries_by_user=(value)
                @monthly_print_usage_summaries_by_user = value
            end
            ## 
            ## Gets the security property value. Provides the ability to launch a realistic simulated phishing attack that organizations can learn from.
            ## @return a security_reports_root
            ## 
            def security
                return @security
            end
            ## 
            ## Sets the security property value. Provides the ability to launch a realistic simulated phishing attack that organizations can learn from.
            ## @param value Value to set for the security property.
            ## @return a void
            ## 
            def security=(value)
                @security = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("applicationSignInDetailedSummary", @application_sign_in_detailed_summary)
                writer.write_object_value("authenticationMethods", @authentication_methods)
                writer.write_collection_of_object_values("credentialUserRegistrationDetails", @credential_user_registration_details)
                writer.write_collection_of_object_values("dailyPrintUsage", @daily_print_usage)
                writer.write_collection_of_object_values("dailyPrintUsageByPrinter", @daily_print_usage_by_printer)
                writer.write_collection_of_object_values("dailyPrintUsageByUser", @daily_print_usage_by_user)
                writer.write_collection_of_object_values("dailyPrintUsageSummariesByPrinter", @daily_print_usage_summaries_by_printer)
                writer.write_collection_of_object_values("dailyPrintUsageSummariesByUser", @daily_print_usage_summaries_by_user)
                writer.write_collection_of_object_values("monthlyPrintUsageByPrinter", @monthly_print_usage_by_printer)
                writer.write_collection_of_object_values("monthlyPrintUsageByUser", @monthly_print_usage_by_user)
                writer.write_collection_of_object_values("monthlyPrintUsageSummariesByPrinter", @monthly_print_usage_summaries_by_printer)
                writer.write_collection_of_object_values("monthlyPrintUsageSummariesByUser", @monthly_print_usage_summaries_by_user)
                writer.write_object_value("security", @security)
                writer.write_collection_of_object_values("userCredentialUsageDetails", @user_credential_usage_details)
            end
            ## 
            ## Gets the userCredentialUsageDetails property value. Represents the self-service password reset (SSPR) usage for a given tenant.
            ## @return a user_credential_usage_details
            ## 
            def user_credential_usage_details
                return @user_credential_usage_details
            end
            ## 
            ## Sets the userCredentialUsageDetails property value. Represents the self-service password reset (SSPR) usage for a given tenant.
            ## @param value Value to set for the user_credential_usage_details property.
            ## @return a void
            ## 
            def user_credential_usage_details=(value)
                @user_credential_usage_details = value
            end
        end
    end
end
