# go-corvus-json-schema

A [Bowtie](https://github.com/bowtie-json-schema/bowtie) test harness for
[corvus-json-schema](https://pkg.go.dev/github.com/corvus-dotnet/Corvus.JsonSchema/src-go/corvus-json-schema), the Go
port of [Corvus.JsonSchema](https://github.com/corvus-dotnet/Corvus.JsonSchema)'s V5 evaluator.

Its image is published to `ghcr.io/bowtie-json-schema/go-corvus-json-schema` and run via
`bowtie run -i go-corvus-json-schema`.

The harness compiles each case's schema with the case's `registry` as the document resolver and validates each
instance, passing each schema and instance to the library as the JSON text it arrived as. For `annotations` output it
evaluates through a verbose results collector and reports each annotation with its instance location and `#…` keyword
location. A compilation error, a panic, or an evaluation beyond the maximum depth, is reported as an error for that
case or instance.

The module's version is pinned in `go.mod` and `go.sum`, which Dependabot keeps at the latest release.
