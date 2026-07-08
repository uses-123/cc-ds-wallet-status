try {
    $raw = [Console]::In.ReadToEnd()
    "INPUT: $raw" | Out-File "C:\Users\Admin\.claude\statusline-debug.log" -Encoding utf8
    
    $i = $raw | ConvertFrom-Json
    $d = $i.workspace.current_dir
    $m = $i.model.display_name
    $p = if ($i.context_window.used_percentage) { " | ctx:" + [int]$i.context_window.used_percentage + "%" } else { "" }
    $b = git -C $d rev-parse --abbrev-ref HEAD 2>$null
    $r = if ($b) { " ($b)" } else { "" }
    
    $result = if ($d) { "$d$r | $m$p" } else { "NO DATA" }
    "OUTPUT: $result" | Out-File "C:\Users\Admin\.claude\statusline-debug.log" -Append -Encoding utf8
    $result
} catch {
    "ERROR: $_" | Out-File "C:\Users\Admin\.claude\statusline-debug.log" -Append -Encoding utf8
    "statusline error - check debug.log"
}
