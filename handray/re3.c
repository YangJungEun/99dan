#include <stdio.h>

int main(int argc,char *argv){

	int v8 = 0;
	int v4 = 0;


	if ( argc == 0x2 ) 
	{ 
		exit(0);
	}	
	v8 = 0x1; 
	while( v8 < = 0x9 )
	{ 

		v4=0x1;
		if ( v4 <=0x9) { 	
			printf("%d\n",v8*v4);
			v4++;
		}
		v8++;
	}
	return 0 ;
}
