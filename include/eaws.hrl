-define(US_East_EndPoint, "https://email.us-east-1.amazonaws.com/").
-define(US_West_EndPoint, "https://email.us-west-2.amazonaws.com/").
-define(EU_EndPoint, "https://email.eu-west-1.amazonaws.com/").

-define(CONT_TYPE_XWWW, "application/x-www-form-urlencoded").

-define(Detect_EndPoint(X),
    case X of
        X when X =:= default orelse X =:= undefined orelse X =:= <<>> -> ?US_East_EndPoint;
        us_west -> ?US_West_EndPoint;
        us_east -> ?US_East_EndPoint;
        eu -> ?EU_EndPoint;
        Url when is_list(Url) -> Url
    end
).

-define(LOG_DEBUG(Format, Args),
    lager:debug(Format, Args)).
-define(LOG_INFO(Format, Args),
    lager:info(Format, Args)).
-define(LOG_WARNING(Format, Args),
    lager:warning(Format, Args)).
-define(LOG_ERROR(Format, Args),
    lager:error(Format, Args)).
-define(LOG_CRITICAL(Format, Args),
    lager:critical(Format, Args)).