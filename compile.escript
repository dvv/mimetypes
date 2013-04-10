#!/usr/bin/env escript

-mode(compile).

main(_) ->
  {ok, Mimes} = httpd_conf:load_mime_types("priv/mime.types"),
  Lines = "-module(mimetypes).\n"
    ++    "-author('Vladimir Dronnikov <dronnikov@gmail.com>').\n"
    ++    "-export([extension/1, filename/1, path_to_mimes/2]).\n\n"
    ++    ["extension(<<\"." ++ Ext ++ "\">>) -> <<\"" ++ Type ++ "\">>;\n"
              || {Ext, Type} <- Mimes]
    ++    "extension(_) -> <<\"application/octet-stream\">>.\n\n"
    ++    "filename(Name) -> extension(filename:extension(Name)).\n"
    ++    "path_to_mimes(Path, _) -> [filename(Path)].\n",
  file:write_file("src/mimetypes.erl", Lines).
