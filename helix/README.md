Helix is build from source at `master` because the upstream arch binary doesn't support some required lsp features.

Cargo also recieves some compiler flags, that are set in root `Cargo.toml`:

```toml
[profile.opt]
panic = "abort"
debug = false
incremental = false
```

For everything else, Helix covers building from source in their documentation: <https://docs.helix-editor.com/building-from-source.html>
