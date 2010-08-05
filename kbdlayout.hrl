%% =====================================================================
%%  __  __  ___ _      _  _____ ___    _      ___   _____  _   _ _____
%% |  \/  |/ __| |    | |/ / _ )   \  | |    /_\ \ / / _ \| | | |_   _|
%% | |\/| | (_ | |__  | ' <| _ \ |) | | |__ / _ \ V / (_) | |_| | | |
%% |_|  |_|\___|____| |_|\_\___/___/  |____/_/ \_\_| \___/ \___/  |_|
%% =====================================================================

-include("alphabet.hrl").

%% -----------------------------------------------------
%% inner mongolian and Badral's keyboard layout are same
%% NOTE: ONLY MAIN ROW ( middle row )
%% -----------------------------------------------------
-define(INMGL_KBD, [{?MONGOLIAN_LETTER_A, 0},
                    {?MONGOLIAN_LETTER_SA, 0},
                    {?MONGOLIAN_LETTER_DA, 0},
                    {?MONGOLIAN_LETTER_PA, 0},
                    {?MONGOLIAN_LETTER_GA, 0},
                    {?MONGOLIAN_LETTER_QA, 0},
                    {?MONGOLIAN_LETTER_JA, 0},
                    {?MONGOLIAN_LETTER_KA, 0},
                    {?MONGOLIAN_LETTER_LA, 0},
                    {?MONGOLIAN_FREE_VARIATION_SELECTOR_ONE, 0}
                   ]).
%% ----------------------------------------
%% cyrillic based mongolian keyboard layout
%% NOTE: ONLY MAIN ROW ( middle row )
%% ----------------------------------------
-define(CYR_KBD, [{?MONGOLIAN_LETTER_I, 0},
                  {?MONGOLIAN_LETTER_BA, 0},
                  {?MONGOLIAN_LETTER_OE, 0},
                  {?MONGOLIAN_LETTER_A, 0},
                  {?MONGOLIAN_LETTER_QA, 0},
                  {?MONGOLIAN_LETTER_RA, 0},
                  {?MONGOLIAN_LETTER_O, 0},
                  {?MONGOLIAN_LETTER_LA, 0},
                  {?MONGOLIAN_LETTER_DA, 0},
                  {?MONGOLIAN_LETTER_PA, 0}
                 ]).
%% ---------------------------------------
%% Mongolian keyboard layout
%% ---------------------------------------
-define(MON_KBD, [{?MONGOLIAN_LETTER_A, 0},
                  {?MONGOLIAN_LETTER_E, 0},
                  {?MONGOLIAN_LETTER_I, 0},
                  {?MONGOLIAN_LETTER_U, 0},
                  {?MONGOLIAN_LETTER_UE, 0},
                  {?MONGOLIAN_LETTER_NA, 0},
                  {?MONGOLIAN_LETTER_GA, 0},
                  {?MONGOLIAN_LETTER_RA, 0},
                  {?MONGOLIAN_LETTER_QA, 0},
                  {?MONGOLIAN_LETTER_BA, 0}
                 ]).



