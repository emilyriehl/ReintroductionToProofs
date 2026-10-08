# Lifecycle hooks run in a non-interactive shell, which does not read ~/.bashrc,
# so elan (lake/lean) is not on PATH unless we add it here. The relay needs
# `lake` to start the game's Lean server.
export PATH="$HOME/.elan/bin:$PATH"
export VITE_LEAN4GAME_SINGLE=true
export VITE_LEAN4GAME_SINGLE_NAME=$(basename "$PWD")
npm start --prefix ../lean4game
