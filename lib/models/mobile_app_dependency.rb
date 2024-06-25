require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Describes a dependency type between two mobile apps.
        class MobileAppDependency < MicrosoftGraphBeta::Models::MobileAppRelationship
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the dependency type associated with a relationship between two mobile apps.
            @dependency_type
            ## 
            # The total number of apps that directly or indirectly depend on the parent app. This property is read-only.
            @dependent_app_count
            ## 
            # The total number of apps the child app directly or indirectly depends on. This property is read-only.
            @depends_on_app_count
            ## 
            ## Instantiates a new MobileAppDependency and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mobileAppDependency"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_dependency
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppDependency.new
            end
            ## 
            ## Gets the dependencyType property value. Indicates the dependency type associated with a relationship between two mobile apps.
            ## @return a mobile_app_dependency_type
            ## 
            def dependency_type
                return @dependency_type
            end
            ## 
            ## Sets the dependencyType property value. Indicates the dependency type associated with a relationship between two mobile apps.
            ## @param value Value to set for the dependencyType property.
            ## @return a void
            ## 
            def dependency_type=(value)
                @dependency_type = value
            end
            ## 
            ## Gets the dependentAppCount property value. The total number of apps that directly or indirectly depend on the parent app. This property is read-only.
            ## @return a integer
            ## 
            def dependent_app_count
                return @dependent_app_count
            end
            ## 
            ## Sets the dependentAppCount property value. The total number of apps that directly or indirectly depend on the parent app. This property is read-only.
            ## @param value Value to set for the dependentAppCount property.
            ## @return a void
            ## 
            def dependent_app_count=(value)
                @dependent_app_count = value
            end
            ## 
            ## Gets the dependsOnAppCount property value. The total number of apps the child app directly or indirectly depends on. This property is read-only.
            ## @return a integer
            ## 
            def depends_on_app_count
                return @depends_on_app_count
            end
            ## 
            ## Sets the dependsOnAppCount property value. The total number of apps the child app directly or indirectly depends on. This property is read-only.
            ## @param value Value to set for the dependsOnAppCount property.
            ## @return a void
            ## 
            def depends_on_app_count=(value)
                @depends_on_app_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "dependencyType" => lambda {|n| @dependency_type = n.get_enum_value(MicrosoftGraphBeta::Models::MobileAppDependencyType) },
                    "dependentAppCount" => lambda {|n| @dependent_app_count = n.get_number_value() },
                    "dependsOnAppCount" => lambda {|n| @depends_on_app_count = n.get_number_value() },
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
                writer.write_enum_value("dependencyType", @dependency_type)
            end
        end
    end
end
