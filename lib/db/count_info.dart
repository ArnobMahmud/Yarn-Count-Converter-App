import '../models/conversion_info.dart';

final List<CountInfo> countInfo = [
  CountInfo( 
      id: 1,
      title: 'Ne (English Cotton Count)',
      desc:
          '''In this system, yarn count is defined as the number of hanks of 840 yards per pound. For example, yarn count 30 Ne means that there are 30 hanks (each hank consisting of 840 yards of yarn) per 1 lb or 1 pound of that yarn (length per mass) . In other words, if a yarn has a count of 30 Ne , it means that 30 hanks (of 840 yards) of that yarn will weigh 1 pound.'''),
  CountInfo(
      id: 2,
      title: 'Nm (Number Metric Count)',
      desc:
          '''In Metric cotton count system, yarn count is defined as the number of hanks of 1000 m per 1 kilogram of that yarn. For example, yarn count 30 Nm means that there are 30 hanks of 1000 m per 1 kilogram (kg) of that yarn. In other words, yarn count 30 Nm means 30 hanks (each hank consisting of 1000m) of that yarn will weigh 1 kg.'''),
  CountInfo(
      id: 3,
      title: 'NeS (Number Woolen Count)',
      desc:
          '''In this system, yarn count is defined as the number of hanks of 256 yards per pound. For example, woollen yarn count 30 means that there are 30 hanks (of 256 yards)  per 1 lb or 1 pound of that yarn. In other words, yarn count 30 Ne means 30 hanks (each hank consisting of 256 yards) of that yarn will weigh 1 pound.'''),
  CountInfo(
      id: 4,
      title: 'NeW (Number Worsted Count)',
      desc:
          '''It is defined as the number of hanks of 560 yards per 1 pound of that yarn. For example, yarn count 30 NeK means that there are 30 hanks of 560 yards per one pound (1 lb) of that yarn. In other words, yarn count 30 NeK means 30 hanks (each hank consisting of 560 yards) of that yarn will weigh 1lb.'''),
  CountInfo(
      id: 5,
      title: 'NeL (Lea)',
      desc:
          '''The number of hanks of 300 yards in a pound is called linen count (lea). It is specially used to express the fineness of flax (linen) yarn. The yarn becomes finer when the count increases in this system.'''),
  CountInfo(
      id: 6,
      title: 'Tex',
      desc:
          '''The yarn number or count in Tex system is the weight in grams of 1000 m of yarn. For example, yarn count 30 Tex means that there are 30 grams of yarn per 1000 m or 1 km of that yarn (mass per length) . In other words, yarn count 30 Tex means 1000 m of that yarn will weigh 30 gm.'''),
  CountInfo(
      id: 7,
      title: 'Den',
      desc:
          '''The yarn number or count in Denier system is the weight in grams of 9000 m of yarn. For example, yarn count 30 Denier means that there are 30 grams of yarn per 9000 m or 9 km of that yarn. In other words, yarn count 30 Denier means that 9000 m of that yarn will weigh 30 gm.'''),
  CountInfo(
      id: 8,
      title: 'lbs/spy',
      desc:
          '''The yarn number or count in Pound per Spyndle system is the weight in pounds of 14,400 yards of yarn. For example, yarn count 20 Pound per Spyndle means that there are 20 lbs of yarn per 14400 m yards of that yarn. In other words, yarn count 20 Pounds per Spyndle means that 14400 m of that yarn will weigh 20 lbs.''')
];
