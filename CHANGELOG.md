# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

### Changed

## [0.11.0] - 2023-08-10

### Added

- Initial release

### Changed

- Weekly generation.
- BREAKING: models that were in subnamespaces are now in the main model namespace to avoid circular dependencies. e.g. `MicrosoftGraph::Models::CallRecords::CallRecord` in now `MicrosoftGraph::Models::CallRecordsCallRecord`.
