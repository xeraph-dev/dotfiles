
# fnm
set FNM_PATH "/home/xeraph/.local/share/fnm"
if [ -d "$FNM_PATH" ]
  set PATH "$FNM_PATH" $PATH
  fnm env --use-on-cd --version-file-strategy recursive --shell fish | source
  fnm completions --shell fish | source
end
