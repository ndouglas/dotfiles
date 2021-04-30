#!/usr/bin/env bash

# Reset text.
ansi_reset() {
  ansi_reset_color;
  ansi_reset_font;
  ansi_erase_display 2;
  ansi_position '1;1';
  ansi_show_cursor;
}
