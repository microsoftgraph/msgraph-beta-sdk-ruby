require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkOnPremisesCalendarSyncConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The fully qualified domain name (FQDN) of the Skype for Business Server. Use the Exchange domain if the Skype for Business SIP domain is different from the Exchange domain of the user.
        @domain
        ## 
        # The domain and username of the console device, for example, Seattle/RanierConf.
        @domain_user_name
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The Simple Mail Transfer Protocol (SMTP) address of the user account. This is only required if a different user principal name (UPN) is used to sign in to Exchange other than Microsoft Teams and Skype for Business. This is a common scenario in a hybrid environment where an on-premises Exchange server is used.
        @smtp_address
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new teamworkOnPremisesCalendarSyncConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_on_premises_calendar_sync_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkOnPremisesCalendarSyncConfiguration.new
        end
        ## 
        ## Gets the domain property value. The fully qualified domain name (FQDN) of the Skype for Business Server. Use the Exchange domain if the Skype for Business SIP domain is different from the Exchange domain of the user.
        ## @return a string
        ## 
        def domain
            return @domain
        end
        ## 
        ## Sets the domain property value. The fully qualified domain name (FQDN) of the Skype for Business Server. Use the Exchange domain if the Skype for Business SIP domain is different from the Exchange domain of the user.
        ## @param value Value to set for the domain property.
        ## @return a void
        ## 
        def domain=(value)
            @domain = value
        end
        ## 
        ## Gets the domainUserName property value. The domain and username of the console device, for example, Seattle/RanierConf.
        ## @return a string
        ## 
        def domain_user_name
            return @domain_user_name
        end
        ## 
        ## Sets the domainUserName property value. The domain and username of the console device, for example, Seattle/RanierConf.
        ## @param value Value to set for the domain_user_name property.
        ## @return a void
        ## 
        def domain_user_name=(value)
            @domain_user_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "domain" => lambda {|n| @domain = n.get_string_value() },
                "domainUserName" => lambda {|n| @domain_user_name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "smtpAddress" => lambda {|n| @smtp_address = n.get_string_value() },
            }
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("domain", @domain)
            writer.write_string_value("domainUserName", @domain_user_name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("smtpAddress", @smtp_address)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the smtpAddress property value. The Simple Mail Transfer Protocol (SMTP) address of the user account. This is only required if a different user principal name (UPN) is used to sign in to Exchange other than Microsoft Teams and Skype for Business. This is a common scenario in a hybrid environment where an on-premises Exchange server is used.
        ## @return a string
        ## 
        def smtp_address
            return @smtp_address
        end
        ## 
        ## Sets the smtpAddress property value. The Simple Mail Transfer Protocol (SMTP) address of the user account. This is only required if a different user principal name (UPN) is used to sign in to Exchange other than Microsoft Teams and Skype for Business. This is a common scenario in a hybrid environment where an on-premises Exchange server is used.
        ## @param value Value to set for the smtp_address property.
        ## @return a void
        ## 
        def smtp_address=(value)
            @smtp_address = value
        end
    end
end
