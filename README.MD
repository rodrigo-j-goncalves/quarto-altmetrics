# Quarto Altmetric Badge Extension

[![Quarto Extension](https://img.shields.io/badge/Quarto-Extension-blue)](https://quarto.org/docs/extensions/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A [Quarto](https://quarto.org/) shortcode extension to easily embed [Altmetric badges](https://www.altmetric.com/solutions/free-tools/free-badges-for-individual-researchers/) in your documents using a DOI from your document metadata.

- 🏷️ Automatically pulls DOI from your document's YAML front matter
- 🎨 Supports customizable badge types and detail positions

**If this extension saves you time, please star the repository – it's much appreciated!** ⭐

## Installation

You can install this shortcode extension by running in the terminal the following from the root of your quarto project:

```bash
quarto add luismmontilla/altmetrics
```
This will install the extension under the _extensions subdirectory. If you're using version control, you will want to check in this directory.

## Prerequisites

A DOI must be present in your document's YAML front matter:

## Usage

Insert the shortcode {{< altmetrics >}} anywhere in your Quarto document where you want the badge to appear.
### Basic Example

```qmd
---
title: "My Paper"
doi: "10.1234/example.567"
---


Here is the Altmetric attention for this paper:

{{< altmetrics >}}
```
### Customizing Badge Appearance

You can customize the badge by passing named arguments to the shortcode:

Type:
- donut
- medium-donut
- large-donut
- bar
- medium-bar
- large-bar
- default

details:
- true
- or omit


Examples

## License

MIT License – see [LICENSE](https://github.com/luismmontilla/quarto-altmetrics#MIT-1-ov-file) file for details.

## Contributing

Issues and pull requests are welcome! Please open an issue on the GitHub repository before submitting major changes.

## Disclaimer

This Quarto extension is an independent, community‑developed tool and is **not** an official product of, endorsed by, or affiliated with **Digital Science** or **Altmetric**. It is built on top of the publicly available [Altmetric badge embedding tools](https://www.altmetric.com/solutions/free-tools/terms-of-use/) which Digital Science makes freely available for personal and non‑commercial websites.

This extension is intended solely for displaying Altmetric badges on your **personal website** to highlight your own research outputs. There is **no commercial purpose or profit** behind this repository; it is shared openly to help researchers easily integrate Altmetric badges into their Quarto‑based sites.

All trademarks and product names are the property of their respective owners.