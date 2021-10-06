# Sample arm64 Rust Lamda function

This is a simple Rust lambda function that uses the [rust-musl-cross](https://github.com/messense/rust-musl-cross) cross-compiling Docker containers provided by [messense](https://github.com/messense) to build for arm64, which AWS Lambda now supports.

# Usage

the package.sh script will build the application using the cross-compiler Docker container, then copy the binary into a zip file to be uploaded to the AWS Lambda console. Most things are using standard Cargo commands (like `cargo build --release`).
