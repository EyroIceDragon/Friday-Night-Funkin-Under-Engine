/// @description
SongMusicBeat[0] = false;
SongMusicBeat[1] = false;
if floor(NowCurrentBeat) % 2 = 0 and SongMusicBeat[2]{
	SongMusicBeat[0] = true
	SongMusicBeat[2] = false
	SongMusicBeat[3] = true
}
if floor(NowCurrentBeat) % 2 = 1 and SongMusicBeat[3]{
	SongMusicBeat[1] = true
	SongMusicBeat[2] = true
	SongMusicBeat[3] = false
}