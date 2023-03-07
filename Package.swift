// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/Bhaselmann/kmm-sample-library/com/bobhaselmann/kmmsamplelibrary/allshared-kmmbridge/0.1.1/allshared-kmmbridge-0.1.1.zip"
let remoteKotlinChecksum = "5530254441391f93d5a3c3b9d7b6f94c777ecc3e7b98c880507a35943da8a6bc"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)