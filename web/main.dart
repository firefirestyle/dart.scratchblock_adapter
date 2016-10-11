import 'dart:js' as js;
import 'dart:html' as html;
void main() {
   print("hello world");
   js.JsObject obj = js.context.callMethod("scratchblocks",["when flag clicked"]);

   html.document.body.appendHtml("""<div id="preview"></div>""");
   var previewElm = html.document.querySelector("#preview");
   print("hello world"+obj.toString());
   previewElm.appendHtml(obj.toString(), treeSanitizer: html.NodeTreeSanitizer.trusted);
}
