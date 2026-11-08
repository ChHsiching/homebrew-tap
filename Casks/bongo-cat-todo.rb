# Homebrew Cask for BongoCat Todo (fork of BongoCat).
# This file lives in this repo at packaging/homebrew/bongo-cat-todo.rb as the
# source of truth. CI (update-packaging.yml) copies it to the ChHsiching/homebrew-tap
# repo at Casks/bongo-cat-todo.rb, rewriting version + sha256 for each arch on
# release. Users install via:
#   brew tap ChHsiching/tap
#   brew install --cask bongo-cat-todo

cask "bongo-cat-todo" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"

  on_arm do
    sha256 "dedab2f88845b19781002f7fd7c8181e806642d2bd5616f064c25f3bb8f3ed52"
  end
  on_intel do
    sha256 "2f7c6590d6019ba20d6e6b87f872b7d237270b3ed8f43ae2016030d72ce1f06f"
  end

  url "https://github.com/ChHsiching/bongocat-todo/releases/download/v#{version}/BongoCat.Todo_#{version}_#{arch}.dmg",
      verified: "github.com/ChHsiching/bongocat-todo/"
  name "BongoCat Todo"
  desc "Tauri 2 desktop pet cat with a todo list and mail notifier"
  homepage "https://github.com/ChHsiching/bongocat-todo"

  # The .dmg ships a BongoCat Todo.app bundle.
  app "BongoCat Todo.app"

  zap trash: [
    "~/Library/Application Support/com.chhsiching.bongocat-todo",
    "~/Library/Preferences/com.chhsiching.bongocat-todo.plist",
    "~/Library/Saved Application State/com.chhsiching.bongocat-todo.savedState",
    "~/Library/Logs/BongoCat Todo",
  ]
end
