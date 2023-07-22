load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary")
load("//rules:chisel.bzl", "chisel_binary")

chisel_binary(
    name = "hello",
    srcs = [
         "Hello.scala",
    ],
    main_class = "Hello",
)