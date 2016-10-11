import 'dart:js' as js;
import 'dart:html' as html;

String createSVG(String source, String language) {
  return (new ScratchBlocks()).bakeSVG(source);
}

String translateSource(String source, String language) {
  return (new ScratchBlocks()).translateSource(source, language);
}

class ScratchBlocks {
  static final String german = "ge";
  static final String spanish = "sp";
  static final String french = "fe";
  static final String china = "ze_CN";
  static final String japanese = "ja";
  static final String dutch = "nl";
  static final String portigese = "pt";
  static final String italiano = "it";
  static final String hebrew = "he";
  static final String korean = "ko";
  static final String norwegianBokmal = "nb";
  static final String turkish = "tr";
  static final String greek = "gl";
  static final String russian = "ru";
  static final String catalan = "ca";
  static final String indonesia = "id";
  static final String english = "en";

  Map<String, List<String>> _language = {"languages": []};
  void addLang(String langage) {
    var langs = _language["languages"];
    if (false == langs.contains(langage)) {
      langs.add(langage);
    }
  }

  void deleteLand(String langage) {
    var langs = _language["languages"];
    if (true == langs.contains(langage)) {
      langs.remove(langage);
    }
  }

  String bakeSVG(String source) {
    return js.context.callMethod("scratchblocks", [source, _language]);
  }

  String translateSource(String source, String language) {
    js.JsObject sb2Obj2 = js.context["scratchblocks"];
    js.JsObject s3 = sb2Obj2.callMethod("parse", [source, _language]); // "parse"];
    s3.callMethod("translate", [js.context["scratchblocks"]["allLanguages"][language]]);
    return sb2Obj2.callMethod("stringify", [s3]);
  }
}
