require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IosHomeScreenApp < MicrosoftGraphBeta::Models::IosHomeScreenItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # BundleID of the app if isWebClip is false or the URL of a web clip if isWebClip is true.
            @bundle_i_d
            ## 
            # When true, the bundle ID will be handled as a URL for a web clip.
            @is_web_clip
            ## 
            ## Gets the bundleID property value. BundleID of the app if isWebClip is false or the URL of a web clip if isWebClip is true.
            ## @return a string
            ## 
            def bundle_i_d
                return @bundle_i_d
            end
            ## 
            ## Sets the bundleID property value. BundleID of the app if isWebClip is false or the URL of a web clip if isWebClip is true.
            ## @param value Value to set for the bundle_i_d property.
            ## @return a void
            ## 
            def bundle_i_d=(value)
                @bundle_i_d = value
            end
            ## 
            ## Instantiates a new IosHomeScreenApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosHomeScreenApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_home_screen_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosHomeScreenApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bundleID" => lambda {|n| @bundle_i_d = n.get_string_value() },
                    "isWebClip" => lambda {|n| @is_web_clip = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isWebClip property value. When true, the bundle ID will be handled as a URL for a web clip.
            ## @return a boolean
            ## 
            def is_web_clip
                return @is_web_clip
            end
            ## 
            ## Sets the isWebClip property value. When true, the bundle ID will be handled as a URL for a web clip.
            ## @param value Value to set for the is_web_clip property.
            ## @return a void
            ## 
            def is_web_clip=(value)
                @is_web_clip = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("bundleID", @bundle_i_d)
                writer.write_boolean_value("isWebClip", @is_web_clip)
            end
        end
    end
end
