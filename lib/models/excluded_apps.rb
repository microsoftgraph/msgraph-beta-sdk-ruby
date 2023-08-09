require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for Excluded Office365 Apps.
        class ExcludedApps
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The value for if MS Office Access should be excluded or not.
            @access
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The value for if Microsoft Search as default should be excluded or not.
            @bing
            ## 
            # The value for if MS Office Excel should be excluded or not.
            @excel
            ## 
            # The value for if MS Office OneDrive for Business - Groove should be excluded or not.
            @groove
            ## 
            # The value for if MS Office InfoPath should be excluded or not.
            @info_path
            ## 
            # The value for if MS Office Skype for Business - Lync should be excluded or not.
            @lync
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The value for if MS Office OneDrive should be excluded or not.
            @one_drive
            ## 
            # The value for if MS Office OneNote should be excluded or not.
            @one_note
            ## 
            # The value for if MS Office Outlook should be excluded or not.
            @outlook
            ## 
            # The value for if MS Office PowerPoint should be excluded or not.
            @power_point
            ## 
            # The value for if MS Office Publisher should be excluded or not.
            @publisher
            ## 
            # The value for if MS Office SharePointDesigner should be excluded or not.
            @share_point_designer
            ## 
            # The value for if MS Office Teams should be excluded or not.
            @teams
            ## 
            # The value for if MS Office Visio should be excluded or not.
            @visio
            ## 
            # The value for if MS Office Word should be excluded or not.
            @word
            ## 
            ## Gets the access property value. The value for if MS Office Access should be excluded or not.
            ## @return a boolean
            ## 
            def access
                return @access
            end
            ## 
            ## Sets the access property value. The value for if MS Office Access should be excluded or not.
            ## @param value Value to set for the access property.
            ## @return a void
            ## 
            def access=(value)
                @access = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the bing property value. The value for if Microsoft Search as default should be excluded or not.
            ## @return a boolean
            ## 
            def bing
                return @bing
            end
            ## 
            ## Sets the bing property value. The value for if Microsoft Search as default should be excluded or not.
            ## @param value Value to set for the bing property.
            ## @return a void
            ## 
            def bing=(value)
                @bing = value
            end
            ## 
            ## Instantiates a new excludedApps and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a excluded_apps
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExcludedApps.new
            end
            ## 
            ## Gets the excel property value. The value for if MS Office Excel should be excluded or not.
            ## @return a boolean
            ## 
            def excel
                return @excel
            end
            ## 
            ## Sets the excel property value. The value for if MS Office Excel should be excluded or not.
            ## @param value Value to set for the excel property.
            ## @return a void
            ## 
            def excel=(value)
                @excel = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "access" => lambda {|n| @access = n.get_boolean_value() },
                    "bing" => lambda {|n| @bing = n.get_boolean_value() },
                    "excel" => lambda {|n| @excel = n.get_boolean_value() },
                    "groove" => lambda {|n| @groove = n.get_boolean_value() },
                    "infoPath" => lambda {|n| @info_path = n.get_boolean_value() },
                    "lync" => lambda {|n| @lync = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "oneDrive" => lambda {|n| @one_drive = n.get_boolean_value() },
                    "oneNote" => lambda {|n| @one_note = n.get_boolean_value() },
                    "outlook" => lambda {|n| @outlook = n.get_boolean_value() },
                    "powerPoint" => lambda {|n| @power_point = n.get_boolean_value() },
                    "publisher" => lambda {|n| @publisher = n.get_boolean_value() },
                    "sharePointDesigner" => lambda {|n| @share_point_designer = n.get_boolean_value() },
                    "teams" => lambda {|n| @teams = n.get_boolean_value() },
                    "visio" => lambda {|n| @visio = n.get_boolean_value() },
                    "word" => lambda {|n| @word = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the groove property value. The value for if MS Office OneDrive for Business - Groove should be excluded or not.
            ## @return a boolean
            ## 
            def groove
                return @groove
            end
            ## 
            ## Sets the groove property value. The value for if MS Office OneDrive for Business - Groove should be excluded or not.
            ## @param value Value to set for the groove property.
            ## @return a void
            ## 
            def groove=(value)
                @groove = value
            end
            ## 
            ## Gets the infoPath property value. The value for if MS Office InfoPath should be excluded or not.
            ## @return a boolean
            ## 
            def info_path
                return @info_path
            end
            ## 
            ## Sets the infoPath property value. The value for if MS Office InfoPath should be excluded or not.
            ## @param value Value to set for the infoPath property.
            ## @return a void
            ## 
            def info_path=(value)
                @info_path = value
            end
            ## 
            ## Gets the lync property value. The value for if MS Office Skype for Business - Lync should be excluded or not.
            ## @return a boolean
            ## 
            def lync
                return @lync
            end
            ## 
            ## Sets the lync property value. The value for if MS Office Skype for Business - Lync should be excluded or not.
            ## @param value Value to set for the lync property.
            ## @return a void
            ## 
            def lync=(value)
                @lync = value
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
            ## Gets the oneDrive property value. The value for if MS Office OneDrive should be excluded or not.
            ## @return a boolean
            ## 
            def one_drive
                return @one_drive
            end
            ## 
            ## Sets the oneDrive property value. The value for if MS Office OneDrive should be excluded or not.
            ## @param value Value to set for the oneDrive property.
            ## @return a void
            ## 
            def one_drive=(value)
                @one_drive = value
            end
            ## 
            ## Gets the oneNote property value. The value for if MS Office OneNote should be excluded or not.
            ## @return a boolean
            ## 
            def one_note
                return @one_note
            end
            ## 
            ## Sets the oneNote property value. The value for if MS Office OneNote should be excluded or not.
            ## @param value Value to set for the oneNote property.
            ## @return a void
            ## 
            def one_note=(value)
                @one_note = value
            end
            ## 
            ## Gets the outlook property value. The value for if MS Office Outlook should be excluded or not.
            ## @return a boolean
            ## 
            def outlook
                return @outlook
            end
            ## 
            ## Sets the outlook property value. The value for if MS Office Outlook should be excluded or not.
            ## @param value Value to set for the outlook property.
            ## @return a void
            ## 
            def outlook=(value)
                @outlook = value
            end
            ## 
            ## Gets the powerPoint property value. The value for if MS Office PowerPoint should be excluded or not.
            ## @return a boolean
            ## 
            def power_point
                return @power_point
            end
            ## 
            ## Sets the powerPoint property value. The value for if MS Office PowerPoint should be excluded or not.
            ## @param value Value to set for the powerPoint property.
            ## @return a void
            ## 
            def power_point=(value)
                @power_point = value
            end
            ## 
            ## Gets the publisher property value. The value for if MS Office Publisher should be excluded or not.
            ## @return a boolean
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The value for if MS Office Publisher should be excluded or not.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("access", @access)
                writer.write_boolean_value("bing", @bing)
                writer.write_boolean_value("excel", @excel)
                writer.write_boolean_value("groove", @groove)
                writer.write_boolean_value("infoPath", @info_path)
                writer.write_boolean_value("lync", @lync)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("oneDrive", @one_drive)
                writer.write_boolean_value("oneNote", @one_note)
                writer.write_boolean_value("outlook", @outlook)
                writer.write_boolean_value("powerPoint", @power_point)
                writer.write_boolean_value("publisher", @publisher)
                writer.write_boolean_value("sharePointDesigner", @share_point_designer)
                writer.write_boolean_value("teams", @teams)
                writer.write_boolean_value("visio", @visio)
                writer.write_boolean_value("word", @word)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sharePointDesigner property value. The value for if MS Office SharePointDesigner should be excluded or not.
            ## @return a boolean
            ## 
            def share_point_designer
                return @share_point_designer
            end
            ## 
            ## Sets the sharePointDesigner property value. The value for if MS Office SharePointDesigner should be excluded or not.
            ## @param value Value to set for the sharePointDesigner property.
            ## @return a void
            ## 
            def share_point_designer=(value)
                @share_point_designer = value
            end
            ## 
            ## Gets the teams property value. The value for if MS Office Teams should be excluded or not.
            ## @return a boolean
            ## 
            def teams
                return @teams
            end
            ## 
            ## Sets the teams property value. The value for if MS Office Teams should be excluded or not.
            ## @param value Value to set for the teams property.
            ## @return a void
            ## 
            def teams=(value)
                @teams = value
            end
            ## 
            ## Gets the visio property value. The value for if MS Office Visio should be excluded or not.
            ## @return a boolean
            ## 
            def visio
                return @visio
            end
            ## 
            ## Sets the visio property value. The value for if MS Office Visio should be excluded or not.
            ## @param value Value to set for the visio property.
            ## @return a void
            ## 
            def visio=(value)
                @visio = value
            end
            ## 
            ## Gets the word property value. The value for if MS Office Word should be excluded or not.
            ## @return a boolean
            ## 
            def word
                return @word
            end
            ## 
            ## Sets the word property value. The value for if MS Office Word should be excluded or not.
            ## @param value Value to set for the word property.
            ## @return a void
            ## 
            def word=(value)
                @word = value
            end
        end
    end
end
