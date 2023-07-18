require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties used to assign an Android Managed Store mobile app to a group.
        class AndroidManagedStoreAppAssignmentSettings < MicrosoftGraphBeta::Models::MobileAppAssignmentSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The track IDs to enable for this app assignment.
            @android_managed_store_app_track_ids
            ## 
            # Prioritization for automatic updates of Android Managed Store apps set on assignment.
            @auto_update_mode
            ## 
            ## Gets the androidManagedStoreAppTrackIds property value. The track IDs to enable for this app assignment.
            ## @return a string
            ## 
            def android_managed_store_app_track_ids
                return @android_managed_store_app_track_ids
            end
            ## 
            ## Sets the androidManagedStoreAppTrackIds property value. The track IDs to enable for this app assignment.
            ## @param value Value to set for the android_managed_store_app_track_ids property.
            ## @return a void
            ## 
            def android_managed_store_app_track_ids=(value)
                @android_managed_store_app_track_ids = value
            end
            ## 
            ## Gets the autoUpdateMode property value. Prioritization for automatic updates of Android Managed Store apps set on assignment.
            ## @return a android_managed_store_auto_update_mode
            ## 
            def auto_update_mode
                return @auto_update_mode
            end
            ## 
            ## Sets the autoUpdateMode property value. Prioritization for automatic updates of Android Managed Store apps set on assignment.
            ## @param value Value to set for the auto_update_mode property.
            ## @return a void
            ## 
            def auto_update_mode=(value)
                @auto_update_mode = value
            end
            ## 
            ## Instantiates a new androidManagedStoreAppAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidManagedStoreAppAssignmentSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_managed_store_app_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidManagedStoreAppAssignmentSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "androidManagedStoreAppTrackIds" => lambda {|n| @android_managed_store_app_track_ids = n.get_collection_of_primitive_values(String) },
                    "autoUpdateMode" => lambda {|n| @auto_update_mode = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedStoreAutoUpdateMode) },
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
                writer.write_collection_of_primitive_values("androidManagedStoreAppTrackIds", @android_managed_store_app_track_ids)
                writer.write_enum_value("autoUpdateMode", @auto_update_mode)
            end
        end
    end
end
