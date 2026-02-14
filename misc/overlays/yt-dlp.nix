self: super: {
  yt-dlp = super.yt-dlp.overrideAttrs (oldAttrs: rec {
    version = "2026.01.31";  # Coloque a versão mais recente aqui
    
    src = super.fetchFromGitHub {
      owner = "yt-dlp";
      repo = "yt-dlp";
      rev = version;
      hash = "sha256-3sXXyWuQI6KTOQIkkOfJhCTBBh3Zkv59ENhkrz9Sgxc=";  # Deixe vazio primeiro, vamos calcular depois
    };
  });
}
