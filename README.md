# lsp4j-gh-197
A p2 update site of the LSP4J with semantic highlighting capabilities

This is a hack to produce a p2 update site for LSP4J with the semantic highlighting capabilities.
To update the content. Run `./update.sh` from the repository root.

p2 does some black magic caching, so if your TP does not pick up the new version, go to `{workspace}/.metadata/.plugins/org.eclipse.pde.core/` and wipe the content, restart Eclipse and reload the TP.
