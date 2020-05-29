#include <stdio.h>
#include <stdarg.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include "logger.h"
FILE *fp ;
static int SESSION_TRACKER; 

char* print_time()
{
    int size = 0;
    time_t t;
    char *buf;
    
    t=time(NULL); 
    
    char *timestr = asctime( localtime(&t) );
    timestr[strlen(timestr) - 1] = 0;  
    
    size = strlen(timestr)+ 1 + 2; 
    buf = (char*)malloc(size);
    
    memset(buf, 0x0, size);
    snprintf(buf,size,"[%s]", timestr);
   
    return buf;
}
void log_print(char* filename, int line, char *fmt,...)
{
    va_list         list;
    char            *p, *r;
    int             e;

    if(SESSION_TRACKER > 0)
      fp = fopen ("logfile.txt","a+");
    else
      fp = fopen ("logfile.txt","w");
    
    fprintf(fp,"%s ",print_time());
    fprintf(fp,"[%s][line: %d] ",filename,line);
    va_start( list, fmt );

    for ( p = fmt ; *p ; ++p )
    {
        if ( *p != '%' )
        {
            fputc( *p,fp );
        }
        else
        {
            switch ( *++p )
            {
                
            case 's':
            {
                r = va_arg( list, char * );

                fprintf(fp,"%s", r);
                continue;
            }

            case 'd':
            {
                e = va_arg( list, int );

                fprintf(fp,"%d", e);
                continue;
            }

            default:
                fputc( *p, fp );
            }
        }
    }
    va_end( list );
    fputc( '\n', fp );
    SESSION_TRACKER++;
    fclose(fp);
}
