require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationSynchronizationProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The dataProvider property
            @data_provider
            ## 
            # The displayName property
            @display_name
            ## 
            # The errors property
            @errors
            ## 
            # The expirationDate property
            @expiration_date
            ## 
            # The handleSpecialCharacterConstraint property
            @handle_special_character_constraint
            ## 
            # The identitySynchronizationConfiguration property
            @identity_synchronization_configuration
            ## 
            # The licensesToAssign property
            @licenses_to_assign
            ## 
            # The profileStatus property
            @profile_status
            ## 
            # The state property
            @state
            ## 
            ## Instantiates a new EducationSynchronizationProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_synchronization_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSynchronizationProfile.new
            end
            ## 
            ## Gets the dataProvider property value. The dataProvider property
            ## @return a education_synchronization_data_provider
            ## 
            def data_provider
                return @data_provider
            end
            ## 
            ## Sets the dataProvider property value. The dataProvider property
            ## @param value Value to set for the dataProvider property.
            ## @return a void
            ## 
            def data_provider=(value)
                @data_provider = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the errors property value. The errors property
            ## @return a education_synchronization_error
            ## 
            def errors
                return @errors
            end
            ## 
            ## Sets the errors property value. The errors property
            ## @param value Value to set for the errors property.
            ## @return a void
            ## 
            def errors=(value)
                @errors = value
            end
            ## 
            ## Gets the expirationDate property value. The expirationDate property
            ## @return a date
            ## 
            def expiration_date
                return @expiration_date
            end
            ## 
            ## Sets the expirationDate property value. The expirationDate property
            ## @param value Value to set for the expirationDate property.
            ## @return a void
            ## 
            def expiration_date=(value)
                @expiration_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "dataProvider" => lambda {|n| @data_provider = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationDataProvider.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "errors" => lambda {|n| @errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationError.create_from_discriminator_value(pn) }) },
                    "expirationDate" => lambda {|n| @expiration_date = n.get_date_value() },
                    "handleSpecialCharacterConstraint" => lambda {|n| @handle_special_character_constraint = n.get_boolean_value() },
                    "identitySynchronizationConfiguration" => lambda {|n| @identity_synchronization_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationIdentitySynchronizationConfiguration.create_from_discriminator_value(pn) }) },
                    "licensesToAssign" => lambda {|n| @licenses_to_assign = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationLicenseAssignment.create_from_discriminator_value(pn) }) },
                    "profileStatus" => lambda {|n| @profile_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationProfileStatus.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::EducationSynchronizationProfileState) },
                })
            end
            ## 
            ## Gets the handleSpecialCharacterConstraint property value. The handleSpecialCharacterConstraint property
            ## @return a boolean
            ## 
            def handle_special_character_constraint
                return @handle_special_character_constraint
            end
            ## 
            ## Sets the handleSpecialCharacterConstraint property value. The handleSpecialCharacterConstraint property
            ## @param value Value to set for the handleSpecialCharacterConstraint property.
            ## @return a void
            ## 
            def handle_special_character_constraint=(value)
                @handle_special_character_constraint = value
            end
            ## 
            ## Gets the identitySynchronizationConfiguration property value. The identitySynchronizationConfiguration property
            ## @return a education_identity_synchronization_configuration
            ## 
            def identity_synchronization_configuration
                return @identity_synchronization_configuration
            end
            ## 
            ## Sets the identitySynchronizationConfiguration property value. The identitySynchronizationConfiguration property
            ## @param value Value to set for the identitySynchronizationConfiguration property.
            ## @return a void
            ## 
            def identity_synchronization_configuration=(value)
                @identity_synchronization_configuration = value
            end
            ## 
            ## Gets the licensesToAssign property value. The licensesToAssign property
            ## @return a education_synchronization_license_assignment
            ## 
            def licenses_to_assign
                return @licenses_to_assign
            end
            ## 
            ## Sets the licensesToAssign property value. The licensesToAssign property
            ## @param value Value to set for the licensesToAssign property.
            ## @return a void
            ## 
            def licenses_to_assign=(value)
                @licenses_to_assign = value
            end
            ## 
            ## Gets the profileStatus property value. The profileStatus property
            ## @return a education_synchronization_profile_status
            ## 
            def profile_status
                return @profile_status
            end
            ## 
            ## Sets the profileStatus property value. The profileStatus property
            ## @param value Value to set for the profileStatus property.
            ## @return a void
            ## 
            def profile_status=(value)
                @profile_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("dataProvider", @data_provider)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("errors", @errors)
                writer.write_date_value("expirationDate", @expiration_date)
                writer.write_boolean_value("handleSpecialCharacterConstraint", @handle_special_character_constraint)
                writer.write_object_value("identitySynchronizationConfiguration", @identity_synchronization_configuration)
                writer.write_collection_of_object_values("licensesToAssign", @licenses_to_assign)
                writer.write_object_value("profileStatus", @profile_status)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a education_synchronization_profile_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
