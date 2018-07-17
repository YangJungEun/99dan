#include < string.h > 

int foo( int a1, int a2, int a3)
{
	int v4=0;
	v4 = a2 + a1 ;
	return a3 + v4;
	
}

int main (){
	
	int v414 = 0;
	int v8[256]={0}; 
	foo( 0x1, 0x2, 0xa);
	printf("%d",foo(0x5,0x1,0x2));
	return 0 ;
}

