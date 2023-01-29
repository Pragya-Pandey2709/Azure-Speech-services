//Install .NET 6.

//Install the Speech CLI via the .NET CLI by entering this command:

.NET CLI

dotnet tool install --global Microsoft.CognitiveServices.Speech.CLI

//To update the Speech CLI, enter this command:

.NET CLI

dotnet tool update --global Microsoft.CognitiveServices.Speech.CLI
//To configure your resource key and region identifier, run the following commands:

spx config @key --set SPEECH-KEY
spx config @region --set SPEECH-REGION
//The key and region are stored for future Speech CLI commands. To view the current configuration, run the following commands:

spx config @key
spx config @region
//As needed, include the clear option to remove either stored value:

spx config @key --clear
spx config @region --clear

//Speech-to-text (speech recognition)

spx recognize --microphone
spx recognize --file /path/to/file.wav

//Text-to-speech (speech synthesis)
spx synthesize --text "Testing synthesis using the Speech CLI" --speakers
spx synthesize --text "Enjoy using the Speech CLI." --audio output my-sample.wav
spx synthesize --voices
spx synthesize --text "Bienvenue chez moi." --voice fr-FR-AlainNeural --speakers

//Speech-to-text translation
spx translate --microphone --source en-US --target ru-RU
spx translate --microphone --source en-US --target ru-RU;fr-FR;es-ES
spx translate --file /some/file/path/input.wav --source en-US --target ru-RU --output file /some/file/path/russian_translation.txt
