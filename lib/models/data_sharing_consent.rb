require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Data sharing consent information.
    class DataSharingConsent < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The time consent was granted for this account
        @grant_date_time
        ## 
        # The granted state for the data sharing consent
        @granted
        ## 
        # The Upn of the user that granted consent for this account
        @granted_by_upn
        ## 
        # The UserId of the user that granted consent for this account
        @granted_by_user_id
        ## 
        # The display name of the service work flow
        @service_display_name
        ## 
        # The TermsUrl for the data sharing consent
        @terms_url
        ## 
        ## Instantiates a new dataSharingConsent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a data_sharing_consent
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DataSharingConsent.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "grantDateTime" => lambda {|n| @grant_date_time = n.get_date_time_value() },
                "granted" => lambda {|n| @granted = n.get_boolean_value() },
                "grantedByUpn" => lambda {|n| @granted_by_upn = n.get_string_value() },
                "grantedByUserId" => lambda {|n| @granted_by_user_id = n.get_string_value() },
                "serviceDisplayName" => lambda {|n| @service_display_name = n.get_string_value() },
                "termsUrl" => lambda {|n| @terms_url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the grantDateTime property value. The time consent was granted for this account
        ## @return a date_time
        ## 
        def grant_date_time
            return @grant_date_time
        end
        ## 
        ## Sets the grantDateTime property value. The time consent was granted for this account
        ## @param value Value to set for the grant_date_time property.
        ## @return a void
        ## 
        def grant_date_time=(value)
            @grant_date_time = value
        end
        ## 
        ## Gets the granted property value. The granted state for the data sharing consent
        ## @return a boolean
        ## 
        def granted
            return @granted
        end
        ## 
        ## Sets the granted property value. The granted state for the data sharing consent
        ## @param value Value to set for the granted property.
        ## @return a void
        ## 
        def granted=(value)
            @granted = value
        end
        ## 
        ## Gets the grantedByUpn property value. The Upn of the user that granted consent for this account
        ## @return a string
        ## 
        def granted_by_upn
            return @granted_by_upn
        end
        ## 
        ## Sets the grantedByUpn property value. The Upn of the user that granted consent for this account
        ## @param value Value to set for the granted_by_upn property.
        ## @return a void
        ## 
        def granted_by_upn=(value)
            @granted_by_upn = value
        end
        ## 
        ## Gets the grantedByUserId property value. The UserId of the user that granted consent for this account
        ## @return a string
        ## 
        def granted_by_user_id
            return @granted_by_user_id
        end
        ## 
        ## Sets the grantedByUserId property value. The UserId of the user that granted consent for this account
        ## @param value Value to set for the granted_by_user_id property.
        ## @return a void
        ## 
        def granted_by_user_id=(value)
            @granted_by_user_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("grantDateTime", @grant_date_time)
            writer.write_boolean_value("granted", @granted)
            writer.write_string_value("grantedByUpn", @granted_by_upn)
            writer.write_string_value("grantedByUserId", @granted_by_user_id)
            writer.write_string_value("serviceDisplayName", @service_display_name)
            writer.write_string_value("termsUrl", @terms_url)
        end
        ## 
        ## Gets the serviceDisplayName property value. The display name of the service work flow
        ## @return a string
        ## 
        def service_display_name
            return @service_display_name
        end
        ## 
        ## Sets the serviceDisplayName property value. The display name of the service work flow
        ## @param value Value to set for the service_display_name property.
        ## @return a void
        ## 
        def service_display_name=(value)
            @service_display_name = value
        end
        ## 
        ## Gets the termsUrl property value. The TermsUrl for the data sharing consent
        ## @return a string
        ## 
        def terms_url
            return @terms_url
        end
        ## 
        ## Sets the termsUrl property value. The TermsUrl for the data sharing consent
        ## @param value Value to set for the terms_url property.
        ## @return a void
        ## 
        def terms_url=(value)
            @terms_url = value
        end
    end
end
