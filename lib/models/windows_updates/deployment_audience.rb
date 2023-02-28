require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class DeploymentAudience < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Content eligible to deploy to devices in the audience. Not nullable. Read-only.
                @applicable_content
                ## 
                # Specifies the assets to exclude from the audience.
                @exclusions
                ## 
                # Specifies the assets to include in the audience.
                @members
                ## 
                ## Gets the applicableContent property value. Content eligible to deploy to devices in the audience. Not nullable. Read-only.
                ## @return a applicable_content
                ## 
                def applicable_content
                    return @applicable_content
                end
                ## 
                ## Sets the applicableContent property value. Content eligible to deploy to devices in the audience. Not nullable. Read-only.
                ## @param value Value to set for the applicable_content property.
                ## @return a void
                ## 
                def applicable_content=(value)
                    @applicable_content = value
                end
                ## 
                ## Instantiates a new deploymentAudience and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a deployment_audience
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DeploymentAudience.new
                end
                ## 
                ## Gets the exclusions property value. Specifies the assets to exclude from the audience.
                ## @return a updatable_asset
                ## 
                def exclusions
                    return @exclusions
                end
                ## 
                ## Sets the exclusions property value. Specifies the assets to exclude from the audience.
                ## @param value Value to set for the exclusions property.
                ## @return a void
                ## 
                def exclusions=(value)
                    @exclusions = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "applicableContent" => lambda {|n| @applicable_content = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::ApplicableContent.create_from_discriminator_value(pn) }) },
                        "exclusions" => lambda {|n| @exclusions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset.create_from_discriminator_value(pn) }) },
                        "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the members property value. Specifies the assets to include in the audience.
                ## @return a updatable_asset
                ## 
                def members
                    return @members
                end
                ## 
                ## Sets the members property value. Specifies the assets to include in the audience.
                ## @param value Value to set for the members property.
                ## @return a void
                ## 
                def members=(value)
                    @members = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("applicableContent", @applicable_content)
                    writer.write_collection_of_object_values("exclusions", @exclusions)
                    writer.write_collection_of_object_values("members", @members)
                end
            end
        end
    end
end
