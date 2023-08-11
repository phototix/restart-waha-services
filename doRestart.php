<?php
// Replace '/path/to/restart.sh' with the actual path to your restart.sh script.
$scriptPath = 'restart.sh';

// Use shell_exec to run the script and capture the output (if needed).
$output = shell_exec($scriptPath);

// Print the output (if any).
echo "<pre>$output</pre>";
?>
