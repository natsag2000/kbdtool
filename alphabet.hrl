%% =====================================================================
%%  __  __  ___ _      _  _____ ___    _      ___   _____  _   _ _____
%% |  \/  |/ __| |    | |/ / _ )   \  | |    /_\ \ / / _ \| | | |_   _|
%% | |\/| | (_ | |__  | ' <| _ \ |) | | |__ / _ \ V / (_) | |_| | | |
%% |_|  |_|\___|____| |_|\_\___/___/  |____/_/ \_\_| \___/ \___/  |_|
%% =====================================================================

%% -----------------------------------
%% general-category: Lo (Letter, Other)
%% -----------------------------------
% --------- vowels ------------- hex     decimal   char
-define(MONGOLIAN_LETTER_A, $\x{1820}).  % 6176    ᠠ
-define(MONGOLIAN_LETTER_E, $\x{1821}).  % 6177    ᠡ
-define(MONGOLIAN_LETTER_I, $\x{1822}).  % 6178    ᠢ
-define(MONGOLIAN_LETTER_U, $\x{1824}).  % 6180    ᠤ
-define(MONGOLIAN_LETTER_UE, $\x{1826}). % 6182    ᠦ
-define(MONGOLIAN_LETTER_O, $\x{1823}).  % 6179    ᠣ
-define(MONGOLIAN_LETTER_OE, $\x{1825}).  % 6181    ᠥ
%---------- consonants ---------
-define(MONGOLIAN_LETTER_NA, $\x{1828}).  % 6184    ᠨ
-define(MONGOLIAN_LETTER_GA, $\x{182d}).  % 6189    ᠭ
-define(MONGOLIAN_LETTER_RA, $\x{1837}).  % 6199    ᠷ
-define(MONGOLIAN_LETTER_QA, $\x{182c}).  % 6188    ᠬ  %% HE?
-define(MONGOLIAN_LETTER_BA, $\x{182a}).  % 6186    ᠪ
-define(MONGOLIAN_LETTER_DA, $\x{1833}).  % 6195    ᠳ
-define(MONGOLIAN_LETTER_LA, $\x{182f}).  % 6191    ᠯ
-define(MONGOLIAN_LETTER_TA, $\x{1832}).  % 6194    ᠲ
-define(MONGOLIAN_LETTER_SA, $\x{1830}).  % 6192    ᠰ
-define(MONGOLIAN_LETTER_SHA, $\x{1831}).  % 6193    ᠱ
-define(MONGOLIAN_LETTER_JA, $\x{1835}).  % 6197     ᠵ
-define(MONGOLIAN_LETTER_YA, $\x{1836}).  % 6198    ᠶ
-define(MONGOLIAN_LETTER_CHA, $\x{1834}). % 6196    ᠴ
-define(MONGOLIAN_LETTER_MA, $\x{182e}).  % 6190    ᠮ
-define(MONGOLIAN_LETTER_ANG, $\x{1829}). % 6185    ᠩ
-define(MONGOLIAN_LETTER_WA, $\x{1838}).  % 6200    ᠸ
-define(MONGOLIAN_LETTER_KA, $\x{183a}).  % 6202    ᠺ
-define(MONGOLIAN_LETTER_PA, $\x{182b}).  % 6187    ᠫ
-define(MONGOLIAN_LETTER_FA, $\x{1839}).  % 6201    ᠹ
-define(MONGOLIAN_LETTER_TSA, $\x{183c}).  % 6204    ᠼ
-define(MONGOLIAN_LETTER_ZA, $\x{183d}).  % 6205    ᠽ
%% tibetian
-define(MONGOLIAN_LETTER_LHA, $\x{1840}). % 6208    ᡀ
-define(MONGOLIAN_LETTER_HAA, $\x{183e}). % 6206    ᠾ
%% only in inner mongolia
-define(MONGOLIAN_LETTER_ZHI, $\x{1841}). % 6209    ᡁ
-define(MONGOLIAN_LETTER_EE, $\x{1827}). % 6183    ᠧ
%% --------------------------------------
%% general-category: Zs (Separator, Space)
%% --------------------------------------
-define(NARROW_NO_BREAK_SPACE, $\x{202f}).     % 8239     
-define(MONGOLIAN_VOWEL_SEPARATOR, $\x{180e}). % 6158    ᠎

%% ----------------------------------------
%% general-category: Po (Punctuation, Other)
%% ----------------------------------------
-define(MONGOLIAN_BIRGA, $\x{1800}).     % 6144   ᠀
-define(MONGOLIAN_ELLIPSIS, $\x{1801}).     % 6145   ᠁
-define(MONGOLIAN_COMMA, $\x{1802}).     % 6146   ᠂
-define(MONGOLIAN_COLON, $\x{1804}).     % 6148    ᠄
-define(MONGOLIAN_FOUR_DOTS, $\x{1805}). % 6149    ᠅
%% -----------------------------------
%% general-category: Cf (Other, Format)
%% -----------------------------------
-define(ZERO_WIDTH_NO_BREAK_SPACE, $\x{FeFF}). % 65279    ﻿
-define(ZERO_WIDTH_JOINER, $\x{200d}).         % 8205    ‍    ‍
%% --------------------------------------
%% general-category: Mn (Mark, Nonspacing)
%% --------------------------------------

-define(MONGOLIAN_FREE_VARIATION_SELECTOR_ONE, $\x{180b}). % 6155    ᠋
-define(MONGOLIAN_FREE_VARIATION_SELECTOR_TWO, $\x{180c}). % 6156    ᠌
-define(MONGOLIAN_FREE_VARIATION_SELECTOR_THREE, $\x{180d}). % 6157    ᠍

%% -------------------------------------------
%% general-category: Nd (Number, Decimal Digit)
%% -------------------------------------------
-define(MONGOLIAN_DIGIT_ZERO, $\x{1810}).  % 6160    ᠐
-define(MONGOLIAN_DIGIT_ONE, $\x{1811}).   % 6161    ᠑
-define(MONGOLIAN_DIGIT_TWO, $\x{1812}).   % 6162    ᠒
-define(MONGOLIAN_DIGIT_THREE, $\x{1813}). % 6163    ᠓
-define(MONGOLIAN_DIGIT_FOUR, $\x{1814}).  % 6164    ᠔
-define(MONGOLIAN_DIGIT_FIVE, $\x{1815}).  % 6165    ᠕
-define(MONGOLIAN_DIGIT_SIX, $\x{1816}).   % 6166    ᠖
-define(MONGOLIAN_DIGIT_SEVEN, $\x{1817}). % 6167    ᠗
-define(MONGOLIAN_DIGIT_EIGHT, $\x{1818}). % 6168    ᠘
-define(MONGOLIAN_DIGIT_NINE, $\x{1819}).  % 6169    ᠙
