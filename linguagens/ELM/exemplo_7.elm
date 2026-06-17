-- Elm usa types como Result para erros
checkResult res = case res of
    Ok val -> val
    Err msg -> msg