
MP3 Downloader (GUI + CLI) — Quick Start
========================================

Windows (double-click friendly)
-------------------------------
1) Double-click: install.bat
   - Creates a local .venv, installs dependencies, launches the GUI.
2) Next time, double-click: run_gui.bat

macOS / Linux
-------------
1) Open Terminal in this folder and run:
   ./install.sh
2) Next time, run:
   ./run_gui.sh

Notes
-----
- Paste MP3 URLs, choose an output folder, optionally fill tags and cover art, then click "Start Download".
- To create a ZIP bundle, check the option and select a Zip output path.
- The CLI tool is also included: offline_mp3_fetcher.py
  Example:
    ./.venv/bin/python offline_mp3_fetcher.py --help

Requires Python 3.8+.
