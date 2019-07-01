import 'package:boring_flutter1/json_parsing.dart';
import 'package:flutter_test/flutter_test.dart';

// Source of the data: https://github.com/HackerNews/API
void main() {

  // From "https://hacker-news.firebaseio.com/v0/topstories.json"
  test("Parse topstories.json", () {
    const jsonString =
        '[20325395,20325011,20324992,20323927,20325226,20324675,20323594,20325019,20324747,20325096,20321463,20321146,20324769,20322276,20323849,20322358,20322704,20321750,20301573,20321116,20322032,20315632,20321568,20325288,20322805,20320860,20321260,20320820,20303199,20320212,20320679,20320576,20323386,20318184,20322655,20324642,20313649,20319434,20317736,20322186,20318347,20324491,20320055,20324208,20320001,20321455,20319803,20321272,20317884,20325052,20321752,20320817,20322759,20320366,20317848,20320752,20314690,20309311,20314036,20320187,20317071,20320399,20314713,20322586,20317767,20318279,20312826,20315244,20306732,20307891,20314333,20315086,20319419,20316184,20317002,20320866,20315169,20320309,20320936,20298653,20294801,20317840,20319722,20319936,20322649,20319281,20319137,20321677,20316294,20318852,20314255,20322053,20318426,20314007,20316920,20319464,20313220,20317643,20295694,20321901,20303775,20315973,20309176,20314798,20311071,20315453,20301419,20311106,20310577,20316140,20318882,20316315,20315833,20314750,20317799,20315895,20312707,20314449,20308813,20320376,20316130,20316023,20297179,20303546,20317825,20300509,20303219,20321913,20319674,20314150,20322680,20317050,20305700,20308865,20315746,20319380,20311000,20312573,20306720,20313396,20312259,20311643,20303418,20293779,20310456,20314761,20311932,20317921,20321265,20292830,20307988,20321537,20321924,20314265,20311324,20305656,20316716,20301193,20304686,20297435,20305019,20307918,20316030,20309621,20311817,20304720,20312832,20312623,20322152,20307219,20309809,20308911,20307005,20309429,20321187,20301352,20315947,20300100,20312642,20315840,20312502,20316803,20301692,20300008,20313762,20303856,20314911,20295229,20293246,20309162,20304371,20315847,20304611,20294464,20320643,20300357,20298331,20315008,20301619,20317733,20321519,20301935,20293579,20308464,20315150,20307597,20297853,20309255,20310669,20312256,20296602,20295767,20295196,20302645,20313964,20317168,20309815,20322107,20296836,20297331,20293051,20314880,20293887,20300959,20310020,20295754,20300835,20311040,20308473,20295339,20314141,20302137,20304316,20302447,20307309,20293819,20293259,20295256,20293041,20298238,20307128,20294523,20302872,20321410,20311834,20312971,20307685,20297446,20321323,20300858,20294611,20294520,20314628,20312607,20318490,20293021,20310428,20309911,20317912,20298719,20307217,20304857,20307046,20306119,20296824,20308945,20298211,20295025,20293897,20313673,20322209,20312319,20296851,20317737,20311740,20297682,20320779,20293820,20306886,20317489,20298590,20316266,20302103,20296899,20315905,20296123,20294338,20314151,20297813,20299551,20309052,20311172,20314391,20303029,20309271,20294261,20297120,20292798,20317587,20311622,20314853,20296717,20323640,20296321,20309856,20315052,20316088,20316573,20310762,20302012,20303172,20309786,20312810,20313484,20301997,20315317,20311750,20303672,20311504,20303127,20293651,20320478,20300256,20304208,20300037,20302429,20301632,20317759,20315828,20314759,20303468,20301105,20293908,20296103,20315503,20299856,20309281,20317318,20315709,20314516,20302311,20308586,20319418,20315986,20315367,20295788,20305693,20299669,20296612,20312019,20296204,20313058,20307754,20306756,20294453,20301158,20308816,20314027,20302435,20297211,20306783,20316758,20294018,20301951,20306604,20309125,20301082,20299826,20311235,20315983,20296348,20311757,20294887,20294727,20295393,20300289,20313228,20314958,20298713,20304980,20315262,20315179,20308904,20307551,20297915,20309470,20309459,20303479,20307774,20311841,20311812,20294696,20300158,20314156,20294345,20307963,20293446,20313793,20309693,20303028,20312727,20292829,20311051,20312388,20295169,20310825,20293433,20307979,20309306,20303378,20299113,20297166,20309848,20301707,20309204,20303864,20309175,20300558,20311316,20302547,20293817,20308081,20314972,20302555,20302220,20310827,20302934,20296033,20296637,20303512,20314070,20309604,20309487,20309398,20293984,20302368,20304526,20308670,20308483,20308456,20308305,20297475,20308119,20305176,20307443,20307434,20306989,20306468,20301110,20296099,20309687,20296080,20316001,20296294,20295450,20304794,20302009,20299416,20296370,20295955,20293922,20294193,20299406,20293338,20310439,20307452,20295801,20296137,20306851,20323658,20297084,20295100,20301289,20297572,20317074,20319515,20320787,20321809,20322800,20320100,20319415,20317253,20298661,20302158,20320177,20302660,20303140,20298613,20316299,20319174,20311043,20324774,20305250,20313167,20297580,20295832,20295408,20308208,20312714,20312791]';

    expect(parseTopStories(jsonString).first, 20325395);
  });

  // From "https://hacker-news.firebaseio.com/v0/item/126809.json"
  test("Parse item.json", () {
    const jsonString =
        '{"by":"pg","descendants":54,"id":126809,"kids":[126822,126823,126917,126993,126824,126934,127411,126888,127681,126818,126816,126854,127095,126861,127313,127299,126859,126852,126882,126832,127072,127217,126889,126875,127535],"parts":[126810,126811,126812],"score":47,"time":1204403652,"title":"Poll: What would happen if News.YC had explicit support for polls?","type":"poll"}';

    expect(parseItem(jsonString).by, 'pg');
  });
}