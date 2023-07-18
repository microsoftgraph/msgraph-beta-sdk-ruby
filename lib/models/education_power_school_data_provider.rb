require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationPowerSchoolDataProvider < MicrosoftGraphBeta::Models::EducationSynchronizationDataProvider
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the source has multiple identifiers for a single student or teacher.
            @allow_teachers_in_multiple_schools
            ## 
            # The client ID used to connect to PowerSchool.
            @client_id
            ## 
            # The client secret to authenticate the connection to the PowerSchool instance.
            @client_secret
            ## 
            # The connection URL to the PowerSchool instance.
            @connection_url
            ## 
            # Optional customization to be applied to the synchronization profile.
            @customizations
            ## 
            # The school year to sync.
            @school_year
            ## 
            # The list of schools to sync.
            @schools_ids
            ## 
            ## Gets the allowTeachersInMultipleSchools property value. Indicates whether the source has multiple identifiers for a single student or teacher.
            ## @return a boolean
            ## 
            def allow_teachers_in_multiple_schools
                return @allow_teachers_in_multiple_schools
            end
            ## 
            ## Sets the allowTeachersInMultipleSchools property value. Indicates whether the source has multiple identifiers for a single student or teacher.
            ## @param value Value to set for the allow_teachers_in_multiple_schools property.
            ## @return a void
            ## 
            def allow_teachers_in_multiple_schools=(value)
                @allow_teachers_in_multiple_schools = value
            end
            ## 
            ## Gets the clientId property value. The client ID used to connect to PowerSchool.
            ## @return a string
            ## 
            def client_id
                return @client_id
            end
            ## 
            ## Sets the clientId property value. The client ID used to connect to PowerSchool.
            ## @param value Value to set for the client_id property.
            ## @return a void
            ## 
            def client_id=(value)
                @client_id = value
            end
            ## 
            ## Gets the clientSecret property value. The client secret to authenticate the connection to the PowerSchool instance.
            ## @return a string
            ## 
            def client_secret
                return @client_secret
            end
            ## 
            ## Sets the clientSecret property value. The client secret to authenticate the connection to the PowerSchool instance.
            ## @param value Value to set for the client_secret property.
            ## @return a void
            ## 
            def client_secret=(value)
                @client_secret = value
            end
            ## 
            ## Gets the connectionUrl property value. The connection URL to the PowerSchool instance.
            ## @return a string
            ## 
            def connection_url
                return @connection_url
            end
            ## 
            ## Sets the connectionUrl property value. The connection URL to the PowerSchool instance.
            ## @param value Value to set for the connection_url property.
            ## @return a void
            ## 
            def connection_url=(value)
                @connection_url = value
            end
            ## 
            ## Instantiates a new educationPowerSchoolDataProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationPowerSchoolDataProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_power_school_data_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationPowerSchoolDataProvider.new
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
                    "allowTeachersInMultipleSchools" => lambda {|n| @allow_teachers_in_multiple_schools = n.get_boolean_value() },
                    "clientId" => lambda {|n| @client_id = n.get_string_value() },
                    "clientSecret" => lambda {|n| @client_secret = n.get_string_value() },
                    "connectionUrl" => lambda {|n| @connection_url = n.get_string_value() },
                    "customizations" => lambda {|n| @customizations = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomizations.create_from_discriminator_value(pn) }) },
                    "schoolYear" => lambda {|n| @school_year = n.get_string_value() },
                    "schoolsIds" => lambda {|n| @schools_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the schoolYear property value. The school year to sync.
            ## @return a string
            ## 
            def school_year
                return @school_year
            end
            ## 
            ## Sets the schoolYear property value. The school year to sync.
            ## @param value Value to set for the school_year property.
            ## @return a void
            ## 
            def school_year=(value)
                @school_year = value
            end
            ## 
            ## Gets the schoolsIds property value. The list of schools to sync.
            ## @return a string
            ## 
            def schools_ids
                return @schools_ids
            end
            ## 
            ## Sets the schoolsIds property value. The list of schools to sync.
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
                writer.write_boolean_value("allowTeachersInMultipleSchools", @allow_teachers_in_multiple_schools)
                writer.write_string_value("clientId", @client_id)
                writer.write_string_value("clientSecret", @client_secret)
                writer.write_string_value("connectionUrl", @connection_url)
                writer.write_object_value("customizations", @customizations)
                writer.write_string_value("schoolYear", @school_year)
                writer.write_collection_of_primitive_values("schoolsIds", @schools_ids)
            end
        end
    end
end
