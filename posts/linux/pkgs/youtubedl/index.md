# FFMPEG and youtube-dl tips


## Source

- youtude-dl [docs](https://github.com/ytdl-org/youtube-dl/blob/master/README.md)
- FFMPEG [docs](https://ffmpeg.org/ffmpeg-all.html)
- Harish Kannarao's [gist](https://gist.github.com/harishkannarao/3bdc7400cd2d7e7f31d8ffce3ad0e0e9).

<!--more-->

## Installation

### Download from their websites

- [youtude-dl download](https://ytdl-org.github.io/youtube-dl/download.html)
- [FFMPEG download](https://ffmpeg.org/download.html)

### Download via `pip`

(For `youtube-dl` only)

```bash
[[ -x $(command -v pip ) ]] && pip  install -U --user youtube-dl
[[ -x $(command -v pip3) ]] && pip3 install -U --user youtube-dl
```

### Download via `pacman`

```bash
sudo pacman -S youtube-dl ffmpeg
```

### Download via `apt`

```bash
sudo apt install youtube-dl ffmpeg
```

### Download via `chocolatey`

Install [chocolatey package manager](https://chocolatey.org/) first.

```powershell
cinst youtube-dl ffmpeg
```

## Download Watch Later videos and mark them as viewed

```bash
youtube-dl -u username --mark-watched https://www.youtube.com/playlist?list=WL
```

## Download videos from a playlist

```bash
youtube-dl --yes-playlist --ignore-errors --continue --no-overwrites --output "%(title)s.%(ext)s" "${URL}"
```

💡
- `--yes-playlist` : Download multiple videos if the URL is a playlist
- `--ignore-errors` : Ignore errors (like geo-restriction of a video or deleted video in a playlist) and continue with rest of the playlist
- `--continue` : Resume if any of the video is partially downloaded in the local file system
- `--no-overwrites` : If a file is already downloaded in local file system, then skip the download
- `--output "%(title)s.%(ext)s` : Specify the download directory with filename and extension extracted from the video
- `"${URL}"` : URL of the video or playlist

## Download audio only, as opus format, from a playlist

`--extract-audio --audio-format opus --format 'bestaudio'` to extract only the audio information and store as `opus` file.

```bash
youtube-dl --yes-playlist --ignore-errors --continue --no-overwrites --extract-audio --audio-format opus --format 'bestaudio' --output "%(title)s.%(ext)s" "${URL}"
```

## Download videos in bulk from list of videos in a file

`--batch-file batchlist.txt` to capture the list of URLs in a separate lines in a text file and download them in batch.

```bash
youtube-dl --ignore-errors --continue --no-overwrites --format 'bestvideo+bestaudio' --batch-file batchlist.txt --output "%(title)s.%(ext)s"
```

## Simple stream copy

Fixing "99.9% complete" videos.

```bash
ffmpeg -i input.mkv -c copy -o output.mkv
```

## Remove audio without reencoding video

```bash
ffmpeg -i in.mp4 -vcodec copy -an out.mp4
```

```bash
ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac
```

Options explained:

- `-vn` : no video output
- `-an` : no audio output
- `-{a,v}codec copy`: no reencoding


## Cutting videos

Without re-encoding (simple copying)

```bash
ffmpeg -i input.mp4 -ss 00:01:00 -to 00:02:00 -c copy output.mp4
```

With re-encoding (slower but frame accurate)

```bash
ffmpeg -i input.mp4 -ss 00:00:03 -t 00:00:08 -async 1 output.mp4
```

Options explained:

- `-ss` for start time `hh::mm::ss`
- `-t` for duration  `hh::mm::ss`, or `-to` for end time `hh::mm::ss`

