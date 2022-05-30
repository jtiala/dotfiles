// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    updateChannel: "stable",
    fontSize: 14,
    fontFamily: "Victor Mono, Fira Code, monospace",
    fontWeight: "normal",
    fontWeightBold: "bold",
    lineHeight: 1,
    letterSpacing: 0,
    cursorShape: "BLOCK",
    cursorBlink: false,
    showWindowControls: false,
    padding: "12px 14px",
    bell: false,
    copyOnSelect: false,
    defaultSSHApp: true,
    quickEdit: false,
    macOptionSelectionMode: "vertical",
    webGLRenderer: true,
  },
  plugins: ["hypercwd", "hyperminimal", "hyper-dracula"],
};
