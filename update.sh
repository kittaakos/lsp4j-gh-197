#!/bin/bash
# Script to build and update this p2 update site with the most recent LSP4J state with the semantic highlighting support.

rm -rf ./lsp4j/ \
&& git clone --single-branch -b GH-197 https://github.com/kittaakos/lsp4j.git \
&& ./lsp4j/gradlew -p lsp4j build generateP2Build --refresh-dependencies \
&& mvn -f ./lsp4j/releng/pom.xml clean verify \
&& rm -rf ./p2/ \
&& unzip -o ./lsp4j/releng/p2/target/lsp4j.p2-repository-0.5.0-SNAPSHOT.zip -d ./p2/