libs="/bigstore/msr3/jc/STDP/bin/SelfTrainer/dist/SelfTrainer.jar:/bigstore/msr3/jc/mybin/JCTools/dist/JCTools.jar:/bigstore/msr3/jc/mybin/JCTools/lib/*"

#mlAlg=weka.classifiers.functions.Logistic
dataPath="../CDDP/CDDP/data"

mlAlgs="weka.classifiers.functions.Logistic weka.classifiers.trees.RandomForest weka.classifiers.bayes.NaiveBayes weka.classifiers.functions.SMO weka.classifiers.functions.SimpleLogistic weka.classifiers.bayes.BayesNet weka.classifiers.trees.J48 weka.classifiers.trees.LMT"

repeat=500
folds=2

for mlAlg in $mlAlgs
do

java -cp $libs hk.ust.cse.ipam.utils.SimpleWithinPredictor $dataPath/gene/httpclient.arff class buggy httpclient $mlAlg NoN $repeat $folds > wpdp/$mlAlg\_httpclient_wpdp.txt 

#java -cp $libs hk.ust.cse.ipam.utils.SimpleWithinPredictor $dataPath/gene/lucene.arff class buggy lucene $mlAlg NoN $repeat $folds > wpdp/$mlAlg\_lucene_wpdp.txt &

#java -cp $libs hk.ust.cse.ipam.utils.SimpleWithinPredictor $dataPath/gene/rhino.arff class buggy rhino $mlAlg NoN $repeat $folds > wpdp/$mlAlg\_rhino.txt &

#java -cp $libs hk.ust.cse.ipam.utils.SimpleWithinPredictor $dataPath/gene/jackrabbit.arff class buggy jackrabbit $mlAlg NoN $repeat $folds >  wpdp/$mlAlg\_jackrabbit_wpdp.txt &

#java -cp $libs hk.ust.cse.ipam.utils.SimpleWithinPredictor $dataPath/Relink/Apache.arff isDefective TRUE  $mlAlg NoN $repeat $folds >  wpdp/$mlAlg\_Apache_wpdp.txt &

#java -cp $libs hk.ust.cse.ipam.utils.SimpleWithinPredictor $dataPath/Relink/Safe.arff isDefective TRUE  $mlAlg NoN $repeat $folds >  wpdp/$mlAlg\_Safe_wpdp.txt &

#java -cp $libs hk.ust.cse.ipam.utils.SimpleWithinPredictor $dataPath/Relink/Zxing.arff isDefective TRUE  $mlAlg NoN $repeat $folds >  wpdp/$mlAlg\_Zxing_wpdp.txt &

#sh run_predictor.sh $dataPath Relink "Apache" isDefective TRUE 27 $mlAlg

#sh run_clami.sh $dataPath gene "httpclient" class buggy 95 $mlAlg &

#sh run_clami.sh $dataPath gene "jackrabbit" class buggy 102 $mlAlg &

#sh run_clami.sh $dataPath gene "lucene" class buggy 126 $mlAlg &

#sh run_clami.sh $dataPath gene "rhino" class buggy 71 $mlAlg &

#sh run_predictor.sh $dataPath AEEEM "EQ JDT PDE LC ML" class buggy 28  $mlAlg&

#sh run_clami.sh $dataPath Relink "Apache Safe Zxing" isDefective TRUE 27 $mlAlg  &

#sh run_predictor.sh $dataPath NASA "cm1 mw1 pc1 pc3 pc4"  Defective Y 17 $mlAlg &

#sh run_predictor.sh $dataPath SOFTLAB "ar1 ar3 ar4 ar5 ar6" defects true 14 $mlAlg &

#sh run_predictor.sh $dataPath promise "ant-1.3 arc camel-1.0 poi-1.5 redaktor skarbonka tomcat velocity-1.4 xalan-2.4 xerces-1.2" bug buggy 9 $mlAlg &

done


