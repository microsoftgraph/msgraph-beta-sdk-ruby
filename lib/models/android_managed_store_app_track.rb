require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains track information for Android Managed Store apps.
        class AndroidManagedStoreAppTrack
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Friendly name for track.
            @track_alias
            ## 
            # Unique track identifier.
            @track_id
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new AndroidManagedStoreAppTrack and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_managed_store_app_track
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidManagedStoreAppTrack.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "trackAlias" => lambda {|n| @track_alias = n.get_string_value() },
                    "trackId" => lambda {|n| @track_id = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("trackAlias", @track_alias)
                writer.write_string_value("trackId", @track_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trackAlias property value. Friendly name for track.
            ## @return a string
            ## 
            def track_alias
                return @track_alias
            end
            ## 
            ## Sets the trackAlias property value. Friendly name for track.
            ## @param value Value to set for the trackAlias property.
            ## @return a void
            ## 
            def track_alias=(value)
                @track_alias = value
            end
            ## 
            ## Gets the trackId property value. Unique track identifier.
            ## @return a string
            ## 
            def track_id
                return @track_id
            end
            ## 
            ## Sets the trackId property value. Unique track identifier.
            ## @param value Value to set for the trackId property.
            ## @return a void
            ## 
            def track_id=(value)
                @track_id = value
            end
        end
    end
end
