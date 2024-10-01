require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataOneRosterApiDataConnector < MicrosoftGraphBeta::Models::IndustryDataApiDataConnector
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The API version of the OneRoster source. Example: 1.1, 1.2
            @api_version
            ## 
            # Indicates whether the user specified to import optional contacts data.
            @is_contacts_enabled
            ## 
            # Indicates whether the user specified to import optional demographics data.
            @is_demographics_enabled
            ## 
            # Indicates whether the user specified to import optional flags data.
            @is_flags_enabled
            ## 
            ## Gets the apiVersion property value. The API version of the OneRoster source. Example: 1.1, 1.2
            ## @return a string
            ## 
            def api_version
                return @api_version
            end
            ## 
            ## Sets the apiVersion property value. The API version of the OneRoster source. Example: 1.1, 1.2
            ## @param value Value to set for the apiVersion property.
            ## @return a void
            ## 
            def api_version=(value)
                @api_version = value
            end
            ## 
            ## Instantiates a new IndustryDataOneRosterApiDataConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.oneRosterApiDataConnector"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_one_roster_api_data_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataOneRosterApiDataConnector.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apiVersion" => lambda {|n| @api_version = n.get_string_value() },
                    "isContactsEnabled" => lambda {|n| @is_contacts_enabled = n.get_boolean_value() },
                    "isDemographicsEnabled" => lambda {|n| @is_demographics_enabled = n.get_boolean_value() },
                    "isFlagsEnabled" => lambda {|n| @is_flags_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isContactsEnabled property value. Indicates whether the user specified to import optional contacts data.
            ## @return a boolean
            ## 
            def is_contacts_enabled
                return @is_contacts_enabled
            end
            ## 
            ## Sets the isContactsEnabled property value. Indicates whether the user specified to import optional contacts data.
            ## @param value Value to set for the isContactsEnabled property.
            ## @return a void
            ## 
            def is_contacts_enabled=(value)
                @is_contacts_enabled = value
            end
            ## 
            ## Gets the isDemographicsEnabled property value. Indicates whether the user specified to import optional demographics data.
            ## @return a boolean
            ## 
            def is_demographics_enabled
                return @is_demographics_enabled
            end
            ## 
            ## Sets the isDemographicsEnabled property value. Indicates whether the user specified to import optional demographics data.
            ## @param value Value to set for the isDemographicsEnabled property.
            ## @return a void
            ## 
            def is_demographics_enabled=(value)
                @is_demographics_enabled = value
            end
            ## 
            ## Gets the isFlagsEnabled property value. Indicates whether the user specified to import optional flags data.
            ## @return a boolean
            ## 
            def is_flags_enabled
                return @is_flags_enabled
            end
            ## 
            ## Sets the isFlagsEnabled property value. Indicates whether the user specified to import optional flags data.
            ## @param value Value to set for the isFlagsEnabled property.
            ## @return a void
            ## 
            def is_flags_enabled=(value)
                @is_flags_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("apiVersion", @api_version)
                writer.write_boolean_value("isContactsEnabled", @is_contacts_enabled)
                writer.write_boolean_value("isDemographicsEnabled", @is_demographics_enabled)
                writer.write_boolean_value("isFlagsEnabled", @is_flags_enabled)
            end
        end
    end
end
