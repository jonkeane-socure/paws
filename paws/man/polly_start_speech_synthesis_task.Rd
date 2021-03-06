% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polly_operations.R
\name{polly_start_speech_synthesis_task}
\alias{polly_start_speech_synthesis_task}
\title{Allows the creation of an asynchronous synthesis task, by starting a new
SpeechSynthesisTask}
\usage{
polly_start_speech_synthesis_task(Engine, LanguageCode, LexiconNames,
  OutputFormat, OutputS3BucketName, OutputS3KeyPrefix, SampleRate,
  SnsTopicArn, SpeechMarkTypes, Text, TextType, VoiceId)
}
\arguments{
\item{Engine}{Specifies the engine (\code{standard} or \code{neural}) for Amazon Polly to use
when processing input text for speech synthesis. Using a voice that is
not supported for the engine selected will result in an error.}

\item{LanguageCode}{Optional language code for the Speech Synthesis request. This is only
necessary if using a bilingual voice, such as Aditi, which can be used
for either Indian English (en-IN) or Hindi (hi-IN).

If a bilingual voice is used and no language code is specified, Amazon
Polly will use the default language of the bilingual voice. The default
language for any voice is the one returned by the
\href{https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html}{DescribeVoices}
operation for the \code{LanguageCode} parameter. For example, if no language
code is specified, Aditi will use Indian English rather than Hindi.}

\item{LexiconNames}{List of one or more pronunciation lexicon names you want the service to
apply during synthesis. Lexicons are applied only if the language of the
lexicon is the same as the language of the voice.}

\item{OutputFormat}{[required] The format in which the returned output will be encoded. For audio
stream, this will be mp3, ogg\\_vorbis, or pcm. For speech marks, this
will be json.}

\item{OutputS3BucketName}{[required] Amazon S3 bucket name to which the output file will be saved.}

\item{OutputS3KeyPrefix}{The Amazon S3 key prefix for the output speech file.}

\item{SampleRate}{The audio frequency specified in Hz.

The valid values for mp3 and ogg\\_vorbis are \"8000\", \"16000\",
\"22050\", and \"24000\". The default value for standard voices is
\"22050\". The default value for neural voices is \"24000\".

Valid values for pcm are \"8000\" and \"16000\" The default value is
\"16000\".}

\item{SnsTopicArn}{ARN for the SNS topic optionally used for providing status notification
for a speech synthesis task.}

\item{SpeechMarkTypes}{The type of speech marks returned for the input text.}

\item{Text}{[required] The input text to synthesize. If you specify ssml as the TextType,
follow the SSML format for the input text.}

\item{TextType}{Specifies whether the input text is plain text or SSML. The default
value is plain text.}

\item{VoiceId}{[required] Voice ID to use for the synthesis.}
}
\description{
Allows the creation of an asynchronous synthesis task, by starting a new
\code{SpeechSynthesisTask}. This operation requires all the standard
information needed for speech synthesis, plus the name of an Amazon S3
bucket for the service to store the output of the synthesis task and two
optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the
synthesis task is created, this operation will return a
SpeechSynthesisTask object, which will include an identifier of this
task as well as the current status.
}
\section{Request syntax}{
\preformatted{svc$start_speech_synthesis_task(
  Engine = "standard"|"neural",
  LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR",
  LexiconNames = list(
    "string"
  ),
  OutputFormat = "json"|"mp3"|"ogg_vorbis"|"pcm",
  OutputS3BucketName = "string",
  OutputS3KeyPrefix = "string",
  SampleRate = "string",
  SnsTopicArn = "string",
  SpeechMarkTypes = list(
    "sentence"|"ssml"|"viseme"|"word"
  ),
  Text = "string",
  TextType = "ssml"|"text",
  VoiceId = "Aditi"|"Amy"|"Astrid"|"Bianca"|"Brian"|"Camila"|"Carla"|"Carmen"|"Celine"|"Chantal"|"Conchita"|"Cristiano"|"Dora"|"Emma"|"Enrique"|"Ewa"|"Filiz"|"Geraint"|"Giorgio"|"Gwyneth"|"Hans"|"Ines"|"Ivy"|"Jacek"|"Jan"|"Joanna"|"Joey"|"Justin"|"Karl"|"Kendra"|"Kimberly"|"Lea"|"Liv"|"Lotte"|"Lucia"|"Lupe"|"Mads"|"Maja"|"Marlene"|"Mathieu"|"Matthew"|"Maxim"|"Mia"|"Miguel"|"Mizuki"|"Naja"|"Nicole"|"Penelope"|"Raveena"|"Ricardo"|"Ruben"|"Russell"|"Salli"|"Seoyeon"|"Takumi"|"Tatyana"|"Vicki"|"Vitoria"|"Zeina"|"Zhiyu"
)
}
}

\keyword{internal}
