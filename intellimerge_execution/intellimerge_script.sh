#!/bin/bash
#

# project.csv - file with project_id, project name and project url data.
# your_path - place where you want to clone the git projects analyzed, for example C:\Users\your_name
# commits_subset.csv - file with project, merge parent 1, merge parent 2 and merge commits data.

projects_subset=project.csv

while read projects
do
	id=$(echo $projects | awk -F";" '{printf$2 "\n"}');
	project_path=$(echo $projects | awk -F";" '{printf$3 "\n"}');
	project_name=$(echo $projects | awk -F";" '{printf$4 "\n"}');
	
	echo ${project_path}
	echo ${project_name}
	echo ${id} - ${project_name}
	
	new_path="your_path/"${project_name}"/"
	cd your_path
	echo "new_path="${new_path}
	echo "Running project"
	echo ${id} - ${project_name}
	git clone ${project_path}
	cd "your_path/"${project_name}
	
	mkdir your_path/intellimerge_data/${project_name}
	
	awk -F';' -v var=$id '{ if($7 == var) print $0 }' your_path/commits_subset.csv > ${id}.csv
	commit_subset=${id}.csv
	
	branch_name=$(git symbolic-ref refs/remotes/origin/HEAD | awk -F '/' '{print $NF}')
	echo "branch_name="$branch_name
	
	while read line
	do
		project_id=$(echo $line | awk -F";" '{printf$7 "\n"}');
		echo "id="${id}
		echo "project_id="${project_id}
		echo "project_name="${project_name}
	        echo "$line"	
		
		git checkout ${branch_name}
		git branch -D ours 
		git branch -D theirs 
		mergeid=$(echo $linha | awk -F";" '{printf$2 "\n"}');
		commit_p1=$(echo $linha | awk -F";" '{printf$5 "\n"}'); 
		commit_p2=$(echo $linha | awk -F";" '{printf$6 "\n"}'); 
		
		echo ${commit_p1}
		echo ${commit_p2}

		git checkout -b ours ${commit_p1}
		git checkout -b theirs ${commit_p2}		

		java -jar C:/IntelliMerge-1.0.9-all.jar -r ${new_path} -s true -b ours theirs -o your_path/intellimerge_data/${project_name}/${mergeid}
				
	done < $commit_subset

done < $projects_subset


echo -e "\n\n finished... "