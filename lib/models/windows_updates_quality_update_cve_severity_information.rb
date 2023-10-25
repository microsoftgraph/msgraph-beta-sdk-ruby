require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesQualityUpdateCveSeverityInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The exploitedCves property
            @exploited_cves
            ## 
            # Highest base score that occurs of any CVE addressed by the quality update. Read-only.
            @max_base_score
            ## 
            # The maxSeverity property
            @max_severity
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new windowsUpdatesQualityUpdateCveSeverityInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_quality_update_cve_severity_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesQualityUpdateCveSeverityInformation.new
            end
            ## 
            ## Gets the exploitedCves property value. The exploitedCves property
            ## @return a windows_updates_cve_information
            ## 
            def exploited_cves
                return @exploited_cves
            end
            ## 
            ## Sets the exploitedCves property value. The exploitedCves property
            ## @param value Value to set for the exploitedCves property.
            ## @return a void
            ## 
            def exploited_cves=(value)
                @exploited_cves = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "exploitedCves" => lambda {|n| @exploited_cves = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesCveInformation.create_from_discriminator_value(pn) }) },
                    "maxBaseScore" => lambda {|n| @max_base_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "maxSeverity" => lambda {|n| @max_severity = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesCveSeverityLevel) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the maxBaseScore property value. Highest base score that occurs of any CVE addressed by the quality update. Read-only.
            ## @return a double
            ## 
            def max_base_score
                return @max_base_score
            end
            ## 
            ## Sets the maxBaseScore property value. Highest base score that occurs of any CVE addressed by the quality update. Read-only.
            ## @param value Value to set for the maxBaseScore property.
            ## @return a void
            ## 
            def max_base_score=(value)
                @max_base_score = value
            end
            ## 
            ## Gets the maxSeverity property value. The maxSeverity property
            ## @return a windows_updates_cve_severity_level
            ## 
            def max_severity
                return @max_severity
            end
            ## 
            ## Sets the maxSeverity property value. The maxSeverity property
            ## @param value Value to set for the maxSeverity property.
            ## @return a void
            ## 
            def max_severity=(value)
                @max_severity = value
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
                writer.write_collection_of_object_values("exploitedCves", @exploited_cves)
                writer.write_object_value("maxBaseScore", @max_base_score)
                writer.write_enum_value("maxSeverity", @max_severity)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
