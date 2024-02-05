# Setup for installing Rust
echo \"debconf debconf/frontend select Noninteractive\" | sudo debconf-set-selections
sudo apt-get -y update
sudo apt-get -y install build-essential

# Install Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

# Install and cache `cargo-sort`
cargo install cargo-sort

# Check dependencies are sorted
cargo sort --workspace --check

# Check formatting
cargo fmt --check

# Install and cache `cargo-audit`
cargo install cargo-audit

# Audits dependencies
cargo audit
    
# Checks build
# # Install and cache `cargo-llvm-cov`
# cargo install cargo-all-features
# cargo check-all-features
cargo check

# Checks clippy
cargo clippy --tests -- --deny warnings

# Test
# cargo test-all-features
cargo test