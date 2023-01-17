require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MicrosoftApplicationDataAccessSettings < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The ID of an Azure Active Directory (Azure AD) security group for which the members are allowed to access Microsoft 365 data using only Microsoft 365 apps, but not other Microsoft apps such as Edge.  This is only applicable if isEnabledForAllMicrosoftApplications is set to true.
        @disabled_for_group
        ## 
        # When set to true, all users in the organization can access in a Microsoft app any Microsoft 365 data that the user has been authorized to access. The Microsoft app can be a Microsoft 365 app (for example, Excel, Outlook) or non-Microsoft 365 app (for example, Edge). The default is true.  It is possible to disable this access for a subset of users in an Azure AD security group, by specifying the group in the disabledForGroup property.  When set to false, all users can access authorized Microsoft 365 data only in a Microsoft 365 app.
        @is_enabled_for_all_microsoft_applications
        ## 
        ## Instantiates a new microsoftApplicationDataAccessSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a microsoft_application_data_access_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MicrosoftApplicationDataAccessSettings.new
        end
        ## 
        ## Gets the disabledForGroup property value. The ID of an Azure Active Directory (Azure AD) security group for which the members are allowed to access Microsoft 365 data using only Microsoft 365 apps, but not other Microsoft apps such as Edge.  This is only applicable if isEnabledForAllMicrosoftApplications is set to true.
        ## @return a string
        ## 
        def disabled_for_group
            return @disabled_for_group
        end
        ## 
        ## Sets the disabledForGroup property value. The ID of an Azure Active Directory (Azure AD) security group for which the members are allowed to access Microsoft 365 data using only Microsoft 365 apps, but not other Microsoft apps such as Edge.  This is only applicable if isEnabledForAllMicrosoftApplications is set to true.
        ## @param value Value to set for the disabledForGroup property.
        ## @return a void
        ## 
        def disabled_for_group=(value)
            @disabled_for_group = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "disabledForGroup" => lambda {|n| @disabled_for_group = n.get_string_value() },
                "isEnabledForAllMicrosoftApplications" => lambda {|n| @is_enabled_for_all_microsoft_applications = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the isEnabledForAllMicrosoftApplications property value. When set to true, all users in the organization can access in a Microsoft app any Microsoft 365 data that the user has been authorized to access. The Microsoft app can be a Microsoft 365 app (for example, Excel, Outlook) or non-Microsoft 365 app (for example, Edge). The default is true.  It is possible to disable this access for a subset of users in an Azure AD security group, by specifying the group in the disabledForGroup property.  When set to false, all users can access authorized Microsoft 365 data only in a Microsoft 365 app.
        ## @return a boolean
        ## 
        def is_enabled_for_all_microsoft_applications
            return @is_enabled_for_all_microsoft_applications
        end
        ## 
        ## Sets the isEnabledForAllMicrosoftApplications property value. When set to true, all users in the organization can access in a Microsoft app any Microsoft 365 data that the user has been authorized to access. The Microsoft app can be a Microsoft 365 app (for example, Excel, Outlook) or non-Microsoft 365 app (for example, Edge). The default is true.  It is possible to disable this access for a subset of users in an Azure AD security group, by specifying the group in the disabledForGroup property.  When set to false, all users can access authorized Microsoft 365 data only in a Microsoft 365 app.
        ## @param value Value to set for the isEnabledForAllMicrosoftApplications property.
        ## @return a void
        ## 
        def is_enabled_for_all_microsoft_applications=(value)
            @is_enabled_for_all_microsoft_applications = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("disabledForGroup", @disabled_for_group)
            writer.write_boolean_value("isEnabledForAllMicrosoftApplications", @is_enabled_for_all_microsoft_applications)
        end
    end
end
