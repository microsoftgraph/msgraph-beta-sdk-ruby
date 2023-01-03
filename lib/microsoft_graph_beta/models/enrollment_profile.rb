require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EnrollmentProfile < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Configuration endpoint url to use for Enrollment
        @configuration_endpoint_url
        ## 
        # Description of the profile
        @description
        ## 
        # Name of the profile
        @display_name
        ## 
        # Indicates to authenticate with Apple Setup Assistant instead of Company Portal.
        @enable_authentication_via_company_portal
        ## 
        # Indicates that Company Portal is required on setup assistant enrolled devices
        @require_company_portal_on_setup_assistant_enrolled_devices
        ## 
        # Indicates if the profile requires user authentication
        @requires_user_authentication
        ## 
        ## Gets the configurationEndpointUrl property value. Configuration endpoint url to use for Enrollment
        ## @return a string
        ## 
        def configuration_endpoint_url
            return @configuration_endpoint_url
        end
        ## 
        ## Sets the configurationEndpointUrl property value. Configuration endpoint url to use for Enrollment
        ## @param value Value to set for the configurationEndpointUrl property.
        ## @return a void
        ## 
        def configuration_endpoint_url=(value)
            @configuration_endpoint_url = value
        end
        ## 
        ## Instantiates a new enrollmentProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a enrollment_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.depEnrollmentBaseProfile"
                        return DepEnrollmentBaseProfile.new
                    when "#microsoft.graph.depEnrollmentProfile"
                        return DepEnrollmentProfile.new
                    when "#microsoft.graph.depIOSEnrollmentProfile"
                        return DepIOSEnrollmentProfile.new
                    when "#microsoft.graph.depMacOSEnrollmentProfile"
                        return DepMacOSEnrollmentProfile.new
                end
            end
            return EnrollmentProfile.new
        end
        ## 
        ## Gets the description property value. Description of the profile
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Description of the profile
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Name of the profile
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Name of the profile
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the enableAuthenticationViaCompanyPortal property value. Indicates to authenticate with Apple Setup Assistant instead of Company Portal.
        ## @return a boolean
        ## 
        def enable_authentication_via_company_portal
            return @enable_authentication_via_company_portal
        end
        ## 
        ## Sets the enableAuthenticationViaCompanyPortal property value. Indicates to authenticate with Apple Setup Assistant instead of Company Portal.
        ## @param value Value to set for the enableAuthenticationViaCompanyPortal property.
        ## @return a void
        ## 
        def enable_authentication_via_company_portal=(value)
            @enable_authentication_via_company_portal = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "configurationEndpointUrl" => lambda {|n| @configuration_endpoint_url = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "enableAuthenticationViaCompanyPortal" => lambda {|n| @enable_authentication_via_company_portal = n.get_boolean_value() },
                "requireCompanyPortalOnSetupAssistantEnrolledDevices" => lambda {|n| @require_company_portal_on_setup_assistant_enrolled_devices = n.get_boolean_value() },
                "requiresUserAuthentication" => lambda {|n| @requires_user_authentication = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the requireCompanyPortalOnSetupAssistantEnrolledDevices property value. Indicates that Company Portal is required on setup assistant enrolled devices
        ## @return a boolean
        ## 
        def require_company_portal_on_setup_assistant_enrolled_devices
            return @require_company_portal_on_setup_assistant_enrolled_devices
        end
        ## 
        ## Sets the requireCompanyPortalOnSetupAssistantEnrolledDevices property value. Indicates that Company Portal is required on setup assistant enrolled devices
        ## @param value Value to set for the requireCompanyPortalOnSetupAssistantEnrolledDevices property.
        ## @return a void
        ## 
        def require_company_portal_on_setup_assistant_enrolled_devices=(value)
            @require_company_portal_on_setup_assistant_enrolled_devices = value
        end
        ## 
        ## Gets the requiresUserAuthentication property value. Indicates if the profile requires user authentication
        ## @return a boolean
        ## 
        def requires_user_authentication
            return @requires_user_authentication
        end
        ## 
        ## Sets the requiresUserAuthentication property value. Indicates if the profile requires user authentication
        ## @param value Value to set for the requiresUserAuthentication property.
        ## @return a void
        ## 
        def requires_user_authentication=(value)
            @requires_user_authentication = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("configurationEndpointUrl", @configuration_endpoint_url)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("enableAuthenticationViaCompanyPortal", @enable_authentication_via_company_portal)
            writer.write_boolean_value("requireCompanyPortalOnSetupAssistantEnrolledDevices", @require_company_portal_on_setup_assistant_enrolled_devices)
            writer.write_boolean_value("requiresUserAuthentication", @requires_user_authentication)
        end
    end
end
