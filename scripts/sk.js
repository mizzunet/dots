const {
    aceVimMap,
    mapkey,
    imap,
    imapkey,
    getClickableElements,
    vmapkey,
    map,
    cmap,
    addSearchAlias,
    removeSearchAlias,
    tabOpenLink,
    readText,
    Clipboard,
    Front,
    Hints,
    Visual,
    unmap,
    RUNTIME
} = api;

// ---- Settings ----

///settings.scrollStepSize = 10;
///Hints.characters = 'asdfgyuiopqwertnmzxcvb';

settings.defaultSearchEngine = 's';
settings.hintAlign = 'left';
settings.smoothScroll = true;
settings.scrollStepSize = 150;
///settings.tabsThreshold = 7;
settings.focusAfterClosed = "right"
settings.focusFirstCandidate = false;
settings.modeAfterYank = 'Normal';

// Search Engines
removeSearchAlias('b', 's');
removeSearchAlias('d', 's');
removeSearchAlias('g', 's');
removeSearchAlias('h', 's');
removeSearchAlias('w', 's');
removeSearchAlias('y', 's');
removeSearchAlias('s', 's');
addSearchAlias('b', 'Brave', 'https://search.brave.com/search?q=');
addSearchAlias('a', 'Amazon', 'https://www.amazon.in/s?k=');
addSearchAlias('f', 'Flipkart', 'https://www.flipkart.com/search?q=');
addSearchAlias('i', 'Invidious', 'https://invidio.xamh.de/search?q=', 'i');
addSearchAlias('k','KickAss','https://katcr.to/usearch/','k')
addSearchAlias('z','Zooqle','https://zooqle.com/search?q=')
addSearchAlias('myn','https://www.myntra.com/')
addSearchAlias('bk','Z-Library','http://book4you.org/s/','r')
addSearchAlias('d','Dictionary','https://www.oxfordlearnersdictionaries.com/definition/english/')
addSearchAlias('gd','Goodreads','https://www.goodreads.com/search?q=')
addSearchAlias('p','Paulgo','http://paulgo.io/search?q=','p')
addSearchAlias('s','Searx','http://searx.be/search?q=','s')
addSearchAlias('t','1337x','https://1337x.to/search/','t')

unmap ('W')
unmap (',')
unmap ('.')
unmap (';fs')
unmap ('C')
unmap ('<Ctrl-h>')
unmap ('<Ctrl-j>')
unmap ('<Ctrl-i>')
unmap ('q')
unmap ('I')
unmap ('cs')
unmap ('cS')
unmap ('U')
unmap ('P')
unmap ('u')
unmap (';w')
unmap ('g0')
unmap ('g$')
unmap ('gxt')
unmap ('gxT')
unmap ('gx0')
unmap ('gx$')
unmap (';gt')
unmap ('<Alt-m>')
unmap ('on')
unmap ('ZZ')
unmap ('ZR')
unmap ('gt')
unmap ('gT')
unmap ('g?')
unmap ('g#')
unmap ('<Ctrl-6>')
unmap ('cp')
unmap (';pa')
unmap (';pd')
unmap (';ps')
unmap (';pc')
unmap (';cp')
unmap (';ac')


mapkey('ask', 'Reddit submit', function() {
    open("http://reddit.com/submit");
});


// set theme
Hints.style('border: solid 2px #4C566A; color:#A3BE8C; background: initial; background-color: #3B4252;');
Hints.style("border: solid 2px #4C566A !important; padding: 1px !important; color: #E5E9F0 !important; background: #3B4252 !important;", "text");
Visual.style('marks', 'background-color: #A3BE8C99;');
Visual.style('cursor', 'background-color: #88C0D0;');

settings.theme = `
:root {
  /* Font */
  --font: 'Clear Sans', 'Roboto Mono', sans;
  --font-size: 14;
  --font-weight: regular;
  /* -------------------- */
  /* --      NORD      -- */
  /* -------------------- */
  --fg: #E5E9F0;
  --bg: #3B4252;
  --bg-dark: #2E3440;
  --border: #4C566A;
  --main-fg: #88C0D0;
  --accent-fg: #A3BE8C;
  --info-fg: #5E81AC;
  --select: #4C566A;
  -- DELETE LINE TO ENABLE THEME */
  /* Unused Alternate Colors */
 --orange: #D08770; */
 --red: #BF616A; */
 --yellow: #EBCB8B; */

}
/* ---------- Generic ---------- */
.sk_theme {
background: var(--bg);
color: var(--fg);
  background-color: var(--bg);
  border-color: var(--border);
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}
input {
  font-family: var(--font);
  font-weight: var(--font-weight);
}
.sk_theme tbody {
  color: var(--fg);
}
.sk_theme input {
  color: var(--fg);
}
/* Hints */
#sk_hints .begin {
  color: var(--accent-fg) !important;
}
#sk_tabs .sk_tab {
  background: var(--bg-dark);
  border: 1px solid var(--border);
}
#sk_tabs .sk_tab_title {
  color: var(--fg);
}
#sk_tabs .sk_tab_url {
  color: var(--main-fg);
}
#sk_tabs .sk_tab_hint {
  background: var(--bg);
  border: 1px solid var(--border);
  color: var(--accent-fg);
}
.sk_theme #sk_frame {
  background: var(--bg);
  opacity: 0.2;
  color: var(--accent-fg);
}
/* ---------- Omnibar ---------- */
/* Uncomment this and use settings.omnibarPosition = 'bottom' or Pentadactyl/Tridactyl style bottom bar */
/* .sk_theme#sk_omnibar {
  width: 100%;
  left: 0;
} */
.sk_theme .title {
  color: var(--accent-fg);
}
.sk_theme .url {
  color: var(--main-fg);
}
.sk_theme .annotation {
  color: var(--accent-fg);
}
.sk_theme .omnibar_highlight {
  color: var(--accent-fg);
}
.sk_theme .omnibar_timestamp {
  color: var(--info-fg);
}
.sk_theme .omnibar_visitcount {
  color: var(--accent-fg);
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: var(--bg-dark);
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: var(--border);
}
.sk_theme #sk_omnibarSearchArea {
  border-top-color: var(--border);
  border-bottom-color: var(--border);
}
.sk_theme #sk_omnibarSearchArea input,
.sk_theme #sk_omnibarSearchArea span {
  font-size: var(--font-size);
}
.sk_theme .separator {
  color: var(--accent-fg);
}
/* ---------- Popup Notification Banner ---------- */
#sk_banner {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
  background: var(--bg);
  border-color: var(--border);
  color: var(--fg);
  opacity: 0.9;
}
/* ---------- Popup Keys ---------- */
#sk_keystroke {
  background-color: var(--bg);
}
.sk_theme kbd .candidates {
  color: var(--info-fg);
}
.sk_theme span.annotation {
  color: var(--accent-fg);
}
/* ---------- Popup Translation Bubble ---------- */
#sk_bubble {
  background-color: var(--bg) !important;
  color: var(--fg) !important;
  border-color: var(--border) !important;
}
#sk_bubble * {
  color: var(--fg) !important;
}
#sk_bubble div.sk_arrow div:nth-of-type(1) {
  border-top-color: var(--border) !important;
  border-bottom-color: var(--border) !important;
}
#sk_bubble div.sk_arrow div:nth-of-type(2) {
  border-top-color: var(--bg) !important;
  border-bottom-color: var(--bg) !important;
}
/* ---------- Search ---------- */
#sk_status,
#sk_find {
  font-size: var(--font-size);
  border-color: var(--border);
}
.sk_theme kbd {
  background: var(--bg-dark);
  border-color: var(--border);
  box-shadow: none;
  color: var(--fg);
}
.sk_theme .feature_name span {
  color: var(--main-fg);
}
/* ---------- ACE Editor ---------- */
#sk_editor {
  background: var(--bg-dark) !important;
  height: 50% !important;
  /* Remove this to restore the default editor size */
}
.ace_dialog-bottom {
  border-top: 1px solid var(--bg) !important;
}
.ace-chrome .ace_print-margin,
.ace_gutter,
.ace_gutter-cell,
.ace_dialog {
  background: var(--bg) !important;
}
.ace-chrome {
  color: var(--fg) !important;
}
.ace_gutter,
.ace_dialog {
  color: var(--fg) !important;
}
.ace_cursor {
  color: var(--fg) !important;
}
.normal-mode .ace_cursor {
  background-color: var(--fg) !important;
  border: var(--fg) !important;
  opacity: 0.7 !important;
}
.ace_marker-layer .ace_selection {
  background: var(--select) !important;
}
.ace_editor,
.ace_dialog span,
.ace_dialog input {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}
`;

