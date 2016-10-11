import 'dart:js' as js;
import 'dart:html' as html;

class ScratchBlocks {
  static final String german = "ge";
  static final String spanish = "sp";
  static final String french = "fe";
  static final String china = "ze_CN";
  static final String japanese = "jp";
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
/*
  String getLandDict(String lang){
    js.JsObject sb2Obj = js.context["scratchblocks"];
    print(""" ${sb2Obj}""");
    js.JsObject langDict = (sb2Obj["_translations"])[lang];
    return langDict.toString();
  }*/
  Map<String,List<String>> _language = {"language":[english]};
  void addLang(String langage) {
    var langs = _language["language"];
    if(false ==  langs.contains(langage)) {
      langs.add(langage);
    }
  }

  void deleteLand(String langage) {
    var langs = _language["language"];
    if(true ==  langs.contains(langage)) {
      langs.remove(langage);
    }
  }

  String bakeSVG(String source) {
    return js.context.callMethod("scratchblocks", [source,_language]);
  }
}
