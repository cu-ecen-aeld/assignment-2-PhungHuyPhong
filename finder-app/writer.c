#include<stdio.h>
#include<stdlib.h>
#include<errno.h>
#include<syslog.h>
int main(int argc,char *argv[]){
	openlog(NULL, 0, LOG_USER); //write logs to files in /var/log/syslog
	if(argc != 3){
		syslog(LOG_ERR,"The number of arguments must be 2");
		return 1;
	}
	FILE *file = fopen(argv[1], "w");
	if(file == NULL){
		syslog(LOG_ERR,"File cannot be opened");
		return 1;
	}
	else{
		syslog(LOG_DEBUG,"Writing %s to %s ",argv[1],argv[2]);
		fprintf(file, "%s",argv[2]);
		fclose(file);
	}
	return 0;
}
