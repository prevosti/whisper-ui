# TODO (features I want to add)
- [X] Store data in local file system (need to figure out which directories to bind mount, I already am bind mounting /data/media, but that's not enough)
- [_] Make Dockerfile multi-stage so I don't have to reinstall everything when building the image (only code is copied over)
- [_] Allow to specify a source folder where all the media is and upload to database
- [_] Extract folder names (and parent(s) folders) and add them as labels to Media metadata (author being one of them)
- [_] Not have to create a copy of the media files (mp3, vtt, etc.), but rather leave them where they are
- [_] Modify transcriptions in the UI and save them to the database
- [_] Add option to generate transcription files (vtt, srt, etc.) from transcription in the database
- [_] Switch to alpine base image
