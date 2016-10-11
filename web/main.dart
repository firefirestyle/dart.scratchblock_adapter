import 'dart:js' as js;
import 'dart:html' as html;
import 'package:scratchblock_dartada/scratchblock.dart' as scratch;

void main() {
   html.document.body.appendHtml("""<div id="preview"></div>""");
   var previewElm = html.document.querySelector("#preview");
   previewElm.appendHtml((new scratch.ScratchBlocks()).bakeSVG("when flag clicked"), treeSanitizer: html.NodeTreeSanitizer.trusted);
}
