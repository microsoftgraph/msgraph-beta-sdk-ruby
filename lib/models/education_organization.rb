require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationOrganization < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Organization description.
            @description
            ## 
            # Organization display name.
            @display_name
            ## 
            # Where this user was created from. Possible values are: sis, lms, or manual.
            @external_source
            ## 
            # The externalSourceDetail property
            @external_source_detail
            ## 
            ## Instantiates a new educationOrganization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_organization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.educationSchool"
                            return EducationSchool.new
                    end
                end
                return EducationOrganization.new
            end
            ## 
            ## Gets the description property value. Organization description.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Organization description.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Organization display name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Organization display name.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalSource property value. Where this user was created from. Possible values are: sis, lms, or manual.
            ## @return a education_external_source
            ## 
            def external_source
                return @external_source
            end
            ## 
            ## Sets the externalSource property value. Where this user was created from. Possible values are: sis, lms, or manual.
            ## @param value Value to set for the externalSource property.
            ## @return a void
            ## 
            def external_source=(value)
                @external_source = value
            end
            ## 
            ## Gets the externalSourceDetail property value. The externalSourceDetail property
            ## @return a string
            ## 
            def external_source_detail
                return @external_source_detail
            end
            ## 
            ## Sets the externalSourceDetail property value. The externalSourceDetail property
            ## @param value Value to set for the externalSourceDetail property.
            ## @return a void
            ## 
            def external_source_detail=(value)
                @external_source_detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalSource" => lambda {|n| @external_source = n.get_enum_value(MicrosoftGraphBeta::Models::EducationExternalSource) },
                    "externalSourceDetail" => lambda {|n| @external_source_detail = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("externalSource", @external_source)
                writer.write_string_value("externalSourceDetail", @external_source_detail)
            end
        end
    end
end
