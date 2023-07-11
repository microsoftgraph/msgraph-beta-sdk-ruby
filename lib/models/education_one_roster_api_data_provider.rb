require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationOneRosterApiDataProvider < MicrosoftGraphBeta::Models::EducationSynchronizationDataProvider
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The connectionSettings property
            @connection_settings
            ## 
            # The connection URL to the OneRoster instance.
            @connection_url
            ## 
            # Optional customization to be applied to the synchronization profile.
            @customizations
            ## 
            # The OneRoster Service Provider name as defined by the [OneRoster specification][oneroster].
            @provider_name
            ## 
            # The list of [School/Org][orgs] sourcedId to sync.
            @schools_ids
            ## 
            # The list of [academic sessions][terms] to sync.
            @term_ids
            ## 
            ## Gets the connectionSettings property value. The connectionSettings property
            ## @return a education_synchronization_connection_settings
            ## 
            def connection_settings
                return @connection_settings
            end
            ## 
            ## Sets the connectionSettings property value. The connectionSettings property
            ## @param value Value to set for the connection_settings property.
            ## @return a void
            ## 
            def connection_settings=(value)
                @connection_settings = value
            end
            ## 
            ## Gets the connectionUrl property value. The connection URL to the OneRoster instance.
            ## @return a string
            ## 
            def connection_url
                return @connection_url
            end
            ## 
            ## Sets the connectionUrl property value. The connection URL to the OneRoster instance.
            ## @param value Value to set for the connection_url property.
            ## @return a void
            ## 
            def connection_url=(value)
                @connection_url = value
            end
            ## 
            ## Instantiates a new educationOneRosterApiDataProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationOneRosterApiDataProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_one_roster_api_data_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationOneRosterApiDataProvider.new
            end
            ## 
            ## Gets the customizations property value. Optional customization to be applied to the synchronization profile.
            ## @return a education_synchronization_customizations
            ## 
            def customizations
                return @customizations
            end
            ## 
            ## Sets the customizations property value. Optional customization to be applied to the synchronization profile.
            ## @param value Value to set for the customizations property.
            ## @return a void
            ## 
            def customizations=(value)
                @customizations = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectionSettings" => lambda {|n| @connection_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationConnectionSettings.create_from_discriminator_value(pn) }) },
                    "connectionUrl" => lambda {|n| @connection_url = n.get_string_value() },
                    "customizations" => lambda {|n| @customizations = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomizations.create_from_discriminator_value(pn) }) },
                    "providerName" => lambda {|n| @provider_name = n.get_string_value() },
                    "schoolsIds" => lambda {|n| @schools_ids = n.get_collection_of_primitive_values(String) },
                    "termIds" => lambda {|n| @term_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the providerName property value. The OneRoster Service Provider name as defined by the [OneRoster specification][oneroster].
            ## @return a string
            ## 
            def provider_name
                return @provider_name
            end
            ## 
            ## Sets the providerName property value. The OneRoster Service Provider name as defined by the [OneRoster specification][oneroster].
            ## @param value Value to set for the provider_name property.
            ## @return a void
            ## 
            def provider_name=(value)
                @provider_name = value
            end
            ## 
            ## Gets the schoolsIds property value. The list of [School/Org][orgs] sourcedId to sync.
            ## @return a string
            ## 
            def schools_ids
                return @schools_ids
            end
            ## 
            ## Sets the schoolsIds property value. The list of [School/Org][orgs] sourcedId to sync.
            ## @param value Value to set for the schools_ids property.
            ## @return a void
            ## 
            def schools_ids=(value)
                @schools_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("connectionSettings", @connection_settings)
                writer.write_string_value("connectionUrl", @connection_url)
                writer.write_object_value("customizations", @customizations)
                writer.write_string_value("providerName", @provider_name)
                writer.write_collection_of_primitive_values("schoolsIds", @schools_ids)
                writer.write_collection_of_primitive_values("termIds", @term_ids)
            end
            ## 
            ## Gets the termIds property value. The list of [academic sessions][terms] to sync.
            ## @return a string
            ## 
            def term_ids
                return @term_ids
            end
            ## 
            ## Sets the termIds property value. The list of [academic sessions][terms] to sync.
            ## @param value Value to set for the term_ids property.
            ## @return a void
            ## 
            def term_ids=(value)
                @term_ids = value
            end
        end
    end
end
