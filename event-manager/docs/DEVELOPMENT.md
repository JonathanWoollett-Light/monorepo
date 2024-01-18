# Development and Testing

## Testing

The `event-manager` is tested using:
- unit tests - defined in their corresponding modules
- Rust integration tests - defined in the [tests](../tests) directory
- performance tests - defined in the [benches](../benches) directory

The integration and performance tests share subscribers implementations
which can be found under the [src/utilities](../src/utilities) module.

We recommend running all the tests before submitting a PR as follows:

```bash
cargo test --all-features
```

Performance tests are implemented using
[criterion](https://docs.rs/crate/criterion/). Running the performance tests
locally should work, but only when they're run as part of the CI performance
improvements/degradations can be noticed. More details about performance tests
[here](https://github.com/rust-vmm/rust-vmm-ci#performance-tests).
