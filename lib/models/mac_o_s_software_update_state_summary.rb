require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # MacOS software update state summary for a device and user
        class MacOSSoftwareUpdateStateSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Human readable name of the software update
            @display_name
            ## 
            # Last date time the report for this device and product key was updated.
            @last_updated_date_time
            ## 
            # Product key of the software update.
            @product_key
            ## 
            # MacOS Software Update State
            @state
            ## 
            # MacOS Software Update Category
            @update_category
            ## 
            # Version of the software update
            @update_version
            ## 
            ## Instantiates a new macOSSoftwareUpdateStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_software_update_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSSoftwareUpdateStateSummary.new
            end
            ## 
            ## Gets the displayName property value. Human readable name of the software update
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Human readable name of the software update
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "productKey" => lambda {|n| @product_key = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateState) },
                    "updateCategory" => lambda {|n| @update_category = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateCategory) },
                    "updateVersion" => lambda {|n| @update_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. Last date time the report for this device and product key was updated.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. Last date time the report for this device and product key was updated.
            ## @param value Value to set for the lastUpdatedDateTime property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the productKey property value. Product key of the software update.
            ## @return a string
            ## 
            def product_key
                return @product_key
            end
            ## 
            ## Sets the productKey property value. Product key of the software update.
            ## @param value Value to set for the productKey property.
            ## @return a void
            ## 
            def product_key=(value)
                @product_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("productKey", @product_key)
                writer.write_enum_value("state", @state)
                writer.write_enum_value("updateCategory", @update_category)
                writer.write_string_value("updateVersion", @update_version)
            end
            ## 
            ## Gets the state property value. MacOS Software Update State
            ## @return a mac_o_s_software_update_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. MacOS Software Update State
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the updateCategory property value. MacOS Software Update Category
            ## @return a mac_o_s_software_update_category
            ## 
            def update_category
                return @update_category
            end
            ## 
            ## Sets the updateCategory property value. MacOS Software Update Category
            ## @param value Value to set for the updateCategory property.
            ## @return a void
            ## 
            def update_category=(value)
                @update_category = value
            end
            ## 
            ## Gets the updateVersion property value. Version of the software update
            ## @return a string
            ## 
            def update_version
                return @update_version
            end
            ## 
            ## Sets the updateVersion property value. Version of the software update
            ## @param value Value to set for the updateVersion property.
            ## @return a void
            ## 
            def update_version=(value)
                @update_version = value
            end
        end
    end
end
