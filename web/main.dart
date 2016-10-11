import 'dart:js' as js;
import 'dart:html' as html;
import 'package:scratchblock_dartada/scratchblock.dart' as scratch;

void main() {
  html.document.body.appendHtml(["""<div id="preview"></div>""",].join(""));
  var previewElm = html.document.querySelector("#preview");
  previewElm.appendHtml(
      (new scratch.ScratchBlocks()..addLang("jp")).bakeSVG([
        """when flag clicked""", //
        """@greenFlag がクリックされたとき"""
      ].join("\r\n")),
      treeSanitizer: html.NodeTreeSanitizer.trusted);

//print(""" >>> ${(new scratch.ScratchBlocks().getLandDict(scratch.ScratchBlocks.japanese))}""");
}
