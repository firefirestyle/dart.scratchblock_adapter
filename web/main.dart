import 'dart:js' as js;
import 'dart:html' as html;
import 'package:scratchblock_dartada/scratchblock.dart' as scratch;

void main() {
  html.document.body.appendHtml(["""<div id="preview"></div>""",].join(""));
  var previewElm = html.document.querySelector("#preview");
  previewElm.appendHtml(
      (new scratch.ScratchBlocks()..addLang("de")).bakeSVG([
        """when flag clicked""", //
        """@greenFlag がクリックされたとき"""
      ].join("\r\n")),
      treeSanitizer: html.NodeTreeSanitizer.trusted);

      var a = (new scratch.ScratchBlocks()).translateSource([
        """when flag clicked""", //
      //  """@greenFlag がクリックされたとき"""
    ].join("\r\n"), scratch.ScratchBlocks.japanese);
      print(">> ${a.toString()}");

}
