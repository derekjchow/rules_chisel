load("@io_bazel_rules_scala//scala:scala.bzl", "scala_binary", "scala_library")

def chisel_library(name,
                   srcs = [],
                   deps = [],
                   visibility = None):
    scala_library(
        name = name,
        srcs = srcs,
        deps = [
            "@rules_chisel//lib:chisel_lib",
            "@edu_berkeley_cs_chisel3_plugin//jar",
        ] + deps,
        scalacopts = [
            "-Xplugin:$(execpath @edu_berkeley_cs_chisel3_plugin//jar)",
            "-P:chiselplugin:genBundleElements",
        ],
        visibility = visibility,
    )

def chisel_binary(name,
                  main_class,
                  srcs = [],
                  deps = [],
                  visibility = None):
    scala_binary(
        name = name,
        srcs = srcs,
        main_class = main_class,
        deps = [
            "@rules_chisel//lib:chisel_lib",
            "@edu_berkeley_cs_chisel3_plugin//jar",
        ] + deps,
        scalacopts = [
            "-Xplugin:$(execpath @edu_berkeley_cs_chisel3_plugin//jar)",
            "-P:chiselplugin:genBundleElements",
        ],
        visibility = visibility,
    )