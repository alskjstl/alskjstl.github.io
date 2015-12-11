<span style="font-size: 15px;">**
下载单个文件，默认将输出打印到标准输出中(STDOUT)中**</span>

<div class="cnblogs_code">
<pre>curl http:<span style="color: #008000;">//</span><span style="color: #008000;">www.centos.org</span></pre>
</div>

<span style="font-size: 15px;">**通过-o/-O选项保存下载的文件到指定的文件中：**</span>
-o：将文件保存为命令行中指定的文件名的文件中
-O：使用URL中默认的文件名保存文件到本地

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># 将文件下载到本地并命名为mygettext.html
</span><span style="color: #008080;">2</span> curl -o mygettext.html http:<span style="color: #008000;">//</span><span style="color: #008000;">www.gnu.org/software/gettext/manual/gettext.html</span>
<span style="color: #008080;">3</span> 
<span style="color: #008080;">4</span> <span style="color: #000000;"># 将文件保存到本地并命名为gettext.html
</span><span style="color: #008080;">5</span> curl -O http:<span style="color: #008000;">//</span><span style="color: #008000;">www.gnu.org/software/gettext/manual/gettext.html</span></pre>
</div>

同样可以使用转向字符"&gt;"对输出进行转向输出

<span style="font-size: 15px;">**同时获取多个文件**</span>

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> curl -O URL1 -O URL2</pre>
</div>

若同时从同一站点下载多个文件时，curl会尝试重用链接(connection)。

通过-L选项进行重定向
默认情况下CURL不会发送HTTP Location headers(重定向).当一个被请求页面移动到另一个站点时，会发送一个HTTP Loaction header作为请求，然后将请求重定向到新的地址上。
例如：访问google.com时，会自动将地址重定向到google.com.hk上。

<div class="cnblogs_code">
<pre><span style="color: #008080;"> 1</span> curl http:<span style="color: #008000;">//</span><span style="color: #008000;">www.google.com</span>
<span style="color: #008080;"> 2</span> &lt;HTML&gt;
<span style="color: #008080;"> 3</span> &lt;HEAD&gt;
<span style="color: #008080;"> 4</span>     &lt;meta http-equiv=<span style="color: #800000;">"</span><span style="color: #800000;">content-type</span><span style="color: #800000;">"</span> content=<span style="color: #800000;">"</span><span style="color: #800000;">text/html;charset=utf-8</span><span style="color: #800000;">"</span>&gt;
<span style="color: #008080;"> 5</span>     &lt;TITLE&gt;<span style="color: #800080;">302</span> Moved&lt;/TITLE&gt;
<span style="color: #008080;"> 6</span> &lt;/HEAD&gt;
<span style="color: #008080;"> 7</span> &lt;BODY&gt;
<span style="color: #008080;"> 8</span>     &lt;H1&gt;<span style="color: #800080;">302</span> Moved&lt;/H1&gt;
<span style="color: #008080;"> 9</span> <span style="color: #000000;">    The document has moved
</span><span style="color: #008080;">10</span>     &lt;A HREF=<span style="color: #800000;">"</span><span style="color: #800000;">http://www.google.com.hk/url?sa=p&amp;amp;hl=zh-CN&amp;amp;pref=hkredirect&amp;amp;pval=yes&amp;amp;q=http://www.google.com.hk/&amp;amp;ust=1379402837567135amp;usg=AFQjCNF3o7umf3jyJpNDPuF7KTibavE4aA</span><span style="color: #800000;">"</span>&gt;here&lt;/A&gt;<span style="color: #000000;">.
</span><span style="color: #008080;">11</span> &lt;/BODY&gt;
<span style="color: #008080;">12</span> &lt;/HTML&gt;</pre>
</div>

上述输出说明所请求的档案被转移到了http://www.google.com.hk。

这是可以通过使用-L选项进行强制重定向

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># 让curl使用地址重定向，此时会查询google.com.hk站点
</span><span style="color: #008080;">2</span> curl -L http:<span style="color: #008000;">//</span><span style="color: #008000;">www.google.com</span></pre>
</div>

<span style="font-size: 15px;">**断点续传**</span>

通过使用-C选项可对大文件使用断点续传功能，如：

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># 当文件在下载完成之前结束该进程
</span><span style="color: #008080;">2</span> $ curl -O http:<span style="color: #008000;">//</span><span style="color: #008000;">www.gnu.org/software/gettext/manual/gettext.html</span>
<span style="color: #008080;">3</span> ##############             <span style="color: #800080;">20.1</span>%
<span style="color: #008080;">4</span> 
<span style="color: #008080;">5</span> # 通过添加-<span style="color: #000000;">C选项继续对该文件进行下载，已经下载过的文件不会被重新下载
</span><span style="color: #008080;">6</span> curl -C - -O http:<span style="color: #008000;">//</span><span style="color: #008000;">www.gnu.org/software/gettext/manual/gettext.html</span>
<span style="color: #008080;">7</span> ###############            <span style="color: #800080;">21.1</span>%</pre>
</div>

<span style="font-size: 15px;">**对CURL使用网络限速**</span>
通过--limit-rate选项对CURL的最大网络使用进行限制

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> # 下载速度最大不会超过1000B/<span style="color: #000000;">second
</span><span style="color: #008080;">2</span> 
<span style="color: #008080;">3</span> curl --limit-rate 1000B -O http:<span style="color: #008000;">//</span><span style="color: #008000;">www.gnu.org/software/gettext/manual/gettext.html</span></pre>
</div>

下载指定时间内修改过的文件

当下载一个文件时，可对该文件的最后修改日期进行判断，如果该文件在指定日期内修改过，就进行下载，否则不下载。
该功能可通过使用-z选项来实现：

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> # 若yy.html文件在2011/<span style="color: #800080;">12</span>/<span style="color: #000000;">21之后有过更新才会进行下载
</span><span style="color: #008080;">2</span> curl -z <span style="color: #800080;">21</span>-Dec-<span style="color: #800080;">11</span> http:<span style="color: #008000;">//</span><span style="color: #008000;">www.example.com/yy.html</span></pre>
</div>

<span style="font-size: 15px;">**CURL授权**</span>

在访问需要授权的页面时，可通过-u选项提供用户名和密码进行授权

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> curl -<span style="color: #000000;">u username:password URL
</span><span style="color: #008080;">2</span> 
<span style="color: #008080;">3</span> <span style="color: #000000;"># 通常的做法是在命令行只输入用户名，之后会提示输入密码，这样可以保证在查看历史记录时不会将密码泄露
</span><span style="color: #008080;">4</span> curl -u username URL</pre>
</div>

**<span style="font-size: 15px;">从FTP服务器下载文件</span>**

CURL同样支持FTP下载，若在url中指定的是某个文件路径而非具体的某个要下载的文件名，CURL则会列出该目录下的所有文件名而并非下载该目录下的所有文件

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># 列出public_html下的所有文件夹和文件
</span><span style="color: #008080;">2</span> curl -u ftpuser:ftppass -O <span style="color: #0000ff;">ftp</span>:<span style="color: #008000;">//</span><span style="color: #008000;">ftp_server//public_html/</span>
<span style="color: #008080;">3</span> <span style="color: #000000;"># 下载xss.php文件
</span><span style="color: #008080;">4</span> curl -u ftpuser:ftppass -O <span style="color: #0000ff;">ftp</span>:<span style="color: #008000;">//</span><span style="color: #008000;">ftp_server//public_html/xss.php</span>
5. <span>注意ftp_server和public_html之间是两个/</span>
</pre>
</div>

<span style="font-size: 15px;">**上传文件到FTP服务器**</span>

通过 -T 选项可将指定的本地文件上传到FTP服务器上

<div class="cnblogs_code">
<pre><span style="color: #000000;"># 将myfile.txt文件上传到服务器
curl </span>-u ftpuser:ftppass -T myfile.txt <span style="color: #0000ff;">ftp</span>:<span style="color: #008000;">//</span><span style="color: #008000;">ftp.testserver.com</span>
<span style="color: #000000;">
# 同时上传多个文件
curl </span>-u ftpuser:ftppass -T <span style="color: #800000;">"</span><span style="color: #800000;">{file1,file2}</span><span style="color: #800000;">"</span> <span style="color: #0000ff;">ftp</span>:<span style="color: #008000;">//</span><span style="color: #008000;">ftp.testserver.com</span>
<span style="color: #000000;">
# 从标准输入获取内容保存到服务器指定的文件中
curl </span>-u ftpuser:ftppass -T - <span style="color: #0000ff;">ftp</span>:<span style="color: #008000;">//</span><span style="color: #008000;">ftp.testserver.com/myfile_1.txt</span></pre>
</div>

**<span style="font-size: 15px;">获取更多信息</span>**

通过使用 -v 和 -trace获取更多的链接信息

**<span style="font-size: 15px;">通过字典查询单词</span>**

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># 查询bash单词的含义
</span><span style="color: #008080;">2</span> curl dict:<span style="color: #008000;">//</span><span style="color: #008000;">dict.org/d:bash</span>
<span style="color: #008080;">3</span> 
<span style="color: #008080;">4</span> <span style="color: #000000;"># 列出所有可用词典
</span><span style="color: #008080;">5</span> curl dict:<span style="color: #008000;">//</span><span style="color: #008000;">dict.org/show:db</span>
<span style="color: #008080;">6</span> 
<span style="color: #008080;">7</span> <span style="color: #000000;"># 在foldoc词典中查询bash单词的含义
</span><span style="color: #008080;">8</span> curl dict:<span style="color: #008000;">//</span><span style="color: #008000;">dict.org/d:bash:foldoc</span></pre>
</div>

<span style="font-size: 15px;">**为CURL设置代理**</span>

-x 选项可以为CURL添加代理功能

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># 指定代理主机和端口
</span><span style="color: #008080;">2</span> curl -x proxysever.test.com:<span style="color: #800080;">3128</span> http:<span style="color: #008000;">//</span><span style="color: #008000;">google.co.in</span></pre>
</div>

&nbsp;

<span style="font-size: 14pt;">**其他网站整理**</span>

<span style="font-size: 15px;">**保存与使用网站cookie信息**</span>

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># 将网站的cookies信息保存到sugarcookies文件中
</span><span style="color: #008080;">2</span> curl -D sugarcookies http:<span style="color: #008000;">//</span><span style="color: #008000;">localhost/sugarcrm/index.php</span>
<span style="color: #008080;">3</span> 
<span style="color: #008080;">4</span> <span style="color: #000000;"># 使用上次保存的cookie信息
</span><span style="color: #008080;">5</span> curl -b sugarcookies http:<span style="color: #008000;">//</span><span style="color: #008000;">localhost/sugarcrm/index.php</span></pre>
</div>

<span style="font-size: 15px;">**传递请求数据**</span>

默认curl使用GET方式请求数据，这种方式下直接通过URL传递数据
可以通过 --data/-d 方式指定使用POST方式传递数据

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> <span style="color: #000000;"># GET
</span><span style="color: #008080;">2</span> curl -u username https:<span style="color: #008000;">//</span><span style="color: #008000;">api.github.com/user?access_token=XXXXXXXXXX</span>
<span style="color: #008080;">3</span> 
<span style="color: #008080;">4</span> <span style="color: #000000;"># POST
</span><span style="color: #008080;">5</span> curl -u username --data <span style="color: #800000;">"</span><span style="color: #800000;">param1=value1&amp;param2=value</span><span style="color: #800000;">"</span> https:<span style="color: #008000;">//</span><span style="color: #008000;">api.github.com</span>
<span style="color: #008080;">6</span> 
<span style="color: #008080;">7</span> <span style="color: #000000;"># 也可以指定一个文件，将该文件中的内容当作数据传递给服务器端
</span><span style="color: #008080;">8</span> curl --data @filename https:<span style="color: #008000;">//</span><span style="color: #008000;">github.api.com/authorizations</span></pre>
</div>

注：默认情况下，通过POST方式传递过去的数据中若有特殊字符，首先需要将特殊字符转义在传递给服务器端，如value值中包含有空格，则需要先将空格转换成%20，如：

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> curl -d <span style="color: #800000;">"</span><span style="color: #800000;">value%201</span><span style="color: #800000;">"</span> http:<span style="color: #008000;">//</span><span style="color: #008000;">hostname.com</span></pre>
</div>

在新版本的CURL中，提供了新的选项 --data-urlencode，通过该选项提供的参数会自动转义特殊字符。

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> curl --data-urlencode <span style="color: #800000;">"</span><span style="color: #800000;">value 1</span><span style="color: #800000;">"</span> http:<span style="color: #008000;">//</span><span style="color: #008000;">hostname.com</span></pre>
</div>

除了使用GET和POST协议外，还可以通过 -X 选项指定其它协议，如：

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> curl -I -X DELETE https:<span style="color: #008000;">//</span><span style="color: #008000;">api.github.cim</span></pre>
</div>

上传文件

<div class="cnblogs_code">
<pre><span style="color: #008080;">1</span> curl --form <span style="color: #800000;">"</span><span style="color: #800000;">fileupload=@filename.txt</span><span style="color: #800000;">"</span> http:<span style="color: #008000;">//</span><span style="color: #008000;">hostname/resource</span></pre>
</div>
