require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class UpdatableAssetGroup < MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Members of the group. Read-only.
        @members
        ## 
        ## Instantiates a new UpdatableAssetGroup and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.updatableAssetGroup"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a updatable_asset_group
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UpdatableAssetGroup.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the members property value. Members of the group. Read-only.
        ## @return a updatable_asset
        ## 
        def members
            return @members
        end
        ## 
        ## Sets the members property value. Members of the group. Read-only.
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
            writer.write_collection_of_object_values("members", @members)
        end
    end
end
