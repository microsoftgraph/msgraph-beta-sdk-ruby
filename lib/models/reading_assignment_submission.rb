require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ReadingAssignmentSubmission < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Accuracy score of the reading progress.
            @accuracy_score
            ## 
            # Indicates whether the submission is an attempt by the student or a miscue edit done by the educator. The possible values are Attempt and EditMiscue.
            @action
            ## 
            # ID of the assignment with which this submission is associated.
            @assignment_id
            ## 
            # List of words that the student found challenging during the reading session.
            @challenging_words
            ## 
            # ID of the class this reading progress is associated with.
            @class_id
            ## 
            # Insertions of the reading progress.
            @insertions
            ## 
            # Mispronunciations of the reading progress.
            @mispronunciations
            ## 
            # Number of exclamation marks missed in the reading passage.
            @missed_exclamation_marks
            ## 
            # Number of periods missed in the reading passage.
            @missed_periods
            ## 
            # Number of question marks missed in the reading passage.
            @missed_question_marks
            ## 
            # Number of short words missed during the reading session.
            @missed_shorts
            ## 
            # Score that reflects the student's use of intonation and expression. Lower scores indicate more monotone reading.
            @monotone_score
            ## 
            # Omissions of the reading progress.
            @omissions
            ## 
            # Number of times the student repeated words or phrases during the reading session.
            @repetitions
            ## 
            # Number of times the student self-corrected their reading errors.
            @self_corrections
            ## 
            # ID of the user this reading progress is associated with.
            @student_id
            ## 
            # Date and time of the submission this reading progress is associated with. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @submission_date_time
            ## 
            # ID of the submission this reading progress is associated with.
            @submission_id
            ## 
            # Number of unexpected pauses made during the reading session.
            @unexpected_pauses
            ## 
            # Words count of the reading progress.
            @word_count
            ## 
            # Words per minute of the reading progress.
            @words_per_minute
            ## 
            ## Gets the accuracyScore property value. Accuracy score of the reading progress.
            ## @return a double
            ## 
            def accuracy_score
                return @accuracy_score
            end
            ## 
            ## Sets the accuracyScore property value. Accuracy score of the reading progress.
            ## @param value Value to set for the accuracyScore property.
            ## @return a void
            ## 
            def accuracy_score=(value)
                @accuracy_score = value
            end
            ## 
            ## Gets the action property value. Indicates whether the submission is an attempt by the student or a miscue edit done by the educator. The possible values are Attempt and EditMiscue.
            ## @return a string
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. Indicates whether the submission is an attempt by the student or a miscue edit done by the educator. The possible values are Attempt and EditMiscue.
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Gets the assignmentId property value. ID of the assignment with which this submission is associated.
            ## @return a string
            ## 
            def assignment_id
                return @assignment_id
            end
            ## 
            ## Sets the assignmentId property value. ID of the assignment with which this submission is associated.
            ## @param value Value to set for the assignmentId property.
            ## @return a void
            ## 
            def assignment_id=(value)
                @assignment_id = value
            end
            ## 
            ## Gets the challengingWords property value. List of words that the student found challenging during the reading session.
            ## @return a challenging_word
            ## 
            def challenging_words
                return @challenging_words
            end
            ## 
            ## Sets the challengingWords property value. List of words that the student found challenging during the reading session.
            ## @param value Value to set for the challengingWords property.
            ## @return a void
            ## 
            def challenging_words=(value)
                @challenging_words = value
            end
            ## 
            ## Gets the classId property value. ID of the class this reading progress is associated with.
            ## @return a string
            ## 
            def class_id
                return @class_id
            end
            ## 
            ## Sets the classId property value. ID of the class this reading progress is associated with.
            ## @param value Value to set for the classId property.
            ## @return a void
            ## 
            def class_id=(value)
                @class_id = value
            end
            ## 
            ## Instantiates a new ReadingAssignmentSubmission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a reading_assignment_submission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReadingAssignmentSubmission.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accuracyScore" => lambda {|n| @accuracy_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "action" => lambda {|n| @action = n.get_string_value() },
                    "assignmentId" => lambda {|n| @assignment_id = n.get_string_value() },
                    "challengingWords" => lambda {|n| @challenging_words = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ChallengingWord.create_from_discriminator_value(pn) }) },
                    "classId" => lambda {|n| @class_id = n.get_string_value() },
                    "insertions" => lambda {|n| @insertions = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "mispronunciations" => lambda {|n| @mispronunciations = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "missedExclamationMarks" => lambda {|n| @missed_exclamation_marks = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "missedPeriods" => lambda {|n| @missed_periods = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "missedQuestionMarks" => lambda {|n| @missed_question_marks = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "missedShorts" => lambda {|n| @missed_shorts = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "monotoneScore" => lambda {|n| @monotone_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "omissions" => lambda {|n| @omissions = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "repetitions" => lambda {|n| @repetitions = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "selfCorrections" => lambda {|n| @self_corrections = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "studentId" => lambda {|n| @student_id = n.get_string_value() },
                    "submissionDateTime" => lambda {|n| @submission_date_time = n.get_date_time_value() },
                    "submissionId" => lambda {|n| @submission_id = n.get_string_value() },
                    "unexpectedPauses" => lambda {|n| @unexpected_pauses = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "wordCount" => lambda {|n| @word_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "wordsPerMinute" => lambda {|n| @words_per_minute = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the insertions property value. Insertions of the reading progress.
            ## @return a int64
            ## 
            def insertions
                return @insertions
            end
            ## 
            ## Sets the insertions property value. Insertions of the reading progress.
            ## @param value Value to set for the insertions property.
            ## @return a void
            ## 
            def insertions=(value)
                @insertions = value
            end
            ## 
            ## Gets the mispronunciations property value. Mispronunciations of the reading progress.
            ## @return a int64
            ## 
            def mispronunciations
                return @mispronunciations
            end
            ## 
            ## Sets the mispronunciations property value. Mispronunciations of the reading progress.
            ## @param value Value to set for the mispronunciations property.
            ## @return a void
            ## 
            def mispronunciations=(value)
                @mispronunciations = value
            end
            ## 
            ## Gets the missedExclamationMarks property value. Number of exclamation marks missed in the reading passage.
            ## @return a int64
            ## 
            def missed_exclamation_marks
                return @missed_exclamation_marks
            end
            ## 
            ## Sets the missedExclamationMarks property value. Number of exclamation marks missed in the reading passage.
            ## @param value Value to set for the missedExclamationMarks property.
            ## @return a void
            ## 
            def missed_exclamation_marks=(value)
                @missed_exclamation_marks = value
            end
            ## 
            ## Gets the missedPeriods property value. Number of periods missed in the reading passage.
            ## @return a int64
            ## 
            def missed_periods
                return @missed_periods
            end
            ## 
            ## Sets the missedPeriods property value. Number of periods missed in the reading passage.
            ## @param value Value to set for the missedPeriods property.
            ## @return a void
            ## 
            def missed_periods=(value)
                @missed_periods = value
            end
            ## 
            ## Gets the missedQuestionMarks property value. Number of question marks missed in the reading passage.
            ## @return a int64
            ## 
            def missed_question_marks
                return @missed_question_marks
            end
            ## 
            ## Sets the missedQuestionMarks property value. Number of question marks missed in the reading passage.
            ## @param value Value to set for the missedQuestionMarks property.
            ## @return a void
            ## 
            def missed_question_marks=(value)
                @missed_question_marks = value
            end
            ## 
            ## Gets the missedShorts property value. Number of short words missed during the reading session.
            ## @return a int64
            ## 
            def missed_shorts
                return @missed_shorts
            end
            ## 
            ## Sets the missedShorts property value. Number of short words missed during the reading session.
            ## @param value Value to set for the missedShorts property.
            ## @return a void
            ## 
            def missed_shorts=(value)
                @missed_shorts = value
            end
            ## 
            ## Gets the monotoneScore property value. Score that reflects the student's use of intonation and expression. Lower scores indicate more monotone reading.
            ## @return a double
            ## 
            def monotone_score
                return @monotone_score
            end
            ## 
            ## Sets the monotoneScore property value. Score that reflects the student's use of intonation and expression. Lower scores indicate more monotone reading.
            ## @param value Value to set for the monotoneScore property.
            ## @return a void
            ## 
            def monotone_score=(value)
                @monotone_score = value
            end
            ## 
            ## Gets the omissions property value. Omissions of the reading progress.
            ## @return a int64
            ## 
            def omissions
                return @omissions
            end
            ## 
            ## Sets the omissions property value. Omissions of the reading progress.
            ## @param value Value to set for the omissions property.
            ## @return a void
            ## 
            def omissions=(value)
                @omissions = value
            end
            ## 
            ## Gets the repetitions property value. Number of times the student repeated words or phrases during the reading session.
            ## @return a int64
            ## 
            def repetitions
                return @repetitions
            end
            ## 
            ## Sets the repetitions property value. Number of times the student repeated words or phrases during the reading session.
            ## @param value Value to set for the repetitions property.
            ## @return a void
            ## 
            def repetitions=(value)
                @repetitions = value
            end
            ## 
            ## Gets the selfCorrections property value. Number of times the student self-corrected their reading errors.
            ## @return a int64
            ## 
            def self_corrections
                return @self_corrections
            end
            ## 
            ## Sets the selfCorrections property value. Number of times the student self-corrected their reading errors.
            ## @param value Value to set for the selfCorrections property.
            ## @return a void
            ## 
            def self_corrections=(value)
                @self_corrections = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accuracyScore", @accuracy_score)
                writer.write_string_value("action", @action)
                writer.write_string_value("assignmentId", @assignment_id)
                writer.write_collection_of_object_values("challengingWords", @challenging_words)
                writer.write_string_value("classId", @class_id)
                writer.write_object_value("insertions", @insertions)
                writer.write_object_value("mispronunciations", @mispronunciations)
                writer.write_object_value("missedExclamationMarks", @missed_exclamation_marks)
                writer.write_object_value("missedPeriods", @missed_periods)
                writer.write_object_value("missedQuestionMarks", @missed_question_marks)
                writer.write_object_value("missedShorts", @missed_shorts)
                writer.write_object_value("monotoneScore", @monotone_score)
                writer.write_object_value("omissions", @omissions)
                writer.write_object_value("repetitions", @repetitions)
                writer.write_object_value("selfCorrections", @self_corrections)
                writer.write_string_value("studentId", @student_id)
                writer.write_date_time_value("submissionDateTime", @submission_date_time)
                writer.write_string_value("submissionId", @submission_id)
                writer.write_object_value("unexpectedPauses", @unexpected_pauses)
                writer.write_object_value("wordCount", @word_count)
                writer.write_object_value("wordsPerMinute", @words_per_minute)
            end
            ## 
            ## Gets the studentId property value. ID of the user this reading progress is associated with.
            ## @return a string
            ## 
            def student_id
                return @student_id
            end
            ## 
            ## Sets the studentId property value. ID of the user this reading progress is associated with.
            ## @param value Value to set for the studentId property.
            ## @return a void
            ## 
            def student_id=(value)
                @student_id = value
            end
            ## 
            ## Gets the submissionDateTime property value. Date and time of the submission this reading progress is associated with. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def submission_date_time
                return @submission_date_time
            end
            ## 
            ## Sets the submissionDateTime property value. Date and time of the submission this reading progress is associated with. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the submissionDateTime property.
            ## @return a void
            ## 
            def submission_date_time=(value)
                @submission_date_time = value
            end
            ## 
            ## Gets the submissionId property value. ID of the submission this reading progress is associated with.
            ## @return a string
            ## 
            def submission_id
                return @submission_id
            end
            ## 
            ## Sets the submissionId property value. ID of the submission this reading progress is associated with.
            ## @param value Value to set for the submissionId property.
            ## @return a void
            ## 
            def submission_id=(value)
                @submission_id = value
            end
            ## 
            ## Gets the unexpectedPauses property value. Number of unexpected pauses made during the reading session.
            ## @return a int64
            ## 
            def unexpected_pauses
                return @unexpected_pauses
            end
            ## 
            ## Sets the unexpectedPauses property value. Number of unexpected pauses made during the reading session.
            ## @param value Value to set for the unexpectedPauses property.
            ## @return a void
            ## 
            def unexpected_pauses=(value)
                @unexpected_pauses = value
            end
            ## 
            ## Gets the wordCount property value. Words count of the reading progress.
            ## @return a int64
            ## 
            def word_count
                return @word_count
            end
            ## 
            ## Sets the wordCount property value. Words count of the reading progress.
            ## @param value Value to set for the wordCount property.
            ## @return a void
            ## 
            def word_count=(value)
                @word_count = value
            end
            ## 
            ## Gets the wordsPerMinute property value. Words per minute of the reading progress.
            ## @return a double
            ## 
            def words_per_minute
                return @words_per_minute
            end
            ## 
            ## Sets the wordsPerMinute property value. Words per minute of the reading progress.
            ## @param value Value to set for the wordsPerMinute property.
            ## @return a void
            ## 
            def words_per_minute=(value)
                @words_per_minute = value
            end
        end
    end
end
