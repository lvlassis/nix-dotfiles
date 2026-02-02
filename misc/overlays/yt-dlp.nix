self: super: {
  yt-dlp = super.yt-dlp.overrideAttrs (oldAttrs: rec {
    src = super.fetchFromGitHub {
      owner = "yt-dlp";
      repo = "yt-dlp";
      rev = "2026.01.31";
    };
  });
}

