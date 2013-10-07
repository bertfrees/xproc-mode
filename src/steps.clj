{
  "add-attribute"
    {
      :inputs ["source"]
      :options ["match" "attribute-name" "attribute-value"]
    }
  "add-xml-base"
    {
      :inputs ["source"]
      :options []
    }
  "compare"
    {
      :inputs ["source" "alternate"]
      :options []
    }
  "count"
    {
      :inputs ["source"]
      :options []
    }
  "delete"
    {
      :inputs ["source"]
      :options ["match"]
    }
  "directory-list"
    {
      :inputs []
      :options ["path"]
    }
  "error"
    {
      :inputs ["source"]
      :options ["code"]
    }
  "escape-markup"
    {
      :inputs ["source"]
      :options []
    }
  "exec"
    {
      :inputs ["source"]
      :options ["command"]
    }
  "filter"
    {
      :inputs ["source"]
      :options ["select"]
    }
  "hash"
    {
      :inputs ["source" "parameters"]
      :options ["value" "algorithm" "match"]
    }
  "http-request"
    {
      :inputs ["source"]
      :options []
    }
  "identity"
    {
      :inputs ["source"]
      :options []
    }
  "insert"
    {
      :inputs ["source" "insertion"]
      :options ["position"]
    }
  "label-elements"
    {
      :inputs ["source"]
      :options []
    }
  "load"
    {
      :inputs []
      :options ["href"]
    }
  "make-absolute-uris"
    {
      :inputs ["source"]
      :options ["match"]
    }
  "namespace-rename"
    {
      :inputs ["source"]
      :options []
    }
  "pack"
    {
      :inputs ["source" "alternate"]
      :options ["wrapper"]
    }
  "parameters"
    {
      :inputs ["parameters"]
      :options []
    }
  "rename"
    {
      :inputs ["source"]
      :options ["match" "new-name"]
    }
  "replace"
    {
      :inputs ["source" "replacement"]
      :options ["match"]
    }
  "set-attributes"
    {
      :inputs ["source" "attributes"]
      :options ["match"]
    }
  "sink"
    {
      :inputs ["source"]
      :options []
    }
  "split-sequence"
    {
      :inputs ["source"]
      :options ["test"]
    }
  "store"
    {
      :inputs ["source"]
      :options ["href"]
    }
  "string-replace"
    {
      :inputs ["source"]
      :options ["match" "replace"]
    }
  "unescape-markup"
    {
      :inputs ["source"]
      :options []
    }
  "unwrap"
    {
      :inputs ["source"]
      :options ["match"]
    }
  "validate-with-relax-ng"
    {
      :inputs ["source" "schema"]
      :options []
    }
  "validate-with-schematron"
    {
      :inputs ["source" "schema" "parameters"]
      :options []
    }
  "validate-with-xml-schema"
    {
      :inputs ["source" "schema"]
      :options []
    }
  "wrap"
    {
      :inputs ["source"]
      :options ["wrapper" "match"]
    }
  "wrap-sequence"
    {
      :inputs ["source"]
      :options ["wrapper"]
    }
  "www-form-urldecode"
    {
      :inputs []
      :options ["value"]
    }
  "www-form-urlencode"
    {
      :inputs ["source" "parameters"]
      :options ["match"]
    }
  "xinclude"
    {
      :inputs ["source"]
      :options []
    }
  "xquery"
    {
      :inputs ["source" "query" "parameters"]
      :options []
    }
  "xslt"
    {
      :inputs ["source" "stylesheet" "parameters"]
      :options []
    }
  "xsl-formatter"
    {
      :inputs ["source" "parameters"]
      :options ["href"]
    }
  "uuid"
    {
      :inputs ["source"]
      :options ["match"]
    }
}
