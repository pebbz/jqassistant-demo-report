./bin/jqassistant.sh scan -f lib/com.buschmais.jqassistant.*.jar -reset

arrConcepts=()
arrConcepts+=(default)
arrConcepts+=(package:DependencyDiagram)
arrConcepts+=(metrics:Top10LoCAndCC)
arrConcepts+=(classpath:Resolve)
arrConcepts+=(module:ClassDiagram)

vals=$(printf ",%s" "${arrConcepts[@]}")
vals=${vals:1}

echo ""
echo ""
echo ""
echo "******* ANALYZE"
echo ${arrConcepts[*]}
echo $vals
echo ""
./bin/jqassistant.sh analyze -concepts $vals -continueOnError -continueOnFailure
./bin/jqassistant.sh report -continueOnError -continueOnFailure
