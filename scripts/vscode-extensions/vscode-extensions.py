#!/usr/bin/env python

from os import getcwd, path
import sys
from typing import TypedDict
import yaml
from python_markdown_maker import headers, lists, links
import requests
from bs4 import BeautifulSoup

url: str = "https://marketplace.visualstudio.com/items?itemName="
file: str = "vscode-extensions.yml"


class Ext(TypedDict):
    Theme: list[str]
    General: list[str]
    Markdown: list[str]
    Git: list[str]
    Shell: list[str]
    Web: list[str]
    Python: list[str]
    Rust: list[str]
    Haskell: list[str]


try:
    with open(path.join(path.dirname(__file__), file), "r") as f:
        ext: Ext = yaml.safe_load(f)

        res = headers("Visual Studio Code extensions", 1)

        for k, v in ext.items():
            res += headers(k, 3)

            list = []

            for i in v:
                ext_url: str = f"{url}{i}"
                r = requests.get(ext_url)
                soup = BeautifulSoup(r.content, "html.parser")

                title: str = soup.find("span", {"class": "ux-item-name"}).text

                list.append(links(ext_url, title))

            res += lists(list)

        with open(path.join(getcwd(), "vscode-extensions.md"), "w") as f:
            f.write(res)

except KeyboardInterrupt:
    sys.exit(1)
