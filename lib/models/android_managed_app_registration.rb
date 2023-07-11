require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the synchronization details of an android app, with management capabilities, for a specific user.
        class AndroidManagedAppRegistration < MicrosoftGraphBeta::Models::ManagedAppRegistration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The patch version for the current android app registration
            @patch_version
            ## 
            ## Instantiates a new androidManagedAppRegistration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidManagedAppRegistration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_managed_app_registration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidManagedAppRegistration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "patchVersion" => lambda {|n| @patch_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the patchVersion property value. The patch version for the current android app registration
            ## @return a string
            ## 
            def patch_version
                return @patch_version
            end
            ## 
            ## Sets the patchVersion property value. The patch version for the current android app registration
            ## @param value Value to set for the patch_version property.
            ## @return a void
            ## 
            def patch_version=(value)
                @patch_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("patchVersion", @patch_version)
            end
        end
    end
end
