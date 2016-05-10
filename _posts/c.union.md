## C 语言联合体

### 联合体定义
    联合体共享内存，占用内存大小为各成员中最大长度，不能初始化，每次只能有一个成员有值
    后面的值会覆盖前面的值

### 语法格式
    一般形式：
    union 联合体名{
        成员类型 成员名；
    }
    
    联合变量的说明和结构变量的说明方式相同, 也有三种形式。即先定义,再说明;定义同时说明和直接说明。以perdata类型为例,说明如下:  
    1、union perdata
    {
        int class;
        char officae;
    };
    union perdata a,b;
    
    或者可同时说明为:  
    2、union perdata
    {  
        int class;
        char office;  
    }a,b;
    
    3、或直接说明为:  
    union
    {  
        int class;
        char office;  
    }a,b  

### 举例说明
    int main()
    {
	struct
	{
		char	name[10];
		int	age;
		char	job;
		union
		{
			int	class;
			char	office[10];
		} depa;
	}	body[2];
	int	n, i;
	for ( i = 0; i < 2; i++ )
	{
		printf( "input name,age,job and department\n" );
		scanf( "%s %d %c", body[i].name, &body[i].age, &body[i].job );
		if ( body[i].job == 's' )
			scanf( "%d", &body[i].depa.class );
		else
			scanf( "%s", body[i].depa.office );
	}
	printf( "name\tage job class/office\n" );
	for ( i = 0; i < 2; i++ )
	{
		if ( body[i].job == 's' )
			printf( "%s\t%3d %3c %d\n", body[i].name, body[i].age, body[i].job, body[i].depa.class );
		else
			printf( "%s\t%3d %3c %s\n", body[i].name, body[i].age, body[i].job, body[i].depa.office );
	}
    }

    本例程序用一个结构数组body来存放人员数据, 该结构共有四个成员。其中成员项depa是一个联合类型, 
    这个联合又由两个成员组成,一个为整型量class,一个为字符数组office。在程序的第一个for语句中,输入人员的各项数据,
    先输入结构的前三个成员name,age和job,然后判别job成员项,如为"s"则对联合depa·class输入(对学生赋班级编号)否则对depa·office输入(对教师赋教研组名)。
　　在用scanf语句输入时要注意,凡为数组类型的成员,无论是结构成员还是联合成员,在该项前不能再加"&"运算符。如程序第18行中
    body[i].name是一个数组类型,第22行中的body[i].depa.office也是数组类型,因此在这两项之间不能加"&"运算符。程序中的第二个for语句用于输出各成员项的值:
