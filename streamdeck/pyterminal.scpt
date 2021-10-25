tell application "Terminal"
   do script "python3"
end tell


tell application "System Events"
   tell application process "Terminal"
      set frontmost to true
   end tell
end tell
