kiwi.plugin("libera-chat", (kiwi, log) => {
  const { remove } = window._;

  // Disable the `dice` command
  remove(kiwi.exports.res.autocompleteCommands, (c) => c.command === "dice");
  kiwi.on("input.command.dice", (event) => {
    log.info("Ignoring `dice` command");
    event.handled = true;
  });
});
