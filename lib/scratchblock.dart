import 'dart:js' as js;
import 'dart:html' as html;

class ScratchBlocks {
  String bakeSVG(String source) {
    return js.context.callMethod("scratchblocks", [source]);
  }
}
