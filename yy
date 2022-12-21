<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Crypto</title>
<span class="js-cursor-container"></span>
<script type="text/javascript">
	 (function fairyDustCursor() {
 
    var possibleColors = ["#B2C3B3", "#9894A7", "#BE9997","#EAD0D1","#C8D5D4","A6A6A8","#9A8FAB","#F2EBCF","#BFBFA9","#C7B8A1"]
    var width = window.innerWidth;
    var height = window.innerHeight;
    var cursor = { x: width / 2, y: width / 2 };
    var particles = [];
 
    function init() {
      bindEvents();
      loop();
    }
 
    // Bind events that are needed
    function bindEvents() {
      document.addEventListener('mousemove', onMouseMove);
      window.addEventListener('resize', onWindowResize);
    }
 
    function onWindowResize(e) {
      width = window.innerWidth;
      height = window.innerHeight;
    }
 
    function onMouseMove(e) {
      cursor.x = e.clientX;
      cursor.y = e.clientY;
 
      addParticle(cursor.x, cursor.y, possibleColors[Math.floor(Math.random() * possibleColors.length)]);
    }
 
    function addParticle(x, y, color) {
      var particle = new Particle();
      particle.init(x, y, color);
      particles.push(particle);
    }
 
    function updateParticles() {
 
      // Updated
      for (var i = 0; i < particles.length; i++) {
        particles[i].update();
      }
 
      // Remove dead particles
      for (var i = particles.length - 1; i >= 0; i--) {
        if (particles[i].lifeSpan < 0) {
          particles[i].die();
          particles.splice(i, 1);
        }
      }
 
    }
 
    function loop() {
      requestAnimationFrame(loop);
      updateParticles();
    }
 
    /**
     * Particles
     */
 
    function Particle() {
 
      this.character = "*";
      this.lifeSpan = 120; //ms
      this.initialStyles = {
        "position": "fixed",
        "display": "inline-block",
        "top": "0px",
        "left": "0px",
        "pointerEvents": "none",
        "touch-action": "none",
        "z-index": "10000000",
        "fontSize": "25px",
        "will-change": "transform"
      };
 
      // Init, and set properties
      this.init = function (x, y, color) {
 
        this.velocity = {
          x: (Math.random() < 0.5 ? -1 : 1) * (Math.random() / 2),
          y: 1
        };
 
        this.position = { x: x + 10, y: y + 10 };
        this.initialStyles.color = color;
 
        this.element = document.createElement('span');
        this.element.innerHTML = this.character;
        applyProperties(this.element, this.initialStyles);
        this.update();
 
        document.querySelector('.js-cursor-container').appendChild(this.element);
      };
 
      this.update = function () {
        this.position.x += this.velocity.x;
        this.position.y += this.velocity.y;
        this.lifeSpan--;
 
        this.element.style.transform = "translate3d(" + this.position.x + "px," + this.position.y + "px, 0) scale(" + (this.lifeSpan / 120) + ")";
      }
 
      this.die = function () {
        this.element.parentNode.removeChild(this.element);
      }
 
    }
 
    /**
     * Utils
     */
 
    // Applies css `properties` to an element.
    function applyProperties(target, properties) {
      for (var key in properties) {
        target.style[key] = properties[key];
      }
    }
 
    if (!('ontouchstart' in window || navigator.msMaxTouchPoints)) init();
  })();

	</script>
<style type="text/css">
@import url("webfonts/告白未来/stylesheet.css");
	.link2:hover{color:#9680A8;}
	
	c{
		text-align:left;
		color:#B48598;
		font-size: 70px; 
		font-family: '奶萌小小喵';
		line-height: 0.3em;
		font-weight:bold;
	}
	
		
	
	div{
		text-align: left;
	    font-family: '奶萌小小喵';
	    font-size: 50px;
	    line-height: 1.2em;
	    text-indent: 1em;
	    color: #B48598;

		
	}

	h2,b{
		text-align: left;
		font-family: '奶萌小小喵';
		font-size: 50px;
		color:#B48598;
		line-height: 0.3em
	}
	p,a{
	text-align: left;
	font-family: "告白未来";
	font-size: 40px;
	line-height: 1.2em;
	text-indent: 1em;
	color: #B9C2D4;
	font-weight: 300px;
	}
	
	</style>

<link href="webfonts/__小小喵/stylesheet.css" rel="stylesheet" type="text/css">


</head>

<body bgcolor="">

<h1 style="text-align: center;color:#9999cc;font-size: 90px; font-family: '奶萌小小喵';line-height: 0.3em" >CTF编码/加密合集</h1>
<div>
<ul type="disc">
<li><a href="#h-1" class="link2"><c>常见编码</c></a></li>
<ol type="(1)">
	<a href="#p-1" class="link2"><li><b>Base编码</b></li></a>
	<a href="#p-2" class="link2"><li><b>MD5</b></li></a>
	<a href="#p-3" class="link2"><li><b>Shellcode编码</b></li></a>
	<a href="#p-4" class="link2"><li><b>Quoted-printable编码</b></li></a>
	<a href="#p-5" class="link2"><li><b>XXencode编码</b></li></a>
	<a href="#p-6" class="link2"><li><b>Url编码</b></li></a>
	<a href="#p-7" class="link2"><li><b>aaencode编码</b></li></a>
	<a href="#p-8" class="link2"><li><b>Escape/Unescape编码</b></li></a>
	<a href="#p-9" class="link2"><li><b>unicode编码</b></li></a>
	<a href="#p-10" class="link2"><li><b>Base58编码</b></li></a>
	<a href="#p-11" class="link2"><li><b>Base85编码</b></li></a>
	<a href="#p-12" class="link2"><li><b>Base91编码</b></li></a>
	<a href="#p-13" class="link2"><li><b>Base100编码</b></li></a>
	<a href="#p-14" class="link2"><li><b>jother编码</b></li></a>
	<a href="#p-15" class="link2"><li><b>JSFuck编码</b></li></a>
	<a href="#p-16" class="link2"><li><b>Brainfuck编码</b></li></a>
	<a href="#p-17" class="link2"><li><b>Ook!编码</b></li></a>
	<a href="#p-18" class="link2"><li><b>Base编码</b></li></a>
</ol>
<br>
<li><c>常见加密</c></li>
	
</ul>
</div>
<h2  id="p-1">1. Base编码<a href="http://www.hiencode.com/base64.html"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：base16(数字0-9和大写字母A-F）;base32(字母A-Z和数字2-7);base58(相比base64少了数字0，大写字母I，O，小写字母 l (这个是L），以及符号‘+’和‘/’);base64("==")
</p>
<h2 id="p-2">2. MD5<a href="https://www.cmd5.com/"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：由a-z，A-Z,0-9组成的16位或者32位的密文串
</p>
<h2 id="p-3">3. Shellcode编码<a href="https://www.toolhelper.cn/EncodeDecode/EncodeDecode"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：\x54\x68\x65\x7f\x71\x75\x69\x63\x6b
</p>
<h2 id="p-4">4. Quoted-printable编码<a href="http://www.metools.info/code/quotedprintable231.html"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：=E6=95=8F=E6=8D=B7=E7=9A=84=E6=A3=95=E8=89=B2
</p>
<h2 id="p-5">5. XXencode编码<a href="http://www.hiencode.com/xxencode.html"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：cEaIUQqljRm-oPm-kQaxhOLBZ643iN0-lRKZXOm-oPm-kNL7aPr7h9U++
</p>
<h2 id="p-6">6. Url编码<a href="http://www.toolscat.com/decode/url"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：%e7%9d%a1%e8%a7%89
</p>
<h2 id="p-7">7. aaencode编码<a href="http://hi.pcmoe.net/kaomoji.html"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：ﾟωﾟﾉ= /｀ｍ´）ﾉ ~┻━┻   //*´∇｀*/ ['_']; o=(ﾟｰﾟ)  =_=3; c=(ﾟΘﾟ) =(ﾟｰﾟ)-(ﾟｰﾟ); (ﾟДﾟ) =(ﾟΘﾟ)= (o^_^o)/ (o^_^o);(ﾟДﾟ)={ﾟΘﾟ: '_' ,ﾟωﾟﾉ : ((ﾟωﾟﾉ==3) +'_');
</p>
<h2 id="p-8">8. Escape/Unescape编码<a href="http://www.metools.info/master/m46.html"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：%u7761%u89c9
</p>
<h2 id="p-9">9. unicode编码<a href="https://www.toolhelper.cn/EncodeDecode/UnicodeChineseEncodeDecode"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：\u0059\u006f\u0075\u0020\u0068\u0061\u0064\u0020\u006d\u0065\u0020\u0061\u0074\u0020\u0068\u0065\u006c\u006c\u006f
\U[hex]:\U0068\U0065\U006C\U006C\U006F
\U[+hex]:\U+0068\U+0065\U+006C\U+006C\U+006F
</p>
<h2 id="p-10">10. Base58编码<a href="http://www.atoolbox.net/Tool.php?Id=932"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：2smDFYXWKE8vc8XA8dadEYcSqcQb(相比Base64，Base58不使用数字"0"，字母大写"O"，字母大写"I"，和字母小写"l"，以及"+"和"/"符号，最主要的是后面不会出现'=')
</p>
<h2 id="p-11">11. Base85编码<a href="http://www.atoolbox.net/Tool.php?Id=934"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：BOu!rDsttGAhMA1fSl1GgsI(特点是奇怪的字符比较多，但是很难出现等号)
</p>
<h2 id="p-12">12. Base91编码<a href="https://ctf.bugku.com/tool/base91"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：TPwJhgo2Tv!_,aRA2IbLmA(由91个字符（0-9，a-z，A-Z,!#$%&()*+,./:;=?@[]^_`{|}~”）组成)
</p>
<h2 id="p-13">13. Base100编码<a href="http://www.atoolbox.net/Tool.php?Id=936"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：👟👜👣👣👦📦💳💃👮👦👩👣👛🐥🐨🐩🐪🐫🐬🐭(就是一堆Emoji表情)
</p>
<h2 id="p-14">14. jother编码<a href="https://vulsee.com/tools/jother/index.htm"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：[][(![]+[])[!![]+!![]+!![]]+({}+[])[+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]][({}+[])[!![]+!![]+!![]+!![]+!![]]+({}+[])[+!![]]+(只用 **! + ( ) [ ] { } **这八个字符就能完成对任意字符串的编码)
</p>
<h2 id="p-15">15. JSFuck编码<a href="http://www.hiencode.com/jsfuck.html"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：[][(![]+[])[+[]]+(![]+[])[!+[]+!+[]]+(![]+[])[+!+[]]+(!![]+[])[+[]]][([](与jother很像，只是少了{})
</p>
<h2 id="p-16">16. Brainfuck编码<a href="https://ctf.bugku.com/tool/brainfuck"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：+++++ +++++ [-++ +++++ +++++(BrainFuck 语言只有八种符号，所有的操作都由这八种符号 (> < + - . , [ ]) 的组合来完成。
</p>
<h2 id="p-17">17. Ook!编码<a href="https://ctf.bugku.com/tool/brainfuck"><img src="img/sz.png" width="40px" height="40px"></a></h2>
<p>编码特点：Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook. Ook! Ook? Ook! Ook! Ook. Ook? 
</p>
</body>
</html>
