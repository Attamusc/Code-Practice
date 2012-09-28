scalaSource in Compile <<= baseDirectory(_ / "src" / "scala")

scalaSource in Test <<= baseDirectory(_ / "test" / "scala")

libraryDependencies += "org.scalatest" %% "scalatest" % "1.8" % "test"
