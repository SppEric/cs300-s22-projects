
obj/kernel.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000040000 <_kernel_start>:
   40000:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40007:	48 89 e5             	mov    %rsp,%rbp
   4000a:	6a 00                	pushq  $0x0
   4000c:	9d                   	popfq  
   4000d:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
   40012:	75 0d                	jne    40021 <_kernel_start+0x21>
   40014:	f7 03 04 00 00 00    	testl  $0x4,(%rbx)
   4001a:	74 05                	je     40021 <_kernel_start+0x21>
   4001c:	8b 7b 10             	mov    0x10(%rbx),%edi
   4001f:	eb 07                	jmp    40028 <_kernel_start+0x28>
   40021:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   40028:	e9 89 14 00 00       	jmpq   414b6 <kernel(char const*)>

000000000004002d <exception_entry_0>:
   4002d:	6a 00                	pushq  $0x0
   4002f:	6a 00                	pushq  $0x0
   40031:	e9 3c 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040036 <exception_entry_1>:
   40036:	6a 00                	pushq  $0x0
   40038:	6a 01                	pushq  $0x1
   4003a:	e9 33 0a 00 00       	jmpq   40a72 <exception_entry>

000000000004003f <exception_entry_2>:
   4003f:	6a 00                	pushq  $0x0
   40041:	6a 02                	pushq  $0x2
   40043:	e9 2a 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040048 <exception_entry_3>:
   40048:	6a 00                	pushq  $0x0
   4004a:	6a 03                	pushq  $0x3
   4004c:	e9 21 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040051 <exception_entry_4>:
   40051:	6a 00                	pushq  $0x0
   40053:	6a 04                	pushq  $0x4
   40055:	e9 18 0a 00 00       	jmpq   40a72 <exception_entry>

000000000004005a <exception_entry_5>:
   4005a:	6a 00                	pushq  $0x0
   4005c:	6a 05                	pushq  $0x5
   4005e:	e9 0f 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040063 <exception_entry_6>:
   40063:	6a 00                	pushq  $0x0
   40065:	6a 06                	pushq  $0x6
   40067:	e9 06 0a 00 00       	jmpq   40a72 <exception_entry>

000000000004006c <exception_entry_7>:
   4006c:	6a 00                	pushq  $0x0
   4006e:	6a 07                	pushq  $0x7
   40070:	e9 fd 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040075 <exception_entry_8>:
   40075:	6a 08                	pushq  $0x8
   40077:	e9 f6 09 00 00       	jmpq   40a72 <exception_entry>

000000000004007c <exception_entry_9>:
   4007c:	6a 00                	pushq  $0x0
   4007e:	6a 09                	pushq  $0x9
   40080:	e9 ed 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040085 <exception_entry_10>:
   40085:	6a 0a                	pushq  $0xa
   40087:	e9 e6 09 00 00       	jmpq   40a72 <exception_entry>

000000000004008c <exception_entry_11>:
   4008c:	6a 0b                	pushq  $0xb
   4008e:	e9 df 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040093 <exception_entry_12>:
   40093:	6a 0c                	pushq  $0xc
   40095:	e9 d8 09 00 00       	jmpq   40a72 <exception_entry>

000000000004009a <exception_entry_13>:
   4009a:	6a 0d                	pushq  $0xd
   4009c:	e9 d1 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400a1 <exception_entry_14>:
   400a1:	6a 0e                	pushq  $0xe
   400a3:	e9 ca 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400a8 <exception_entry_15>:
   400a8:	6a 00                	pushq  $0x0
   400aa:	6a 0f                	pushq  $0xf
   400ac:	e9 c1 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400b1 <exception_entry_16>:
   400b1:	6a 00                	pushq  $0x0
   400b3:	6a 10                	pushq  $0x10
   400b5:	e9 b8 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400ba <exception_entry_17>:
   400ba:	6a 11                	pushq  $0x11
   400bc:	e9 b1 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400c1 <exception_entry_18>:
   400c1:	6a 00                	pushq  $0x0
   400c3:	6a 12                	pushq  $0x12
   400c5:	e9 a8 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400ca <exception_entry_19>:
   400ca:	6a 00                	pushq  $0x0
   400cc:	6a 13                	pushq  $0x13
   400ce:	e9 9f 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400d3 <exception_entry_20>:
   400d3:	6a 00                	pushq  $0x0
   400d5:	6a 14                	pushq  $0x14
   400d7:	e9 96 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400dc <exception_entry_21>:
   400dc:	6a 00                	pushq  $0x0
   400de:	6a 15                	pushq  $0x15
   400e0:	e9 8d 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400e5 <exception_entry_22>:
   400e5:	6a 00                	pushq  $0x0
   400e7:	6a 16                	pushq  $0x16
   400e9:	e9 84 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400ee <exception_entry_23>:
   400ee:	6a 00                	pushq  $0x0
   400f0:	6a 17                	pushq  $0x17
   400f2:	e9 7b 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400f7 <exception_entry_24>:
   400f7:	6a 00                	pushq  $0x0
   400f9:	6a 18                	pushq  $0x18
   400fb:	e9 72 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040100 <exception_entry_25>:
   40100:	6a 00                	pushq  $0x0
   40102:	6a 19                	pushq  $0x19
   40104:	e9 69 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040109 <exception_entry_26>:
   40109:	6a 00                	pushq  $0x0
   4010b:	6a 1a                	pushq  $0x1a
   4010d:	e9 60 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040112 <exception_entry_27>:
   40112:	6a 00                	pushq  $0x0
   40114:	6a 1b                	pushq  $0x1b
   40116:	e9 57 09 00 00       	jmpq   40a72 <exception_entry>

000000000004011b <exception_entry_28>:
   4011b:	6a 00                	pushq  $0x0
   4011d:	6a 1c                	pushq  $0x1c
   4011f:	e9 4e 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040124 <exception_entry_29>:
   40124:	6a 00                	pushq  $0x0
   40126:	6a 1d                	pushq  $0x1d
   40128:	e9 45 09 00 00       	jmpq   40a72 <exception_entry>

000000000004012d <exception_entry_30>:
   4012d:	6a 00                	pushq  $0x0
   4012f:	6a 1e                	pushq  $0x1e
   40131:	e9 3c 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040136 <exception_entry_31>:
   40136:	6a 00                	pushq  $0x0
   40138:	6a 1f                	pushq  $0x1f
   4013a:	e9 33 09 00 00       	jmpq   40a72 <exception_entry>

000000000004013f <exception_entry_32>:
   4013f:	6a 00                	pushq  $0x0
   40141:	6a 20                	pushq  $0x20
   40143:	e9 2a 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040148 <exception_entry_33>:
   40148:	6a 00                	pushq  $0x0
   4014a:	6a 21                	pushq  $0x21
   4014c:	e9 21 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040151 <exception_entry_34>:
   40151:	6a 00                	pushq  $0x0
   40153:	6a 22                	pushq  $0x22
   40155:	e9 18 09 00 00       	jmpq   40a72 <exception_entry>

000000000004015a <exception_entry_35>:
   4015a:	6a 00                	pushq  $0x0
   4015c:	6a 23                	pushq  $0x23
   4015e:	e9 0f 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040163 <exception_entry_36>:
   40163:	6a 00                	pushq  $0x0
   40165:	6a 24                	pushq  $0x24
   40167:	e9 06 09 00 00       	jmpq   40a72 <exception_entry>

000000000004016c <exception_entry_37>:
   4016c:	6a 00                	pushq  $0x0
   4016e:	6a 25                	pushq  $0x25
   40170:	e9 fd 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040175 <exception_entry_38>:
   40175:	6a 00                	pushq  $0x0
   40177:	6a 26                	pushq  $0x26
   40179:	e9 f4 08 00 00       	jmpq   40a72 <exception_entry>

000000000004017e <exception_entry_39>:
   4017e:	6a 00                	pushq  $0x0
   40180:	6a 27                	pushq  $0x27
   40182:	e9 eb 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040187 <exception_entry_40>:
   40187:	6a 00                	pushq  $0x0
   40189:	6a 28                	pushq  $0x28
   4018b:	e9 e2 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040190 <exception_entry_41>:
   40190:	6a 00                	pushq  $0x0
   40192:	6a 29                	pushq  $0x29
   40194:	e9 d9 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040199 <exception_entry_42>:
   40199:	6a 00                	pushq  $0x0
   4019b:	6a 2a                	pushq  $0x2a
   4019d:	e9 d0 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401a2 <exception_entry_43>:
   401a2:	6a 00                	pushq  $0x0
   401a4:	6a 2b                	pushq  $0x2b
   401a6:	e9 c7 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401ab <exception_entry_44>:
   401ab:	6a 00                	pushq  $0x0
   401ad:	6a 2c                	pushq  $0x2c
   401af:	e9 be 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401b4 <exception_entry_45>:
   401b4:	6a 00                	pushq  $0x0
   401b6:	6a 2d                	pushq  $0x2d
   401b8:	e9 b5 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401bd <exception_entry_46>:
   401bd:	6a 00                	pushq  $0x0
   401bf:	6a 2e                	pushq  $0x2e
   401c1:	e9 ac 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401c6 <exception_entry_47>:
   401c6:	6a 00                	pushq  $0x0
   401c8:	6a 2f                	pushq  $0x2f
   401ca:	e9 a3 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401cf <exception_entry_48>:
   401cf:	6a 00                	pushq  $0x0
   401d1:	6a 30                	pushq  $0x30
   401d3:	e9 9a 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401d8 <exception_entry_49>:
   401d8:	6a 00                	pushq  $0x0
   401da:	6a 31                	pushq  $0x31
   401dc:	e9 91 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401e1 <exception_entry_50>:
   401e1:	6a 00                	pushq  $0x0
   401e3:	6a 32                	pushq  $0x32
   401e5:	e9 88 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401ea <exception_entry_51>:
   401ea:	6a 00                	pushq  $0x0
   401ec:	6a 33                	pushq  $0x33
   401ee:	e9 7f 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401f3 <exception_entry_52>:
   401f3:	6a 00                	pushq  $0x0
   401f5:	6a 34                	pushq  $0x34
   401f7:	e9 76 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401fc <exception_entry_53>:
   401fc:	6a 00                	pushq  $0x0
   401fe:	6a 35                	pushq  $0x35
   40200:	e9 6d 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040205 <exception_entry_54>:
   40205:	6a 00                	pushq  $0x0
   40207:	6a 36                	pushq  $0x36
   40209:	e9 64 08 00 00       	jmpq   40a72 <exception_entry>

000000000004020e <exception_entry_55>:
   4020e:	6a 00                	pushq  $0x0
   40210:	6a 37                	pushq  $0x37
   40212:	e9 5b 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040217 <exception_entry_56>:
   40217:	6a 00                	pushq  $0x0
   40219:	6a 38                	pushq  $0x38
   4021b:	e9 52 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040220 <exception_entry_57>:
   40220:	6a 00                	pushq  $0x0
   40222:	6a 39                	pushq  $0x39
   40224:	e9 49 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040229 <exception_entry_58>:
   40229:	6a 00                	pushq  $0x0
   4022b:	6a 3a                	pushq  $0x3a
   4022d:	e9 40 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040232 <exception_entry_59>:
   40232:	6a 00                	pushq  $0x0
   40234:	6a 3b                	pushq  $0x3b
   40236:	e9 37 08 00 00       	jmpq   40a72 <exception_entry>

000000000004023b <exception_entry_60>:
   4023b:	6a 00                	pushq  $0x0
   4023d:	6a 3c                	pushq  $0x3c
   4023f:	e9 2e 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040244 <exception_entry_61>:
   40244:	6a 00                	pushq  $0x0
   40246:	6a 3d                	pushq  $0x3d
   40248:	e9 25 08 00 00       	jmpq   40a72 <exception_entry>

000000000004024d <exception_entry_62>:
   4024d:	6a 00                	pushq  $0x0
   4024f:	6a 3e                	pushq  $0x3e
   40251:	e9 1c 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040256 <exception_entry_63>:
   40256:	6a 00                	pushq  $0x0
   40258:	6a 3f                	pushq  $0x3f
   4025a:	e9 13 08 00 00       	jmpq   40a72 <exception_entry>

000000000004025f <exception_entry_64>:
   4025f:	6a 00                	pushq  $0x0
   40261:	6a 40                	pushq  $0x40
   40263:	e9 0a 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040268 <exception_entry_65>:
   40268:	6a 00                	pushq  $0x0
   4026a:	6a 41                	pushq  $0x41
   4026c:	e9 01 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040271 <exception_entry_66>:
   40271:	6a 00                	pushq  $0x0
   40273:	6a 42                	pushq  $0x42
   40275:	e9 f8 07 00 00       	jmpq   40a72 <exception_entry>

000000000004027a <exception_entry_67>:
   4027a:	6a 00                	pushq  $0x0
   4027c:	6a 43                	pushq  $0x43
   4027e:	e9 ef 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040283 <exception_entry_68>:
   40283:	6a 00                	pushq  $0x0
   40285:	6a 44                	pushq  $0x44
   40287:	e9 e6 07 00 00       	jmpq   40a72 <exception_entry>

000000000004028c <exception_entry_69>:
   4028c:	6a 00                	pushq  $0x0
   4028e:	6a 45                	pushq  $0x45
   40290:	e9 dd 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040295 <exception_entry_70>:
   40295:	6a 00                	pushq  $0x0
   40297:	6a 46                	pushq  $0x46
   40299:	e9 d4 07 00 00       	jmpq   40a72 <exception_entry>

000000000004029e <exception_entry_71>:
   4029e:	6a 00                	pushq  $0x0
   402a0:	6a 47                	pushq  $0x47
   402a2:	e9 cb 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402a7 <exception_entry_72>:
   402a7:	6a 00                	pushq  $0x0
   402a9:	6a 48                	pushq  $0x48
   402ab:	e9 c2 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402b0 <exception_entry_73>:
   402b0:	6a 00                	pushq  $0x0
   402b2:	6a 49                	pushq  $0x49
   402b4:	e9 b9 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402b9 <exception_entry_74>:
   402b9:	6a 00                	pushq  $0x0
   402bb:	6a 4a                	pushq  $0x4a
   402bd:	e9 b0 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402c2 <exception_entry_75>:
   402c2:	6a 00                	pushq  $0x0
   402c4:	6a 4b                	pushq  $0x4b
   402c6:	e9 a7 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402cb <exception_entry_76>:
   402cb:	6a 00                	pushq  $0x0
   402cd:	6a 4c                	pushq  $0x4c
   402cf:	e9 9e 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402d4 <exception_entry_77>:
   402d4:	6a 00                	pushq  $0x0
   402d6:	6a 4d                	pushq  $0x4d
   402d8:	e9 95 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402dd <exception_entry_78>:
   402dd:	6a 00                	pushq  $0x0
   402df:	6a 4e                	pushq  $0x4e
   402e1:	e9 8c 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402e6 <exception_entry_79>:
   402e6:	6a 00                	pushq  $0x0
   402e8:	6a 4f                	pushq  $0x4f
   402ea:	e9 83 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402ef <exception_entry_80>:
   402ef:	6a 00                	pushq  $0x0
   402f1:	6a 50                	pushq  $0x50
   402f3:	e9 7a 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402f8 <exception_entry_81>:
   402f8:	6a 00                	pushq  $0x0
   402fa:	6a 51                	pushq  $0x51
   402fc:	e9 71 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040301 <exception_entry_82>:
   40301:	6a 00                	pushq  $0x0
   40303:	6a 52                	pushq  $0x52
   40305:	e9 68 07 00 00       	jmpq   40a72 <exception_entry>

000000000004030a <exception_entry_83>:
   4030a:	6a 00                	pushq  $0x0
   4030c:	6a 53                	pushq  $0x53
   4030e:	e9 5f 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040313 <exception_entry_84>:
   40313:	6a 00                	pushq  $0x0
   40315:	6a 54                	pushq  $0x54
   40317:	e9 56 07 00 00       	jmpq   40a72 <exception_entry>

000000000004031c <exception_entry_85>:
   4031c:	6a 00                	pushq  $0x0
   4031e:	6a 55                	pushq  $0x55
   40320:	e9 4d 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040325 <exception_entry_86>:
   40325:	6a 00                	pushq  $0x0
   40327:	6a 56                	pushq  $0x56
   40329:	e9 44 07 00 00       	jmpq   40a72 <exception_entry>

000000000004032e <exception_entry_87>:
   4032e:	6a 00                	pushq  $0x0
   40330:	6a 57                	pushq  $0x57
   40332:	e9 3b 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040337 <exception_entry_88>:
   40337:	6a 00                	pushq  $0x0
   40339:	6a 58                	pushq  $0x58
   4033b:	e9 32 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040340 <exception_entry_89>:
   40340:	6a 00                	pushq  $0x0
   40342:	6a 59                	pushq  $0x59
   40344:	e9 29 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040349 <exception_entry_90>:
   40349:	6a 00                	pushq  $0x0
   4034b:	6a 5a                	pushq  $0x5a
   4034d:	e9 20 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040352 <exception_entry_91>:
   40352:	6a 00                	pushq  $0x0
   40354:	6a 5b                	pushq  $0x5b
   40356:	e9 17 07 00 00       	jmpq   40a72 <exception_entry>

000000000004035b <exception_entry_92>:
   4035b:	6a 00                	pushq  $0x0
   4035d:	6a 5c                	pushq  $0x5c
   4035f:	e9 0e 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040364 <exception_entry_93>:
   40364:	6a 00                	pushq  $0x0
   40366:	6a 5d                	pushq  $0x5d
   40368:	e9 05 07 00 00       	jmpq   40a72 <exception_entry>

000000000004036d <exception_entry_94>:
   4036d:	6a 00                	pushq  $0x0
   4036f:	6a 5e                	pushq  $0x5e
   40371:	e9 fc 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040376 <exception_entry_95>:
   40376:	6a 00                	pushq  $0x0
   40378:	6a 5f                	pushq  $0x5f
   4037a:	e9 f3 06 00 00       	jmpq   40a72 <exception_entry>

000000000004037f <exception_entry_96>:
   4037f:	6a 00                	pushq  $0x0
   40381:	6a 60                	pushq  $0x60
   40383:	e9 ea 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040388 <exception_entry_97>:
   40388:	6a 00                	pushq  $0x0
   4038a:	6a 61                	pushq  $0x61
   4038c:	e9 e1 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040391 <exception_entry_98>:
   40391:	6a 00                	pushq  $0x0
   40393:	6a 62                	pushq  $0x62
   40395:	e9 d8 06 00 00       	jmpq   40a72 <exception_entry>

000000000004039a <exception_entry_99>:
   4039a:	6a 00                	pushq  $0x0
   4039c:	6a 63                	pushq  $0x63
   4039e:	e9 cf 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403a3 <exception_entry_100>:
   403a3:	6a 00                	pushq  $0x0
   403a5:	6a 64                	pushq  $0x64
   403a7:	e9 c6 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403ac <exception_entry_101>:
   403ac:	6a 00                	pushq  $0x0
   403ae:	6a 65                	pushq  $0x65
   403b0:	e9 bd 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403b5 <exception_entry_102>:
   403b5:	6a 00                	pushq  $0x0
   403b7:	6a 66                	pushq  $0x66
   403b9:	e9 b4 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403be <exception_entry_103>:
   403be:	6a 00                	pushq  $0x0
   403c0:	6a 67                	pushq  $0x67
   403c2:	e9 ab 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403c7 <exception_entry_104>:
   403c7:	6a 00                	pushq  $0x0
   403c9:	6a 68                	pushq  $0x68
   403cb:	e9 a2 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403d0 <exception_entry_105>:
   403d0:	6a 00                	pushq  $0x0
   403d2:	6a 69                	pushq  $0x69
   403d4:	e9 99 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403d9 <exception_entry_106>:
   403d9:	6a 00                	pushq  $0x0
   403db:	6a 6a                	pushq  $0x6a
   403dd:	e9 90 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403e2 <exception_entry_107>:
   403e2:	6a 00                	pushq  $0x0
   403e4:	6a 6b                	pushq  $0x6b
   403e6:	e9 87 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403eb <exception_entry_108>:
   403eb:	6a 00                	pushq  $0x0
   403ed:	6a 6c                	pushq  $0x6c
   403ef:	e9 7e 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403f4 <exception_entry_109>:
   403f4:	6a 00                	pushq  $0x0
   403f6:	6a 6d                	pushq  $0x6d
   403f8:	e9 75 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403fd <exception_entry_110>:
   403fd:	6a 00                	pushq  $0x0
   403ff:	6a 6e                	pushq  $0x6e
   40401:	e9 6c 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040406 <exception_entry_111>:
   40406:	6a 00                	pushq  $0x0
   40408:	6a 6f                	pushq  $0x6f
   4040a:	e9 63 06 00 00       	jmpq   40a72 <exception_entry>

000000000004040f <exception_entry_112>:
   4040f:	6a 00                	pushq  $0x0
   40411:	6a 70                	pushq  $0x70
   40413:	e9 5a 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040418 <exception_entry_113>:
   40418:	6a 00                	pushq  $0x0
   4041a:	6a 71                	pushq  $0x71
   4041c:	e9 51 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040421 <exception_entry_114>:
   40421:	6a 00                	pushq  $0x0
   40423:	6a 72                	pushq  $0x72
   40425:	e9 48 06 00 00       	jmpq   40a72 <exception_entry>

000000000004042a <exception_entry_115>:
   4042a:	6a 00                	pushq  $0x0
   4042c:	6a 73                	pushq  $0x73
   4042e:	e9 3f 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040433 <exception_entry_116>:
   40433:	6a 00                	pushq  $0x0
   40435:	6a 74                	pushq  $0x74
   40437:	e9 36 06 00 00       	jmpq   40a72 <exception_entry>

000000000004043c <exception_entry_117>:
   4043c:	6a 00                	pushq  $0x0
   4043e:	6a 75                	pushq  $0x75
   40440:	e9 2d 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040445 <exception_entry_118>:
   40445:	6a 00                	pushq  $0x0
   40447:	6a 76                	pushq  $0x76
   40449:	e9 24 06 00 00       	jmpq   40a72 <exception_entry>

000000000004044e <exception_entry_119>:
   4044e:	6a 00                	pushq  $0x0
   40450:	6a 77                	pushq  $0x77
   40452:	e9 1b 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040457 <exception_entry_120>:
   40457:	6a 00                	pushq  $0x0
   40459:	6a 78                	pushq  $0x78
   4045b:	e9 12 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040460 <exception_entry_121>:
   40460:	6a 00                	pushq  $0x0
   40462:	6a 79                	pushq  $0x79
   40464:	e9 09 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040469 <exception_entry_122>:
   40469:	6a 00                	pushq  $0x0
   4046b:	6a 7a                	pushq  $0x7a
   4046d:	e9 00 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040472 <exception_entry_123>:
   40472:	6a 00                	pushq  $0x0
   40474:	6a 7b                	pushq  $0x7b
   40476:	e9 f7 05 00 00       	jmpq   40a72 <exception_entry>

000000000004047b <exception_entry_124>:
   4047b:	6a 00                	pushq  $0x0
   4047d:	6a 7c                	pushq  $0x7c
   4047f:	e9 ee 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040484 <exception_entry_125>:
   40484:	6a 00                	pushq  $0x0
   40486:	6a 7d                	pushq  $0x7d
   40488:	e9 e5 05 00 00       	jmpq   40a72 <exception_entry>

000000000004048d <exception_entry_126>:
   4048d:	6a 00                	pushq  $0x0
   4048f:	6a 7e                	pushq  $0x7e
   40491:	e9 dc 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040496 <exception_entry_127>:
   40496:	6a 00                	pushq  $0x0
   40498:	6a 7f                	pushq  $0x7f
   4049a:	e9 d3 05 00 00       	jmpq   40a72 <exception_entry>

000000000004049f <exception_entry_128>:
   4049f:	6a 00                	pushq  $0x0
   404a1:	68 80 00 00 00       	pushq  $0x80
   404a6:	e9 c7 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404ab <exception_entry_129>:
   404ab:	6a 00                	pushq  $0x0
   404ad:	68 81 00 00 00       	pushq  $0x81
   404b2:	e9 bb 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404b7 <exception_entry_130>:
   404b7:	6a 00                	pushq  $0x0
   404b9:	68 82 00 00 00       	pushq  $0x82
   404be:	e9 af 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404c3 <exception_entry_131>:
   404c3:	6a 00                	pushq  $0x0
   404c5:	68 83 00 00 00       	pushq  $0x83
   404ca:	e9 a3 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404cf <exception_entry_132>:
   404cf:	6a 00                	pushq  $0x0
   404d1:	68 84 00 00 00       	pushq  $0x84
   404d6:	e9 97 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404db <exception_entry_133>:
   404db:	6a 00                	pushq  $0x0
   404dd:	68 85 00 00 00       	pushq  $0x85
   404e2:	e9 8b 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404e7 <exception_entry_134>:
   404e7:	6a 00                	pushq  $0x0
   404e9:	68 86 00 00 00       	pushq  $0x86
   404ee:	e9 7f 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404f3 <exception_entry_135>:
   404f3:	6a 00                	pushq  $0x0
   404f5:	68 87 00 00 00       	pushq  $0x87
   404fa:	e9 73 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404ff <exception_entry_136>:
   404ff:	6a 00                	pushq  $0x0
   40501:	68 88 00 00 00       	pushq  $0x88
   40506:	e9 67 05 00 00       	jmpq   40a72 <exception_entry>

000000000004050b <exception_entry_137>:
   4050b:	6a 00                	pushq  $0x0
   4050d:	68 89 00 00 00       	pushq  $0x89
   40512:	e9 5b 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040517 <exception_entry_138>:
   40517:	6a 00                	pushq  $0x0
   40519:	68 8a 00 00 00       	pushq  $0x8a
   4051e:	e9 4f 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040523 <exception_entry_139>:
   40523:	6a 00                	pushq  $0x0
   40525:	68 8b 00 00 00       	pushq  $0x8b
   4052a:	e9 43 05 00 00       	jmpq   40a72 <exception_entry>

000000000004052f <exception_entry_140>:
   4052f:	6a 00                	pushq  $0x0
   40531:	68 8c 00 00 00       	pushq  $0x8c
   40536:	e9 37 05 00 00       	jmpq   40a72 <exception_entry>

000000000004053b <exception_entry_141>:
   4053b:	6a 00                	pushq  $0x0
   4053d:	68 8d 00 00 00       	pushq  $0x8d
   40542:	e9 2b 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040547 <exception_entry_142>:
   40547:	6a 00                	pushq  $0x0
   40549:	68 8e 00 00 00       	pushq  $0x8e
   4054e:	e9 1f 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040553 <exception_entry_143>:
   40553:	6a 00                	pushq  $0x0
   40555:	68 8f 00 00 00       	pushq  $0x8f
   4055a:	e9 13 05 00 00       	jmpq   40a72 <exception_entry>

000000000004055f <exception_entry_144>:
   4055f:	6a 00                	pushq  $0x0
   40561:	68 90 00 00 00       	pushq  $0x90
   40566:	e9 07 05 00 00       	jmpq   40a72 <exception_entry>

000000000004056b <exception_entry_145>:
   4056b:	6a 00                	pushq  $0x0
   4056d:	68 91 00 00 00       	pushq  $0x91
   40572:	e9 fb 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040577 <exception_entry_146>:
   40577:	6a 00                	pushq  $0x0
   40579:	68 92 00 00 00       	pushq  $0x92
   4057e:	e9 ef 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040583 <exception_entry_147>:
   40583:	6a 00                	pushq  $0x0
   40585:	68 93 00 00 00       	pushq  $0x93
   4058a:	e9 e3 04 00 00       	jmpq   40a72 <exception_entry>

000000000004058f <exception_entry_148>:
   4058f:	6a 00                	pushq  $0x0
   40591:	68 94 00 00 00       	pushq  $0x94
   40596:	e9 d7 04 00 00       	jmpq   40a72 <exception_entry>

000000000004059b <exception_entry_149>:
   4059b:	6a 00                	pushq  $0x0
   4059d:	68 95 00 00 00       	pushq  $0x95
   405a2:	e9 cb 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405a7 <exception_entry_150>:
   405a7:	6a 00                	pushq  $0x0
   405a9:	68 96 00 00 00       	pushq  $0x96
   405ae:	e9 bf 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405b3 <exception_entry_151>:
   405b3:	6a 00                	pushq  $0x0
   405b5:	68 97 00 00 00       	pushq  $0x97
   405ba:	e9 b3 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405bf <exception_entry_152>:
   405bf:	6a 00                	pushq  $0x0
   405c1:	68 98 00 00 00       	pushq  $0x98
   405c6:	e9 a7 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405cb <exception_entry_153>:
   405cb:	6a 00                	pushq  $0x0
   405cd:	68 99 00 00 00       	pushq  $0x99
   405d2:	e9 9b 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405d7 <exception_entry_154>:
   405d7:	6a 00                	pushq  $0x0
   405d9:	68 9a 00 00 00       	pushq  $0x9a
   405de:	e9 8f 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405e3 <exception_entry_155>:
   405e3:	6a 00                	pushq  $0x0
   405e5:	68 9b 00 00 00       	pushq  $0x9b
   405ea:	e9 83 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405ef <exception_entry_156>:
   405ef:	6a 00                	pushq  $0x0
   405f1:	68 9c 00 00 00       	pushq  $0x9c
   405f6:	e9 77 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405fb <exception_entry_157>:
   405fb:	6a 00                	pushq  $0x0
   405fd:	68 9d 00 00 00       	pushq  $0x9d
   40602:	e9 6b 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040607 <exception_entry_158>:
   40607:	6a 00                	pushq  $0x0
   40609:	68 9e 00 00 00       	pushq  $0x9e
   4060e:	e9 5f 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040613 <exception_entry_159>:
   40613:	6a 00                	pushq  $0x0
   40615:	68 9f 00 00 00       	pushq  $0x9f
   4061a:	e9 53 04 00 00       	jmpq   40a72 <exception_entry>

000000000004061f <exception_entry_160>:
   4061f:	6a 00                	pushq  $0x0
   40621:	68 a0 00 00 00       	pushq  $0xa0
   40626:	e9 47 04 00 00       	jmpq   40a72 <exception_entry>

000000000004062b <exception_entry_161>:
   4062b:	6a 00                	pushq  $0x0
   4062d:	68 a1 00 00 00       	pushq  $0xa1
   40632:	e9 3b 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040637 <exception_entry_162>:
   40637:	6a 00                	pushq  $0x0
   40639:	68 a2 00 00 00       	pushq  $0xa2
   4063e:	e9 2f 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040643 <exception_entry_163>:
   40643:	6a 00                	pushq  $0x0
   40645:	68 a3 00 00 00       	pushq  $0xa3
   4064a:	e9 23 04 00 00       	jmpq   40a72 <exception_entry>

000000000004064f <exception_entry_164>:
   4064f:	6a 00                	pushq  $0x0
   40651:	68 a4 00 00 00       	pushq  $0xa4
   40656:	e9 17 04 00 00       	jmpq   40a72 <exception_entry>

000000000004065b <exception_entry_165>:
   4065b:	6a 00                	pushq  $0x0
   4065d:	68 a5 00 00 00       	pushq  $0xa5
   40662:	e9 0b 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040667 <exception_entry_166>:
   40667:	6a 00                	pushq  $0x0
   40669:	68 a6 00 00 00       	pushq  $0xa6
   4066e:	e9 ff 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040673 <exception_entry_167>:
   40673:	6a 00                	pushq  $0x0
   40675:	68 a7 00 00 00       	pushq  $0xa7
   4067a:	e9 f3 03 00 00       	jmpq   40a72 <exception_entry>

000000000004067f <exception_entry_168>:
   4067f:	6a 00                	pushq  $0x0
   40681:	68 a8 00 00 00       	pushq  $0xa8
   40686:	e9 e7 03 00 00       	jmpq   40a72 <exception_entry>

000000000004068b <exception_entry_169>:
   4068b:	6a 00                	pushq  $0x0
   4068d:	68 a9 00 00 00       	pushq  $0xa9
   40692:	e9 db 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040697 <exception_entry_170>:
   40697:	6a 00                	pushq  $0x0
   40699:	68 aa 00 00 00       	pushq  $0xaa
   4069e:	e9 cf 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406a3 <exception_entry_171>:
   406a3:	6a 00                	pushq  $0x0
   406a5:	68 ab 00 00 00       	pushq  $0xab
   406aa:	e9 c3 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406af <exception_entry_172>:
   406af:	6a 00                	pushq  $0x0
   406b1:	68 ac 00 00 00       	pushq  $0xac
   406b6:	e9 b7 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406bb <exception_entry_173>:
   406bb:	6a 00                	pushq  $0x0
   406bd:	68 ad 00 00 00       	pushq  $0xad
   406c2:	e9 ab 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406c7 <exception_entry_174>:
   406c7:	6a 00                	pushq  $0x0
   406c9:	68 ae 00 00 00       	pushq  $0xae
   406ce:	e9 9f 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406d3 <exception_entry_175>:
   406d3:	6a 00                	pushq  $0x0
   406d5:	68 af 00 00 00       	pushq  $0xaf
   406da:	e9 93 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406df <exception_entry_176>:
   406df:	6a 00                	pushq  $0x0
   406e1:	68 b0 00 00 00       	pushq  $0xb0
   406e6:	e9 87 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406eb <exception_entry_177>:
   406eb:	6a 00                	pushq  $0x0
   406ed:	68 b1 00 00 00       	pushq  $0xb1
   406f2:	e9 7b 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406f7 <exception_entry_178>:
   406f7:	6a 00                	pushq  $0x0
   406f9:	68 b2 00 00 00       	pushq  $0xb2
   406fe:	e9 6f 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040703 <exception_entry_179>:
   40703:	6a 00                	pushq  $0x0
   40705:	68 b3 00 00 00       	pushq  $0xb3
   4070a:	e9 63 03 00 00       	jmpq   40a72 <exception_entry>

000000000004070f <exception_entry_180>:
   4070f:	6a 00                	pushq  $0x0
   40711:	68 b4 00 00 00       	pushq  $0xb4
   40716:	e9 57 03 00 00       	jmpq   40a72 <exception_entry>

000000000004071b <exception_entry_181>:
   4071b:	6a 00                	pushq  $0x0
   4071d:	68 b5 00 00 00       	pushq  $0xb5
   40722:	e9 4b 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040727 <exception_entry_182>:
   40727:	6a 00                	pushq  $0x0
   40729:	68 b6 00 00 00       	pushq  $0xb6
   4072e:	e9 3f 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040733 <exception_entry_183>:
   40733:	6a 00                	pushq  $0x0
   40735:	68 b7 00 00 00       	pushq  $0xb7
   4073a:	e9 33 03 00 00       	jmpq   40a72 <exception_entry>

000000000004073f <exception_entry_184>:
   4073f:	6a 00                	pushq  $0x0
   40741:	68 b8 00 00 00       	pushq  $0xb8
   40746:	e9 27 03 00 00       	jmpq   40a72 <exception_entry>

000000000004074b <exception_entry_185>:
   4074b:	6a 00                	pushq  $0x0
   4074d:	68 b9 00 00 00       	pushq  $0xb9
   40752:	e9 1b 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040757 <exception_entry_186>:
   40757:	6a 00                	pushq  $0x0
   40759:	68 ba 00 00 00       	pushq  $0xba
   4075e:	e9 0f 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040763 <exception_entry_187>:
   40763:	6a 00                	pushq  $0x0
   40765:	68 bb 00 00 00       	pushq  $0xbb
   4076a:	e9 03 03 00 00       	jmpq   40a72 <exception_entry>

000000000004076f <exception_entry_188>:
   4076f:	6a 00                	pushq  $0x0
   40771:	68 bc 00 00 00       	pushq  $0xbc
   40776:	e9 f7 02 00 00       	jmpq   40a72 <exception_entry>

000000000004077b <exception_entry_189>:
   4077b:	6a 00                	pushq  $0x0
   4077d:	68 bd 00 00 00       	pushq  $0xbd
   40782:	e9 eb 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040787 <exception_entry_190>:
   40787:	6a 00                	pushq  $0x0
   40789:	68 be 00 00 00       	pushq  $0xbe
   4078e:	e9 df 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040793 <exception_entry_191>:
   40793:	6a 00                	pushq  $0x0
   40795:	68 bf 00 00 00       	pushq  $0xbf
   4079a:	e9 d3 02 00 00       	jmpq   40a72 <exception_entry>

000000000004079f <exception_entry_192>:
   4079f:	6a 00                	pushq  $0x0
   407a1:	68 c0 00 00 00       	pushq  $0xc0
   407a6:	e9 c7 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407ab <exception_entry_193>:
   407ab:	6a 00                	pushq  $0x0
   407ad:	68 c1 00 00 00       	pushq  $0xc1
   407b2:	e9 bb 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407b7 <exception_entry_194>:
   407b7:	6a 00                	pushq  $0x0
   407b9:	68 c2 00 00 00       	pushq  $0xc2
   407be:	e9 af 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407c3 <exception_entry_195>:
   407c3:	6a 00                	pushq  $0x0
   407c5:	68 c3 00 00 00       	pushq  $0xc3
   407ca:	e9 a3 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407cf <exception_entry_196>:
   407cf:	6a 00                	pushq  $0x0
   407d1:	68 c4 00 00 00       	pushq  $0xc4
   407d6:	e9 97 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407db <exception_entry_197>:
   407db:	6a 00                	pushq  $0x0
   407dd:	68 c5 00 00 00       	pushq  $0xc5
   407e2:	e9 8b 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407e7 <exception_entry_198>:
   407e7:	6a 00                	pushq  $0x0
   407e9:	68 c6 00 00 00       	pushq  $0xc6
   407ee:	e9 7f 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407f3 <exception_entry_199>:
   407f3:	6a 00                	pushq  $0x0
   407f5:	68 c7 00 00 00       	pushq  $0xc7
   407fa:	e9 73 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407ff <exception_entry_200>:
   407ff:	6a 00                	pushq  $0x0
   40801:	68 c8 00 00 00       	pushq  $0xc8
   40806:	e9 67 02 00 00       	jmpq   40a72 <exception_entry>

000000000004080b <exception_entry_201>:
   4080b:	6a 00                	pushq  $0x0
   4080d:	68 c9 00 00 00       	pushq  $0xc9
   40812:	e9 5b 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040817 <exception_entry_202>:
   40817:	6a 00                	pushq  $0x0
   40819:	68 ca 00 00 00       	pushq  $0xca
   4081e:	e9 4f 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040823 <exception_entry_203>:
   40823:	6a 00                	pushq  $0x0
   40825:	68 cb 00 00 00       	pushq  $0xcb
   4082a:	e9 43 02 00 00       	jmpq   40a72 <exception_entry>

000000000004082f <exception_entry_204>:
   4082f:	6a 00                	pushq  $0x0
   40831:	68 cc 00 00 00       	pushq  $0xcc
   40836:	e9 37 02 00 00       	jmpq   40a72 <exception_entry>

000000000004083b <exception_entry_205>:
   4083b:	6a 00                	pushq  $0x0
   4083d:	68 cd 00 00 00       	pushq  $0xcd
   40842:	e9 2b 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040847 <exception_entry_206>:
   40847:	6a 00                	pushq  $0x0
   40849:	68 ce 00 00 00       	pushq  $0xce
   4084e:	e9 1f 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040853 <exception_entry_207>:
   40853:	6a 00                	pushq  $0x0
   40855:	68 cf 00 00 00       	pushq  $0xcf
   4085a:	e9 13 02 00 00       	jmpq   40a72 <exception_entry>

000000000004085f <exception_entry_208>:
   4085f:	6a 00                	pushq  $0x0
   40861:	68 d0 00 00 00       	pushq  $0xd0
   40866:	e9 07 02 00 00       	jmpq   40a72 <exception_entry>

000000000004086b <exception_entry_209>:
   4086b:	6a 00                	pushq  $0x0
   4086d:	68 d1 00 00 00       	pushq  $0xd1
   40872:	e9 fb 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040877 <exception_entry_210>:
   40877:	6a 00                	pushq  $0x0
   40879:	68 d2 00 00 00       	pushq  $0xd2
   4087e:	e9 ef 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040883 <exception_entry_211>:
   40883:	6a 00                	pushq  $0x0
   40885:	68 d3 00 00 00       	pushq  $0xd3
   4088a:	e9 e3 01 00 00       	jmpq   40a72 <exception_entry>

000000000004088f <exception_entry_212>:
   4088f:	6a 00                	pushq  $0x0
   40891:	68 d4 00 00 00       	pushq  $0xd4
   40896:	e9 d7 01 00 00       	jmpq   40a72 <exception_entry>

000000000004089b <exception_entry_213>:
   4089b:	6a 00                	pushq  $0x0
   4089d:	68 d5 00 00 00       	pushq  $0xd5
   408a2:	e9 cb 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408a7 <exception_entry_214>:
   408a7:	6a 00                	pushq  $0x0
   408a9:	68 d6 00 00 00       	pushq  $0xd6
   408ae:	e9 bf 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408b3 <exception_entry_215>:
   408b3:	6a 00                	pushq  $0x0
   408b5:	68 d7 00 00 00       	pushq  $0xd7
   408ba:	e9 b3 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408bf <exception_entry_216>:
   408bf:	6a 00                	pushq  $0x0
   408c1:	68 d8 00 00 00       	pushq  $0xd8
   408c6:	e9 a7 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408cb <exception_entry_217>:
   408cb:	6a 00                	pushq  $0x0
   408cd:	68 d9 00 00 00       	pushq  $0xd9
   408d2:	e9 9b 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408d7 <exception_entry_218>:
   408d7:	6a 00                	pushq  $0x0
   408d9:	68 da 00 00 00       	pushq  $0xda
   408de:	e9 8f 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408e3 <exception_entry_219>:
   408e3:	6a 00                	pushq  $0x0
   408e5:	68 db 00 00 00       	pushq  $0xdb
   408ea:	e9 83 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408ef <exception_entry_220>:
   408ef:	6a 00                	pushq  $0x0
   408f1:	68 dc 00 00 00       	pushq  $0xdc
   408f6:	e9 77 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408fb <exception_entry_221>:
   408fb:	6a 00                	pushq  $0x0
   408fd:	68 dd 00 00 00       	pushq  $0xdd
   40902:	e9 6b 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040907 <exception_entry_222>:
   40907:	6a 00                	pushq  $0x0
   40909:	68 de 00 00 00       	pushq  $0xde
   4090e:	e9 5f 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040913 <exception_entry_223>:
   40913:	6a 00                	pushq  $0x0
   40915:	68 df 00 00 00       	pushq  $0xdf
   4091a:	e9 53 01 00 00       	jmpq   40a72 <exception_entry>

000000000004091f <exception_entry_224>:
   4091f:	6a 00                	pushq  $0x0
   40921:	68 e0 00 00 00       	pushq  $0xe0
   40926:	e9 47 01 00 00       	jmpq   40a72 <exception_entry>

000000000004092b <exception_entry_225>:
   4092b:	6a 00                	pushq  $0x0
   4092d:	68 e1 00 00 00       	pushq  $0xe1
   40932:	e9 3b 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040937 <exception_entry_226>:
   40937:	6a 00                	pushq  $0x0
   40939:	68 e2 00 00 00       	pushq  $0xe2
   4093e:	e9 2f 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040943 <exception_entry_227>:
   40943:	6a 00                	pushq  $0x0
   40945:	68 e3 00 00 00       	pushq  $0xe3
   4094a:	e9 23 01 00 00       	jmpq   40a72 <exception_entry>

000000000004094f <exception_entry_228>:
   4094f:	6a 00                	pushq  $0x0
   40951:	68 e4 00 00 00       	pushq  $0xe4
   40956:	e9 17 01 00 00       	jmpq   40a72 <exception_entry>

000000000004095b <exception_entry_229>:
   4095b:	6a 00                	pushq  $0x0
   4095d:	68 e5 00 00 00       	pushq  $0xe5
   40962:	e9 0b 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040967 <exception_entry_230>:
   40967:	6a 00                	pushq  $0x0
   40969:	68 e6 00 00 00       	pushq  $0xe6
   4096e:	e9 ff 00 00 00       	jmpq   40a72 <exception_entry>

0000000000040973 <exception_entry_231>:
   40973:	6a 00                	pushq  $0x0
   40975:	68 e7 00 00 00       	pushq  $0xe7
   4097a:	e9 f3 00 00 00       	jmpq   40a72 <exception_entry>

000000000004097f <exception_entry_232>:
   4097f:	6a 00                	pushq  $0x0
   40981:	68 e8 00 00 00       	pushq  $0xe8
   40986:	e9 e7 00 00 00       	jmpq   40a72 <exception_entry>

000000000004098b <exception_entry_233>:
   4098b:	6a 00                	pushq  $0x0
   4098d:	68 e9 00 00 00       	pushq  $0xe9
   40992:	e9 db 00 00 00       	jmpq   40a72 <exception_entry>

0000000000040997 <exception_entry_234>:
   40997:	6a 00                	pushq  $0x0
   40999:	68 ea 00 00 00       	pushq  $0xea
   4099e:	e9 cf 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409a3 <exception_entry_235>:
   409a3:	6a 00                	pushq  $0x0
   409a5:	68 eb 00 00 00       	pushq  $0xeb
   409aa:	e9 c3 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409af <exception_entry_236>:
   409af:	6a 00                	pushq  $0x0
   409b1:	68 ec 00 00 00       	pushq  $0xec
   409b6:	e9 b7 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409bb <exception_entry_237>:
   409bb:	6a 00                	pushq  $0x0
   409bd:	68 ed 00 00 00       	pushq  $0xed
   409c2:	e9 ab 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409c7 <exception_entry_238>:
   409c7:	6a 00                	pushq  $0x0
   409c9:	68 ee 00 00 00       	pushq  $0xee
   409ce:	e9 9f 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409d3 <exception_entry_239>:
   409d3:	6a 00                	pushq  $0x0
   409d5:	68 ef 00 00 00       	pushq  $0xef
   409da:	e9 93 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409df <exception_entry_240>:
   409df:	6a 00                	pushq  $0x0
   409e1:	68 f0 00 00 00       	pushq  $0xf0
   409e6:	e9 87 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409eb <exception_entry_241>:
   409eb:	6a 00                	pushq  $0x0
   409ed:	68 f1 00 00 00       	pushq  $0xf1
   409f2:	eb 7e                	jmp    40a72 <exception_entry>

00000000000409f4 <exception_entry_242>:
   409f4:	6a 00                	pushq  $0x0
   409f6:	68 f2 00 00 00       	pushq  $0xf2
   409fb:	eb 75                	jmp    40a72 <exception_entry>

00000000000409fd <exception_entry_243>:
   409fd:	6a 00                	pushq  $0x0
   409ff:	68 f3 00 00 00       	pushq  $0xf3
   40a04:	eb 6c                	jmp    40a72 <exception_entry>

0000000000040a06 <exception_entry_244>:
   40a06:	6a 00                	pushq  $0x0
   40a08:	68 f4 00 00 00       	pushq  $0xf4
   40a0d:	eb 63                	jmp    40a72 <exception_entry>

0000000000040a0f <exception_entry_245>:
   40a0f:	6a 00                	pushq  $0x0
   40a11:	68 f5 00 00 00       	pushq  $0xf5
   40a16:	eb 5a                	jmp    40a72 <exception_entry>

0000000000040a18 <exception_entry_246>:
   40a18:	6a 00                	pushq  $0x0
   40a1a:	68 f6 00 00 00       	pushq  $0xf6
   40a1f:	eb 51                	jmp    40a72 <exception_entry>

0000000000040a21 <exception_entry_247>:
   40a21:	6a 00                	pushq  $0x0
   40a23:	68 f7 00 00 00       	pushq  $0xf7
   40a28:	eb 48                	jmp    40a72 <exception_entry>

0000000000040a2a <exception_entry_248>:
   40a2a:	6a 00                	pushq  $0x0
   40a2c:	68 f8 00 00 00       	pushq  $0xf8
   40a31:	eb 3f                	jmp    40a72 <exception_entry>

0000000000040a33 <exception_entry_249>:
   40a33:	6a 00                	pushq  $0x0
   40a35:	68 f9 00 00 00       	pushq  $0xf9
   40a3a:	eb 36                	jmp    40a72 <exception_entry>

0000000000040a3c <exception_entry_250>:
   40a3c:	6a 00                	pushq  $0x0
   40a3e:	68 fa 00 00 00       	pushq  $0xfa
   40a43:	eb 2d                	jmp    40a72 <exception_entry>

0000000000040a45 <exception_entry_251>:
   40a45:	6a 00                	pushq  $0x0
   40a47:	68 fb 00 00 00       	pushq  $0xfb
   40a4c:	eb 24                	jmp    40a72 <exception_entry>

0000000000040a4e <exception_entry_252>:
   40a4e:	6a 00                	pushq  $0x0
   40a50:	68 fc 00 00 00       	pushq  $0xfc
   40a55:	eb 1b                	jmp    40a72 <exception_entry>

0000000000040a57 <exception_entry_253>:
   40a57:	6a 00                	pushq  $0x0
   40a59:	68 fd 00 00 00       	pushq  $0xfd
   40a5e:	eb 12                	jmp    40a72 <exception_entry>

0000000000040a60 <exception_entry_254>:
   40a60:	6a 00                	pushq  $0x0
   40a62:	68 fe 00 00 00       	pushq  $0xfe
   40a67:	eb 09                	jmp    40a72 <exception_entry>

0000000000040a69 <exception_entry_255>:
   40a69:	6a 00                	pushq  $0x0
   40a6b:	68 ff 00 00 00       	pushq  $0xff
   40a70:	eb 00                	jmp    40a72 <exception_entry>

0000000000040a72 <exception_entry>:
   40a72:	0f a8                	pushq  %gs
   40a74:	0f a0                	pushq  %fs
   40a76:	41 57                	push   %r15
   40a78:	41 56                	push   %r14
   40a7a:	41 55                	push   %r13
   40a7c:	41 54                	push   %r12
   40a7e:	41 53                	push   %r11
   40a80:	41 52                	push   %r10
   40a82:	41 51                	push   %r9
   40a84:	41 50                	push   %r8
   40a86:	57                   	push   %rdi
   40a87:	56                   	push   %rsi
   40a88:	55                   	push   %rbp
   40a89:	53                   	push   %rbx
   40a8a:	52                   	push   %rdx
   40a8b:	51                   	push   %rcx
   40a8c:	50                   	push   %rax
   40a8d:	48 89 e7             	mov    %rsp,%rdi
   40a90:	48 c7 c0 00 40 05 00 	mov    $0x54000,%rax
   40a97:	0f 22 d8             	mov    %rax,%cr3
   40a9a:	e8 f0 03 00 00       	callq  40e8f <exception(regstate*)>

0000000000040a9f <exception_return(proc*)>:
   40a9f:	8b 47 0c             	mov    0xc(%rdi),%eax
   40aa2:	83 f8 01             	cmp    $0x1,%eax
   40aa5:	0f 85 a4 00 00 00    	jne    40b4f <proc_runnable_fail>
   40aab:	48 8b 07             	mov    (%rdi),%rax
   40aae:	0f 22 d8             	mov    %rax,%cr3
   40ab1:	48 8d 67 10          	lea    0x10(%rdi),%rsp
   40ab5:	58                   	pop    %rax
   40ab6:	59                   	pop    %rcx
   40ab7:	5a                   	pop    %rdx
   40ab8:	5b                   	pop    %rbx
   40ab9:	5d                   	pop    %rbp
   40aba:	5e                   	pop    %rsi
   40abb:	5f                   	pop    %rdi
   40abc:	41 58                	pop    %r8
   40abe:	41 59                	pop    %r9
   40ac0:	41 5a                	pop    %r10
   40ac2:	41 5b                	pop    %r11
   40ac4:	41 5c                	pop    %r12
   40ac6:	41 5d                	pop    %r13
   40ac8:	41 5e                	pop    %r14
   40aca:	41 5f                	pop    %r15
   40acc:	0f a1                	popq   %fs
   40ace:	0f a9                	popq   %gs
   40ad0:	48 83 c4 10          	add    $0x10,%rsp
   40ad4:	48 cf                	iretq  

0000000000040ad6 <syscall_entry>:
   40ad6:	48 89 24 25 f0 ff 07 	mov    %rsp,0x7fff0
   40add:	00 
   40ade:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40ae5:	6a 23                	pushq  $0x23
   40ae7:	48 83 ec 08          	sub    $0x8,%rsp
   40aeb:	41 53                	push   %r11
   40aed:	6a 1b                	pushq  $0x1b
   40aef:	51                   	push   %rcx
   40af0:	48 83 ec 08          	sub    $0x8,%rsp
   40af4:	6a ff                	pushq  $0xffffffffffffffff
   40af6:	0f a8                	pushq  %gs
   40af8:	0f a0                	pushq  %fs
   40afa:	41 57                	push   %r15
   40afc:	41 56                	push   %r14
   40afe:	41 55                	push   %r13
   40b00:	41 54                	push   %r12
   40b02:	48 83 ec 08          	sub    $0x8,%rsp
   40b06:	41 52                	push   %r10
   40b08:	41 51                	push   %r9
   40b0a:	41 50                	push   %r8
   40b0c:	57                   	push   %rdi
   40b0d:	56                   	push   %rsi
   40b0e:	55                   	push   %rbp
   40b0f:	53                   	push   %rbx
   40b10:	52                   	push   %rdx
   40b11:	48 83 ec 08          	sub    $0x8,%rsp
   40b15:	50                   	push   %rax
   40b16:	48 c7 c0 00 40 05 00 	mov    $0x54000,%rax
   40b1d:	0f 22 d8             	mov    %rax,%cr3
   40b20:	48 89 e7             	mov    %rsp,%rdi
   40b23:	e8 bc 10 00 00       	callq  41be4 <syscall(regstate*)>
   40b28:	48 8b 0c 25 00 22 05 	mov    0x52200,%rcx
   40b2f:	00 
   40b30:	8b 49 0c             	mov    0xc(%rcx),%ecx
   40b33:	83 f9 01             	cmp    $0x1,%ecx
   40b36:	75 17                	jne    40b4f <proc_runnable_fail>
   40b38:	48 8b 0c 25 00 22 05 	mov    0x52200,%rcx
   40b3f:	00 
   40b40:	48 8b 09             	mov    (%rcx),%rcx
   40b43:	0f 22 d9             	mov    %rcx,%cr3
   40b46:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   40b4d:	48 cf                	iretq  

0000000000040b4f <proc_runnable_fail>:
   40b4f:	48 c7 c2 4e 49 04 00 	mov    $0x4494e,%rdx
   40b56:	31 f6                	xor    %esi,%esi
   40b58:	48 c7 c7 40 49 04 00 	mov    $0x44940,%rdi
   40b5f:	e8 28 1b 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>

0000000000040b64 <kalloc(unsigned long)>:
//
//    The stencil code returns the next allocatable free page it can find,
//    but it never reuses pages or supports freeing memory (you'll have to
//    change this at some point).

void* kalloc(size_t sz) {
   40b64:	f3 0f 1e fa          	endbr64 
   40b68:	55                   	push   %rbp
   40b69:	48 89 e5             	mov    %rsp,%rbp
   40b6c:	41 54                	push   %r12
   40b6e:	53                   	push   %rbx
    if (sz > PAGESIZE) {
   40b6f:	48 81 ff 00 10 00 00 	cmp    $0x1000,%rdi
   40b76:	77 5f                	ja     40bd7 <kalloc(unsigned long)+0x73>
        return nullptr;
    }
    uintptr_t pa = 0x01000;
   40b78:	bb 00 10 00 00       	mov    $0x1000,%ebx
   40b7d:	eb 10                	jmp    40b8f <kalloc(unsigned long)+0x2b>
        if (allocatable_physical_address(pa) && !pages[pa / PAGESIZE].used()) {
            pages[pa / PAGESIZE].refcount += 1;
            memset((void*) pa, 0xCC, PAGESIZE); 
            return (void*) pa;
        }
        pa += PAGESIZE;
   40b7f:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
    while (pa < MEMSIZE_PHYSICAL) {
   40b86:	48 81 fb 00 00 20 00 	cmp    $0x200000,%rbx
   40b8d:	74 40                	je     40bcf <kalloc(unsigned long)+0x6b>
        if (allocatable_physical_address(pa) && !pages[pa / PAGESIZE].used()) {
   40b8f:	48 89 df             	mov    %rbx,%rdi
   40b92:	e8 67 16 00 00       	callq  421fe <allocatable_physical_address(unsigned long)>
   40b97:	84 c0                	test   %al,%al
   40b99:	74 e4                	je     40b7f <kalloc(unsigned long)+0x1b>
   40b9b:	48 89 d8             	mov    %rbx,%rax
   40b9e:	48 c1 e8 0c          	shr    $0xc,%rax
   40ba2:	80 b8 00 20 05 00 00 	cmpb   $0x0,0x52000(%rax)
   40ba9:	75 d4                	jne    40b7f <kalloc(unsigned long)+0x1b>
            pages[pa / PAGESIZE].refcount += 1;
   40bab:	c6 80 00 20 05 00 01 	movb   $0x1,0x52000(%rax)
            memset((void*) pa, 0xCC, PAGESIZE); 
   40bb2:	49 89 dc             	mov    %rbx,%r12
   40bb5:	ba 00 10 00 00       	mov    $0x1000,%edx
   40bba:	be cc 00 00 00       	mov    $0xcc,%esi
   40bbf:	48 89 df             	mov    %rbx,%rdi
   40bc2:	e8 26 32 00 00       	callq  43ded <memset>
    }
    
    // Fail if no spot in virtual memory is found
    return nullptr;
}
   40bc7:	4c 89 e0             	mov    %r12,%rax
   40bca:	5b                   	pop    %rbx
   40bcb:	41 5c                	pop    %r12
   40bcd:	5d                   	pop    %rbp
   40bce:	c3                   	retq   
    return nullptr;
   40bcf:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   40bd5:	eb f0                	jmp    40bc7 <kalloc(unsigned long)+0x63>
        return nullptr;
   40bd7:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   40bdd:	eb e8                	jmp    40bc7 <kalloc(unsigned long)+0x63>

0000000000040bdf <kfree(void*)>:

// kfree(kptr)
//    Frees `kptr`, which must have been previously returned by `kalloc`.
//    If `kptr == nullptr` does nothing.

void kfree(void* kptr) {
   40bdf:	f3 0f 1e fa          	endbr64 
    if (kptr != 0x0) {
   40be3:	48 85 ff             	test   %rdi,%rdi
   40be6:	74 0b                	je     40bf3 <kfree(void*)+0x14>
        pages[(uintptr_t) kptr / PAGESIZE].refcount -= 1;
   40be8:	48 c1 ef 0c          	shr    $0xc,%rdi
   40bec:	80 af 00 20 05 00 01 	subb   $0x1,0x52000(%rdi)
        assert(pages[(uintptr_t) kptr / PAGESIZE].refcount >= 0);
    }
}
   40bf3:	c3                   	retq   

0000000000040bf4 <syscall_page_alloc(unsigned long)>:
//    Helper function that handles the SYSCALL_PAGE_ALLOC system call.
//    This function implement the specification for `sys_page_alloc`
//    in `u-lib.hh` (but in the stencil code, it does not - you will
//    have to change this).

int syscall_page_alloc(uintptr_t addr) {
   40bf4:	f3 0f 1e fa          	endbr64 
   40bf8:	55                   	push   %rbp
   40bf9:	48 89 e5             	mov    %rsp,%rbp
   40bfc:	41 54                	push   %r12
   40bfe:	53                   	push   %rbx
   40bff:	48 83 ec 20          	sub    $0x20,%rsp
   40c03:	48 89 fb             	mov    %rdi,%rbx
    // Allocate the next available page
    uintptr_t padd = (uintptr_t) kalloc(PAGESIZE);
   40c06:	bf 00 10 00 00       	mov    $0x1000,%edi
   40c0b:	e8 54 ff ff ff       	callq  40b64 <kalloc(unsigned long)>
   40c10:	49 89 c4             	mov    %rax,%r12
    if (addr < PROC_START_ADDR || addr >= MEMSIZE_VIRTUAL || padd == 0 || addr % PAGESIZE != 0) {
   40c13:	48 8d 83 00 00 f0 ff 	lea    -0x100000(%rbx),%rax
   40c1a:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   40c20:	0f 87 89 00 00 00    	ja     40caf <syscall_page_alloc(unsigned long)+0xbb>
   40c26:	4d 85 e4             	test   %r12,%r12
   40c29:	0f 84 80 00 00 00    	je     40caf <syscall_page_alloc(unsigned long)+0xbb>
   40c2f:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
   40c35:	75 7f                	jne    40cb6 <syscall_page_alloc(unsigned long)+0xc2>
        // Failed when trying to allocate
        return -1;
    }

    // Try to add the newly allocated page to the curret process' pagetable 
    if (vmiter(current->pagetable, addr).try_map(padd, PTE_P | PTE_W | PTE_U) != -1)  {
   40c37:	48 8b 05 c2 15 01 00 	mov    0x115c2(%rip),%rax        # 52200 <current>
   40c3e:	48 8b 00             	mov    (%rax),%rax
    void down(bool skip);
};


inline vmiter::vmiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40c41:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   40c45:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   40c49:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   40c50:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   40c57:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   40c5e:	00 
    real_find(va);
   40c5f:	48 89 de             	mov    %rbx,%rsi
   40c62:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   40c66:	e8 bb 10 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
   40c6b:	ba 07 00 00 00       	mov    $0x7,%edx
   40c70:	4c 89 e6             	mov    %r12,%rsi
   40c73:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   40c77:	e8 ae 11 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
   40c7c:	89 c3                	mov    %eax,%ebx
   40c7e:	83 f8 ff             	cmp    $0xffffffff,%eax
   40c81:	74 22                	je     40ca5 <syscall_page_alloc(unsigned long)+0xb1>
        // Initialize memory
        memset((void*) padd, 0, PAGESIZE);
   40c83:	ba 00 10 00 00       	mov    $0x1000,%edx
   40c88:	be 00 00 00 00       	mov    $0x0,%esi
   40c8d:	4c 89 e7             	mov    %r12,%rdi
   40c90:	e8 58 31 00 00       	callq  43ded <memset>
        // Failed to map, so free the memory
        kfree((void*) padd);
        return -1;
    }

    return 0;
   40c95:	bb 00 00 00 00       	mov    $0x0,%ebx
}
   40c9a:	89 d8                	mov    %ebx,%eax
   40c9c:	48 83 c4 20          	add    $0x20,%rsp
   40ca0:	5b                   	pop    %rbx
   40ca1:	41 5c                	pop    %r12
   40ca3:	5d                   	pop    %rbp
   40ca4:	c3                   	retq   
        kfree((void*) padd);
   40ca5:	4c 89 e7             	mov    %r12,%rdi
   40ca8:	e8 32 ff ff ff       	callq  40bdf <kfree(void*)>
        return -1;
   40cad:	eb eb                	jmp    40c9a <syscall_page_alloc(unsigned long)+0xa6>
        return -1;
   40caf:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
   40cb4:	eb e4                	jmp    40c9a <syscall_page_alloc(unsigned long)+0xa6>
   40cb6:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
   40cbb:	eb dd                	jmp    40c9a <syscall_page_alloc(unsigned long)+0xa6>

0000000000040cbd <run(proc*)>:
// run(p)
//    Runs process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.
//    You should *not* have to edit this function.

void run(proc* p) {
   40cbd:	f3 0f 1e fa          	endbr64 
   40cc1:	55                   	push   %rbp
   40cc2:	48 89 e5             	mov    %rsp,%rbp
   40cc5:	53                   	push   %rbx
   40cc6:	48 83 ec 08          	sub    $0x8,%rsp
    assert(p->state == P_RUNNABLE);
   40cca:	83 7f 0c 01          	cmpl   $0x1,0xc(%rdi)
   40cce:	75 1a                	jne    40cea <run(proc*)+0x2d>
   40cd0:	48 89 fb             	mov    %rdi,%rbx
    current = p;
   40cd3:	48 89 3d 26 15 01 00 	mov    %rdi,0x11526(%rip)        # 52200 <current>

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);
   40cda:	48 8b 3f             	mov    (%rdi),%rdi
   40cdd:	e8 92 1e 00 00       	callq  42b74 <check_pagetable(x86_64_pagetable*)>

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);
   40ce2:	48 89 df             	mov    %rbx,%rdi
   40ce5:	e8 b5 fd ff ff       	callq  40a9f <exception_return(proc*)>
    assert(p->state == P_RUNNABLE);
   40cea:	ba 6b 49 04 00       	mov    $0x4496b,%edx
   40cef:	be 26 02 00 00       	mov    $0x226,%esi
   40cf4:	bf 82 49 04 00       	mov    $0x44982,%edi
   40cf9:	e8 8e 19 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>

0000000000040cfe <memshow()>:
//    Draws a picture of memory (physical and virtual) on the CGA console.
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.
//    You should *not* have to edit this function.

void memshow() {
   40cfe:	f3 0f 1e fa          	endbr64 
   40d02:	55                   	push   %rbp
   40d03:	48 89 e5             	mov    %rsp,%rbp
    static unsigned last_ticks = 0;
    static int showing = 0;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
   40d06:	83 3d 17 22 01 00 00 	cmpl   $0x0,0x12217(%rip)        # 52f24 <memshow()::last_ticks>
   40d0d:	74 16                	je     40d25 <memshow()+0x27>
      {
	memory_order __b = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_release);
	__glibcxx_assert(__b != memory_order_acq_rel);

	return __atomic_load_n(&_M_i, int(__m));
   40d0f:	48 8b 05 12 22 01 00 	mov    0x12212(%rip),%rax        # 52f28 <ticks>
   40d16:	8b 15 08 22 01 00    	mov    0x12208(%rip),%edx        # 52f24 <memshow()::last_ticks>
   40d1c:	48 29 d0             	sub    %rdx,%rax
   40d1f:	48 83 f8 31          	cmp    $0x31,%rax
   40d23:	76 27                	jbe    40d4c <memshow()+0x4e>
   40d25:	48 8b 05 fc 21 01 00 	mov    0x121fc(%rip),%rax        # 52f28 <ticks>
        last_ticks = ticks;
   40d2c:	89 05 f2 21 01 00    	mov    %eax,0x121f2(%rip)        # 52f24 <memshow()::last_ticks>
        showing = (showing + 1) % NPROC;
   40d32:	8b 05 e8 21 01 00    	mov    0x121e8(%rip),%eax        # 52f20 <memshow()::showing>
   40d38:	83 c0 01             	add    $0x1,%eax
   40d3b:	99                   	cltd   
   40d3c:	c1 ea 1c             	shr    $0x1c,%edx
   40d3f:	01 d0                	add    %edx,%eax
   40d41:	83 e0 0f             	and    $0xf,%eax
   40d44:	29 d0                	sub    %edx,%eax
   40d46:	89 05 d4 21 01 00    	mov    %eax,0x121d4(%rip)        # 52f20 <memshow()::showing>
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
   40d4c:	8b 05 ce 21 01 00    	mov    0x121ce(%rip),%eax        # 52f20 <memshow()::showing>
void memshow() {
   40d52:	b9 10 00 00 00       	mov    $0x10,%ecx
   40d57:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   40d5d:	be 01 00 00 00       	mov    $0x1,%esi
   40d62:	eb 16                	jmp    40d7a <memshow()+0x7c>
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
   40d64:	83 c0 01             	add    $0x1,%eax
   40d67:	99                   	cltd   
   40d68:	c1 ea 1c             	shr    $0x1c,%edx
   40d6b:	01 d0                	add    %edx,%eax
   40d6d:	83 e0 0f             	and    $0xf,%eax
   40d70:	29 d0                	sub    %edx,%eax
    for (int search = 0; !p && search < NPROC; ++search) {
   40d72:	41 89 f0             	mov    %esi,%r8d
   40d75:	83 e9 01             	sub    $0x1,%ecx
   40d78:	74 54                	je     40dce <memshow()+0xd0>
        if (ptable[showing].state != P_FREE
   40d7a:	48 63 d0             	movslq %eax,%rdx
   40d7d:	48 8d 3c 52          	lea    (%rdx,%rdx,2),%rdi
   40d81:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   40d85:	48 c1 e2 04          	shl    $0x4,%rdx
   40d89:	83 ba 2c 22 05 00 00 	cmpl   $0x0,0x5222c(%rdx)
   40d90:	74 d2                	je     40d64 <memshow()+0x66>
            && ptable[showing].pagetable) {
   40d92:	48 63 d0             	movslq %eax,%rdx
   40d95:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   40d99:	48 c1 e2 04          	shl    $0x4,%rdx
   40d9d:	48 83 ba 20 22 05 00 	cmpq   $0x0,0x52220(%rdx)
   40da4:	00 
   40da5:	74 bd                	je     40d64 <memshow()+0x66>
   40da7:	45 84 c0             	test   %r8b,%r8b
   40daa:	74 06                	je     40db2 <memshow()+0xb4>
   40dac:	89 05 6e 21 01 00    	mov    %eax,0x1216e(%rip)        # 52f20 <memshow()::showing>
            p = &ptable[showing];
   40db2:	48 98                	cltq   
   40db4:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   40db8:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   40dbc:	48 c1 e7 04          	shl    $0x4,%rdi
   40dc0:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
        }
    }

    extern void console_memviewer(proc* vmp);
    console_memviewer(p);
   40dc7:	e8 db 2c 00 00       	callq  43aa7 <console_memviewer(proc*)>
}
   40dcc:	5d                   	pop    %rbp
   40dcd:	c3                   	retq   
   40dce:	89 05 4c 21 01 00    	mov    %eax,0x1214c(%rip)        # 52f20 <memshow()::showing>
    for (int search = 0; !p && search < NPROC; ++search) {
   40dd4:	bf 00 00 00 00       	mov    $0x0,%edi
   40dd9:	eb ec                	jmp    40dc7 <memshow()+0xc9>

0000000000040ddb <schedule()>:
void schedule() {
   40ddb:	f3 0f 1e fa          	endbr64 
   40ddf:	55                   	push   %rbp
   40de0:	48 89 e5             	mov    %rsp,%rbp
   40de3:	41 54                	push   %r12
   40de5:	53                   	push   %rbx
    pid_t pid = current->pid;
   40de6:	48 8b 05 13 14 01 00 	mov    0x11413(%rip),%rax        # 52200 <current>
        pid = (pid + 1) % NPROC;
   40ded:	8b 40 08             	mov    0x8(%rax),%eax
   40df0:	83 c0 01             	add    $0x1,%eax
   40df3:	99                   	cltd   
   40df4:	c1 ea 1c             	shr    $0x1c,%edx
   40df7:	01 d0                	add    %edx,%eax
   40df9:	83 e0 0f             	and    $0xf,%eax
   40dfc:	29 d0                	sub    %edx,%eax
   40dfe:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   40e01:	48 98                	cltq   
   40e03:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   40e07:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   40e0b:	48 c1 e0 04          	shl    $0x4,%rax
   40e0f:	83 b8 2c 22 05 00 01 	cmpl   $0x1,0x5222c(%rax)
   40e16:	74 5c                	je     40e74 <schedule()+0x99>
        check_keyboard();
   40e18:	e8 38 21 00 00       	callq  42f55 <check_keyboard()>
    for (unsigned spins = 1; true; ++spins) {
   40e1d:	bb 01 00 00 00       	mov    $0x1,%ebx
   40e22:	83 c3 01             	add    $0x1,%ebx
        pid = (pid + 1) % NPROC;
   40e25:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   40e2a:	99                   	cltd   
   40e2b:	c1 ea 1c             	shr    $0x1c,%edx
   40e2e:	01 d0                	add    %edx,%eax
   40e30:	83 e0 0f             	and    $0xf,%eax
   40e33:	29 d0                	sub    %edx,%eax
   40e35:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   40e38:	48 98                	cltq   
   40e3a:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   40e3e:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   40e42:	48 c1 e0 04          	shl    $0x4,%rax
   40e46:	83 b8 2c 22 05 00 01 	cmpl   $0x1,0x5222c(%rax)
   40e4d:	74 25                	je     40e74 <schedule()+0x99>
        check_keyboard();
   40e4f:	e8 01 21 00 00       	callq  42f55 <check_keyboard()>
        if (spins % (1 << 12) == 0) {
   40e54:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
   40e5a:	75 c6                	jne    40e22 <schedule()+0x47>
            memshow();
   40e5c:	e8 9d fe ff ff       	callq  40cfe <memshow()>
            log_printf("%u\n", spins);
   40e61:	89 de                	mov    %ebx,%esi
   40e63:	bf 8c 49 04 00       	mov    $0x4498c,%edi
   40e68:	b8 00 00 00 00       	mov    $0x0,%eax
   40e6d:	e8 ef 16 00 00       	callq  42561 <log_printf(char const*, ...)>
   40e72:	eb ae                	jmp    40e22 <schedule()+0x47>
            run(&ptable[pid]);
   40e74:	49 63 c4             	movslq %r12d,%rax
   40e77:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   40e7b:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   40e7f:	48 c1 e7 04          	shl    $0x4,%rdi
   40e83:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
   40e8a:	e8 2e fe ff ff       	callq  40cbd <run(proc*)>

0000000000040e8f <exception(regstate*)>:
void exception(regstate* regs) {
   40e8f:	f3 0f 1e fa          	endbr64 
   40e93:	55                   	push   %rbp
   40e94:	48 89 e5             	mov    %rsp,%rbp
   40e97:	53                   	push   %rbx
   40e98:	48 83 ec 08          	sub    $0x8,%rsp
   40e9c:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   40e9f:	48 8b 1d 5a 13 01 00 	mov    0x1135a(%rip),%rbx        # 52200 <current>
   40ea6:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   40eaa:	b9 18 00 00 00       	mov    $0x18,%ecx
   40eaf:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   40eb2:	8b 3d 44 81 07 00    	mov    0x78144(%rip),%edi        # b8ffc <cursorpos>
   40eb8:	e8 23 14 00 00       	callq  422e0 <console_show_cursor(int)>
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PFERR_USER)) {
   40ebd:	83 bb 98 00 00 00 0e 	cmpl   $0xe,0x98(%rbx)
   40ec4:	75 09                	jne    40ecf <exception(regstate*)+0x40>
   40ec6:	f6 83 a0 00 00 00 04 	testb  $0x4,0xa0(%rbx)
   40ecd:	74 05                	je     40ed4 <exception(regstate*)+0x45>
        memshow();
   40ecf:	e8 2a fe ff ff       	callq  40cfe <memshow()>
    check_keyboard();
   40ed4:	e8 7c 20 00 00       	callq  42f55 <check_keyboard()>
    switch (regs->reg_intno) {
   40ed9:	8b b3 98 00 00 00    	mov    0x98(%rbx),%esi
   40edf:	83 fe 0e             	cmp    $0xe,%esi
   40ee2:	74 22                	je     40f06 <exception(regstate*)+0x77>
   40ee4:	83 fe 20             	cmp    $0x20,%esi
   40ee7:	0f 85 a3 00 00 00    	jne    40f90 <exception(regstate*)+0x101>
      { return __atomic_add_fetch(&_M_i, 1, int(memory_order_seq_cst)); }
   40eed:	f0 48 83 05 32 20 01 	lock addq $0x1,0x12032(%rip)        # 52f28 <ticks>
   40ef4:	00 01 
}
inline uint32_t lapicstate::read(int reg) const {
    return reg_[reg].v;
}
inline void lapicstate::write(int reg, uint32_t v) {
    reg_[reg].v = v;
   40ef6:	b8 b0 00 e0 fe       	mov    $0xfee000b0,%eax
   40efb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        schedule();
   40f01:	e8 d5 fe ff ff       	callq  40ddb <schedule()>
    asm volatile("movq %0, %%cr0" : : "r" (x));
}

__always_inline uintptr_t rdcr2() {
    uintptr_t x;
    asm volatile("movq %%cr2, %0" : "=r" (x));
   40f06:	0f 20 d6             	mov    %cr2,%rsi
        const char* operation = regs->reg_errcode & PFERR_WRITE
   40f09:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
                ? "write" : "read";
   40f10:	a8 02                	test   $0x2,%al
   40f12:	41 b9 90 49 04 00    	mov    $0x44990,%r9d
   40f18:	ba 96 49 04 00       	mov    $0x44996,%edx
   40f1d:	4c 0f 44 ca          	cmove  %rdx,%r9
                ? "protection problem" : "missing page";
   40f21:	a8 01                	test   $0x1,%al
   40f23:	b9 9b 49 04 00       	mov    $0x4499b,%ecx
   40f28:	ba ae 49 04 00       	mov    $0x449ae,%edx
   40f2d:	48 0f 44 ca          	cmove  %rdx,%rcx
        if (!(regs->reg_errcode & PFERR_USER)) {
   40f31:	a8 04                	test   $0x4,%al
   40f33:	74 42                	je     40f77 <exception(regstate*)+0xe8>
        console_printf(CPOS(24, 0), 0x0C00,
   40f35:	48 8b 05 c4 12 01 00 	mov    0x112c4(%rip),%rax        # 52200 <current>
   40f3c:	8b 40 08             	mov    0x8(%rax),%eax
   40f3f:	ff b3 a8 00 00 00    	pushq  0xa8(%rbx)
   40f45:	51                   	push   %rcx
   40f46:	49 89 f0             	mov    %rsi,%r8
   40f49:	89 c1                	mov    %eax,%ecx
   40f4b:	ba 78 4a 04 00       	mov    $0x44a78,%edx
   40f50:	be 00 0c 00 00       	mov    $0xc00,%esi
   40f55:	bf 80 07 00 00       	mov    $0x780,%edi
   40f5a:	b8 00 00 00 00       	mov    $0x0,%eax
   40f5f:	e8 8d 39 00 00       	callq  448f1 <console_printf(int, int, char const*, ...)>
        current->state = P_BROKEN;
   40f64:	48 8b 05 95 12 01 00 	mov    0x11295(%rip),%rax        # 52200 <current>
   40f6b:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%rax)
        schedule();
   40f72:	e8 64 fe ff ff       	callq  40ddb <schedule()>
            panic("Kernel page fault for %p (%s %s, rip=%p)!\n",
   40f77:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
   40f7e:	4c 89 ca             	mov    %r9,%rdx
   40f81:	bf 48 4a 04 00       	mov    $0x44a48,%edi
   40f86:	b8 00 00 00 00       	mov    $0x0,%eax
   40f8b:	e8 e7 20 00 00       	callq  43077 <panic(char const*, ...)>
        panic("Unexpected exception %d!\n", regs->reg_intno);
   40f90:	bf bb 49 04 00       	mov    $0x449bb,%edi
   40f95:	b8 00 00 00 00       	mov    $0x0,%eax
   40f9a:	e8 d8 20 00 00       	callq  43077 <panic(char const*, ...)>

0000000000040f9f <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)>:

// Function copied from lab5 to copy kernel_pagetable's mappings for the individual process page tables
void copy_mappings(x86_64_pagetable* dst, x86_64_pagetable* src) {
   40f9f:	f3 0f 1e fa          	endbr64 
   40fa3:	55                   	push   %rbp
   40fa4:	48 89 e5             	mov    %rsp,%rbp
   40fa7:	41 55                	push   %r13
   40fa9:	41 54                	push   %r12
   40fab:	53                   	push   %rbx
   40fac:	48 83 ec 48          	sub    $0x48,%rsp
   40fb0:	48 89 f3             	mov    %rsi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40fb3:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
   40fb7:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   40fbb:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%rbp)
   40fc2:	c7 45 d4 ff 0f 00 00 	movl   $0xfff,-0x2c(%rbp)
   40fc9:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
   40fd0:	00 
    real_find(va);
   40fd1:	be 00 00 00 00       	mov    $0x0,%esi
   40fd6:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   40fda:	e8 47 0d 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40fdf:	48 89 5d a0          	mov    %rbx,-0x60(%rbp)
   40fe3:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   40fe7:	c7 45 b0 03 00 00 00 	movl   $0x3,-0x50(%rbp)
   40fee:	c7 45 b4 ff 0f 00 00 	movl   $0xfff,-0x4c(%rbp)
   40ff5:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
   40ffc:	00 
    real_find(va);
   40ffd:	be 00 00 00 00       	mov    $0x0,%esi
   41002:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
   41006:	e8 1b 0d 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
}
inline vmiter::vmiter(const proc* p, uintptr_t va)
    : vmiter(p->pagetable, va) {
}
inline uintptr_t vmiter::va() const {
    return va_;
   4100b:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
    // to the same physical address with the same permissions.

    // Initialize an iterator for dst
    vmiter dst_iter = vmiter(dst, 0);

    for (vmiter src_iter(src, 0); src_iter.va() < PROC_START_ADDR; src_iter += PAGESIZE) {
   4100f:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   41016:	0f 87 d3 00 00 00    	ja     410ef <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x150>
        if (level_ > 0) {
            pa &= ~0x1000UL;
        }
        return pa + (va_ & pageoffmask(level_));
    } else {
        return -1;
   4101c:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
            pa &= ~0x1000UL;
   41023:	48 bb 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rbx
   4102a:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4102d:	49 bd 00 f0 ff ff ff 	movabs $0xffffffffff000,%r13
   41034:	ff 0f 00 
   41037:	eb 71                	jmp    410aa <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x10b>
        if (level_ > 0) {
   41039:	8b 55 b0             	mov    -0x50(%rbp),%edx
            pa &= ~0x1000UL;
   4103c:	48 89 c1             	mov    %rax,%rcx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4103f:	4c 21 e9             	and    %r13,%rcx
   41042:	48 89 c7             	mov    %rax,%rdi
   41045:	48 21 df             	and    %rbx,%rdi
   41048:	85 d2                	test   %edx,%edx
   4104a:	48 0f 4e f9          	cmovle %rcx,%rdi
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   4104e:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   41052:	4c 89 e2             	mov    %r12,%rdx
   41055:	48 d3 e2             	shl    %cl,%rdx
   41058:	48 f7 d2             	not    %rdx
   4105b:	48 21 d6             	and    %rdx,%rsi
   4105e:	48 01 fe             	add    %rdi,%rsi
inline T vmiter::kptr() const {
    return reinterpret_cast<T>(pa());
}
inline uint64_t vmiter::perm() const {
    if (*pep_ & PTE_P) {
        return *pep_ & perm_;
   41061:	48 63 55 b4          	movslq -0x4c(%rbp),%rdx
   41065:	48 21 c2             	and    %rax,%rdx
}
inline void vmiter::next_range() {
    real_find(last_va());
}
inline void vmiter::map(uintptr_t pa, int perm) {
    int r = try_map(pa, perm);
   41068:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   4106c:	e8 b9 0d 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41071:	85 c0                	test   %eax,%eax
   41073:	75 66                	jne    410db <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x13c>
    return find(va_ + delta);
   41075:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   41079:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41080:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   41084:	e8 9d 0c 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return find(va_ + delta);
   41089:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   4108d:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41094:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
   41098:	e8 89 0c 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   4109d:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
   410a1:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   410a8:	77 45                	ja     410ef <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x150>
        // Declare helper variables
        uintptr_t vadd = src_iter.va();
        uintptr_t padd;
        if (src_iter.va() == 0) {
   410aa:	48 85 f6             	test   %rsi,%rsi
   410ad:	74 18                	je     410c7 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x128>
    if (*pep_ & PTE_P) {
   410af:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   410b3:	48 8b 00             	mov    (%rax),%rax
   410b6:	48 89 c2             	mov    %rax,%rdx
   410b9:	83 e2 01             	and    $0x1,%edx
   410bc:	0f 85 77 ff ff ff    	jne    41039 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x9a>
        return -1;
   410c2:	4c 89 e6             	mov    %r12,%rsi
   410c5:	eb a1                	jmp    41068 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0xc9>
    if (*pep_ & PTE_P) {
   410c7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   410cb:	48 8b 00             	mov    (%rax),%rax
   410ce:	48 89 c2             	mov    %rax,%rdx
   410d1:	83 e2 01             	and    $0x1,%edx
   410d4:	75 8b                	jne    41061 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0xc2>
            padd = 0;
   410d6:	48 89 d6             	mov    %rdx,%rsi
   410d9:	eb 8d                	jmp    41068 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0xc9>
    assert(r == 0);
   410db:	ba d5 49 04 00       	mov    $0x449d5,%edx
   410e0:	be b1 00 00 00       	mov    $0xb1,%esi
   410e5:	bf dc 49 04 00       	mov    $0x449dc,%edi
   410ea:	e8 9d 15 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
        is_writable, is_accessible); */
        
        // Increment dst_iter
        dst_iter += PAGESIZE;
    }
}
   410ef:	48 83 c4 48          	add    $0x48,%rsp
   410f3:	5b                   	pop    %rbx
   410f4:	41 5c                	pop    %r12
   410f6:	41 5d                	pop    %r13
   410f8:	5d                   	pop    %rbp
   410f9:	c3                   	retq   

00000000000410fa <process_setup(int, char const*)>:
void process_setup(pid_t pid, const char* program_name) {
   410fa:	55                   	push   %rbp
   410fb:	48 89 e5             	mov    %rsp,%rbp
   410fe:	41 57                	push   %r15
   41100:	41 56                	push   %r14
   41102:	41 55                	push   %r13
   41104:	41 54                	push   %r12
   41106:	53                   	push   %rbx
   41107:	48 83 ec 48          	sub    $0x48,%rsp
   4110b:	41 89 ff             	mov    %edi,%r15d
   4110e:	49 89 f4             	mov    %rsi,%r12
    init_process(&ptable[pid], 0);
   41111:	4c 63 ef             	movslq %edi,%r13
   41114:	4b 8d 5c 6d 00       	lea    0x0(%r13,%r13,2),%rbx
   41119:	48 c1 e3 02          	shl    $0x2,%rbx
   4111d:	4a 8d 3c 2b          	lea    (%rbx,%r13,1),%rdi
   41121:	48 c1 e7 04          	shl    $0x4,%rdi
   41125:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
   4112c:	be 00 00 00 00       	mov    $0x0,%esi
   41131:	e8 25 11 00 00       	callq  4225b <init_process(proc*, int)>
    ptable[pid].pagetable = (x86_64_pagetable*) kalloc(PAGESIZE); 
   41136:	bf 00 10 00 00       	mov    $0x1000,%edi
   4113b:	e8 24 fa ff ff       	callq  40b64 <kalloc(unsigned long)>
   41140:	48 89 c7             	mov    %rax,%rdi
   41143:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
   41147:	48 c1 e0 04          	shl    $0x4,%rax
   4114b:	48 89 b8 20 22 05 00 	mov    %rdi,0x52220(%rax)
    memset(ptable[pid].pagetable, 0, PAGESIZE);
   41152:	ba 00 10 00 00       	mov    $0x1000,%edx
   41157:	be 00 00 00 00       	mov    $0x0,%esi
   4115c:	e8 8c 2c 00 00       	callq  43ded <memset>
    copy_mappings(ptable[pid].pagetable, kernel_pagetable);
   41161:	4c 01 eb             	add    %r13,%rbx
   41164:	48 c1 e3 04          	shl    $0x4,%rbx
   41168:	be 00 40 05 00       	mov    $0x54000,%esi
   4116d:	48 8b bb 20 22 05 00 	mov    0x52220(%rbx),%rdi
   41174:	e8 26 fe ff ff       	callq  40f9f <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)>
    program_loader loader(program_name);
   41179:	4c 89 e6             	mov    %r12,%rsi
   4117c:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41180:	e8 8b 21 00 00       	callq  43310 <program_loader::program_loader(char const*)>
    for (loader.reset(); loader.present(); ++loader) {
   41185:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41189:	e8 ee 20 00 00       	callq  4327c <program_loader::reset()>
                vmiter(ptable[pid].pagetable, a).map(padd, PTE_P | PTE_U);
   4118e:	4d 89 ee             	mov    %r13,%r14
   41191:	4f 8d 6c 6d 00       	lea    0x0(%r13,%r13,2),%r13
   41196:	49 c1 e5 02          	shl    $0x2,%r13
   4119a:	e9 1d 01 00 00       	jmpq   412bc <process_setup(int, char const*)+0x1c2>
   4119f:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   411a4:	48 c1 e0 04          	shl    $0x4,%rax
   411a8:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   411af:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   411b3:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
   411b7:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   411be:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   411c5:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   411cc:	00 
    real_find(va);
   411cd:	4c 89 e6             	mov    %r12,%rsi
   411d0:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   411d4:	e8 4d 0b 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    int r = try_map(pa, perm);
   411d9:	ba 05 00 00 00       	mov    $0x5,%edx
   411de:	48 89 de             	mov    %rbx,%rsi
   411e1:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   411e5:	e8 40 0c 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   411ea:	85 c0                	test   %eax,%eax
   411ec:	0f 85 ad 00 00 00    	jne    4129f <process_setup(int, char const*)+0x1a5>
             a += PAGESIZE) {
   411f2:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
             a < loader.va() + loader.size();
   411f9:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   411fd:	e8 b2 1f 00 00       	callq  431b4 <program_loader::va() const>
   41202:	48 89 c3             	mov    %rax,%rbx
   41205:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41209:	e8 be 1f 00 00       	callq  431cc <program_loader::size() const>
   4120e:	48 01 c3             	add    %rax,%rbx
   41211:	4c 39 e3             	cmp    %r12,%rbx
   41214:	0f 86 99 00 00 00    	jbe    412b3 <process_setup(int, char const*)+0x1b9>
            uintptr_t padd = (uintptr_t) kalloc(PAGESIZE);
   4121a:	bf 00 10 00 00       	mov    $0x1000,%edi
   4121f:	e8 40 f9 ff ff       	callq  40b64 <kalloc(unsigned long)>
   41224:	48 89 c3             	mov    %rax,%rbx
            if (loader.writable()) {
   41227:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4122b:	e8 f8 1f 00 00       	callq  43228 <program_loader::writable() const>
   41230:	84 c0                	test   %al,%al
   41232:	0f 84 67 ff ff ff    	je     4119f <process_setup(int, char const*)+0xa5>
                vmiter(ptable[pid].pagetable, a).map(padd, PTE_P | PTE_W | PTE_U);
   41238:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   4123d:	48 c1 e0 04          	shl    $0x4,%rax
   41241:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41248:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   4124c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
   41250:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   41257:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   4125e:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   41265:	00 
    real_find(va);
   41266:	4c 89 e6             	mov    %r12,%rsi
   41269:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   4126d:	e8 b4 0a 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    int r = try_map(pa, perm);
   41272:	ba 07 00 00 00       	mov    $0x7,%edx
   41277:	48 89 de             	mov    %rbx,%rsi
   4127a:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   4127e:	e8 a7 0b 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41283:	85 c0                	test   %eax,%eax
   41285:	0f 84 67 ff ff ff    	je     411f2 <process_setup(int, char const*)+0xf8>
   4128b:	ba d5 49 04 00       	mov    $0x449d5,%edx
   41290:	be b1 00 00 00       	mov    $0xb1,%esi
   41295:	bf dc 49 04 00       	mov    $0x449dc,%edi
   4129a:	e8 ed 13 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
   4129f:	ba d5 49 04 00       	mov    $0x449d5,%edx
   412a4:	be b1 00 00 00       	mov    $0xb1,%esi
   412a9:	bf dc 49 04 00       	mov    $0x449dc,%edi
   412ae:	e8 d9 13 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
    for (loader.reset(); loader.present(); ++loader) {
   412b3:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   412b7:	e8 9e 1f 00 00       	callq  4325a <program_loader::operator++()>
   412bc:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   412c0:	e8 53 1f 00 00       	callq  43218 <program_loader::present() const>
   412c5:	84 c0                	test   %al,%al
   412c7:	74 17                	je     412e0 <process_setup(int, char const*)+0x1e6>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
   412c9:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   412cd:	e8 e2 1e 00 00       	callq  431b4 <program_loader::va() const>
   412d2:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
   412d8:	49 89 c4             	mov    %rax,%r12
   412db:	e9 19 ff ff ff       	jmpq   411f9 <process_setup(int, char const*)+0xff>
    for (loader.reset(); loader.present(); ++loader) {
   412e0:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   412e4:	e8 93 1f 00 00       	callq  4327c <program_loader::reset()>
        void* padd = (void*) vmiter(ptable[pid].pagetable, loader.va()).pa();
   412e9:	4d 63 ef             	movslq %r15d,%r13
   412ec:	4f 8d 64 6d 00       	lea    0x0(%r13,%r13,2),%r12
   412f1:	49 c1 e4 02          	shl    $0x2,%r12
   412f5:	eb 5d                	jmp    41354 <process_setup(int, char const*)+0x25a>
   412f7:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   412fb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41302:	48 d3 e0             	shl    %cl,%rax
   41305:	48 f7 d0             	not    %rax
   41308:	48 23 45 b0          	and    -0x50(%rbp),%rax
   4130c:	48 01 c3             	add    %rax,%rbx
        memset(padd, 0, loader.size());
   4130f:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41313:	e8 b4 1e 00 00       	callq  431cc <program_loader::size() const>
   41318:	48 89 c2             	mov    %rax,%rdx
   4131b:	be 00 00 00 00       	mov    $0x0,%esi
   41320:	48 89 df             	mov    %rbx,%rdi
   41323:	e8 c5 2a 00 00       	callq  43ded <memset>
        memcpy(padd, loader.data(), loader.data_size());
   41328:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4132c:	e8 cf 1e 00 00       	callq  43200 <program_loader::data_size() const>
   41331:	49 89 c6             	mov    %rax,%r14
   41334:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41338:	e8 a7 1e 00 00       	callq  431e4 <program_loader::data() const>
   4133d:	48 89 c6             	mov    %rax,%rsi
   41340:	4c 89 f2             	mov    %r14,%rdx
   41343:	48 89 df             	mov    %rbx,%rdi
   41346:	e8 31 2a 00 00       	callq  43d7c <memcpy>
    for (loader.reset(); loader.present(); ++loader) {
   4134b:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4134f:	e8 06 1f 00 00       	callq  4325a <program_loader::operator++()>
   41354:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41358:	e8 bb 1e 00 00       	callq  43218 <program_loader::present() const>
   4135d:	84 c0                	test   %al,%al
   4135f:	0f 84 83 00 00 00    	je     413e8 <process_setup(int, char const*)+0x2ee>
        void* padd = (void*) vmiter(ptable[pid].pagetable, loader.va()).pa();
   41365:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41369:	e8 46 1e 00 00       	callq  431b4 <program_loader::va() const>
   4136e:	48 89 c6             	mov    %rax,%rsi
   41371:	4b 8d 04 2c          	lea    (%r12,%r13,1),%rax
   41375:	48 c1 e0 04          	shl    $0x4,%rax
   41379:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41380:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   41384:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
   41388:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   4138f:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   41396:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   4139d:	00 
    real_find(va);
   4139e:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   413a2:	e8 7f 09 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   413a7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
   413ab:	48 8b 10             	mov    (%rax),%rdx
        return -1;
   413ae:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
    if (*pep_ & PTE_P) {
   413b5:	f6 c2 01             	test   $0x1,%dl
   413b8:	0f 84 51 ff ff ff    	je     4130f <process_setup(int, char const*)+0x215>
        if (level_ > 0) {
   413be:	8b 45 a8             	mov    -0x58(%rbp),%eax
            pa &= ~0x1000UL;
   413c1:	48 bb 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rbx
   413c8:	ff 0f 00 
   413cb:	48 21 d3             	and    %rdx,%rbx
        if (level_ > 0) {
   413ce:	85 c0                	test   %eax,%eax
   413d0:	0f 8f 21 ff ff ff    	jg     412f7 <process_setup(int, char const*)+0x1fd>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   413d6:	48 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%rbx
   413dd:	ff 0f 00 
   413e0:	48 21 d3             	and    %rdx,%rbx
   413e3:	e9 0f ff ff ff       	jmpq   412f7 <process_setup(int, char const*)+0x1fd>
    ptable[pid].regs.reg_rip = loader.entry();
   413e8:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   413ec:	e8 53 1e 00 00       	callq  43244 <program_loader::entry() const>
   413f1:	48 89 c2             	mov    %rax,%rdx
   413f4:	4d 63 ef             	movslq %r15d,%r13
   413f7:	4b 8d 5c 6d 00       	lea    0x0(%r13,%r13,2),%rbx
   413fc:	48 c1 e3 02          	shl    $0x2,%rbx
   41400:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
   41404:	48 c1 e0 04          	shl    $0x4,%rax
   41408:	48 89 90 c8 22 05 00 	mov    %rdx,0x522c8(%rax)
    uintptr_t padd = (uintptr_t) kalloc(PAGESIZE);
   4140f:	bf 00 10 00 00       	mov    $0x1000,%edi
   41414:	e8 4b f7 ff ff       	callq  40b64 <kalloc(unsigned long)>
   41419:	49 89 c4             	mov    %rax,%r12
    vmiter(ptable[pid].pagetable, stack_addr).map(padd, PTE_P | PTE_W | PTE_U);
   4141c:	4c 01 eb             	add    %r13,%rbx
   4141f:	48 c1 e3 04          	shl    $0x4,%rbx
   41423:	48 8b 83 20 22 05 00 	mov    0x52220(%rbx),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4142a:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   4142e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
   41432:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   41439:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   41440:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   41447:	00 
    real_find(va);
   41448:	be 00 f0 2f 00       	mov    $0x2ff000,%esi
   4144d:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   41451:	e8 d0 08 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    int r = try_map(pa, perm);
   41456:	ba 07 00 00 00       	mov    $0x7,%edx
   4145b:	4c 89 e6             	mov    %r12,%rsi
   4145e:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   41462:	e8 c3 09 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41467:	85 c0                	test   %eax,%eax
   41469:	75 37                	jne    414a2 <process_setup(int, char const*)+0x3a8>
    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;
   4146b:	4d 63 ff             	movslq %r15d,%r15
   4146e:	4b 8d 04 7f          	lea    (%r15,%r15,2),%rax
   41472:	48 c1 e0 02          	shl    $0x2,%rax
   41476:	4a 8d 14 38          	lea    (%rax,%r15,1),%rdx
   4147a:	48 c1 e2 04          	shl    $0x4,%rdx
   4147e:	48 c7 82 e0 22 05 00 	movq   $0x300000,0x522e0(%rdx)
   41485:	00 00 30 00 
    ptable[pid].state = P_RUNNABLE;
   41489:	c7 82 2c 22 05 00 01 	movl   $0x1,0x5222c(%rdx)
   41490:	00 00 00 
}
   41493:	48 83 c4 48          	add    $0x48,%rsp
   41497:	5b                   	pop    %rbx
   41498:	41 5c                	pop    %r12
   4149a:	41 5d                	pop    %r13
   4149c:	41 5e                	pop    %r14
   4149e:	41 5f                	pop    %r15
   414a0:	5d                   	pop    %rbp
   414a1:	c3                   	retq   
   414a2:	ba d5 49 04 00       	mov    $0x449d5,%edx
   414a7:	be b1 00 00 00       	mov    $0xb1,%esi
   414ac:	bf dc 49 04 00       	mov    $0x449dc,%edi
   414b1:	e8 d6 11 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>

00000000000414b6 <kernel(char const*)>:
void kernel(const char* command) {
   414b6:	f3 0f 1e fa          	endbr64 
   414ba:	55                   	push   %rbp
   414bb:	48 89 e5             	mov    %rsp,%rbp
   414be:	53                   	push   %rbx
   414bf:	48 83 ec 48          	sub    $0x48,%rsp
   414c3:	48 89 fb             	mov    %rdi,%rbx
    init_hardware();
   414c6:	e8 80 12 00 00       	callq  4274b <init_hardware()>
    log_printf("Starting WeensyOS\n");
   414cb:	bf e8 49 04 00       	mov    $0x449e8,%edi
   414d0:	b8 00 00 00 00       	mov    $0x0,%eax
   414d5:	e8 87 10 00 00       	callq  42561 <log_printf(char const*, ...)>
	__atomic_store_n(&_M_i, __i, int(__m));
   414da:	48 c7 05 43 1a 01 00 	movq   $0x1,0x11a43(%rip)        # 52f28 <ticks>
   414e1:	01 00 00 00 
   414e5:	0f ae f0             	mfence 
    init_timer(HZ);
   414e8:	bf 64 00 00 00       	mov    $0x64,%edi
   414ed:	e8 c5 0c 00 00       	callq  421b7 <init_timer(int)>
    console_clear();
   414f2:	e8 cc 31 00 00       	callq  446c3 <console_clear()>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   414f7:	48 c7 45 b8 00 40 05 	movq   $0x54000,-0x48(%rbp)
   414fe:	00 
   414ff:	48 c7 45 c0 00 40 05 	movq   $0x54000,-0x40(%rbp)
   41506:	00 
   41507:	c7 45 c8 03 00 00 00 	movl   $0x3,-0x38(%rbp)
   4150e:	c7 45 cc ff 0f 00 00 	movl   $0xfff,-0x34(%rbp)
   41515:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   4151c:	00 
    real_find(va);
   4151d:	be 00 00 00 00       	mov    $0x0,%esi
   41522:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41526:	e8 fb 07 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   4152b:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   4152f:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   41536:	0f 86 e7 00 00 00    	jbe    41623 <kernel(char const*)+0x16d>
    for (pid_t i = 0; i < NPROC; i++) {
   4153c:	ba 28 22 05 00       	mov    $0x52228,%edx
   41541:	b8 00 00 00 00       	mov    $0x0,%eax
        ptable[i].pid = i;
   41546:	89 02                	mov    %eax,(%rdx)
        ptable[i].state = P_FREE;
   41548:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
    for (pid_t i = 0; i < NPROC; i++) {
   4154f:	83 c0 01             	add    $0x1,%eax
   41552:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   41559:	83 f8 10             	cmp    $0x10,%eax
   4155c:	75 e8                	jne    41546 <kernel(char const*)+0x90>
    if (command && program_loader(command).present()) {
   4155e:	48 85 db             	test   %rbx,%rbx
   41561:	74 1d                	je     41580 <kernel(char const*)+0xca>
   41563:	48 89 de             	mov    %rbx,%rsi
   41566:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
   4156a:	e8 a1 1d 00 00       	callq  43310 <program_loader::program_loader(char const*)>
   4156f:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
   41573:	e8 a0 1c 00 00       	callq  43218 <program_loader::present() const>
   41578:	84 c0                	test   %al,%al
   4157a:	0f 85 f4 00 00 00    	jne    41674 <kernel(char const*)+0x1be>
        process_setup(1, "allocator");
   41580:	be fb 49 04 00       	mov    $0x449fb,%esi
   41585:	bf 01 00 00 00       	mov    $0x1,%edi
   4158a:	e8 6b fb ff ff       	callq  410fa <process_setup(int, char const*)>
        process_setup(2, "allocator2");
   4158f:	be 05 4a 04 00       	mov    $0x44a05,%esi
   41594:	bf 02 00 00 00       	mov    $0x2,%edi
   41599:	e8 5c fb ff ff       	callq  410fa <process_setup(int, char const*)>
        process_setup(3, "allocator3");
   4159e:	be 10 4a 04 00       	mov    $0x44a10,%esi
   415a3:	bf 03 00 00 00       	mov    $0x3,%edi
   415a8:	e8 4d fb ff ff       	callq  410fa <process_setup(int, char const*)>
        process_setup(4, "allocator4");
   415ad:	be 1b 4a 04 00       	mov    $0x44a1b,%esi
   415b2:	bf 04 00 00 00       	mov    $0x4,%edi
   415b7:	e8 3e fb ff ff       	callq  410fa <process_setup(int, char const*)>
    run(&ptable[1]);
   415bc:	bf f0 22 05 00       	mov    $0x522f0,%edi
   415c1:	e8 f7 f6 ff ff       	callq  40cbd <run(proc*)>
    int r = try_map(pa, perm);
   415c6:	ba 00 00 00 00       	mov    $0x0,%edx
   415cb:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   415cf:	e8 56 08 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   415d4:	85 c0                	test   %eax,%eax
   415d6:	74 26                	je     415fe <kernel(char const*)+0x148>
   415d8:	ba d5 49 04 00       	mov    $0x449d5,%edx
   415dd:	be b1 00 00 00       	mov    $0xb1,%esi
   415e2:	bf dc 49 04 00       	mov    $0x449dc,%edi
   415e7:	e8 a0 10 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
    int r = try_map(pa, perm);
   415ec:	ba 07 00 00 00       	mov    $0x7,%edx
   415f1:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   415f5:	e8 30 08 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   415fa:	85 c0                	test   %eax,%eax
   415fc:	75 62                	jne    41660 <kernel(char const*)+0x1aa>
    return find(va_ + delta);
   415fe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   41602:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41609:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4160d:	e8 14 07 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   41612:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   41616:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4161d:	0f 87 19 ff ff ff    	ja     4153c <kernel(char const*)+0x86>
        if (it.va() == 0) {
   41623:	48 85 f6             	test   %rsi,%rsi
   41626:	74 9e                	je     415c6 <kernel(char const*)+0x110>
        else if (it.va() < PROC_START_ADDR && it.va() != CONSOLE_ADDR) {
   41628:	48 81 fe 00 80 0b 00 	cmp    $0xb8000,%rsi
   4162f:	74 bb                	je     415ec <kernel(char const*)+0x136>
   41631:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   41638:	77 b2                	ja     415ec <kernel(char const*)+0x136>
    int r = try_map(pa, perm);
   4163a:	ba 03 00 00 00       	mov    $0x3,%edx
   4163f:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41643:	e8 e2 07 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41648:	85 c0                	test   %eax,%eax
   4164a:	74 b2                	je     415fe <kernel(char const*)+0x148>
   4164c:	ba d5 49 04 00       	mov    $0x449d5,%edx
   41651:	be b1 00 00 00       	mov    $0xb1,%esi
   41656:	bf dc 49 04 00       	mov    $0x449dc,%edi
   4165b:	e8 2c 10 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
   41660:	ba d5 49 04 00       	mov    $0x449d5,%edx
   41665:	be b1 00 00 00       	mov    $0xb1,%esi
   4166a:	bf dc 49 04 00       	mov    $0x449dc,%edi
   4166f:	e8 18 10 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
        process_setup(1, command);
   41674:	48 89 de             	mov    %rbx,%rsi
   41677:	bf 01 00 00 00       	mov    $0x1,%edi
   4167c:	e8 79 fa ff ff       	callq  410fa <process_setup(int, char const*)>
   41681:	e9 36 ff ff ff       	jmpq   415bc <kernel(char const*)+0x106>

0000000000041686 <free_pages(x86_64_pagetable*)>:

// free_pages()
//    Frees the pages for the current process. This differs
//    from syscall_exit() because it doesn't set the state to P_FREE.
void free_pages(x86_64_pagetable* pt) {
   41686:	f3 0f 1e fa          	endbr64 
   4168a:	55                   	push   %rbp
   4168b:	48 89 e5             	mov    %rsp,%rbp
   4168e:	41 56                	push   %r14
   41690:	41 55                	push   %r13
   41692:	41 54                	push   %r12
   41694:	53                   	push   %rbx
   41695:	48 83 ec 20          	sub    $0x20,%rsp
   41699:	48 89 fb             	mov    %rdi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4169c:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
   416a0:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   416a4:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%rbp)
   416ab:	c7 45 d4 ff 0f 00 00 	movl   $0xfff,-0x2c(%rbp)
   416b2:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
   416b9:	00 
    real_find(va);
   416ba:	be 00 00 00 00       	mov    $0x0,%esi
   416bf:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   416c3:	e8 5e 06 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   416c8:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi

    // log_printf("Began a free_pages call \n");
    // Parse through the pages of the L4 table and free the correct pages
    for (vmiter it(pt, 0); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   416cc:	48 81 ff ff ff 2f 00 	cmp    $0x2fffff,%rdi
   416d3:	0f 87 98 00 00 00    	ja     41771 <free_pages(x86_64_pagetable*)+0xeb>
        return -1;
   416d9:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
            pa &= ~0x1000UL;
   416e0:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   416e7:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   416ea:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   416f1:	ff 0f 00 
   416f4:	eb 51                	jmp    41747 <free_pages(x86_64_pagetable*)+0xc1>
        if (level_ > 0) {
   416f6:	8b 4d d0             	mov    -0x30(%rbp),%ecx
            pa &= ~0x1000UL;
   416f9:	48 89 d0             	mov    %rdx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   416fc:	4c 21 f0             	and    %r14,%rax
   416ff:	4c 21 ea             	and    %r13,%rdx
   41702:	85 c9                	test   %ecx,%ecx
   41704:	48 0f 4f c2          	cmovg  %rdx,%rax
   41708:	48 89 c6             	mov    %rax,%rsi
   4170b:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4170f:	4c 89 e0             	mov    %r12,%rax
   41712:	48 d3 e0             	shl    %cl,%rax
   41715:	48 f7 d0             	not    %rax
   41718:	48 21 c7             	and    %rax,%rdi
   4171b:	48 01 fe             	add    %rdi,%rsi
        // If the page in the L4 table is user accessible and not the console page then free it
        if (it.user() && it.va() != CONSOLE_ADDR) {
            kfree(it.kptr());
   4171e:	48 89 f7             	mov    %rsi,%rdi
   41721:	e8 b9 f4 ff ff       	callq  40bdf <kfree(void*)>
    return find(va_ + delta);
   41726:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   4172a:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41731:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   41735:	e8 ec 05 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   4173a:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    for (vmiter it(pt, 0); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   4173e:	48 81 ff ff ff 2f 00 	cmp    $0x2fffff,%rdi
   41745:	77 2a                	ja     41771 <free_pages(x86_64_pagetable*)+0xeb>
    return (*pep_ & perm_ & p) == p;
   41747:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   4174b:	48 8b 10             	mov    (%rax),%rdx
   4174e:	48 63 45 d4          	movslq -0x2c(%rbp),%rax
   41752:	48 21 d0             	and    %rdx,%rax
   41755:	83 e0 05             	and    $0x5,%eax
        if (it.user() && it.va() != CONSOLE_ADDR) {
   41758:	48 83 f8 05          	cmp    $0x5,%rax
   4175c:	75 c8                	jne    41726 <free_pages(x86_64_pagetable*)+0xa0>
   4175e:	48 81 ff 00 80 0b 00 	cmp    $0xb8000,%rdi
   41765:	74 bf                	je     41726 <free_pages(x86_64_pagetable*)+0xa0>
        return -1;
   41767:	4c 89 e6             	mov    %r12,%rsi
    if (*pep_ & PTE_P) {
   4176a:	f6 c2 01             	test   $0x1,%dl
   4176d:	75 87                	jne    416f6 <free_pages(x86_64_pagetable*)+0x70>
   4176f:	eb ad                	jmp    4171e <free_pages(x86_64_pagetable*)+0x98>
inline int vmiter::try_map(void* kp, int perm) {
    return try_map((uintptr_t) kp, perm);
}

inline ptiter::ptiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt) {
   41771:	48 89 5d c0          	mov    %rbx,-0x40(%rbp)
    go(va);
   41775:	be 00 00 00 00       	mov    $0x0,%esi
   4177a:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   4177e:	e8 41 09 00 00       	callq  420c4 <ptiter::go(unsigned long)>
        }
    }

    // Parse through the pages of the L1-3 tables and free the correct pages
    for (ptiter it(pt); it.active(); it.next()) {
   41783:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   4178a:	ff 00 00 
   4178d:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
   41791:	77 30                	ja     417c3 <free_pages(x86_64_pagetable*)+0x13d>
}
inline void ptiter::next() {
    down(true);
}
inline uintptr_t ptiter::pa() const {
    return *pep_ & PTE_PAMASK;
   41793:	49 bd 00 f0 ff ff ff 	movabs $0xffffffffff000,%r13
   4179a:	ff 0f 00 
   4179d:	49 89 c4             	mov    %rax,%r12
   417a0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   417a4:	4c 89 ef             	mov    %r13,%rdi
   417a7:	48 23 38             	and    (%rax),%rdi
            kfree(it.kptr());
   417aa:	e8 30 f4 ff ff       	callq  40bdf <kfree(void*)>
    down(true);
   417af:	be 01 00 00 00       	mov    $0x1,%esi
   417b4:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   417b8:	e8 05 08 00 00       	callq  41fc2 <ptiter::down(bool)>
    for (ptiter it(pt); it.active(); it.next()) {
   417bd:	4c 39 65 d8          	cmp    %r12,-0x28(%rbp)
   417c1:	76 dd                	jbe    417a0 <free_pages(x86_64_pagetable*)+0x11a>
    }
    
    // Free the page holding the page table
    kfree((void*) pt);
   417c3:	48 89 df             	mov    %rbx,%rdi
   417c6:	e8 14 f4 ff ff       	callq  40bdf <kfree(void*)>
    // log_printf("Left the free_pages call successfully! \n");
   417cb:	48 83 c4 20          	add    $0x20,%rsp
   417cf:	5b                   	pop    %rbx
   417d0:	41 5c                	pop    %r12
   417d2:	41 5d                	pop    %r13
   417d4:	41 5e                	pop    %r14
   417d6:	5d                   	pop    %rbp
   417d7:	c3                   	retq   

00000000000417d8 <syscall_fork()>:
pid_t syscall_fork() {
   417d8:	f3 0f 1e fa          	endbr64 
   417dc:	55                   	push   %rbp
   417dd:	48 89 e5             	mov    %rsp,%rbp
   417e0:	41 57                	push   %r15
   417e2:	41 56                	push   %r14
   417e4:	41 55                	push   %r13
   417e6:	41 54                	push   %r12
   417e8:	53                   	push   %rbx
   417e9:	48 83 ec 68          	sub    $0x68,%rsp
    for (int i = 1; i < NPROC; i++) {
   417ed:	ba fc 22 05 00       	mov    $0x522fc,%edx
   417f2:	b8 01 00 00 00       	mov    $0x1,%eax
        if (ptable[i].state == P_FREE) {
   417f7:	44 8b 32             	mov    (%rdx),%r14d
   417fa:	45 85 f6             	test   %r14d,%r14d
   417fd:	74 1b                	je     4181a <syscall_fork()+0x42>
    for (int i = 1; i < NPROC; i++) {
   417ff:	83 c0 01             	add    $0x1,%eax
   41802:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   41809:	83 f8 10             	cmp    $0x10,%eax
   4180c:	75 e9                	jne    417f7 <syscall_fork()+0x1f>
    if (free_pid == -1) {return -1;}
   4180e:	c7 45 84 ff ff ff ff 	movl   $0xffffffff,-0x7c(%rbp)
   41815:	e9 26 03 00 00       	jmpq   41b40 <syscall_fork()+0x368>
            free_pid = ptable[i].pid;
   4181a:	48 98                	cltq   
   4181c:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41820:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41824:	48 c1 e0 04          	shl    $0x4,%rax
   41828:	8b 80 28 22 05 00    	mov    0x52228(%rax),%eax
   4182e:	89 45 84             	mov    %eax,-0x7c(%rbp)
    if (free_pid == -1) {return -1;}
   41831:	83 f8 ff             	cmp    $0xffffffff,%eax
   41834:	0f 84 06 03 00 00    	je     41b40 <syscall_fork()+0x368>
    x86_64_pagetable* temp_table = (x86_64_pagetable*) kalloc(PAGESIZE);
   4183a:	bf 00 10 00 00       	mov    $0x1000,%edi
   4183f:	e8 20 f3 ff ff       	callq  40b64 <kalloc(unsigned long)>
   41844:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    if (temp_table == 0) {
   4184b:	48 89 c3             	mov    %rax,%rbx
   4184e:	48 85 c0             	test   %rax,%rax
   41851:	0f 84 fb 02 00 00    	je     41b52 <syscall_fork()+0x37a>
    memset(temp_table, 0, PAGESIZE);
   41857:	ba 00 10 00 00       	mov    $0x1000,%edx
   4185c:	be 00 00 00 00       	mov    $0x0,%esi
   41861:	48 89 c7             	mov    %rax,%rdi
   41864:	e8 84 25 00 00       	callq  43ded <memset>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41869:	48 89 5d b0          	mov    %rbx,-0x50(%rbp)
   4186d:	48 89 5d b8          	mov    %rbx,-0x48(%rbp)
   41871:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   41878:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   4187f:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   41886:	00 
    real_find(va);
   41887:	be 00 00 00 00       	mov    $0x0,%esi
   4188c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41890:	e8 91 04 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    for (vmiter src_iter(current->pagetable, 0); src_iter.va() < MEMSIZE_VIRTUAL; src_iter += PAGESIZE) {
   41895:	48 8b 05 64 09 01 00 	mov    0x10964(%rip),%rax        # 52200 <current>
   4189c:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4189f:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   418a3:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   418a7:	c7 45 a0 03 00 00 00 	movl   $0x3,-0x60(%rbp)
   418ae:	c7 45 a4 ff 0f 00 00 	movl   $0xfff,-0x5c(%rbp)
   418b5:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   418bc:	00 
    real_find(va);
   418bd:	be 00 00 00 00       	mov    $0x0,%esi
   418c2:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   418c6:	e8 5b 04 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   418cb:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   418cf:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   418d6:	0f 87 ef 01 00 00    	ja     41acb <syscall_fork()+0x2f3>
        return -1;
   418dc:	49 c7 c5 ff ff ff ff 	mov    $0xffffffffffffffff,%r13
            pa &= ~0x1000UL;
   418e3:	49 bc 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r12
   418ea:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   418ed:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   418f4:	ff 0f 00 
   418f7:	eb 54                	jmp    4194d <syscall_fork()+0x175>
    int r = try_map(pa, perm);
   418f9:	ba 00 00 00 00       	mov    $0x0,%edx
   418fe:	be 00 00 00 00       	mov    $0x0,%esi
   41903:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41907:	e8 1e 05 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   4190c:	85 c0                	test   %eax,%eax
   4190e:	0f 85 f3 00 00 00    	jne    41a07 <syscall_fork()+0x22f>
    return find(va_ + delta);
   41914:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   41918:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   4191f:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41923:	e8 fe 03 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return find(va_ + delta);
   41928:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   4192c:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41933:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   41937:	e8 ea 03 00 00       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   4193c:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   41940:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   41947:	0f 87 7e 01 00 00    	ja     41acb <syscall_fork()+0x2f3>
    if (*pep_ & PTE_P) {
   4194d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   41951:	48 8b 00             	mov    (%rax),%rax
   41954:	a8 01                	test   $0x1,%al
   41956:	0f 84 ff 01 00 00    	je     41b5b <syscall_fork()+0x383>
        if (vadd == 0) {
   4195c:	48 85 f6             	test   %rsi,%rsi
   4195f:	74 98                	je     418f9 <syscall_fork()+0x121>
        return *pep_ & perm_;
   41961:	48 63 5d a4          	movslq -0x5c(%rbp),%rbx
   41965:	48 21 c3             	and    %rax,%rbx
        else if (is_accessible && vadd != CONSOLE_ADDR) {
   41968:	f6 c3 04             	test   $0x4,%bl
   4196b:	0f 84 20 02 00 00    	je     41b91 <syscall_fork()+0x3b9>
   41971:	48 81 fe 00 80 0b 00 	cmp    $0xb8000,%rsi
   41978:	0f 84 13 02 00 00    	je     41b91 <syscall_fork()+0x3b9>
            if (!is_writable) { // Read-only, so share the memory page
   4197e:	f6 c3 02             	test   $0x2,%bl
   41981:	0f 85 a5 00 00 00    	jne    41a2c <syscall_fork()+0x254>
        if (level_ > 0) {
   41987:	8b 55 a0             	mov    -0x60(%rbp),%edx
            pa &= ~0x1000UL;
   4198a:	48 89 c1             	mov    %rax,%rcx
   4198d:	4c 21 e1             	and    %r12,%rcx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41990:	48 89 c7             	mov    %rax,%rdi
   41993:	4c 21 ff             	and    %r15,%rdi
   41996:	85 d2                	test   %edx,%edx
   41998:	48 0f 4f f9          	cmovg  %rcx,%rdi
   4199c:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   419a0:	4c 89 ea             	mov    %r13,%rdx
   419a3:	48 d3 e2             	shl    %cl,%rdx
   419a6:	48 f7 d2             	not    %rdx
   419a9:	48 21 d6             	and    %rdx,%rsi
   419ac:	48 01 fe             	add    %rdi,%rsi
                if (dst_iter.try_map(src_iter.pa(), vadd_perms) != -1) {
   419af:	89 da                	mov    %ebx,%edx
   419b1:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   419b5:	e8 70 04 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
   419ba:	83 f8 ff             	cmp    $0xffffffff,%eax
   419bd:	74 5c                	je     41a1b <syscall_fork()+0x243>
    if (*pep_ & PTE_P) {
   419bf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   419c3:	48 8b 10             	mov    (%rax),%rdx
        return -1;
   419c6:	4c 89 e8             	mov    %r13,%rax
    if (*pep_ & PTE_P) {
   419c9:	f6 c2 01             	test   $0x1,%dl
   419cc:	74 29                	je     419f7 <syscall_fork()+0x21f>
        if (level_ > 0) {
   419ce:	8b 4d a0             	mov    -0x60(%rbp),%ecx
            pa &= ~0x1000UL;
   419d1:	48 89 d0             	mov    %rdx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   419d4:	4c 21 f8             	and    %r15,%rax
   419d7:	4c 21 e2             	and    %r12,%rdx
   419da:	85 c9                	test   %ecx,%ecx
   419dc:	48 0f 4f c2          	cmovg  %rdx,%rax
   419e0:	48 89 c6             	mov    %rax,%rsi
   419e3:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   419e7:	4c 89 e8             	mov    %r13,%rax
   419ea:	48 d3 e0             	shl    %cl,%rax
   419ed:	48 f7 d0             	not    %rax
   419f0:	48 23 45 a8          	and    -0x58(%rbp),%rax
   419f4:	48 01 f0             	add    %rsi,%rax
                    pages[src_iter.pa() / PAGESIZE].refcount += 1;
   419f7:	48 c1 e8 0c          	shr    $0xc,%rax
   419fb:	80 80 00 20 05 00 01 	addb   $0x1,0x52000(%rax)
   41a02:	e9 0d ff ff ff       	jmpq   41914 <syscall_fork()+0x13c>
    assert(r == 0);
   41a07:	ba d5 49 04 00       	mov    $0x449d5,%edx
   41a0c:	be b1 00 00 00       	mov    $0xb1,%esi
   41a11:	bf dc 49 04 00       	mov    $0x449dc,%edi
   41a16:	e8 71 0c 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
                    free_pages(temp_table);
   41a1b:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
   41a22:	e8 5f fc ff ff       	callq  41686 <free_pages(x86_64_pagetable*)>
                    return -1;
   41a27:	e9 5c 01 00 00       	jmpq   41b88 <syscall_fork()+0x3b0>
                padd = (uintptr_t) kalloc(PAGESIZE);
   41a2c:	bf 00 10 00 00       	mov    $0x1000,%edi
   41a31:	e8 2e f1 ff ff       	callq  40b64 <kalloc(unsigned long)>
   41a36:	48 89 45 88          	mov    %rax,-0x78(%rbp)
                if (padd == 0) {
   41a3a:	48 85 c0             	test   %rax,%rax
   41a3d:	74 61                	je     41aa0 <syscall_fork()+0x2c8>
                if (dst_iter.try_map(padd, vadd_perms) != -1) {
   41a3f:	89 da                	mov    %ebx,%edx
   41a41:	48 8b 75 88          	mov    -0x78(%rbp),%rsi
   41a45:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41a49:	e8 dc 03 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
   41a4e:	83 f8 ff             	cmp    $0xffffffff,%eax
   41a51:	74 5e                	je     41ab1 <syscall_fork()+0x2d9>
    if (*pep_ & PTE_P) {
   41a53:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   41a57:	48 8b 00             	mov    (%rax),%rax
        return -1;
   41a5a:	4c 89 ee             	mov    %r13,%rsi
    if (*pep_ & PTE_P) {
   41a5d:	a8 01                	test   $0x1,%al
   41a5f:	74 2c                	je     41a8d <syscall_fork()+0x2b5>
        if (level_ > 0) {
   41a61:	8b 4d a0             	mov    -0x60(%rbp),%ecx
            pa &= ~0x1000UL;
   41a64:	48 89 c3             	mov    %rax,%rbx
   41a67:	4c 21 e3             	and    %r12,%rbx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41a6a:	48 89 c6             	mov    %rax,%rsi
   41a6d:	4c 21 fe             	and    %r15,%rsi
   41a70:	85 c9                	test   %ecx,%ecx
   41a72:	48 89 f2             	mov    %rsi,%rdx
   41a75:	48 0f 4f d3          	cmovg  %rbx,%rdx
   41a79:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   41a7d:	4c 89 ee             	mov    %r13,%rsi
   41a80:	48 d3 e6             	shl    %cl,%rsi
   41a83:	48 f7 d6             	not    %rsi
   41a86:	48 23 75 a8          	and    -0x58(%rbp),%rsi
   41a8a:	48 01 d6             	add    %rdx,%rsi
                    memcpy((void*) padd, (void*) src_iter.pa(), PAGESIZE);
   41a8d:	ba 00 10 00 00       	mov    $0x1000,%edx
   41a92:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
   41a96:	e8 e1 22 00 00       	callq  43d7c <memcpy>
   41a9b:	e9 74 fe ff ff       	jmpq   41914 <syscall_fork()+0x13c>
                    free_pages(temp_table);
   41aa0:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
   41aa7:	e8 da fb ff ff       	callq  41686 <free_pages(x86_64_pagetable*)>
                    return -1;
   41aac:	e9 d7 00 00 00       	jmpq   41b88 <syscall_fork()+0x3b0>
                    kfree((void*) padd);
   41ab1:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
   41ab5:	e8 25 f1 ff ff       	callq  40bdf <kfree(void*)>
                    free_pages(temp_table);
   41aba:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
   41ac1:	e8 c0 fb ff ff       	callq  41686 <free_pages(x86_64_pagetable*)>
                    return -1;
   41ac6:	e9 bd 00 00 00       	jmpq   41b88 <syscall_fork()+0x3b0>
    ptable[free_pid].state = P_RUNNABLE;
   41acb:	4c 63 65 84          	movslq -0x7c(%rbp),%r12
   41acf:	4b 8d 1c 64          	lea    (%r12,%r12,2),%rbx
   41ad3:	48 c1 e3 02          	shl    $0x2,%rbx
   41ad7:	4a 8d 04 23          	lea    (%rbx,%r12,1),%rax
   41adb:	48 c1 e0 04          	shl    $0x4,%rax
   41adf:	c7 80 2c 22 05 00 01 	movl   $0x1,0x5222c(%rax)
   41ae6:	00 00 00 
    ptable[free_pid].pagetable = temp_table;
   41ae9:	4a 8d 04 23          	lea    (%rbx,%r12,1),%rax
   41aed:	48 c1 e0 04          	shl    $0x4,%rax
   41af1:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
   41af8:	48 89 88 20 22 05 00 	mov    %rcx,0x52220(%rax)
    memcpy(&ptable[free_pid].regs, &current->regs, sizeof(current->regs));
   41aff:	48 8b 05 fa 06 01 00 	mov    0x106fa(%rip),%rax        # 52200 <current>
   41b06:	48 8d 70 10          	lea    0x10(%rax),%rsi
   41b0a:	4a 8d 3c 23          	lea    (%rbx,%r12,1),%rdi
   41b0e:	48 c1 e7 04          	shl    $0x4,%rdi
   41b12:	48 81 c7 30 22 05 00 	add    $0x52230,%rdi
   41b19:	ba c0 00 00 00       	mov    $0xc0,%edx
   41b1e:	e8 59 22 00 00       	callq  43d7c <memcpy>
    ptable[free_pid].regs.reg_rax = 0;
   41b23:	4c 01 e3             	add    %r12,%rbx
   41b26:	48 c1 e3 04          	shl    $0x4,%rbx
   41b2a:	48 c7 83 30 22 05 00 	movq   $0x0,0x52230(%rbx)
   41b31:	00 00 00 00 
    current->regs.reg_rax = free_pid;
   41b35:	48 8b 05 c4 06 01 00 	mov    0x106c4(%rip),%rax        # 52200 <current>
   41b3c:	4c 89 60 10          	mov    %r12,0x10(%rax)
}
   41b40:	8b 45 84             	mov    -0x7c(%rbp),%eax
   41b43:	48 83 c4 68          	add    $0x68,%rsp
   41b47:	5b                   	pop    %rbx
   41b48:	41 5c                	pop    %r12
   41b4a:	41 5d                	pop    %r13
   41b4c:	41 5e                	pop    %r14
   41b4e:	41 5f                	pop    %r15
   41b50:	5d                   	pop    %rbp
   41b51:	c3                   	retq   
        return -1;
   41b52:	c7 45 84 ff ff ff ff 	movl   $0xffffffff,-0x7c(%rbp)
   41b59:	eb e5                	jmp    41b40 <syscall_fork()+0x368>
        if (vadd == 0) {
   41b5b:	48 85 f6             	test   %rsi,%rsi
   41b5e:	0f 84 95 fd ff ff    	je     418f9 <syscall_fork()+0x121>
            if (dst_iter.try_map(src_iter.pa(), vadd_perms) == -1) {
   41b64:	44 89 f2             	mov    %r14d,%edx
        return -1;
   41b67:	4c 89 ee             	mov    %r13,%rsi
   41b6a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41b6e:	e8 b7 02 00 00       	callq  41e2a <vmiter::try_map(unsigned long, int)>
   41b73:	83 f8 ff             	cmp    $0xffffffff,%eax
   41b76:	0f 85 98 fd ff ff    	jne    41914 <syscall_fork()+0x13c>
                free_pages(temp_table);
   41b7c:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
   41b83:	e8 fe fa ff ff       	callq  41686 <free_pages(x86_64_pagetable*)>
                    return -1;
   41b88:	c7 45 84 ff ff ff ff 	movl   $0xffffffff,-0x7c(%rbp)
   41b8f:	eb af                	jmp    41b40 <syscall_fork()+0x368>
            if (dst_iter.try_map(src_iter.pa(), vadd_perms) == -1) {
   41b91:	89 da                	mov    %ebx,%edx
        if (level_ > 0) {
   41b93:	8b 4d a0             	mov    -0x60(%rbp),%ecx
            pa &= ~0x1000UL;
   41b96:	48 89 c3             	mov    %rax,%rbx
   41b99:	4c 21 e3             	and    %r12,%rbx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41b9c:	48 89 c7             	mov    %rax,%rdi
   41b9f:	4c 21 ff             	and    %r15,%rdi
   41ba2:	85 c9                	test   %ecx,%ecx
   41ba4:	48 0f 4f fb          	cmovg  %rbx,%rdi
   41ba8:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   41bac:	4c 89 e8             	mov    %r13,%rax
   41baf:	48 d3 e0             	shl    %cl,%rax
   41bb2:	48 f7 d0             	not    %rax
   41bb5:	48 21 c6             	and    %rax,%rsi
   41bb8:	48 01 fe             	add    %rdi,%rsi
   41bbb:	eb ad                	jmp    41b6a <syscall_fork()+0x392>

0000000000041bbd <syscall_exit()>:
void syscall_exit() {
   41bbd:	f3 0f 1e fa          	endbr64 
   41bc1:	55                   	push   %rbp
   41bc2:	48 89 e5             	mov    %rsp,%rbp
    free_pages(current->pagetable);
   41bc5:	48 8b 05 34 06 01 00 	mov    0x10634(%rip),%rax        # 52200 <current>
   41bcc:	48 8b 38             	mov    (%rax),%rdi
   41bcf:	e8 b2 fa ff ff       	callq  41686 <free_pages(x86_64_pagetable*)>
    current->state = P_FREE;
   41bd4:	48 8b 05 25 06 01 00 	mov    0x10625(%rip),%rax        # 52200 <current>
   41bdb:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
}
   41be2:	5d                   	pop    %rbp
   41be3:	c3                   	retq   

0000000000041be4 <syscall(regstate*)>:
uintptr_t syscall(regstate* regs) {
   41be4:	f3 0f 1e fa          	endbr64 
   41be8:	55                   	push   %rbp
   41be9:	48 89 e5             	mov    %rsp,%rbp
   41bec:	53                   	push   %rbx
   41bed:	48 83 ec 08          	sub    $0x8,%rsp
   41bf1:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41bf4:	48 8b 1d 05 06 01 00 	mov    0x10605(%rip),%rbx        # 52200 <current>
   41bfb:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   41bff:	b9 18 00 00 00       	mov    $0x18,%ecx
   41c04:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   41c07:	8b 3d ef 73 07 00    	mov    0x773ef(%rip),%edi        # b8ffc <cursorpos>
   41c0d:	e8 ce 06 00 00       	callq  422e0 <console_show_cursor(int)>
    memshow();
   41c12:	e8 e7 f0 ff ff       	callq  40cfe <memshow()>
    check_keyboard();
   41c17:	e8 39 13 00 00       	callq  42f55 <check_keyboard()>
    switch (regs->reg_rax) {
   41c1c:	48 8b 73 10          	mov    0x10(%rbx),%rsi
   41c20:	48 83 fe 06          	cmp    $0x6,%rsi
   41c24:	77 64                	ja     41c8a <syscall(regstate*)+0xa6>
   41c26:	3e ff 24 f5 a8 4a 04 	notrack jmpq *0x44aa8(,%rsi,8)
   41c2d:	00 
        panic(nullptr); // does not return
   41c2e:	bf 00 00 00 00       	mov    $0x0,%edi
   41c33:	b8 00 00 00 00       	mov    $0x0,%eax
   41c38:	e8 3a 14 00 00       	callq  43077 <panic(char const*, ...)>
        return current->pid;
   41c3d:	48 8b 05 bc 05 01 00 	mov    0x105bc(%rip),%rax        # 52200 <current>
   41c44:	48 63 40 08          	movslq 0x8(%rax),%rax
}
   41c48:	48 83 c4 08          	add    $0x8,%rsp
   41c4c:	5b                   	pop    %rbx
   41c4d:	5d                   	pop    %rbp
   41c4e:	c3                   	retq   
        current->regs.reg_rax = 0;
   41c4f:	48 8b 05 aa 05 01 00 	mov    0x105aa(%rip),%rax        # 52200 <current>
   41c56:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   41c5d:	00 
        schedule(); // does not return
   41c5e:	e8 78 f1 ff ff       	callq  40ddb <schedule()>
        return syscall_page_alloc(current->regs.reg_rdi);
   41c63:	48 8b 05 96 05 01 00 	mov    0x10596(%rip),%rax        # 52200 <current>
   41c6a:	48 8b 78 40          	mov    0x40(%rax),%rdi
   41c6e:	e8 81 ef ff ff       	callq  40bf4 <syscall_page_alloc(unsigned long)>
   41c73:	48 98                	cltq   
   41c75:	eb d1                	jmp    41c48 <syscall(regstate*)+0x64>
        return syscall_fork();
   41c77:	e8 5c fb ff ff       	callq  417d8 <syscall_fork()>
   41c7c:	48 98                	cltq   
   41c7e:	eb c8                	jmp    41c48 <syscall(regstate*)+0x64>
        syscall_exit();
   41c80:	e8 38 ff ff ff       	callq  41bbd <syscall_exit()>
        schedule(); // does not return
   41c85:	e8 51 f1 ff ff       	callq  40ddb <schedule()>
        panic("Unexpected system call %ld!\n", regs->reg_rax);
   41c8a:	bf 26 4a 04 00       	mov    $0x44a26,%edi
   41c8f:	b8 00 00 00 00       	mov    $0x0,%eax
   41c94:	e8 de 13 00 00       	callq  43077 <panic(char const*, ...)>
   41c99:	90                   	nop

0000000000041c9a <vmiter::down()>:
#include "k-vmiter.hh"

const x86_64_pageentry_t vmiter::zero_pe = 0;

void vmiter::down() {
   41c9a:	f3 0f 1e fa          	endbr64 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41c9e:	8b 47 10             	mov    0x10(%rdi),%eax
   41ca1:	85 c0                	test   %eax,%eax
   41ca3:	7e 4c                	jle    41cf1 <vmiter::down()+0x57>
        perm_ &= *pep_;
        --level_;
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41ca5:	49 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%r8
   41cac:	ff 0f 00 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41caf:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   41cb3:	48 8b 0a             	mov    (%rdx),%rcx
   41cb6:	48 89 ce             	mov    %rcx,%rsi
   41cb9:	81 e6 81 00 00 00    	and    $0x81,%esi
   41cbf:	48 83 fe 01          	cmp    $0x1,%rsi
   41cc3:	75 2c                	jne    41cf1 <vmiter::down()+0x57>
        perm_ &= *pep_;
   41cc5:	21 4f 14             	and    %ecx,0x14(%rdi)
        --level_;
   41cc8:	83 e8 01             	sub    $0x1,%eax
   41ccb:	89 47 10             	mov    %eax,0x10(%rdi)
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41cce:	4c 89 c6             	mov    %r8,%rsi
   41cd1:	48 23 32             	and    (%rdx),%rsi
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41cd4:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41cd8:	48 8b 57 18          	mov    0x18(%rdi),%rdx
   41cdc:	48 d3 ea             	shr    %cl,%rdx
        x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(pa);
        pep_ = &pt->entry[pageindex(va_, level_)];
   41cdf:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   41ce5:	48 8d 14 d6          	lea    (%rsi,%rdx,8),%rdx
   41ce9:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41ced:	85 c0                	test   %eax,%eax
   41cef:	75 be                	jne    41caf <vmiter::down()+0x15>
    }
    if ((*pep_ & PTE_PAMASK) >= 0x100000000UL) {
   41cf1:	48 8b 47 08          	mov    0x8(%rdi),%rax
   41cf5:	48 8b 10             	mov    (%rax),%rdx
   41cf8:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   41cff:	ff 0f 00 
   41d02:	48 21 d0             	and    %rdx,%rax
   41d05:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   41d0a:	48 39 c8             	cmp    %rcx,%rax
   41d0d:	77 01                	ja     41d10 <vmiter::down()+0x76>
   41d0f:	c3                   	retq   
void vmiter::down() {
   41d10:	55                   	push   %rbp
   41d11:	48 89 e5             	mov    %rsp,%rbp
        panic("Page table %p may contain uninitialized memory!\n"
   41d14:	48 8b 37             	mov    (%rdi),%rsi
   41d17:	bf e0 4a 04 00       	mov    $0x44ae0,%edi
   41d1c:	b8 00 00 00 00       	mov    $0x0,%eax
   41d21:	e8 51 13 00 00       	callq  43077 <panic(char const*, ...)>

0000000000041d26 <vmiter::real_find(unsigned long)>:
              "(Page table contents: %p)\n", pt_, *pep_);
    }
}

void vmiter::real_find(uintptr_t va) {
   41d26:	f3 0f 1e fa          	endbr64 
   41d2a:	55                   	push   %rbp
   41d2b:	48 89 e5             	mov    %rsp,%rbp
    if (level_ == 3 || ((va_ ^ va) & ~pageoffmask(level_ + 1)) != 0) {
   41d2e:	8b 47 10             	mov    0x10(%rdi),%eax
   41d31:	83 f8 03             	cmp    $0x3,%eax
   41d34:	74 1d                	je     41d53 <vmiter::real_find(unsigned long)+0x2d>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41d36:	8d 54 c0 09          	lea    0x9(%rax,%rax,8),%edx
   41d3a:	8d 4a 0c             	lea    0xc(%rdx),%ecx
   41d3d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41d44:	48 d3 e0             	shl    %cl,%rax
   41d47:	48 89 f1             	mov    %rsi,%rcx
   41d4a:	48 33 4f 18          	xor    0x18(%rdi),%rcx
   41d4e:	48 85 c8             	test   %rcx,%rax
   41d51:	74 34                	je     41d87 <vmiter::real_find(unsigned long)+0x61>
        level_ = 3;
   41d53:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    return va <= VA_LOWMAX || va >= VA_HIGHMIN;
   41d5a:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
   41d61:	80 ff ff 
   41d64:	48 01 f0             	add    %rsi,%rax
        if (va_is_canonical(va)) {
   41d67:	48 ba ff ff ff ff ff 	movabs $0xfffeffffffffffff,%rdx
   41d6e:	ff fe ff 
   41d71:	48 39 d0             	cmp    %rdx,%rax
   41d74:	77 3e                	ja     41db4 <vmiter::real_find(unsigned long)+0x8e>
            perm_ = initial_perm;
            pep_ = &pt_->entry[pageindex(va, level_)];
        } else {
            perm_ = 0;
   41d76:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%rdi)
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
   41d7d:	48 c7 47 08 c8 4b 04 	movq   $0x44bc8,0x8(%rdi)
   41d84:	00 
   41d85:	eb 47                	jmp    41dce <vmiter::real_find(unsigned long)+0xa8>
        }
    } else {
        int curidx = (reinterpret_cast<uintptr_t>(pep_) & PAGEOFFMASK) >> 3;
   41d87:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41d8b:	8d 4a 03             	lea    0x3(%rdx),%ecx
   41d8e:	48 89 f0             	mov    %rsi,%rax
   41d91:	48 d3 e8             	shr    %cl,%rax
   41d94:	25 ff 01 00 00       	and    $0x1ff,%eax
   41d99:	4c 89 c2             	mov    %r8,%rdx
   41d9c:	48 c1 ea 03          	shr    $0x3,%rdx
   41da0:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
        pep_ += pageindex(va, level_) - curidx;
   41da6:	29 d0                	sub    %edx,%eax
   41da8:	48 98                	cltq   
   41daa:	49 8d 04 c0          	lea    (%r8,%rax,8),%rax
   41dae:	48 89 47 08          	mov    %rax,0x8(%rdi)
   41db2:	eb 1a                	jmp    41dce <vmiter::real_find(unsigned long)+0xa8>
            perm_ = initial_perm;
   41db4:	c7 47 14 ff 0f 00 00 	movl   $0xfff,0x14(%rdi)
            pep_ = &pt_->entry[pageindex(va, level_)];
   41dbb:	48 89 f0             	mov    %rsi,%rax
   41dbe:	48 c1 e8 24          	shr    $0x24,%rax
   41dc2:	25 f8 0f 00 00       	and    $0xff8,%eax
   41dc7:	48 03 07             	add    (%rdi),%rax
   41dca:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
    va_ = va;
   41dce:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down();
   41dd2:	e8 c3 fe ff ff       	callq  41c9a <vmiter::down()>
}
   41dd7:	5d                   	pop    %rbp
   41dd8:	c3                   	retq   
   41dd9:	90                   	nop

0000000000041dda <vmiter::next()>:

void vmiter::next() {
   41dda:	f3 0f 1e fa          	endbr64 
   41dde:	55                   	push   %rbp
   41ddf:	48 89 e5             	mov    %rsp,%rbp
    int level = 0;
    if (level_ > 0 && !perm()) {
   41de2:	8b 47 10             	mov    0x10(%rdi),%eax
   41de5:	85 c0                	test   %eax,%eax
   41de7:	7e 1d                	jle    41e06 <vmiter::next()+0x2c>
    if (*pep_ & PTE_P) {
   41de9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   41ded:	48 8b 12             	mov    (%rdx),%rdx
   41df0:	f6 c2 01             	test   $0x1,%dl
   41df3:	74 16                	je     41e0b <vmiter::next()+0x31>
        return *pep_ & perm_;
   41df5:	48 63 4f 14          	movslq 0x14(%rdi),%rcx
    int level = 0;
   41df9:	48 85 d1             	test   %rdx,%rcx
   41dfc:	ba 00 00 00 00       	mov    $0x0,%edx
   41e01:	0f 45 c2             	cmovne %edx,%eax
   41e04:	eb 05                	jmp    41e0b <vmiter::next()+0x31>
   41e06:	b8 00 00 00 00       	mov    $0x0,%eax
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41e0b:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41e0f:	be 01 00 00 00       	mov    $0x1,%esi
   41e14:	48 d3 e6             	shl    %cl,%rsi
   41e17:	48 83 ee 01          	sub    $0x1,%rsi
        level = level_;
    }
    real_find((va_ | pageoffmask(level)) + 1);
   41e1b:	48 0b 77 18          	or     0x18(%rdi),%rsi
   41e1f:	48 83 c6 01          	add    $0x1,%rsi
   41e23:	e8 fe fe ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
}
   41e28:	5d                   	pop    %rbp
   41e29:	c3                   	retq   

0000000000041e2a <vmiter::try_map(unsigned long, int)>:

int vmiter::try_map(uintptr_t pa, int perm) {
   41e2a:	f3 0f 1e fa          	endbr64 
   41e2e:	55                   	push   %rbp
   41e2f:	48 89 e5             	mov    %rsp,%rbp
   41e32:	41 57                	push   %r15
   41e34:	41 56                	push   %r14
   41e36:	41 55                	push   %r13
   41e38:	41 54                	push   %r12
   41e3a:	53                   	push   %rbx
   41e3b:	48 83 ec 08          	sub    $0x8,%rsp
   41e3f:	49 89 fc             	mov    %rdi,%r12
   41e42:	49 89 f6             	mov    %rsi,%r14
   41e45:	41 89 d7             	mov    %edx,%r15d
    if (pa == (uintptr_t) -1 && perm == 0) {
   41e48:	85 d2                	test   %edx,%edx
   41e4a:	0f 94 c2             	sete   %dl
   41e4d:	48 83 fe ff          	cmp    $0xffffffffffffffff,%rsi
   41e51:	75 25                	jne    41e78 <vmiter::try_map(unsigned long, int)+0x4e>
   41e53:	84 d2                	test   %dl,%dl
   41e55:	74 21                	je     41e78 <vmiter::try_map(unsigned long, int)+0x4e>
        pa = 0;
    }
    assert(!(va_ & PAGEOFFMASK));
   41e57:	4c 8b 77 18          	mov    0x18(%rdi),%r14
   41e5b:	41 81 e6 ff 0f 00 00 	and    $0xfff,%r14d
   41e62:	74 48                	je     41eac <vmiter::try_map(unsigned long, int)+0x82>
   41e64:	ba 5b 4b 04 00       	mov    $0x44b5b,%edx
   41e69:	be 31 00 00 00       	mov    $0x31,%esi
   41e6e:	bf 70 4b 04 00       	mov    $0x44b70,%edi
   41e73:	e8 14 08 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
   41e78:	66 41 f7 44 24 18 ff 	testw  $0xfff,0x18(%r12)
   41e7f:	0f 
   41e80:	75 e2                	jne    41e64 <vmiter::try_map(unsigned long, int)+0x3a>
    if (perm & PTE_P) {
   41e82:	41 f6 c7 01          	test   $0x1,%r15b
   41e86:	0f 84 e4 00 00 00    	je     41f70 <vmiter::try_map(unsigned long, int)+0x146>
        assert(pa != (uintptr_t) -1);
   41e8c:	49 83 fe ff          	cmp    $0xffffffffffffffff,%r14
   41e90:	0f 84 b2 00 00 00    	je     41f48 <vmiter::try_map(unsigned long, int)+0x11e>
        assert((pa & PTE_PAMASK) == pa);
   41e96:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   41e9d:	ff 0f 00 
   41ea0:	4c 21 f0             	and    %r14,%rax
   41ea3:	4c 39 f0             	cmp    %r14,%rax
   41ea6:	0f 85 b0 00 00 00    	jne    41f5c <vmiter::try_map(unsigned long, int)+0x132>
    } else {
        assert(!(pa & PTE_P));
    }
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   41eac:	45 8b 6c 24 14       	mov    0x14(%r12),%r13d
   41eb1:	41 f7 d5             	not    %r13d
   41eb4:	45 21 fd             	and    %r15d,%r13d
   41eb7:	41 83 e5 07          	and    $0x7,%r13d
   41ebb:	0f 85 cd 00 00 00    	jne    41f8e <vmiter::try_map(unsigned long, int)+0x164>

    while (level_ > 0 && perm) {
   41ec1:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   41ec6:	85 c0                	test   %eax,%eax
   41ec8:	7e 57                	jle    41f21 <vmiter::try_map(unsigned long, int)+0xf7>
   41eca:	84 d2                	test   %dl,%dl
   41ecc:	75 53                	jne    41f21 <vmiter::try_map(unsigned long, int)+0xf7>
        assert(!(*pep_ & PTE_P));
   41ece:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   41ed3:	f6 00 01             	testb  $0x1,(%rax)
   41ed6:	0f 85 c6 00 00 00    	jne    41fa2 <vmiter::try_map(unsigned long, int)+0x178>
        x86_64_pagetable* pt = (x86_64_pagetable*) kalloc(PAGESIZE);
   41edc:	bf 00 10 00 00       	mov    $0x1000,%edi
   41ee1:	e8 7e ec ff ff       	callq  40b64 <kalloc(unsigned long)>
   41ee6:	48 89 c3             	mov    %rax,%rbx
        if (!pt) {
   41ee9:	48 85 c0             	test   %rax,%rax
   41eec:	0f 84 c4 00 00 00    	je     41fb6 <vmiter::try_map(unsigned long, int)+0x18c>
            return -1;
        }
        memset(pt, 0, PAGESIZE);
   41ef2:	ba 00 10 00 00       	mov    $0x1000,%edx
   41ef7:	be 00 00 00 00       	mov    $0x0,%esi
   41efc:	48 89 c7             	mov    %rax,%rdi
   41eff:	e8 e9 1e 00 00       	callq  43ded <memset>
        *pep_ = (uintptr_t) pt | PTE_P | PTE_W | PTE_U;
   41f04:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   41f09:	48 83 cb 07          	or     $0x7,%rbx
   41f0d:	48 89 18             	mov    %rbx,(%rax)
        down();
   41f10:	4c 89 e7             	mov    %r12,%rdi
   41f13:	e8 82 fd ff ff       	callq  41c9a <vmiter::down()>
    while (level_ > 0 && perm) {
   41f18:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   41f1d:	85 c0                	test   %eax,%eax
   41f1f:	7f ad                	jg     41ece <vmiter::try_map(unsigned long, int)+0xa4>
    }

    if (level_ == 0) {
   41f21:	85 c0                	test   %eax,%eax
   41f23:	75 11                	jne    41f36 <vmiter::try_map(unsigned long, int)+0x10c>
        *pep_ = pa | perm;
   41f25:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
   41f2a:	4d 63 ff             	movslq %r15d,%r15
   41f2d:	4d 09 fe             	or     %r15,%r14
   41f30:	4c 89 32             	mov    %r14,(%rdx)
    }
    return 0;
   41f33:	41 89 c5             	mov    %eax,%r13d
}
   41f36:	44 89 e8             	mov    %r13d,%eax
   41f39:	48 83 c4 08          	add    $0x8,%rsp
   41f3d:	5b                   	pop    %rbx
   41f3e:	41 5c                	pop    %r12
   41f40:	41 5d                	pop    %r13
   41f42:	41 5e                	pop    %r14
   41f44:	41 5f                	pop    %r15
   41f46:	5d                   	pop    %rbp
   41f47:	c3                   	retq   
        assert(pa != (uintptr_t) -1);
   41f48:	ba 7c 4b 04 00       	mov    $0x44b7c,%edx
   41f4d:	be 33 00 00 00       	mov    $0x33,%esi
   41f52:	bf 70 4b 04 00       	mov    $0x44b70,%edi
   41f57:	e8 30 07 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
        assert((pa & PTE_PAMASK) == pa);
   41f5c:	ba 91 4b 04 00       	mov    $0x44b91,%edx
   41f61:	be 34 00 00 00       	mov    $0x34,%esi
   41f66:	bf 70 4b 04 00       	mov    $0x44b70,%edi
   41f6b:	e8 1c 07 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
        assert(!(pa & PTE_P));
   41f70:	41 f6 c6 01          	test   $0x1,%r14b
   41f74:	0f 84 32 ff ff ff    	je     41eac <vmiter::try_map(unsigned long, int)+0x82>
   41f7a:	ba a9 4b 04 00       	mov    $0x44ba9,%edx
   41f7f:	be 36 00 00 00       	mov    $0x36,%esi
   41f84:	bf 70 4b 04 00       	mov    $0x44b70,%edi
   41f89:	e8 fe 06 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   41f8e:	ba 30 4b 04 00       	mov    $0x44b30,%edx
   41f93:	be 38 00 00 00       	mov    $0x38,%esi
   41f98:	bf 70 4b 04 00       	mov    $0x44b70,%edi
   41f9d:	e8 ea 06 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
        assert(!(*pep_ & PTE_P));
   41fa2:	ba b7 4b 04 00       	mov    $0x44bb7,%edx
   41fa7:	be 3b 00 00 00       	mov    $0x3b,%esi
   41fac:	bf 70 4b 04 00       	mov    $0x44b70,%edi
   41fb1:	e8 d6 06 00 00       	callq  4268c <assert_fail(char const*, int, char const*)>
            return -1;
   41fb6:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   41fbc:	e9 75 ff ff ff       	jmpq   41f36 <vmiter::try_map(unsigned long, int)+0x10c>
   41fc1:	90                   	nop

0000000000041fc2 <ptiter::down(bool)>:
    pep_ = &pt_->entry[pageindex(va, level_)];
    va_ = va;
    down(false);
}

void ptiter::down(bool skip) {
   41fc2:	f3 0f 1e fa          	endbr64 
   41fc6:	55                   	push   %rbp
   41fc7:	48 89 e5             	mov    %rsp,%rbp
   41fca:	41 55                	push   %r13
   41fcc:	41 54                	push   %r12
   41fce:	53                   	push   %rbx
    int stop_level = 1;
   41fcf:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   41fd5:	41 ba 01 00 00 00    	mov    $0x1,%r10d
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
            if (level_ == stop_level) {
                break;
            } else {
                --level_;
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41fdb:	48 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%rbx
   41fe2:	ff 0f 00 
                // up one level
                if (level_ == 3) {
                    va_ = VA_NONCANONMAX + 1;
                    return;
                }
                stop_level = level_ + 1;
   41fe5:	41 bb 00 00 00 00    	mov    $0x0,%r11d
   41feb:	eb 53                	jmp    42040 <ptiter::down(bool)+0x7e>
            if (level_ == stop_level) {
   41fed:	8b 47 10             	mov    0x10(%rdi),%eax
   41ff0:	44 39 e8             	cmp    %r13d,%eax
   41ff3:	74 35                	je     4202a <ptiter::down(bool)+0x68>
                --level_;
   41ff5:	83 e8 01             	sub    $0x1,%eax
   41ff8:	89 47 10             	mov    %eax,0x10(%rdi)
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41ffb:	48 89 da             	mov    %rbx,%rdx
   41ffe:	49 23 14 24          	and    (%r12),%rdx
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   42002:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   42006:	48 8b 47 18          	mov    0x18(%rdi),%rax
   4200a:	48 d3 e8             	shr    %cl,%rax
                pep_ = &pt->entry[pageindex(va_, level_)];
   4200d:	25 ff 01 00 00       	and    $0x1ff,%eax
   42012:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   42016:	48 89 47 08          	mov    %rax,0x8(%rdi)
            }
   4201a:	eb 21                	jmp    4203d <ptiter::down(bool)+0x7b>
                    va_ = VA_NONCANONMAX + 1;
   4201c:	48 b8 00 00 00 00 00 	movabs $0x1000000000000,%rax
   42023:	00 01 00 
   42026:	48 89 47 18          	mov    %rax,0x18(%rdi)
                va_ = va;
            }
            skip = false;
        }
    }
}
   4202a:	5b                   	pop    %rbx
   4202b:	41 5c                	pop    %r12
   4202d:	41 5d                	pop    %r13
   4202f:	5d                   	pop    %rbp
   42030:	c3                   	retq   
                ++pep_;
   42031:	49 83 c4 08          	add    $0x8,%r12
   42035:	4c 89 67 08          	mov    %r12,0x8(%rdi)
                va_ = va;
   42039:	48 89 47 18          	mov    %rax,0x18(%rdi)
                stop_level = level_ + 1;
   4203d:	44 89 de             	mov    %r11d,%esi
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
   42040:	4c 8b 67 08          	mov    0x8(%rdi),%r12
   42044:	49 8b 04 24          	mov    (%r12),%rax
   42048:	25 81 00 00 00       	and    $0x81,%eax
   4204d:	48 83 f8 01          	cmp    $0x1,%rax
   42051:	75 05                	jne    42058 <ptiter::down(bool)+0x96>
   42053:	40 84 f6             	test   %sil,%sil
   42056:	74 95                	je     41fed <ptiter::down(bool)+0x2b>
            uintptr_t va = (va_ | pageoffmask(level_)) + 1;
   42058:	48 8b 77 18          	mov    0x18(%rdi),%rsi
   4205c:	44 8b 4f 10          	mov    0x10(%rdi),%r9d
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   42060:	47 8d 04 c9          	lea    (%r9,%r9,8),%r8d
   42064:	41 8d 48 0c          	lea    0xc(%r8),%ecx
   42068:	4c 89 d2             	mov    %r10,%rdx
   4206b:	48 d3 e2             	shl    %cl,%rdx
   4206e:	48 83 ea 01          	sub    $0x1,%rdx
   42072:	48 09 f2             	or     %rsi,%rdx
   42075:	48 8d 42 01          	lea    0x1(%rdx),%rax
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
   42079:	41 8d 51 01          	lea    0x1(%r9),%edx
   4207d:	41 8d 48 15          	lea    0x15(%r8),%ecx
   42081:	4d 89 d0             	mov    %r10,%r8
   42084:	49 d3 e0             	shl    %cl,%r8
   42087:	4c 89 c1             	mov    %r8,%rcx
   4208a:	48 f7 d9             	neg    %rcx
   4208d:	49 89 f0             	mov    %rsi,%r8
   42090:	49 31 c0             	xor    %rax,%r8
   42093:	4c 85 c1             	test   %r8,%rcx
   42096:	74 99                	je     42031 <ptiter::down(bool)+0x6f>
                if (level_ == 3) {
   42098:	41 83 f9 03          	cmp    $0x3,%r9d
   4209c:	0f 84 7a ff ff ff    	je     4201c <ptiter::down(bool)+0x5a>
                level_ = 3;
   420a2:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
                pep_ = &pt_->entry[pageindex(va_, level_)];
   420a9:	48 89 f0             	mov    %rsi,%rax
   420ac:	48 c1 e8 24          	shr    $0x24,%rax
   420b0:	25 f8 0f 00 00       	and    $0xff8,%eax
   420b5:	48 03 07             	add    (%rdi),%rax
   420b8:	48 89 47 08          	mov    %rax,0x8(%rdi)
                stop_level = level_ + 1;
   420bc:	41 89 d5             	mov    %edx,%r13d
   420bf:	e9 79 ff ff ff       	jmpq   4203d <ptiter::down(bool)+0x7b>

00000000000420c4 <ptiter::go(unsigned long)>:
void ptiter::go(uintptr_t va) {
   420c4:	f3 0f 1e fa          	endbr64 
   420c8:	55                   	push   %rbp
   420c9:	48 89 e5             	mov    %rsp,%rbp
    level_ = 3;
   420cc:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    pep_ = &pt_->entry[pageindex(va, level_)];
   420d3:	48 89 f0             	mov    %rsi,%rax
   420d6:	48 c1 e8 24          	shr    $0x24,%rax
   420da:	25 f8 0f 00 00       	and    $0xff8,%eax
   420df:	48 03 07             	add    (%rdi),%rax
   420e2:	48 89 47 08          	mov    %rax,0x8(%rdi)
    va_ = va;
   420e6:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down(false);
   420ea:	be 00 00 00 00       	mov    $0x0,%esi
   420ef:	e8 ce fe ff ff       	callq  41fc2 <ptiter::down(bool)>
}
   420f4:	5d                   	pop    %rbp
   420f5:	c3                   	retq   

00000000000420f6 <(anonymous namespace)::log_printer::putc(unsigned char, int)>:
         | IO_PARALLEL_CONTROL_INIT);
}

namespace {
struct log_printer : public printer {
    void putc(unsigned char c, int) override {
   420f6:	f3 0f 1e fa          	endbr64 
    if (!initialized) {
   420fa:	83 3d 03 6f 01 00 00 	cmpl   $0x0,0x16f03(%rip)        # 59004 <parallel_port_putc(unsigned char)::initialized>
   42101:	75 15                	jne    42118 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x22>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42103:	b8 00 00 00 00       	mov    $0x0,%eax
   42108:	ba 7a 03 00 00       	mov    $0x37a,%edx
   4210d:	ee                   	out    %al,(%dx)
        initialized = 1;
   4210e:	c7 05 ec 6e 01 00 01 	movl   $0x1,0x16eec(%rip)        # 59004 <parallel_port_putc(unsigned char)::initialized>
   42115:	00 00 00 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   42118:	ba 79 03 00 00       	mov    $0x379,%edx
   4211d:	ec                   	in     (%dx),%al
         i < 12800 && (inb(IO_PARALLEL1_STATUS) & IO_PARALLEL_STATUS_BUSY) == 0;
   4211e:	bf 00 32 00 00       	mov    $0x3200,%edi
   42123:	b9 84 00 00 00       	mov    $0x84,%ecx
   42128:	41 b8 79 03 00 00    	mov    $0x379,%r8d
   4212e:	84 c0                	test   %al,%al
   42130:	78 13                	js     42145 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   42132:	89 ca                	mov    %ecx,%edx
   42134:	ec                   	in     (%dx),%al
   42135:	ec                   	in     (%dx),%al
   42136:	ec                   	in     (%dx),%al
   42137:	ec                   	in     (%dx),%al
   42138:	83 ef 01             	sub    $0x1,%edi
   4213b:	74 08                	je     42145 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   4213d:	44 89 c2             	mov    %r8d,%edx
   42140:	ec                   	in     (%dx),%al
   42141:	84 c0                	test   %al,%al
   42143:	79 ed                	jns    42132 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x3c>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42145:	ba 78 03 00 00       	mov    $0x378,%edx
   4214a:	89 f0                	mov    %esi,%eax
   4214c:	ee                   	out    %al,(%dx)
   4214d:	ba 7a 03 00 00       	mov    $0x37a,%edx
   42152:	b8 0d 00 00 00       	mov    $0xd,%eax
   42157:	ee                   	out    %al,(%dx)
   42158:	b8 0c 00 00 00       	mov    $0xc,%eax
   4215d:	ee                   	out    %al,(%dx)
        parallel_port_putc(c);
    }
   4215e:	c3                   	retq   

000000000004215f <stash_kernel_data(bool)>:

// stash_kernel_data
//    Soft reboot requires that we restore kernel data memory to
//    its initial state, so we store its initial state in unused
//    physical memory.
static void stash_kernel_data(bool reboot) {
   4215f:	55                   	push   %rbp
   42160:	48 89 e5             	mov    %rsp,%rbp
   42163:	89 f8                	mov    %edi,%eax
    // stash initial value of data segment for soft-reboot support
    extern uint8_t _data_start, _edata, _kernel_end;
    uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   42165:	ba 70 1b 05 00       	mov    $0x51b70,%edx
   4216a:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
    uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   42171:	bf 00 60 04 01       	mov    $0x1046000,%edi
   42176:	48 81 ef 70 1b 05 00 	sub    $0x51b70,%rdi
    if (reboot) {
   4217d:	84 c0                	test   %al,%al
   4217f:	74 2a                	je     421ab <stash_kernel_data(bool)+0x4c>
        memcpy(&_data_start, data_stash, data_size);
   42181:	48 89 fe             	mov    %rdi,%rsi
   42184:	bf 00 60 04 00       	mov    $0x46000,%edi
   42189:	e8 ee 1b 00 00       	callq  43d7c <memcpy>
        memset(&_edata, 0, &_kernel_end - &_edata);
   4218e:	ba 98 90 05 00       	mov    $0x59098,%edx
   42193:	48 81 ea 70 1b 05 00 	sub    $0x51b70,%rdx
   4219a:	be 00 00 00 00       	mov    $0x0,%esi
   4219f:	bf 70 1b 05 00       	mov    $0x51b70,%edi
   421a4:	e8 44 1c 00 00       	callq  43ded <memset>
    } else {
        memcpy(data_stash, &_data_start, data_size);
    }
}
   421a9:	5d                   	pop    %rbp
   421aa:	c3                   	retq   
        memcpy(data_stash, &_data_start, data_size);
   421ab:	be 00 60 04 00       	mov    $0x46000,%esi
   421b0:	e8 c7 1b 00 00       	callq  43d7c <memcpy>
}
   421b5:	eb f2                	jmp    421a9 <stash_kernel_data(bool)+0x4a>

00000000000421b7 <init_timer(int)>:
void init_timer(int rate) {
   421b7:	f3 0f 1e fa          	endbr64 
    if (rate > 0) {
   421bb:	85 ff                	test   %edi,%edi
   421bd:	7e 12                	jle    421d1 <init_timer(int)+0x1a>
        lapic.write(lapic.reg_timer_initial_count, 1000000000 / rate);
   421bf:	b8 00 ca 9a 3b       	mov    $0x3b9aca00,%eax
   421c4:	99                   	cltd   
   421c5:	f7 ff                	idiv   %edi
   421c7:	a3 80 03 e0 fe 00 00 	movabs %eax,0xfee00380
   421ce:	00 00 
}
   421d0:	c3                   	retq   
    reg_[reg].v = v;
   421d1:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   421d6:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
}
   421dc:	c3                   	retq   

00000000000421dd <reserved_physical_address(unsigned long)>:
bool reserved_physical_address(uintptr_t pa) {
   421dd:	f3 0f 1e fa          	endbr64 
    return pa < PAGESIZE || (pa >= IOPHYSMEM && pa < EXTPHYSMEM);
   421e1:	48 8d 87 00 00 f6 ff 	lea    -0xa0000(%rdi),%rax
   421e8:	48 3d ff ff 05 00    	cmp    $0x5ffff,%rax
   421ee:	0f 96 c0             	setbe  %al
   421f1:	48 81 ff ff 0f 00 00 	cmp    $0xfff,%rdi
   421f8:	0f 96 c2             	setbe  %dl
   421fb:	09 d0                	or     %edx,%eax
}
   421fd:	c3                   	retq   

00000000000421fe <allocatable_physical_address(unsigned long)>:
bool allocatable_physical_address(uintptr_t pa) {
   421fe:	f3 0f 1e fa          	endbr64 
   42202:	55                   	push   %rbp
   42203:	48 89 e5             	mov    %rsp,%rbp
   42206:	53                   	push   %rbx
   42207:	48 83 ec 08          	sub    $0x8,%rsp
   4220b:	48 89 fb             	mov    %rdi,%rbx
    return !reserved_physical_address(pa)
   4220e:	e8 ca ff ff ff       	callq  421dd <reserved_physical_address(unsigned long)>
        && pa < MEMSIZE_PHYSICAL;
   42213:	84 c0                	test   %al,%al
   42215:	75 38                	jne    4224f <allocatable_physical_address(unsigned long)+0x51>
        && (pa < KERNEL_START_ADDR
   42217:	48 81 fb ff ff 03 00 	cmp    $0x3ffff,%rbx
   4221e:	76 11                	jbe    42231 <allocatable_physical_address(unsigned long)+0x33>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
   42220:	ba 97 a0 05 00       	mov    $0x5a097,%edx
            || pa >= round_up((uintptr_t) _kernel_end, PAGESIZE))
   42225:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
   4222c:	48 39 d3             	cmp    %rdx,%rbx
   4222f:	72 23                	jb     42254 <allocatable_physical_address(unsigned long)+0x56>
            || pa >= KERNEL_STACK_TOP)
   42231:	48 8d 83 00 10 f8 ff 	lea    -0x7f000(%rbx),%rax
        && (pa < KERNEL_STACK_TOP - PAGESIZE
   42238:	48 3d ff 0f 00 00    	cmp    $0xfff,%rax
   4223e:	0f 97 c0             	seta   %al
        && pa < MEMSIZE_PHYSICAL;
   42241:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   42248:	0f 96 c2             	setbe  %dl
   4224b:	21 d0                	and    %edx,%eax
   4224d:	eb 05                	jmp    42254 <allocatable_physical_address(unsigned long)+0x56>
   4224f:	b8 00 00 00 00       	mov    $0x0,%eax
}
   42254:	48 83 c4 08          	add    $0x8,%rsp
   42258:	5b                   	pop    %rbx
   42259:	5d                   	pop    %rbp
   4225a:	c3                   	retq   

000000000004225b <init_process(proc*, int)>:
void init_process(proc* p, int flags) {
   4225b:	f3 0f 1e fa          	endbr64 
   4225f:	55                   	push   %rbp
   42260:	48 89 e5             	mov    %rsp,%rbp
   42263:	41 54                	push   %r12
   42265:	53                   	push   %rbx
   42266:	48 89 fb             	mov    %rdi,%rbx
   42269:	41 89 f4             	mov    %esi,%r12d
    memset(&p->regs, 0, sizeof(p->regs));
   4226c:	48 8d 7f 10          	lea    0x10(%rdi),%rdi
   42270:	ba c0 00 00 00       	mov    $0xc0,%edx
   42275:	be 00 00 00 00       	mov    $0x0,%esi
   4227a:	e8 6e 1b 00 00       	callq  43ded <memset>
    p->regs.reg_cs = SEGSEL_APP_CODE | 3;
   4227f:	48 c7 83 b0 00 00 00 	movq   $0x1b,0xb0(%rbx)
   42286:	1b 00 00 00 
    p->regs.reg_fs = SEGSEL_APP_DATA | 3;
   4228a:	48 c7 83 88 00 00 00 	movq   $0x23,0x88(%rbx)
   42291:	23 00 00 00 
    p->regs.reg_gs = SEGSEL_APP_DATA | 3;
   42295:	48 c7 83 90 00 00 00 	movq   $0x23,0x90(%rbx)
   4229c:	23 00 00 00 
    p->regs.reg_ss = SEGSEL_APP_DATA | 3;
   422a0:	48 c7 83 c8 00 00 00 	movq   $0x23,0xc8(%rbx)
   422a7:	23 00 00 00 
    if (flags & PROCINIT_ALLOW_PROGRAMMED_IO) {
   422ab:	44 89 e0             	mov    %r12d,%eax
   422ae:	83 e0 01             	and    $0x1,%eax
    p->regs.reg_rflags = EFLAGS_IF;
   422b1:	83 f8 01             	cmp    $0x1,%eax
   422b4:	48 19 c0             	sbb    %rax,%rax
   422b7:	48 25 00 d0 ff ff    	and    $0xffffffffffffd000,%rax
   422bd:	48 05 00 32 00 00    	add    $0x3200,%rax
   422c3:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
    if (flags & PROCINIT_DISABLE_INTERRUPTS) {
   422ca:	41 f6 c4 02          	test   $0x2,%r12b
   422ce:	74 0b                	je     422db <init_process(proc*, int)+0x80>
        p->regs.reg_rflags &= ~EFLAGS_IF;
   422d0:	48 81 a3 b8 00 00 00 	andq   $0xfffffffffffffdff,0xb8(%rbx)
   422d7:	ff fd ff ff 
}
   422db:	5b                   	pop    %rbx
   422dc:	41 5c                	pop    %r12
   422de:	5d                   	pop    %rbp
   422df:	c3                   	retq   

00000000000422e0 <console_show_cursor(int)>:
void console_show_cursor(int cpos) {
   422e0:	f3 0f 1e fa          	endbr64 
        cpos = 0;
   422e4:	81 ff d1 07 00 00    	cmp    $0x7d1,%edi
   422ea:	b8 00 00 00 00       	mov    $0x0,%eax
   422ef:	0f 43 f8             	cmovae %eax,%edi
   422f2:	be d4 03 00 00       	mov    $0x3d4,%esi
   422f7:	b8 0e 00 00 00       	mov    $0xe,%eax
   422fc:	89 f2                	mov    %esi,%edx
   422fe:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos / 256);
   422ff:	8d 87 ff 00 00 00    	lea    0xff(%rdi),%eax
   42305:	85 ff                	test   %edi,%edi
   42307:	0f 49 c7             	cmovns %edi,%eax
   4230a:	c1 f8 08             	sar    $0x8,%eax
   4230d:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
   42312:	89 ca                	mov    %ecx,%edx
   42314:	ee                   	out    %al,(%dx)
   42315:	b8 0f 00 00 00       	mov    $0xf,%eax
   4231a:	89 f2                	mov    %esi,%edx
   4231c:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos % 256);
   4231d:	89 fa                	mov    %edi,%edx
   4231f:	c1 fa 1f             	sar    $0x1f,%edx
   42322:	c1 ea 18             	shr    $0x18,%edx
   42325:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
   42328:	0f b6 c0             	movzbl %al,%eax
   4232b:	29 d0                	sub    %edx,%eax
   4232d:	89 ca                	mov    %ecx,%edx
   4232f:	ee                   	out    %al,(%dx)
}
   42330:	c3                   	retq   

0000000000042331 <keyboard_readc()>:
int keyboard_readc() {
   42331:	f3 0f 1e fa          	endbr64 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   42335:	ba 64 00 00 00       	mov    $0x64,%edx
   4233a:	ec                   	in     (%dx),%al
    if ((inb(KEYBOARD_STATUSREG) & KEYBOARD_STATUS_READY) == 0) {
   4233b:	a8 01                	test   $0x1,%al
   4233d:	0f 84 1d 01 00 00    	je     42460 <keyboard_readc()+0x12f>
   42343:	ba 60 00 00 00       	mov    $0x60,%edx
   42348:	ec                   	in     (%dx),%al
    uint8_t escape = last_escape;
   42349:	0f b6 15 b8 6c 01 00 	movzbl 0x16cb8(%rip),%edx        # 59008 <keyboard_readc()::last_escape>
    last_escape = 0;
   42350:	c6 05 b1 6c 01 00 00 	movb   $0x0,0x16cb1(%rip)        # 59008 <keyboard_readc()::last_escape>
    if (data == 0xE0) {         // mode shift
   42357:	3c e0                	cmp    $0xe0,%al
   42359:	74 2a                	je     42385 <keyboard_readc()+0x54>
    } else if (data & 0x80) {   // key release: matters only for modifier keys
   4235b:	84 c0                	test   %al,%al
   4235d:	78 33                	js     42392 <keyboard_readc()+0x61>
    int ch = (unsigned char) keymap[data | escape];
   4235f:	09 d0                	or     %edx,%eax
   42361:	0f b6 c0             	movzbl %al,%eax
   42364:	0f b6 80 80 4f 04 00 	movzbl 0x44f80(%rax),%eax
    if (ch >= 'a' && ch <= 'z') {
   4236b:	89 c1                	mov    %eax,%ecx
   4236d:	8d 50 9f             	lea    -0x61(%rax),%edx
   42370:	83 fa 19             	cmp    $0x19,%edx
   42373:	77 73                	ja     423e8 <keyboard_readc()+0xb7>
        if (modifiers & MOD_CONTROL) {
   42375:	0f b6 15 8d 6c 01 00 	movzbl 0x16c8d(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   4237c:	f6 c2 02             	test   $0x2,%dl
   4237f:	74 4d                	je     423ce <keyboard_readc()+0x9d>
            ch -= 0x60;
   42381:	83 e8 60             	sub    $0x60,%eax
   42384:	c3                   	retq   
        last_escape = 0x80;
   42385:	c6 05 7c 6c 01 00 80 	movb   $0x80,0x16c7c(%rip)        # 59008 <keyboard_readc()::last_escape>
        return 0;
   4238c:	b8 00 00 00 00       	mov    $0x0,%eax
   42391:	c3                   	retq   
        int ch = keymap[(data & 0x7F) | escape];
   42392:	83 e0 7f             	and    $0x7f,%eax
   42395:	09 d0                	or     %edx,%eax
   42397:	0f b6 c0             	movzbl %al,%eax
   4239a:	0f b6 88 80 4f 04 00 	movzbl 0x44f80(%rax),%ecx
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   423a1:	0f b6 d1             	movzbl %cl,%edx
   423a4:	81 ea fa 00 00 00    	sub    $0xfa,%edx
        return 0;
   423aa:	b8 00 00 00 00       	mov    $0x0,%eax
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   423af:	83 fa 02             	cmp    $0x2,%edx
   423b2:	0f 87 ad 00 00 00    	ja     42465 <keyboard_readc()+0x134>
            modifiers &= ~(1 << (ch - KEY_SHIFT));
   423b8:	83 c1 06             	add    $0x6,%ecx
   423bb:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   423c0:	d3 c0                	rol    %cl,%eax
   423c2:	20 05 41 6c 01 00    	and    %al,0x16c41(%rip)        # 59009 <keyboard_readc()::modifiers>
        return 0;
   423c8:	b8 00 00 00 00       	mov    $0x0,%eax
   423cd:	c3                   	retq   
        } else if (!(modifiers & MOD_SHIFT) != !(modifiers & MOD_CAPSLOCK)) {
   423ce:	89 d1                	mov    %edx,%ecx
   423d0:	83 f1 01             	xor    $0x1,%ecx
   423d3:	83 e1 01             	and    $0x1,%ecx
   423d6:	c0 ea 03             	shr    $0x3,%dl
   423d9:	83 f2 01             	xor    $0x1,%edx
   423dc:	83 e2 01             	and    $0x1,%edx
            ch -= 0x20;
   423df:	8d 70 e0             	lea    -0x20(%rax),%esi
   423e2:	38 d1                	cmp    %dl,%cl
   423e4:	0f 45 c6             	cmovne %esi,%eax
   423e7:	c3                   	retq   
    } else if (ch >= KEY_CAPSLOCK) {
   423e8:	3d fc 00 00 00       	cmp    $0xfc,%eax
   423ed:	7e 19                	jle    42408 <keyboard_readc()+0xd7>
        modifiers ^= 1 << (ch - KEY_SHIFT);
   423ef:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   423f5:	ba 01 00 00 00       	mov    $0x1,%edx
   423fa:	d3 e2                	shl    %cl,%edx
   423fc:	30 15 07 6c 01 00    	xor    %dl,0x16c07(%rip)        # 59009 <keyboard_readc()::modifiers>
        ch = 0;
   42402:	b8 00 00 00 00       	mov    $0x0,%eax
   42407:	c3                   	retq   
    } else if (ch >= KEY_SHIFT) {
   42408:	3d f9 00 00 00       	cmp    $0xf9,%eax
   4240d:	7e 19                	jle    42428 <keyboard_readc()+0xf7>
        modifiers |= 1 << (ch - KEY_SHIFT);
   4240f:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   42415:	ba 01 00 00 00       	mov    $0x1,%edx
   4241a:	d3 e2                	shl    %cl,%edx
   4241c:	08 15 e7 6b 01 00    	or     %dl,0x16be7(%rip)        # 59009 <keyboard_readc()::modifiers>
        ch = 0;
   42422:	b8 00 00 00 00       	mov    $0x0,%eax
   42427:	c3                   	retq   
    } else if (ch >= CKEY(0) && ch <= CKEY(21)) {
   42428:	83 c1 80             	add    $0xffffff80,%ecx
   4242b:	83 f9 15             	cmp    $0x15,%ecx
   4242e:	77 18                	ja     42448 <keyboard_readc()+0x117>
        ch = complex_keymap[ch - CKEY(0)].map[modifiers & 3];
   42430:	0f b6 15 d2 6b 01 00 	movzbl 0x16bd2(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   42437:	83 e2 03             	and    $0x3,%edx
   4243a:	83 c0 80             	add    $0xffffff80,%eax
   4243d:	48 98                	cltq   
   4243f:	0f b6 84 82 20 4f 04 	movzbl 0x44f20(%rdx,%rax,4),%eax
   42446:	00 
   42447:	c3                   	retq   
    } else if (ch < 0x80 && (modifiers & MOD_CONTROL)) {
   42448:	83 f8 7f             	cmp    $0x7f,%eax
   4244b:	7f 18                	jg     42465 <keyboard_readc()+0x134>
   4244d:	0f b6 15 b5 6b 01 00 	movzbl 0x16bb5(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   42454:	83 e2 02             	and    $0x2,%edx
        ch = 0;
   42457:	ba 00 00 00 00       	mov    $0x0,%edx
   4245c:	0f 45 c2             	cmovne %edx,%eax
   4245f:	c3                   	retq   
        return -1;
   42460:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   42465:	c3                   	retq   

0000000000042466 <lookup_symbol(unsigned long, char const**, unsigned long*)>:
bool lookup_symbol(uintptr_t addr, const char** name, uintptr_t* start) {
   42466:	f3 0f 1e fa          	endbr64 
   4246a:	55                   	push   %rbp
   4246b:	48 89 e5             	mov    %rsp,%rbp
   4246e:	41 55                	push   %r13
   42470:	41 54                	push   %r12
   42472:	53                   	push   %rbx
   42473:	48 89 d3             	mov    %rdx,%rbx
    if (!kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000]) {
   42476:	48 83 3d c2 3b 01 00 	cmpq   $0x0,0x13bc2(%rip)        # 56040 <kernel_pagetable+0x2040>
   4247d:	00 
   4247e:	75 0b                	jne    4248b <lookup_symbol(unsigned long, char const**, unsigned long*)+0x25>
        kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000] =
   42480:	48 c7 05 b5 3b 01 00 	movq   $0x1000083,0x13bb5(%rip)        # 56040 <kernel_pagetable+0x2040>
   42487:	83 00 00 01 
    size_t r = symtab.nsym;
   4248b:	48 8b 15 16 3c 00 00 	mov    0x3c16(%rip),%rdx        # 460a8 <symtab+0x8>
        auto& sym = symtab.sym[m];
   42492:	4c 8b 1d 07 3c 00 00 	mov    0x3c07(%rip),%r11        # 460a0 <symtab>
    size_t r = symtab.nsym;
   42499:	49 89 d2             	mov    %rdx,%r10
    size_t l = 0;
   4249c:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   424a2:	eb 17                	jmp    424bb <lookup_symbol(unsigned long, char const**, unsigned long*)+0x55>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   424a4:	4c 8d 60 01          	lea    0x1(%rax),%r12
                ? addr < sym.st_value + sym.st_size
   424a8:	49 39 d4             	cmp    %rdx,%r12
   424ab:	74 47                	je     424f4 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x8e>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   424ad:	48 39 79 20          	cmp    %rdi,0x20(%rcx)
   424b1:	77 41                	ja     424f4 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x8e>
        } else if (symtab.sym[m].st_value < addr) {
   424b3:	49 39 f8             	cmp    %rdi,%r8
   424b6:	72 6d                	jb     42525 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xbf>
        size_t m = l + ((r - l) >> 1);
   424b8:	49 89 c2             	mov    %rax,%r10
    while (l < r) {
   424bb:	4d 39 d1             	cmp    %r10,%r9
   424be:	73 6b                	jae    4252b <lookup_symbol(unsigned long, char const**, unsigned long*)+0xc5>
        size_t m = l + ((r - l) >> 1);
   424c0:	4c 89 d0             	mov    %r10,%rax
   424c3:	4c 29 c8             	sub    %r9,%rax
   424c6:	48 d1 e8             	shr    %rax
   424c9:	4c 01 c8             	add    %r9,%rax
        auto& sym = symtab.sym[m];
   424cc:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
   424d0:	48 c1 e1 03          	shl    $0x3,%rcx
   424d4:	49 89 cd             	mov    %rcx,%r13
   424d7:	4c 01 d9             	add    %r11,%rcx
        if (sym.st_value <= addr
   424da:	4c 8b 41 08          	mov    0x8(%rcx),%r8
   424de:	49 39 f8             	cmp    %rdi,%r8
   424e1:	77 d0                	ja     424b3 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x4d>
            && (sym.st_size != 0
   424e3:	4c 8b 61 10          	mov    0x10(%rcx),%r12
        if (sym.st_value <= addr
   424e7:	4d 85 e4             	test   %r12,%r12
   424ea:	74 b8                	je     424a4 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x3e>
                ? addr < sym.st_value + sym.st_size
   424ec:	4d 01 c4             	add    %r8,%r12
            && (sym.st_size != 0
   424ef:	49 39 fc             	cmp    %rdi,%r12
   424f2:	76 bf                	jbe    424b3 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x4d>
            if (name) {
   424f4:	48 85 f6             	test   %rsi,%rsi
   424f7:	74 0c                	je     42505 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x9f>
                *name = symtab.strtab + symtab.sym[m].st_name;
   424f9:	8b 01                	mov    (%rcx),%eax
   424fb:	48 03 05 ae 3b 00 00 	add    0x3bae(%rip),%rax        # 460b0 <symtab+0x10>
   42502:	48 89 06             	mov    %rax,(%rsi)
            return true;
   42505:	b8 01 00 00 00       	mov    $0x1,%eax
            if (start) {
   4250a:	48 85 db             	test   %rbx,%rbx
   4250d:	74 21                	je     42530 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xca>
                *start = symtab.sym[m].st_value;
   4250f:	48 8b 05 8a 3b 00 00 	mov    0x3b8a(%rip),%rax        # 460a0 <symtab>
   42516:	4a 8b 44 28 08       	mov    0x8(%rax,%r13,1),%rax
   4251b:	48 89 03             	mov    %rax,(%rbx)
            return true;
   4251e:	b8 01 00 00 00       	mov    $0x1,%eax
   42523:	eb 0b                	jmp    42530 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xca>
            l = m + 1;
   42525:	4c 8d 48 01          	lea    0x1(%rax),%r9
   42529:	eb 90                	jmp    424bb <lookup_symbol(unsigned long, char const**, unsigned long*)+0x55>
    return false;
   4252b:	b8 00 00 00 00       	mov    $0x0,%eax
}
   42530:	5b                   	pop    %rbx
   42531:	41 5c                	pop    %r12
   42533:	41 5d                	pop    %r13
   42535:	5d                   	pop    %rbp
   42536:	c3                   	retq   

0000000000042537 <log_vprintf(char const*, __va_list_tag*)>:
void log_vprintf(const char* format, va_list val) {
   42537:	f3 0f 1e fa          	endbr64 
   4253b:	55                   	push   %rbp
   4253c:	48 89 e5             	mov    %rsp,%rbp
   4253f:	48 83 ec 10          	sub    $0x10,%rsp
   42543:	48 89 fa             	mov    %rdi,%rdx
   42546:	48 89 f1             	mov    %rsi,%rcx
    log_printer p;
   42549:	48 c7 45 f8 10 4f 04 	movq   $0x44f10,-0x8(%rbp)
   42550:	00 
    p.vprintf(0, format, val);
   42551:	be 00 00 00 00       	mov    $0x0,%esi
   42556:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   4255a:	e8 6b 19 00 00       	callq  43eca <printer::vprintf(int, char const*, __va_list_tag*)>
}
   4255f:	c9                   	leaveq 
   42560:	c3                   	retq   

0000000000042561 <log_printf(char const*, ...)>:
void log_printf(const char* format, ...) {
   42561:	f3 0f 1e fa          	endbr64 
   42565:	55                   	push   %rbp
   42566:	48 89 e5             	mov    %rsp,%rbp
   42569:	48 83 ec 50          	sub    $0x50,%rsp
   4256d:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   42571:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   42575:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   42579:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   4257d:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   42581:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   42588:	48 8d 45 10          	lea    0x10(%rbp),%rax
   4258c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   42590:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   42594:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    log_vprintf(format, val);
   42598:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
   4259c:	e8 96 ff ff ff       	callq  42537 <log_vprintf(char const*, __va_list_tag*)>
}
   425a1:	c9                   	leaveq 
   425a2:	c3                   	retq   

00000000000425a3 <error_vprintf(int, int, char const*, __va_list_tag*)>:
int error_vprintf(int cpos, int color, const char* format, va_list val) {
   425a3:	f3 0f 1e fa          	endbr64 
   425a7:	55                   	push   %rbp
   425a8:	48 89 e5             	mov    %rsp,%rbp
   425ab:	41 56                	push   %r14
   425ad:	41 55                	push   %r13
   425af:	41 54                	push   %r12
   425b1:	53                   	push   %rbx
   425b2:	48 83 ec 20          	sub    $0x20,%rsp
   425b6:	41 89 fd             	mov    %edi,%r13d
   425b9:	41 89 f6             	mov    %esi,%r14d
   425bc:	49 89 d4             	mov    %rdx,%r12
   425bf:	48 89 cb             	mov    %rcx,%rbx
    __builtin_va_copy(val2, val);
   425c2:	48 8b 01             	mov    (%rcx),%rax
   425c5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   425c9:	48 8b 41 08          	mov    0x8(%rcx),%rax
   425cd:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   425d1:	48 8b 41 10          	mov    0x10(%rcx),%rax
   425d5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    log_vprintf(format, val2);
   425d9:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   425dd:	48 89 d7             	mov    %rdx,%rdi
   425e0:	e8 52 ff ff ff       	callq  42537 <log_vprintf(char const*, __va_list_tag*)>
    return console_vprintf(cpos, color, format, val);
   425e5:	48 89 d9             	mov    %rbx,%rcx
   425e8:	4c 89 e2             	mov    %r12,%rdx
   425eb:	44 89 f6             	mov    %r14d,%esi
   425ee:	44 89 ef             	mov    %r13d,%edi
   425f1:	e8 92 22 00 00       	callq  44888 <console_vprintf(int, int, char const*, __va_list_tag*)>
}
   425f6:	48 83 c4 20          	add    $0x20,%rsp
   425fa:	5b                   	pop    %rbx
   425fb:	41 5c                	pop    %r12
   425fd:	41 5d                	pop    %r13
   425ff:	41 5e                	pop    %r14
   42601:	5d                   	pop    %rbp
   42602:	c3                   	retq   

0000000000042603 <error_printf(int, int, char const*, ...)>:
int error_printf(int cpos, int color, const char* format, ...) {
   42603:	f3 0f 1e fa          	endbr64 
   42607:	55                   	push   %rbp
   42608:	48 89 e5             	mov    %rsp,%rbp
   4260b:	48 83 ec 50          	sub    $0x50,%rsp
   4260f:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   42613:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   42617:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   4261b:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   42622:	48 8d 45 10          	lea    0x10(%rbp),%rax
   42626:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   4262a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   4262e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = error_vprintf(cpos, color, format, val);
   42632:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   42636:	e8 68 ff ff ff       	callq  425a3 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   4263b:	c9                   	leaveq 
   4263c:	c3                   	retq   

000000000004263d <error_printf(char const*, ...)>:
void error_printf(const char* format, ...) {
   4263d:	f3 0f 1e fa          	endbr64 
   42641:	55                   	push   %rbp
   42642:	48 89 e5             	mov    %rsp,%rbp
   42645:	48 83 ec 50          	sub    $0x50,%rsp
   42649:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   4264d:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   42651:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   42655:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   42659:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   4265d:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   42664:	48 8d 45 10          	lea    0x10(%rbp),%rax
   42668:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   4266c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   42670:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
   42674:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   42678:	48 89 fa             	mov    %rdi,%rdx
   4267b:	be 00 c0 00 00       	mov    $0xc000,%esi
   42680:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42685:	e8 19 ff ff ff       	callq  425a3 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   4268a:	c9                   	leaveq 
   4268b:	c3                   	retq   

000000000004268c <assert_fail(char const*, int, char const*)>:
void assert_fail(const char* file, int line, const char* msg) {
   4268c:	f3 0f 1e fa          	endbr64 
   42690:	55                   	push   %rbp
   42691:	48 89 e5             	mov    %rsp,%rbp
   42694:	41 57                	push   %r15
   42696:	41 56                	push   %r14
   42698:	41 55                	push   %r13
   4269a:	41 54                	push   %r12
   4269c:	53                   	push   %rbx
   4269d:	48 83 ec 18          	sub    $0x18,%rsp
   426a1:	48 89 d1             	mov    %rdx,%rcx
    cursorpos = CPOS(23, 0);
   426a4:	c7 05 4e 69 07 00 30 	movl   $0x730,0x7694e(%rip)        # b8ffc <cursorpos>
   426ab:	07 00 00 
    error_printf("%s:%d: kernel assertion '%s' failed\n", file, line, msg);
   426ae:	89 f2                	mov    %esi,%edx
   426b0:	48 89 fe             	mov    %rdi,%rsi
   426b3:	bf 08 4c 04 00       	mov    $0x44c08,%edi
   426b8:	b0 00                	mov    $0x0,%al
   426ba:	e8 7e ff ff ff       	callq  4263d <error_printf(char const*, ...)>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
   426bf:	48 89 e0             	mov    %rsp,%rax
   426c2:	48 89 c2             	mov    %rax,%rdx
   426c5:	4c 8d a8 ff 0f 00 00 	lea    0xfff(%rax),%r13
   426cc:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    asm volatile("movq %%rbp, %0" : "=r" (x));
   426d3:	48 89 eb             	mov    %rbp,%rbx
    int frame = 1;
   426d6:	41 bc 01 00 00 00    	mov    $0x1,%r12d
        return rbp_ >= rsp_ && stack_top_ - rbp_ >= 16;
   426dc:	48 39 da             	cmp    %rbx,%rdx
   426df:	77 4a                	ja     4272b <assert_fail(char const*, int, char const*)+0x9f>
   426e1:	4c 89 e8             	mov    %r13,%rax
   426e4:	48 29 d8             	sub    %rbx,%rax
   426e7:	48 83 f8 0f          	cmp    $0xf,%rax
   426eb:	76 3e                	jbe    4272b <assert_fail(char const*, int, char const*)+0x9f>
        uintptr_t* rbpx = reinterpret_cast<uintptr_t*>(rbp_);
   426ed:	49 89 df             	mov    %rbx,%r15
        return rbpx[1];
   426f0:	4c 8b 73 08          	mov    0x8(%rbx),%r14
        if (lookup_symbol(ret_rip, &name, nullptr)) {
   426f4:	ba 00 00 00 00       	mov    $0x0,%edx
   426f9:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   426fd:	4c 89 f7             	mov    %r14,%rdi
   42700:	e8 61 fd ff ff       	callq  42466 <lookup_symbol(unsigned long, char const**, unsigned long*)>
   42705:	84 c0                	test   %al,%al
   42707:	74 29                	je     42732 <assert_fail(char const*, int, char const*)+0xa6>
            error_printf("  #%d  %p  <%s>\n", frame, ret_rip, name);
   42709:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
   4270d:	4c 89 f2             	mov    %r14,%rdx
   42710:	44 89 e6             	mov    %r12d,%esi
   42713:	bf eb 4d 04 00       	mov    $0x44deb,%edi
   42718:	b0 00                	mov    $0x0,%al
   4271a:	e8 1e ff ff ff       	callq  4263d <error_printf(char const*, ...)>
        rsp_ = rbp_ + 16;
   4271f:	48 8d 53 10          	lea    0x10(%rbx),%rdx
        rbp_ = rbpx[0];
   42723:	49 8b 1f             	mov    (%r15),%rbx
    for (backtracer bt(rdrbp(), rsp, round_up(rsp, PAGESIZE));
   42726:	41 ff c4             	inc    %r12d
   42729:	eb b1                	jmp    426dc <assert_fail(char const*, int, char const*)+0x50>
        check_keyboard();
   4272b:	e8 25 08 00 00       	callq  42f55 <check_keyboard()>
    while (true) {
   42730:	eb f9                	jmp    4272b <assert_fail(char const*, int, char const*)+0x9f>
        } else if (ret_rip) {
   42732:	4d 85 f6             	test   %r14,%r14
   42735:	74 e8                	je     4271f <assert_fail(char const*, int, char const*)+0x93>
            error_printf("  #%d  %p\n", frame, ret_rip);
   42737:	4c 89 f2             	mov    %r14,%rdx
   4273a:	44 89 e6             	mov    %r12d,%esi
   4273d:	bf fe 4d 04 00       	mov    $0x44dfe,%edi
   42742:	b0 00                	mov    $0x0,%al
   42744:	e8 f4 fe ff ff       	callq  4263d <error_printf(char const*, ...)>
   42749:	eb d4                	jmp    4271f <assert_fail(char const*, int, char const*)+0x93>

000000000004274b <init_hardware()>:
void init_hardware() {
   4274b:	f3 0f 1e fa          	endbr64 
   4274f:	55                   	push   %rbp
   42750:	48 89 e5             	mov    %rsp,%rbp
   42753:	53                   	push   %rbx
   42754:	48 83 ec 38          	sub    $0x38,%rsp
    stash_kernel_data(false);
   42758:	bf 00 00 00 00       	mov    $0x0,%edi
   4275d:	e8 fd f9 ff ff       	callq  4215f <stash_kernel_data(bool)>
    kernel_gdt_segments[0] = 0;
   42762:	48 c7 05 b3 08 01 00 	movq   $0x0,0x108b3(%rip)        # 53020 <kernel_gdt_segments>
   42769:	00 00 00 00 
    *segment = type
   4276d:	48 b8 00 00 00 00 00 	movabs $0x20980000000000,%rax
   42774:	98 20 00 
   42777:	48 89 05 aa 08 01 00 	mov    %rax,0x108aa(%rip)        # 53028 <kernel_gdt_segments+0x8>
   4277e:	48 b8 00 00 00 00 00 	movabs $0x920000000000,%rax
   42785:	92 00 00 
   42788:	48 89 05 a1 08 01 00 	mov    %rax,0x108a1(%rip)        # 53030 <kernel_gdt_segments+0x10>
   4278f:	48 b8 00 00 00 00 00 	movabs $0x20f80000000000,%rax
   42796:	f8 20 00 
   42799:	48 89 05 98 08 01 00 	mov    %rax,0x10898(%rip)        # 53038 <kernel_gdt_segments+0x18>
   427a0:	48 b8 00 00 00 00 00 	movabs $0xf20000000000,%rax
   427a7:	f2 00 00 
   427aa:	48 89 05 8f 08 01 00 	mov    %rax,0x1088f(%rip)        # 53040 <kernel_gdt_segments+0x20>
    set_sys_segment(&kernel_gdt_segments[SEGSEL_TASKSTATE >> 3],
   427b1:	ba 20 90 05 00       	mov    $0x59020,%edx
    segment[0] = ((addr & 0x0000000000FFFFFFUL) << 16)
   427b6:	48 89 d0             	mov    %rdx,%rax
   427b9:	48 c1 e0 10          	shl    $0x10,%rax
   427bd:	48 b9 00 00 ff ff ff 	movabs $0xffffff0000,%rcx
   427c4:	00 00 00 
   427c7:	48 21 c8             	and    %rcx,%rax
        | ((addr & 0x00000000FF000000UL) << 32)
   427ca:	48 89 d1             	mov    %rdx,%rcx
   427cd:	48 c1 e1 20          	shl    $0x20,%rcx
   427d1:	48 be 00 00 00 00 00 	movabs $0xff00000000000000,%rsi
   427d8:	00 00 ff 
   427db:	48 21 f1             	and    %rsi,%rcx
   427de:	48 09 c8             	or     %rcx,%rax
        | X86SEG_P;                   // segment present
   427e1:	48 b9 67 00 00 00 00 	movabs $0x890000000067,%rcx
   427e8:	89 00 00 
   427eb:	48 09 c8             	or     %rcx,%rax
   427ee:	48 89 05 53 08 01 00 	mov    %rax,0x10853(%rip)        # 53048 <kernel_gdt_segments+0x28>
    segment[1] = addr >> 32;
   427f5:	48 c1 ea 20          	shr    $0x20,%rdx
   427f9:	48 89 15 50 08 01 00 	mov    %rdx,0x10850(%rip)        # 53050 <kernel_gdt_segments+0x30>
    gdt.limit = (sizeof(uint64_t) * 3) - 1;
   42800:	66 c7 45 c6 17 00    	movw   $0x17,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   42806:	48 c7 45 c8 20 30 05 	movq   $0x53020,-0x38(%rbp)
   4280d:	00 
    asm volatile("lgdt %0" : : "m" (gdt.limit));
   4280e:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
    memset(kernel_pagetable, 0, sizeof(kernel_pagetable));
   42812:	ba 00 50 00 00       	mov    $0x5000,%edx
   42817:	be 00 00 00 00       	mov    $0x0,%esi
   4281c:	bf 00 40 05 00       	mov    $0x54000,%edi
   42821:	e8 c7 15 00 00       	callq  43ded <memset>
        (x86_64_pageentry_t) &kernel_pagetable[1] | PTE_P | PTE_W | PTE_U;
   42826:	b8 00 50 05 00       	mov    $0x55000,%eax
   4282b:	48 83 c8 07          	or     $0x7,%rax
   4282f:	48 89 05 ca 17 01 00 	mov    %rax,0x117ca(%rip)        # 54000 <kernel_pagetable>
        (x86_64_pageentry_t) &kernel_pagetable[2] | PTE_P | PTE_W | PTE_U;
   42836:	b8 00 60 05 00       	mov    $0x56000,%eax
   4283b:	48 83 c8 07          	or     $0x7,%rax
   4283f:	48 89 05 ba 27 01 00 	mov    %rax,0x127ba(%rip)        # 55000 <kernel_pagetable+0x1000>
        (x86_64_pageentry_t) &kernel_pagetable[3] | PTE_P | PTE_W | PTE_U;
   42846:	b8 00 70 05 00       	mov    $0x57000,%eax
   4284b:	48 83 c8 07          	or     $0x7,%rax
   4284f:	48 89 05 aa 37 01 00 	mov    %rax,0x137aa(%rip)        # 56000 <kernel_pagetable+0x2000>
        (x86_64_pageentry_t) &kernel_pagetable[4] | PTE_P | PTE_W | PTE_U;
   42856:	b8 00 80 05 00       	mov    $0x58000,%eax
   4285b:	48 83 c8 07          	or     $0x7,%rax
   4285f:	48 89 05 a2 37 01 00 	mov    %rax,0x137a2(%rip)        # 56008 <kernel_pagetable+0x2008>
    kernel_pagetable[1].entry[1] =
   42866:	48 c7 05 97 27 01 00 	movq   $0x40000083,0x12797(%rip)        # 55008 <kernel_pagetable+0x1008>
   4286d:	83 00 00 40 
    kernel_pagetable[1].entry[2] =
   42871:	b8 83 00 00 80       	mov    $0x80000083,%eax
   42876:	48 89 05 93 27 01 00 	mov    %rax,0x12793(%rip)        # 55010 <kernel_pagetable+0x1010>
    kernel_pagetable[1].entry[3] =
   4287d:	48 8d 80 00 00 00 40 	lea    0x40000000(%rax),%rax
   42884:	48 89 05 8d 27 01 00 	mov    %rax,0x1278d(%rip)        # 55018 <kernel_pagetable+0x1018>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4288b:	48 c7 45 d0 00 40 05 	movq   $0x54000,-0x30(%rbp)
   42892:	00 
   42893:	48 c7 45 d8 00 40 05 	movq   $0x54000,-0x28(%rbp)
   4289a:	00 
   4289b:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   428a2:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   428a9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   428b0:	00 
    real_find(va);
   428b1:	be 00 00 00 00       	mov    $0x0,%esi
   428b6:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   428ba:	e8 67 f4 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   428bf:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   428c3:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   428ca:	76 72                	jbe    4293e <init_hardware()+0x1f3>
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   428cc:	b8 00 40 05 00       	mov    $0x54000,%eax
   428d1:	0f 22 d8             	mov    %rax,%cr3
    cursorpos = 3 * CONSOLE_COLUMNS;
   428d4:	c7 05 1e 67 07 00 f0 	movl   $0xf0,0x7671e(%rip)        # b8ffc <cursorpos>
   428db:	00 00 00 
   428de:	ba 70 0b 05 00       	mov    $0x50b70,%edx
    for (int i = 0; i < 256; ++i) {
   428e3:	be 00 00 00 00       	mov    $0x0,%esi
        | ((addr & 0x00000000FFFF0000UL) << 32);
   428e8:	49 b8 00 00 00 00 00 	movabs $0xffff000000000000,%r8
   428ef:	00 ff ff 
   428f2:	49 b9 00 00 00 00 00 	movabs $0x600000000000,%r9
   428f9:	60 00 00 
   428fc:	48 bf 00 00 08 00 00 	movabs $0x8e0000080000,%rdi
   42903:	8e 00 00 
   42906:	e9 b3 00 00 00       	jmpq   429be <init_hardware()+0x273>
    int r = try_map(pa, perm);
   4290b:	ba 07 00 00 00       	mov    $0x7,%edx
   42910:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42914:	e8 11 f5 ff ff       	callq  41e2a <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   42919:	85 c0                	test   %eax,%eax
   4291b:	75 28                	jne    42945 <init_hardware()+0x1fa>
    return find(va_ + delta);
   4291d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   42921:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   42928:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   4292c:	e8 f5 f3 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   42931:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   42935:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4293c:	77 8e                	ja     428cc <init_hardware()+0x181>
        if (it.va() != 0) {
   4293e:	48 85 f6             	test   %rsi,%rsi
   42941:	74 da                	je     4291d <init_hardware()+0x1d2>
   42943:	eb c6                	jmp    4290b <init_hardware()+0x1c0>
    assert(r == 0);
   42945:	ba d5 49 04 00       	mov    $0x449d5,%edx
   4294a:	be b1 00 00 00       	mov    $0xb1,%esi
   4294f:	bf dc 49 04 00       	mov    $0x449dc,%edi
   42954:	e8 33 fd ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
    assert(cpuid(1).edx & (1 << 9));
   42959:	ba 09 4e 04 00       	mov    $0x44e09,%edx
   4295e:	be b7 00 00 00       	mov    $0xb7,%esi
   42963:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   42968:	e8 1f fd ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   4296d:	ba 30 4c 04 00       	mov    $0x44c30,%edx
   42972:	be b9 00 00 00       	mov    $0xb9,%esi
   42977:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   4297c:	e8 0b fd ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42981:	ba 58 4c 04 00       	mov    $0x44c58,%edx
   42986:	be ba 00 00 00       	mov    $0xba,%esi
   4298b:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   42990:	e8 f7 fc ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42995:	48 89 c1             	mov    %rax,%rcx
   42998:	48 c1 e1 20          	shl    $0x20,%rcx
   4299c:	4c 21 c1             	and    %r8,%rcx
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   4299f:	44 0f b7 d0          	movzwl %ax,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   429a3:	4d 09 ca             	or     %r9,%r10
   429a6:	4c 09 d1             	or     %r10,%rcx
   429a9:	48 09 f9             	or     %rdi,%rcx
   429ac:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   429af:	48 c1 e8 20          	shr    $0x20,%rax
   429b3:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   429b7:	83 c6 01             	add    $0x1,%esi
   429ba:	48 83 c2 10          	add    $0x10,%rdx
        uintptr_t addr = interrupt_descriptors[i].gd_low;
   429be:	48 8b 02             	mov    (%rdx),%rax
        set_gate(&interrupt_descriptors[i], addr,
   429c1:	83 fe 03             	cmp    $0x3,%esi
   429c4:	74 cf                	je     42995 <init_hardware()+0x24a>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   429c6:	48 89 c1             	mov    %rax,%rcx
   429c9:	48 c1 e1 20          	shl    $0x20,%rcx
   429cd:	4c 21 c1             	and    %r8,%rcx
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   429d0:	44 0f b7 d0          	movzwl %ax,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   429d4:	4c 09 d1             	or     %r10,%rcx
   429d7:	48 09 f9             	or     %rdi,%rcx
   429da:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   429dd:	48 c1 e8 20          	shr    $0x20,%rax
   429e1:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   429e5:	83 c6 01             	add    $0x1,%esi
   429e8:	48 83 c2 10          	add    $0x10,%rdx
   429ec:	81 fe 00 01 00 00    	cmp    $0x100,%esi
   429f2:	75 ca                	jne    429be <init_hardware()+0x273>
__always_inline x86_64_cpuid_t cpuid(uint32_t leaf) {
    x86_64_cpuid_t ret;
    asm volatile("cpuid"
                 : "=a" (ret.eax), "=b" (ret.ebx),
                   "=c" (ret.ecx), "=d" (ret.edx)
                 : "a" (leaf));
   429f4:	b8 01 00 00 00       	mov    $0x1,%eax
   429f9:	0f a2                	cpuid  
    assert(cpuid(1).edx & (1 << 9));
   429fb:	f6 c6 02             	test   $0x2,%dh
   429fe:	0f 84 55 ff ff ff    	je     42959 <init_hardware()+0x20e>
    return ret;
}

__always_inline uint64_t rdmsr(uint32_t msr) {
    uint64_t low, high;
    asm volatile("rdmsr" : "=a" (low), "=d" (high) : "c" (msr));
   42a04:	b9 1b 00 00 00       	mov    $0x1b,%ecx
   42a09:	0f 32                	rdmsr  
    return low | (high << 32);
   42a0b:	48 c1 e2 20          	shl    $0x20,%rdx
   42a0f:	48 09 c2             	or     %rax,%rdx
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42a12:	f6 c4 08             	test   $0x8,%ah
   42a15:	0f 84 52 ff ff ff    	je     4296d <init_hardware()+0x222>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42a1b:	48 b9 00 f0 ff ff ff 	movabs $0xfffffffff000,%rcx
   42a22:	ff 00 00 
   42a25:	48 21 ca             	and    %rcx,%rdx
   42a28:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   42a2d:	48 39 c2             	cmp    %rax,%rdx
   42a30:	0f 85 4b ff ff ff    	jne    42981 <init_hardware()+0x236>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42a36:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   42a3b:	ba 21 00 00 00       	mov    $0x21,%edx
   42a40:	ee                   	out    %al,(%dx)
   42a41:	ba a1 00 00 00       	mov    $0xa1,%edx
   42a46:	ee                   	out    %al,(%dx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42a47:	b8 90 59 04 00       	mov    $0x45990,%eax
   42a4c:	48 3d 90 59 04 00    	cmp    $0x45990,%rax
   42a52:	74 12                	je     42a66 <init_hardware()+0x31b>
   42a54:	48 89 c3             	mov    %rax,%rbx
        (*fp)();
   42a57:	ff 13                	callq  *(%rbx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42a59:	48 83 c3 08          	add    $0x8,%rbx
   42a5d:	48 81 fb 90 59 04 00 	cmp    $0x45990,%rbx
   42a64:	75 f1                	jne    42a57 <init_hardware()+0x30c>
    memset(&kernel_taskstate, 0, sizeof(kernel_taskstate));
   42a66:	ba 68 00 00 00       	mov    $0x68,%edx
   42a6b:	be 00 00 00 00       	mov    $0x0,%esi
   42a70:	bf 20 90 05 00       	mov    $0x59020,%edi
   42a75:	e8 73 13 00 00       	callq  43ded <memset>
    kernel_taskstate.ts_rsp[0] = KERNEL_STACK_TOP;
   42a7a:	48 c7 05 9f 65 01 00 	movq   $0x80000,0x1659f(%rip)        # 59024 <kernel_taskstate+0x4>
   42a81:	00 00 08 00 
    gdt.limit = sizeof(kernel_gdt_segments) - 1;
   42a85:	66 c7 45 c6 37 00    	movw   $0x37,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   42a8b:	48 c7 45 c8 20 30 05 	movq   $0x53020,-0x38(%rbp)
   42a92:	00 
    idt.limit = sizeof(interrupt_descriptors) - 1;
   42a93:	66 c7 45 d6 ff 0f    	movw   $0xfff,-0x2a(%rbp)
    idt.base = (uint64_t) interrupt_descriptors;
   42a99:	48 c7 45 d8 70 0b 05 	movq   $0x50b70,-0x28(%rbp)
   42aa0:	00 
                 : "memory", "cc");
   42aa1:	b8 28 00 00 00       	mov    $0x28,%eax
   42aa6:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
   42aaa:	0f 00 d8             	ltr    %ax
   42aad:	0f 01 5d d6          	lidt   -0x2a(%rbp)
                 : : "a" ((uint16_t) SEGSEL_KERN_DATA));
   42ab1:	b8 10 00 00 00       	mov    $0x10,%eax
   42ab6:	8e e0                	mov    %eax,%fs
   42ab8:	8e e8                	mov    %eax,%gs
    asm volatile("movq %%cr0, %0" : "=r" (x));
   42aba:	0f 20 c0             	mov    %cr0,%rax
    wrcr0(cr0);
   42abd:	0d 23 00 05 80       	or     $0x80050023,%eax
    asm volatile("movq %0, %%cr0" : : "r" (x));
   42ac2:	0f 22 c0             	mov    %rax,%cr0
}
__always_inline void wrmsr(uint32_t msr, uint64_t x) {
    asm volatile("wrmsr" : : "c" (msr), "a" ((uint32_t) x), "d" (x >> 32));
   42ac5:	b9 81 00 00 c0       	mov    $0xc0000081,%ecx
   42aca:	b8 00 00 00 00       	mov    $0x0,%eax
   42acf:	ba 08 00 18 00       	mov    $0x180008,%edx
   42ad4:	0f 30                	wrmsr  
    wrmsr(MSR_IA32_LSTAR, reinterpret_cast<uint64_t>(syscall_entry));
   42ad6:	b8 d6 0a 04 00       	mov    $0x40ad6,%eax
   42adb:	48 89 c2             	mov    %rax,%rdx
   42ade:	48 c1 ea 20          	shr    $0x20,%rdx
   42ae2:	b9 82 00 00 c0       	mov    $0xc0000082,%ecx
   42ae7:	0f 30                	wrmsr  
   42ae9:	b9 84 00 00 c0       	mov    $0xc0000084,%ecx
   42aee:	b8 00 77 04 00       	mov    $0x47700,%eax
   42af3:	ba 00 00 00 00       	mov    $0x0,%edx
   42af8:	0f 30                	wrmsr  
    return reg_[reg].v;
   42afa:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   42aff:	8b 90 f0 00 00 00    	mov    0xf0(%rax),%edx
    write(reg_svr, (read(reg_svr) & ~0xFF) | 0x100 | vector);
   42b05:	81 e2 00 fe ff ff    	and    $0xfffffe00,%edx
   42b0b:	81 ca 3f 01 00 00    	or     $0x13f,%edx
    reg_[reg].v = v;
   42b11:	89 90 f0 00 00 00    	mov    %edx,0xf0(%rax)
   42b17:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%rax)
   42b1e:	00 00 00 
   42b21:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%rax)
   42b28:	00 02 00 
   42b2b:	c7 80 80 03 00 00 00 	movl   $0x0,0x380(%rax)
   42b32:	00 00 00 
   42b35:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%rax)
   42b3c:	00 01 00 
   42b3f:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%rax)
   42b46:	00 01 00 
   42b49:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%rax)
   42b50:	00 00 00 
   42b53:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
   42b5a:	00 00 00 
    return reg_[reg].v;
   42b5d:	8b 90 80 02 00 00    	mov    0x280(%rax),%edx
    reg_[reg].v = v;
   42b63:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
   42b6a:	00 00 00 
}
   42b6d:	48 83 c4 38          	add    $0x38,%rsp
   42b71:	5b                   	pop    %rbx
   42b72:	5d                   	pop    %rbp
   42b73:	c3                   	retq   

0000000000042b74 <check_pagetable(x86_64_pagetable*)>:
void check_pagetable(x86_64_pagetable* pagetable) {
   42b74:	f3 0f 1e fa          	endbr64 
   42b78:	55                   	push   %rbp
   42b79:	48 89 e5             	mov    %rsp,%rbp
   42b7c:	53                   	push   %rbx
   42b7d:	48 83 ec 28          	sub    $0x28,%rsp
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   42b81:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   42b87:	0f 85 85 01 00 00    	jne    42d12 <check_pagetable(x86_64_pagetable*)+0x19e>
   42b8d:	48 89 fb             	mov    %rdi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42b90:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
   42b94:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   42b98:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42b9f:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42ba6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42bad:	00 
    real_find(va);
   42bae:	be 72 0a 04 00       	mov    $0x40a72,%esi
   42bb3:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42bb7:	e8 6a f1 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42bbc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42bc0:	48 8b 30             	mov    (%rax),%rsi
   42bc3:	40 f6 c6 01          	test   $0x1,%sil
   42bc7:	0f 84 6e 01 00 00    	je     42d3b <check_pagetable(x86_64_pagetable*)+0x1c7>
        if (level_ > 0) {
   42bcd:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   42bd0:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42bd7:	ff 0f 00 
   42bda:	48 21 f0             	and    %rsi,%rax
   42bdd:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   42be0:	85 c9                	test   %ecx,%ecx
   42be2:	0f 8e 3e 01 00 00    	jle    42d26 <check_pagetable(x86_64_pagetable*)+0x1b2>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   42be8:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42bec:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42bf3:	48 d3 e0             	shl    %cl,%rax
   42bf6:	48 f7 d0             	not    %rax
   42bf9:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42bfd:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   42c00:	ba 72 0a 04 00       	mov    $0x40a72,%edx
   42c05:	48 39 c2             	cmp    %rax,%rdx
   42c08:	0f 85 2d 01 00 00    	jne    42d3b <check_pagetable(x86_64_pagetable*)+0x1c7>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42c0e:	48 c7 45 d0 00 40 05 	movq   $0x54000,-0x30(%rbp)
   42c15:	00 
   42c16:	48 c7 45 d8 00 40 05 	movq   $0x54000,-0x28(%rbp)
   42c1d:	00 
   42c1e:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42c25:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42c2c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42c33:	00 
    real_find(va);
   42c34:	48 89 de             	mov    %rbx,%rsi
   42c37:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42c3b:	e8 e6 f0 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42c40:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42c44:	48 8b 30             	mov    (%rax),%rsi
   42c47:	40 f6 c6 01          	test   $0x1,%sil
   42c4b:	0f 84 13 01 00 00    	je     42d64 <check_pagetable(x86_64_pagetable*)+0x1f0>
        if (level_ > 0) {
   42c51:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   42c54:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42c5b:	ff 0f 00 
   42c5e:	48 21 f0             	and    %rsi,%rax
   42c61:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   42c64:	85 c9                	test   %ecx,%ecx
   42c66:	0f 8e e3 00 00 00    	jle    42d4f <check_pagetable(x86_64_pagetable*)+0x1db>
   42c6c:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42c70:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42c77:	48 d3 e0             	shl    %cl,%rax
   42c7a:	48 f7 d0             	not    %rax
   42c7d:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42c81:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   42c84:	48 39 c3             	cmp    %rax,%rbx
   42c87:	0f 85 d7 00 00 00    	jne    42d64 <check_pagetable(x86_64_pagetable*)+0x1f0>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42c8d:	48 89 5d d0          	mov    %rbx,-0x30(%rbp)
   42c91:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   42c95:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42c9c:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42ca3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42caa:	00 
    real_find(va);
   42cab:	be 00 40 05 00       	mov    $0x54000,%esi
   42cb0:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42cb4:	e8 6d f0 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42cb9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42cbd:	48 8b 30             	mov    (%rax),%rsi
   42cc0:	40 f6 c6 01          	test   $0x1,%sil
   42cc4:	0f 84 c3 00 00 00    	je     42d8d <check_pagetable(x86_64_pagetable*)+0x219>
        if (level_ > 0) {
   42cca:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   42ccd:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42cd4:	ff 0f 00 
   42cd7:	48 21 f0             	and    %rsi,%rax
   42cda:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   42cdd:	85 c9                	test   %ecx,%ecx
   42cdf:	0f 8e 93 00 00 00    	jle    42d78 <check_pagetable(x86_64_pagetable*)+0x204>
   42ce5:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42ce9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42cf0:	48 d3 e0             	shl    %cl,%rax
   42cf3:	48 f7 d0             	not    %rax
   42cf6:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42cfa:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   42cfd:	ba 00 40 05 00       	mov    $0x54000,%edx
   42d02:	48 39 c2             	cmp    %rax,%rdx
   42d05:	0f 85 82 00 00 00    	jne    42d8d <check_pagetable(x86_64_pagetable*)+0x219>
}
   42d0b:	48 83 c4 28          	add    $0x28,%rsp
   42d0f:	5b                   	pop    %rbx
   42d10:	5d                   	pop    %rbp
   42d11:	c3                   	retq   
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   42d12:	ba 90 4c 04 00       	mov    $0x44c90,%edx
   42d17:	be 17 01 00 00       	mov    $0x117,%esi
   42d1c:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   42d21:	e8 66 f9 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42d26:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42d2d:	ff 0f 00 
   42d30:	48 89 f2             	mov    %rsi,%rdx
   42d33:	48 21 c2             	and    %rax,%rdx
   42d36:	e9 ad fe ff ff       	jmpq   42be8 <check_pagetable(x86_64_pagetable*)+0x74>
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   42d3b:	ba c0 4c 04 00       	mov    $0x44cc0,%edx
   42d40:	be 18 01 00 00       	mov    $0x118,%esi
   42d45:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   42d4a:	e8 3d f9 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
   42d4f:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42d56:	ff 0f 00 
   42d59:	48 89 f2             	mov    %rsi,%rdx
   42d5c:	48 21 c2             	and    %rax,%rdx
   42d5f:	e9 08 ff ff ff       	jmpq   42c6c <check_pagetable(x86_64_pagetable*)+0xf8>
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   42d64:	ba 18 4d 04 00       	mov    $0x44d18,%edx
   42d69:	be 1a 01 00 00       	mov    $0x11a,%esi
   42d6e:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   42d73:	e8 14 f9 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
   42d78:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42d7f:	ff 0f 00 
   42d82:	48 89 f2             	mov    %rsi,%rdx
   42d85:	48 21 c2             	and    %rax,%rdx
   42d88:	e9 58 ff ff ff       	jmpq   42ce5 <check_pagetable(x86_64_pagetable*)+0x171>
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   42d8d:	ba 68 4d 04 00       	mov    $0x44d68,%edx
   42d92:	be 1c 01 00 00       	mov    $0x11c,%esi
   42d97:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   42d9c:	e8 eb f8 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
   42da1:	90                   	nop

0000000000042da2 <pcistate::next(int) const>:
int pcistate::next(int addr) const {
   42da2:	f3 0f 1e fa          	endbr64 
   42da6:	55                   	push   %rbp
   42da7:	48 89 e5             	mov    %rsp,%rbp
    }
    return addr;
}

inline uint32_t pcistate::readl(int addr) const {
    assert(addr >= 0 && !(addr & 3));
   42daa:	89 f0                	mov    %esi,%eax
   42dac:	83 c0 0c             	add    $0xc,%eax
   42daf:	78 23                	js     42dd4 <pcistate::next(int) const+0x32>
   42db1:	a8 03                	test   $0x3,%al
   42db3:	75 1f                	jne    42dd4 <pcistate::next(int) const+0x32>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42db5:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42dba:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42dbf:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42dc0:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42dc5:	ed                   	in     (%dx),%eax
   42dc6:	89 c2                	mov    %eax,%edx
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42dc8:	bf f8 0c 00 00       	mov    $0xcf8,%edi
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42dcd:	b9 fc 0c 00 00       	mov    $0xcfc,%ecx
   42dd2:	eb 51                	jmp    42e25 <pcistate::next(int) const+0x83>
    assert(addr >= 0 && !(addr & 3));
   42dd4:	ba 51 4e 04 00       	mov    $0x44e51,%edx
   42dd9:	be 57 00 00 00       	mov    $0x57,%esi
   42dde:	bf 48 4e 04 00       	mov    $0x44e48,%edi
   42de3:	e8 a4 f8 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
    assert(addr >= 0 && addr < 0x1000000);
   42de8:	ba 6a 4e 04 00       	mov    $0x44e6a,%edx
   42ded:	be 4a 00 00 00       	mov    $0x4a,%esi
   42df2:	bf 48 4e 04 00       	mov    $0x44e48,%edi
   42df7:	e8 90 f8 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
            addr += make_addr(0, 0, 1);
   42dfc:	81 c6 00 01 00 00    	add    $0x100,%esi
        if (addr >= addr_end) {
   42e02:	81 fe ff ff 07 00    	cmp    $0x7ffff,%esi
   42e08:	7f 58                	jg     42e62 <pcistate::next(int) const+0xc0>
        x = readl(addr + config_lthb);
   42e0a:	8d 46 0c             	lea    0xc(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   42e0d:	40 f6 c6 03          	test   $0x3,%sil
   42e11:	75 37                	jne    42e4a <pcistate::next(int) const+0xa8>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42e13:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42e18:	89 fa                	mov    %edi,%edx
   42e1a:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42e1b:	89 ca                	mov    %ecx,%edx
   42e1d:	ed                   	in     (%dx),%eax
   42e1e:	89 c2                	mov    %eax,%edx
        if (x != uint32_t(-1)) {
   42e20:	83 f8 ff             	cmp    $0xffffffff,%eax
   42e23:	75 39                	jne    42e5e <pcistate::next(int) const+0xbc>
    assert(addr >= 0 && addr < 0x1000000);
   42e25:	81 fe ff ff ff 00    	cmp    $0xffffff,%esi
   42e2b:	77 bb                	ja     42de8 <pcistate::next(int) const+0x46>
            && (x == uint32_t(-1) || !(x & 0x800000))) {
   42e2d:	f7 c6 00 07 00 00    	test   $0x700,%esi
   42e33:	75 c7                	jne    42dfc <pcistate::next(int) const+0x5a>
   42e35:	83 fa ff             	cmp    $0xffffffff,%edx
   42e38:	74 08                	je     42e42 <pcistate::next(int) const+0xa0>
   42e3a:	f7 c2 00 00 80 00    	test   $0x800000,%edx
   42e40:	75 ba                	jne    42dfc <pcistate::next(int) const+0x5a>
            addr += make_addr(0, 1, 0);
   42e42:	81 c6 00 08 00 00    	add    $0x800,%esi
   42e48:	eb b8                	jmp    42e02 <pcistate::next(int) const+0x60>
    assert(addr >= 0 && !(addr & 3));
   42e4a:	ba 51 4e 04 00       	mov    $0x44e51,%edx
   42e4f:	be 57 00 00 00       	mov    $0x57,%esi
   42e54:	bf 48 4e 04 00       	mov    $0x44e48,%edi
   42e59:	e8 2e f8 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
   42e5e:	89 f0                	mov    %esi,%eax
   42e60:	eb 05                	jmp    42e67 <pcistate::next(int) const+0xc5>
            return -1;
   42e62:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   42e67:	5d                   	pop    %rbp
   42e68:	c3                   	retq   

0000000000042e69 <poweroff()>:
void poweroff() {
   42e69:	f3 0f 1e fa          	endbr64 
   42e6d:	55                   	push   %rbp
   42e6e:	48 89 e5             	mov    %rsp,%rbp
   42e71:	53                   	push   %rbx
   42e72:	48 83 ec 08          	sub    $0x8,%rsp
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42e76:	b8 00 00 00 80       	mov    $0x80000000,%eax
   42e7b:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42e80:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42e81:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   42e86:	89 c2                	mov    %eax,%edx
   42e88:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   42e89:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   42e8e:	0f 84 ba 00 00 00    	je     42f4e <poweroff()+0xe5>
   42e94:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   42e99:	0f 84 af 00 00 00    	je     42f4e <poweroff()+0xe5>
   42e9f:	be 00 00 00 00       	mov    $0x0,%esi
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42ea4:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
        addr = next(addr);
   42ea9:	bf 00 90 05 00       	mov    $0x59000,%edi
   42eae:	e8 ef fe ff ff       	callq  42da2 <pcistate::next(int) const>
   42eb3:	89 c6                	mov    %eax,%esi
    while (addr >= 0 && !predicate(addr)) {
   42eb5:	85 c0                	test   %eax,%eax
   42eb7:	78 52                	js     42f0b <poweroff()+0xa2>
    assert(addr >= 0 && !(addr & 3));
   42eb9:	40 f6 c6 03          	test   $0x3,%sil
   42ebd:	75 67                	jne    42f26 <poweroff()+0xbd>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42ebf:	89 f0                	mov    %esi,%eax
   42ec1:	0d 00 00 00 80       	or     $0x80000000,%eax
   42ec6:	89 da                	mov    %ebx,%edx
   42ec8:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42ec9:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   42ece:	89 c2                	mov    %eax,%edx
   42ed0:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   42ed1:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   42ed6:	74 07                	je     42edf <poweroff()+0x76>
   42ed8:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   42edd:	75 ca                	jne    42ea9 <poweroff()+0x40>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   42edf:	8d 46 40             	lea    0x40(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   42ee2:	40 f6 c6 03          	test   $0x3,%sil
   42ee6:	75 52                	jne    42f3a <poweroff()+0xd1>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42ee8:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42eed:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42ef2:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42ef3:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42ef8:	ed                   	in     (%dx),%eax
   42ef9:	89 c2                	mov    %eax,%edx
   42efb:	81 e2 c0 ff 00 00    	and    $0xffc0,%edx
        outw(pm_io_base + 4, 0x2000);
   42f01:	83 c2 04             	add    $0x4,%edx
    asm volatile("outw %0, %w1" : : "a" (data), "d" (port));
   42f04:	b8 00 20 00 00       	mov    $0x2000,%eax
   42f09:	66 ef                	out    %ax,(%dx)
    console_printf(CPOS(24, 0), 0xC000, "Cannot power off!\n");
   42f0b:	ba 88 4e 04 00       	mov    $0x44e88,%edx
   42f10:	be 00 c0 00 00       	mov    $0xc000,%esi
   42f15:	bf 80 07 00 00       	mov    $0x780,%edi
   42f1a:	b8 00 00 00 00       	mov    $0x0,%eax
   42f1f:	e8 cd 19 00 00       	callq  448f1 <console_printf(int, int, char const*, ...)>
    while (true) {
   42f24:	eb fe                	jmp    42f24 <poweroff()+0xbb>
    assert(addr >= 0 && !(addr & 3));
   42f26:	ba 51 4e 04 00       	mov    $0x44e51,%edx
   42f2b:	be 57 00 00 00       	mov    $0x57,%esi
   42f30:	bf 48 4e 04 00       	mov    $0x44e48,%edi
   42f35:	e8 52 f7 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
   42f3a:	ba 51 4e 04 00       	mov    $0x44e51,%edx
   42f3f:	be 57 00 00 00       	mov    $0x57,%esi
   42f44:	bf 48 4e 04 00       	mov    $0x44e48,%edi
   42f49:	e8 3e f7 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   42f4e:	b8 40 00 00 00       	mov    $0x40,%eax
   42f53:	eb 93                	jmp    42ee8 <poweroff()+0x7f>

0000000000042f55 <check_keyboard()>:
int check_keyboard() {
   42f55:	f3 0f 1e fa          	endbr64 
   42f59:	55                   	push   %rbp
   42f5a:	48 89 e5             	mov    %rsp,%rbp
   42f5d:	41 54                	push   %r12
   42f5f:	53                   	push   %rbx
   42f60:	48 83 ec 20          	sub    $0x20,%rsp
    int c = keyboard_readc();
   42f64:	e8 c8 f3 ff ff       	callq  42331 <keyboard_readc()>
   42f69:	41 89 c4             	mov    %eax,%r12d
    if (c == 'a' || c == 'f' || c == 'e') {
   42f6c:	8d 40 9b             	lea    -0x65(%rax),%eax
   42f6f:	83 f8 01             	cmp    $0x1,%eax
   42f72:	76 1b                	jbe    42f8f <check_keyboard()+0x3a>
   42f74:	41 83 fc 61          	cmp    $0x61,%r12d
   42f78:	74 15                	je     42f8f <check_keyboard()+0x3a>
    } else if (c == 0x03 || c == 'q') {
   42f7a:	41 83 fc 03          	cmp    $0x3,%r12d
   42f7e:	74 0a                	je     42f8a <check_keyboard()+0x35>
   42f80:	41 83 fc 71          	cmp    $0x71,%r12d
   42f84:	0f 85 cd 00 00 00    	jne    43057 <check_keyboard()+0x102>
        poweroff();
   42f8a:	e8 da fe ff ff       	callq  42e69 <poweroff()>
   42f8f:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   42f94:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        memset(pt, 0, PAGESIZE * 2);
   42f9a:	ba 00 20 00 00       	mov    $0x2000,%edx
   42f9f:	be 00 00 00 00       	mov    $0x0,%esi
   42fa4:	bf 00 10 00 00       	mov    $0x1000,%edi
   42fa9:	e8 3f 0e 00 00       	callq  43ded <memset>
        pt[0].entry[0] = 0x2000 | PTE_P | PTE_W;
   42fae:	48 c7 04 25 00 10 00 	movq   $0x2003,0x1000
   42fb5:	00 03 20 00 00 
        pt[1].entry[0] = PTE_P | PTE_W | PTE_PS;
   42fba:	48 c7 04 25 00 20 00 	movq   $0x83,0x2000
   42fc1:	00 83 00 00 00 
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   42fc6:	b8 00 10 00 00       	mov    $0x1000,%eax
   42fcb:	0f 22 d8             	mov    %rax,%cr3
        multiboot_info[0] = 4;
   42fce:	c7 45 dc 04 00 00 00 	movl   $0x4,-0x24(%rbp)
            argument = "allocators";
   42fd5:	b8 9b 4e 04 00       	mov    $0x44e9b,%eax
        if (c == 'a') {
   42fda:	41 83 fc 61          	cmp    $0x61,%r12d
   42fde:	74 12                	je     42ff2 <check_keyboard()+0x9d>
            argument = "forkexit";
   42fe0:	41 83 fc 65          	cmp    $0x65,%r12d
   42fe4:	b8 a6 4e 04 00       	mov    $0x44ea6,%eax
   42fe9:	ba ab 4e 04 00       	mov    $0x44eab,%edx
   42fee:	48 0f 44 c2          	cmove  %rdx,%rax
        assert(argument_ptr < 0x100000000L);
   42ff2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   42ff7:	48 39 d0             	cmp    %rdx,%rax
   42ffa:	77 67                	ja     43063 <check_keyboard()+0x10e>
        multiboot_info[4] = (uint32_t) argument_ptr;
   42ffc:	89 45 ec             	mov    %eax,-0x14(%rbp)
        stash_kernel_data(true);
   42fff:	bf 01 00 00 00       	mov    $0x1,%edi
   43004:	e8 56 f1 ff ff       	callq  4215f <stash_kernel_data(bool)>
        uintptr_t zero_size = (uintptr_t) &_kernel_end - (uintptr_t) &_edata;
   43009:	bb 98 90 05 00       	mov    $0x59098,%ebx
   4300e:	48 81 eb 70 1b 05 00 	sub    $0x51b70,%rbx
        uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   43015:	ba 70 1b 05 00       	mov    $0x51b70,%edx
   4301a:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
        uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   43021:	be 00 60 04 01       	mov    $0x1046000,%esi
   43026:	48 81 ee 70 1b 05 00 	sub    $0x51b70,%rsi
        memcpy(&_data_start, data_stash, data_size);
   4302d:	bf 00 60 04 00       	mov    $0x46000,%edi
   43032:	e8 45 0d 00 00       	callq  43d7c <memcpy>
        memset(&_edata, 0, zero_size);
   43037:	48 89 da             	mov    %rbx,%rdx
   4303a:	be 00 00 00 00       	mov    $0x0,%esi
   4303f:	bf 70 1b 05 00       	mov    $0x51b70,%edi
   43044:	e8 a4 0d 00 00       	callq  43ded <memset>
                     : : "b" (multiboot_info) : "memory");
   43049:	48 8d 5d dc          	lea    -0x24(%rbp),%rbx
   4304d:	b8 02 b0 ad 2b       	mov    $0x2badb002,%eax
   43052:	e9 a9 cf ff ff       	jmpq   40000 <_kernel_start>
}
   43057:	44 89 e0             	mov    %r12d,%eax
   4305a:	48 83 c4 20          	add    $0x20,%rsp
   4305e:	5b                   	pop    %rbx
   4305f:	41 5c                	pop    %r12
   43061:	5d                   	pop    %rbp
   43062:	c3                   	retq   
        assert(argument_ptr < 0x100000000L);
   43063:	ba b4 4e 04 00       	mov    $0x44eb4,%edx
   43068:	be f7 02 00 00       	mov    $0x2f7,%esi
   4306d:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   43072:	e8 15 f6 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>

0000000000043077 <panic(char const*, ...)>:
void panic(const char* format, ...) {
   43077:	f3 0f 1e fa          	endbr64 
   4307b:	55                   	push   %rbp
   4307c:	48 89 e5             	mov    %rsp,%rbp
   4307f:	53                   	push   %rbx
   43080:	48 83 ec 58          	sub    $0x58,%rsp
   43084:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
   43088:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
   4308c:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
   43090:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
   43094:	4c 89 4d e8          	mov    %r9,-0x18(%rbp)
    va_start(val, format);
   43098:	c7 45 a8 08 00 00 00 	movl   $0x8,-0x58(%rbp)
   4309f:	48 8d 45 10          	lea    0x10(%rbp),%rax
   430a3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   430a7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   430ab:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    panicking = true;
   430af:	c6 05 53 ff 00 00 01 	movb   $0x1,0xff53(%rip)        # 53009 <panicking>
    cursorpos = CPOS(24, 80);
   430b6:	c7 05 3c 5f 07 00 d0 	movl   $0x7d0,0x75f3c(%rip)        # b8ffc <cursorpos>
   430bd:	07 00 00 
    if (format) {
   430c0:	48 85 ff             	test   %rdi,%rdi
   430c3:	74 5e                	je     43123 <panic(char const*, ...)+0xac>
   430c5:	48 89 fb             	mov    %rdi,%rbx
        error_printf(-1, COLOR_ERROR, "PANIC: ");
   430c8:	ba d0 4e 04 00       	mov    $0x44ed0,%edx
   430cd:	be 00 c0 00 00       	mov    $0xc000,%esi
   430d2:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   430d7:	b0 00                	mov    $0x0,%al
   430d9:	e8 25 f5 ff ff       	callq  42603 <error_printf(int, int, char const*, ...)>
        error_vprintf(-1, COLOR_ERROR, format, val);
   430de:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
   430e2:	48 89 da             	mov    %rbx,%rdx
   430e5:	be 00 c0 00 00       	mov    $0xc000,%esi
   430ea:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   430ef:	e8 af f4 ff ff       	callq  425a3 <error_vprintf(int, int, char const*, __va_list_tag*)>
        if (CCOL(cursorpos)) {
   430f4:	8b 05 02 5f 07 00    	mov    0x75f02(%rip),%eax        # b8ffc <cursorpos>
   430fa:	b9 50 00 00 00       	mov    $0x50,%ecx
   430ff:	99                   	cltd   
   43100:	f7 f9                	idiv   %ecx
   43102:	85 d2                	test   %edx,%edx
   43104:	74 16                	je     4311c <panic(char const*, ...)+0xa5>
            error_printf(-1, COLOR_ERROR, "\n");
   43106:	ba 33 51 04 00       	mov    $0x45133,%edx
   4310b:	be 00 c0 00 00       	mov    $0xc000,%esi
   43110:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   43115:	b0 00                	mov    $0x0,%al
   43117:	e8 e7 f4 ff ff       	callq  42603 <error_printf(int, int, char const*, ...)>
        check_keyboard();
   4311c:	e8 34 fe ff ff       	callq  42f55 <check_keyboard()>
    while (true) {
   43121:	eb f9                	jmp    4311c <panic(char const*, ...)+0xa5>
        error_printf(-1, COLOR_ERROR, "PANIC");
   43123:	ba d8 4e 04 00       	mov    $0x44ed8,%edx
   43128:	be 00 c0 00 00       	mov    $0xc000,%esi
   4312d:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   43132:	b0 00                	mov    $0x0,%al
   43134:	e8 ca f4 ff ff       	callq  42603 <error_printf(int, int, char const*, ...)>
        log_printf("\n");
   43139:	bf 33 51 04 00       	mov    $0x45133,%edi
   4313e:	b0 00                	mov    $0x0,%al
   43140:	e8 1c f4 ff ff       	callq  42561 <log_printf(char const*, ...)>
[[noreturn]] void fail() {
   43145:	eb d5                	jmp    4311c <panic(char const*, ...)+0xa5>
   43147:	90                   	nop

0000000000043148 <program_loader::program_number(char const*)>:
int program_loader::program_number(const char* program_name) {
   43148:	f3 0f 1e fa          	endbr64 
   4314c:	55                   	push   %rbp
   4314d:	48 89 e5             	mov    %rsp,%rbp
   43150:	41 54                	push   %r12
   43152:	53                   	push   %rbx
   43153:	49 89 fc             	mov    %rdi,%r12
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   43156:	bb 00 00 00 00       	mov    $0x0,%ebx
        if (strcmp(program_name, ramimages[i].name) == 0) {
   4315b:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   4315f:	48 8b 34 c5 00 60 04 	mov    0x46000(,%rax,8),%rsi
   43166:	00 
   43167:	4c 89 e7             	mov    %r12,%rdi
   4316a:	e8 df 0c 00 00       	callq  43e4e <strcmp>
   4316f:	85 c0                	test   %eax,%eax
   43171:	74 14                	je     43187 <program_loader::program_number(char const*)+0x3f>
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   43173:	48 83 c3 01          	add    $0x1,%rbx
   43177:	48 83 fb 06          	cmp    $0x6,%rbx
   4317b:	75 de                	jne    4315b <program_loader::program_number(char const*)+0x13>
    return -1;
   4317d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   43182:	5b                   	pop    %rbx
   43183:	41 5c                	pop    %r12
   43185:	5d                   	pop    %rbp
   43186:	c3                   	retq   
            return i;
   43187:	89 d8                	mov    %ebx,%eax
   43189:	eb f7                	jmp    43182 <program_loader::program_number(char const*)+0x3a>
   4318b:	90                   	nop

000000000004318c <program_loader::fix()>:
void program_loader::fix() {
   4318c:	f3 0f 1e fa          	endbr64 
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   43190:	48 8b 47 08          	mov    0x8(%rdi),%rax
   43194:	48 85 c0             	test   %rax,%rax
   43197:	74 19                	je     431b2 <program_loader::fix()+0x26>
   43199:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   4319d:	eb 04                	jmp    431a3 <program_loader::fix()+0x17>
        ++ph_;
   4319f:	48 89 47 08          	mov    %rax,0x8(%rdi)
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   431a3:	48 39 c2             	cmp    %rax,%rdx
   431a6:	74 0a                	je     431b2 <program_loader::fix()+0x26>
   431a8:	48 83 c0 38          	add    $0x38,%rax
   431ac:	83 78 c8 01          	cmpl   $0x1,-0x38(%rax)
   431b0:	75 ed                	jne    4319f <program_loader::fix()+0x13>
}
   431b2:	c3                   	retq   
   431b3:	90                   	nop

00000000000431b4 <program_loader::va() const>:
uintptr_t program_loader::va() const {
   431b4:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_va : 0;
   431b8:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   431bc:	b8 00 00 00 00       	mov    $0x0,%eax
   431c1:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   431c5:	74 04                	je     431cb <program_loader::va() const+0x17>
   431c7:	48 8b 42 10          	mov    0x10(%rdx),%rax
}
   431cb:	c3                   	retq   

00000000000431cc <program_loader::size() const>:
size_t program_loader::size() const {
   431cc:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_memsz : 0;
   431d0:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   431d4:	b8 00 00 00 00       	mov    $0x0,%eax
   431d9:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   431dd:	74 04                	je     431e3 <program_loader::size() const+0x17>
   431df:	48 8b 42 28          	mov    0x28(%rdx),%rax
}
   431e3:	c3                   	retq   

00000000000431e4 <program_loader::data() const>:
const char* program_loader::data() const {
   431e4:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? (const char*) elf_ + ph_->p_offset : nullptr;
   431e8:	48 8b 47 08          	mov    0x8(%rdi),%rax
   431ec:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   431f0:	74 08                	je     431fa <program_loader::data() const+0x16>
   431f2:	48 8b 40 08          	mov    0x8(%rax),%rax
   431f6:	48 03 07             	add    (%rdi),%rax
   431f9:	c3                   	retq   
   431fa:	b8 00 00 00 00       	mov    $0x0,%eax
}
   431ff:	c3                   	retq   

0000000000043200 <program_loader::data_size() const>:
size_t program_loader::data_size() const {
   43200:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_filesz : 0;
   43204:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43208:	b8 00 00 00 00       	mov    $0x0,%eax
   4320d:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   43211:	74 04                	je     43217 <program_loader::data_size() const+0x17>
   43213:	48 8b 42 20          	mov    0x20(%rdx),%rax
}
   43217:	c3                   	retq   

0000000000043218 <program_loader::present() const>:
bool program_loader::present() const {
   43218:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_;
   4321c:	48 8b 47 10          	mov    0x10(%rdi),%rax
   43220:	48 39 47 08          	cmp    %rax,0x8(%rdi)
   43224:	0f 95 c0             	setne  %al
}
   43227:	c3                   	retq   

0000000000043228 <program_loader::writable() const>:
bool program_loader::writable() const {
   43228:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ && (ph_->p_flags & ELF_PFLAG_WRITE);
   4322c:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43230:	b8 00 00 00 00       	mov    $0x0,%eax
   43235:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   43239:	74 08                	je     43243 <program_loader::writable() const+0x1b>
   4323b:	8b 42 04             	mov    0x4(%rdx),%eax
   4323e:	d1 e8                	shr    %eax
   43240:	83 e0 01             	and    $0x1,%eax
}
   43243:	c3                   	retq   

0000000000043244 <program_loader::entry() const>:
uintptr_t program_loader::entry() const {
   43244:	f3 0f 1e fa          	endbr64 
    return elf_ ? elf_->e_entry : 0;
   43248:	48 8b 17             	mov    (%rdi),%rdx
   4324b:	b8 00 00 00 00       	mov    $0x0,%eax
   43250:	48 85 d2             	test   %rdx,%rdx
   43253:	74 04                	je     43259 <program_loader::entry() const+0x15>
   43255:	48 8b 42 18          	mov    0x18(%rdx),%rax
}
   43259:	c3                   	retq   

000000000004325a <program_loader::operator++()>:
void program_loader::operator++() {
   4325a:	f3 0f 1e fa          	endbr64 
    if (ph_ != endph_) {
   4325e:	48 8b 47 08          	mov    0x8(%rdi),%rax
   43262:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   43266:	74 13                	je     4327b <program_loader::operator++()+0x21>
void program_loader::operator++() {
   43268:	55                   	push   %rbp
   43269:	48 89 e5             	mov    %rsp,%rbp
        ++ph_;
   4326c:	48 83 c0 38          	add    $0x38,%rax
   43270:	48 89 47 08          	mov    %rax,0x8(%rdi)
        fix();
   43274:	e8 13 ff ff ff       	callq  4318c <program_loader::fix()>
}
   43279:	5d                   	pop    %rbp
   4327a:	c3                   	retq   
   4327b:	c3                   	retq   

000000000004327c <program_loader::reset()>:
void program_loader::reset() {
   4327c:	f3 0f 1e fa          	endbr64 
    if (elf_) {
   43280:	48 8b 07             	mov    (%rdi),%rax
   43283:	48 85 c0             	test   %rax,%rax
   43286:	74 49                	je     432d1 <program_loader::reset()+0x55>
void program_loader::reset() {
   43288:	55                   	push   %rbp
   43289:	48 89 e5             	mov    %rsp,%rbp
        assert(elf_->e_magic == ELF_MAGIC);
   4328c:	81 38 7f 45 4c 46    	cmpl   $0x464c457f,(%rax)
   43292:	75 29                	jne    432bd <program_loader::reset()+0x41>
        ph_ = (elf_program*) ((uint8_t*) elf_ + elf_->e_phoff);
   43294:	48 89 c2             	mov    %rax,%rdx
   43297:	48 03 50 20          	add    0x20(%rax),%rdx
   4329b:	48 89 57 08          	mov    %rdx,0x8(%rdi)
        endph_ = ph_ + elf_->e_phnum;
   4329f:	0f b7 48 38          	movzwl 0x38(%rax),%ecx
   432a3:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
   432aa:	00 
   432ab:	48 29 c8             	sub    %rcx,%rax
   432ae:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   432b2:	48 89 47 10          	mov    %rax,0x10(%rdi)
        fix();
   432b6:	e8 d1 fe ff ff       	callq  4318c <program_loader::fix()>
}
   432bb:	5d                   	pop    %rbp
   432bc:	c3                   	retq   
        assert(elf_->e_magic == ELF_MAGIC);
   432bd:	ba de 4e 04 00       	mov    $0x44ede,%edx
   432c2:	be 98 03 00 00       	mov    $0x398,%esi
   432c7:	bf 21 4e 04 00       	mov    $0x44e21,%edi
   432cc:	e8 bb f3 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
        ph_ = endph_ = nullptr;
   432d1:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   432d8:	00 
   432d9:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
   432e0:	00 
   432e1:	c3                   	retq   

00000000000432e2 <program_loader::program_loader(int)>:
program_loader::program_loader(int program_number) {
   432e2:	f3 0f 1e fa          	endbr64 
   432e6:	55                   	push   %rbp
   432e7:	48 89 e5             	mov    %rsp,%rbp
    elf_ = nullptr;
   432ea:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    if (program_number >= 0
   432f1:	83 fe 05             	cmp    $0x5,%esi
   432f4:	77 12                	ja     43308 <program_loader::program_loader(int)+0x26>
        elf_ = (elf_header*) ramimages[program_number].begin;
   432f6:	48 63 f6             	movslq %esi,%rsi
   432f9:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
   432fd:	48 8b 04 c5 08 60 04 	mov    0x46008(,%rax,8),%rax
   43304:	00 
   43305:	48 89 07             	mov    %rax,(%rdi)
    reset();
   43308:	e8 6f ff ff ff       	callq  4327c <program_loader::reset()>
}
   4330d:	5d                   	pop    %rbp
   4330e:	c3                   	retq   
   4330f:	90                   	nop

0000000000043310 <program_loader::program_loader(char const*)>:
program_loader::program_loader(const char* program_name)
   43310:	f3 0f 1e fa          	endbr64 
   43314:	55                   	push   %rbp
   43315:	48 89 e5             	mov    %rsp,%rbp
   43318:	53                   	push   %rbx
   43319:	48 83 ec 08          	sub    $0x8,%rsp
   4331d:	48 89 fb             	mov    %rdi,%rbx
   43320:	48 89 f7             	mov    %rsi,%rdi
    : program_loader(program_number(program_name)) {
   43323:	e8 20 fe ff ff       	callq  43148 <program_loader::program_number(char const*)>
   43328:	89 c6                	mov    %eax,%esi
   4332a:	48 89 df             	mov    %rbx,%rdi
   4332d:	e8 b0 ff ff ff       	callq  432e2 <program_loader::program_loader(int)>
}
   43332:	48 83 c4 08          	add    $0x8,%rsp
   43336:	5b                   	pop    %rbx
   43337:	5d                   	pop    %rbp
   43338:	c3                   	retq   

0000000000043339 <__cxa_guard_acquire>:
int __cxa_guard_acquire(long long* arg) {
   43339:	f3 0f 1e fa          	endbr64 
	return __atomic_load_n(&_M_i, int(__m));
   4333d:	0f b6 17             	movzbl (%rdi),%edx
        return 0;
   43340:	b8 00 00 00 00       	mov    $0x0,%eax
    if (guard->load(std::memory_order_relaxed) == 2) {
   43345:	80 fa 02             	cmp    $0x2,%dl
   43348:	74 22                	je     4336c <__cxa_guard_acquire+0x33>

      _GLIBCXX_ALWAYS_INLINE __int_type
      exchange(__int_type __i,
	       memory_order __m = memory_order_seq_cst) noexcept
      {
	return __atomic_exchange_n(&_M_i, __i, int(__m));
   4334a:	ba 01 00 00 00       	mov    $0x1,%edx
   4334f:	89 d0                	mov    %edx,%eax
   43351:	86 07                	xchg   %al,(%rdi)
        if (old_value == 2) {
   43353:	3c 02                	cmp    $0x2,%al
   43355:	74 08                	je     4335f <__cxa_guard_acquire+0x26>
        } else if (old_value == 1) {
   43357:	3c 01                	cmp    $0x1,%al
   43359:	75 0c                	jne    43367 <__cxa_guard_acquire+0x2e>
    asm volatile("rdtsc" : "=a" (low), "=d" (high));
    return low | (high << 32);
}

__always_inline void pause() {
    asm volatile("pause" : : : "memory");
   4335b:	f3 90                	pause  
}
   4335d:	eb f0                	jmp    4334f <__cxa_guard_acquire+0x16>
   4335f:	86 07                	xchg   %al,(%rdi)
            return 0;
   43361:	b8 00 00 00 00       	mov    $0x0,%eax
   43366:	c3                   	retq   
            return 1;
   43367:	b8 01 00 00 00       	mov    $0x1,%eax
}
   4336c:	c3                   	retq   

000000000004336d <__cxa_guard_release>:
void __cxa_guard_release(long long* arg) {
   4336d:	f3 0f 1e fa          	endbr64 
	__atomic_store_n(&_M_i, __i, int(__m));
   43371:	c6 07 02             	movb   $0x2,(%rdi)
   43374:	0f ae f0             	mfence 
}
   43377:	c3                   	retq   

0000000000043378 <memusage::refresh()>:

// memusage::refresh()
//    Calculate the current physical usage map, using the current process
//    table.

void memusage::refresh() {
   43378:	f3 0f 1e fa          	endbr64 
   4337c:	55                   	push   %rbp
   4337d:	48 89 e5             	mov    %rsp,%rbp
   43380:	41 57                	push   %r15
   43382:	41 56                	push   %r14
   43384:	41 55                	push   %r13
   43386:	41 54                	push   %r12
   43388:	53                   	push   %rbx
   43389:	48 83 ec 38          	sub    $0x38,%rsp
   4338d:	49 89 fd             	mov    %rdi,%r13
    if (!v_) {
   43390:	48 83 3f 00          	cmpq   $0x0,(%rdi)
   43394:	74 48                	je     433de <memusage::refresh()+0x66>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
        assert(v_ != nullptr);
    }

    memset(v_, 0, (maxpa / PAGESIZE) * sizeof(*v_));
   43396:	ba 00 10 00 00       	mov    $0x1000,%edx
   4339b:	be 00 00 00 00       	mov    $0x0,%esi
   433a0:	49 8b 7d 00          	mov    0x0(%r13),%rdi
   433a4:	e8 44 0a 00 00       	callq  43ded <memset>
    : pt_(pt) {
   433a9:	48 c7 45 b0 00 40 05 	movq   $0x54000,-0x50(%rbp)
   433b0:	00 
    go(va);
   433b1:	be 00 00 00 00       	mov    $0x0,%esi
   433b6:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   433ba:	e8 05 ed ff ff       	callq  420c4 <ptiter::go(unsigned long)>

    // mark kernel page tables
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   433bf:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   433c6:	ff 00 00 
   433c9:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
   433cd:	77 6d                	ja     4343c <memusage::refresh()+0xc4>
    return *pep_ & PTE_PAMASK;
   433cf:	49 bc 00 f0 ff ff ff 	movabs $0xffffffffff000,%r12
   433d6:	ff 0f 00 
   433d9:	48 89 c3             	mov    %rax,%rbx
   433dc:	eb 3b                	jmp    43419 <memusage::refresh()+0xa1>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
   433de:	bf 00 10 00 00       	mov    $0x1000,%edi
   433e3:	e8 7c d7 ff ff       	callq  40b64 <kalloc(unsigned long)>
   433e8:	49 89 45 00          	mov    %rax,0x0(%r13)
        assert(v_ != nullptr);
   433ec:	48 85 c0             	test   %rax,%rax
   433ef:	75 a5                	jne    43396 <memusage::refresh()+0x1e>
   433f1:	ba 80 50 04 00       	mov    $0x45080,%edx
   433f6:	be 48 00 00 00       	mov    $0x48,%esi
   433fb:	bf 8e 50 04 00       	mov    $0x4508e,%edi
   43400:	e8 87 f2 ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
    down(true);
   43405:	be 01 00 00 00       	mov    $0x1,%esi
   4340a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4340e:	e8 af eb ff ff       	callq  41fc2 <ptiter::down(bool)>
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   43413:	48 39 5d c8          	cmp    %rbx,-0x38(%rbp)
   43417:	77 23                	ja     4343c <memusage::refresh()+0xc4>
    return *pep_ & PTE_PAMASK;
   43419:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   4341d:	4c 89 e6             	mov    %r12,%rsi
   43420:	48 23 30             	and    (%rax),%rsi
   43423:	48 89 f0             	mov    %rsi,%rax
        if (pa < maxpa) {
   43426:	48 81 fe ff ff 3f 00 	cmp    $0x3fffff,%rsi
   4342d:	77 d6                	ja     43405 <memusage::refresh()+0x8d>
            v_[pa / PAGESIZE] |= flags;
   4342f:	48 c1 e8 0a          	shr    $0xa,%rax
   43433:	49 03 45 00          	add    0x0(%r13),%rax
   43437:	83 08 01             	orl    $0x1,(%rax)
   4343a:	eb c9                	jmp    43405 <memusage::refresh()+0x8d>
        mark(it.pa(), f_kernel);
    }
    mark((uintptr_t) kernel_pagetable, f_kernel);
   4343c:	b8 00 40 05 00       	mov    $0x54000,%eax
        if (pa < maxpa) {
   43441:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43447:	77 0c                	ja     43455 <memusage::refresh()+0xdd>
            v_[pa / PAGESIZE] |= flags;
   43449:	48 c1 e8 0c          	shr    $0xc,%rax
   4344d:	49 8b 55 00          	mov    0x0(%r13),%rdx
   43451:	83 0c 82 01          	orl    $0x1,(%rdx,%rax,4)

    // mark pages accessible from each process's page table
    bool any = false;
    for (int pid = 1; pid < NPROC; ++pid) {
   43455:	bb f0 22 05 00       	mov    $0x522f0,%ebx
void memusage::refresh() {
   4345a:	41 bc 01 00 00 00    	mov    $0x1,%r12d
   43460:	be 00 00 00 00       	mov    $0x0,%esi
        if (p->state != P_FREE
            && p->pagetable
            && p->pagetable != kernel_pagetable) {
            any = true;

            for (ptiter it(p); it.active(); it.next()) {
   43465:	49 be ff ff ff ff ff 	movabs $0xffffffffffff,%r14
   4346c:	ff 00 00 
   4346f:	e9 c5 01 00 00       	jmpq   43639 <memusage::refresh()+0x2c1>
    down(true);
   43474:	be 01 00 00 00       	mov    $0x1,%esi
   43479:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4347d:	e8 40 eb ff ff       	callq  41fc2 <ptiter::down(bool)>
   43482:	4c 39 75 c8          	cmp    %r14,-0x38(%rbp)
   43486:	77 2a                	ja     434b2 <memusage::refresh()+0x13a>
    return *pep_ & PTE_PAMASK;
   43488:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   4348c:	4c 89 ff             	mov    %r15,%rdi
   4348f:	48 23 38             	and    (%rax),%rdi
   43492:	48 89 f8             	mov    %rdi,%rax
        if (pa < maxpa) {
   43495:	48 81 ff ff ff 3f 00 	cmp    $0x3fffff,%rdi
   4349c:	77 d6                	ja     43474 <memusage::refresh()+0xfc>
            v_[pa / PAGESIZE] |= flags;
   4349e:	48 c1 e8 0a          	shr    $0xa,%rax
   434a2:	49 03 45 00          	add    0x0(%r13),%rax
   434a6:	8b 55 a0             	mov    -0x60(%rbp),%edx
   434a9:	0b 10                	or     (%rax),%edx
   434ab:	83 ca 01             	or     $0x1,%edx
   434ae:	89 10                	mov    %edx,(%rax)
   434b0:	eb c2                	jmp    43474 <memusage::refresh()+0xfc>
        } else if (pid >= 1) {
   434b2:	45 8d 7c 24 ff       	lea    -0x1(%r12),%r15d
            return 2U << pid;
   434b7:	b8 02 00 00 00       	mov    $0x2,%eax
   434bc:	44 89 e1             	mov    %r12d,%ecx
   434bf:	d3 e0                	shl    %cl,%eax
   434c1:	41 83 ff 1d          	cmp    $0x1d,%r15d
   434c5:	ba 00 00 00 00       	mov    $0x0,%edx
   434ca:	0f 43 c2             	cmovae %edx,%eax
                mark(it.pa(), f_kernel | f_process(pid));
            }
            mark((uintptr_t) p->pagetable, f_kernel | f_process(pid));
   434cd:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   434d1:	48 8b 16             	mov    (%rsi),%rdx
        if (pa < maxpa) {
   434d4:	48 81 fa ff ff 3f 00 	cmp    $0x3fffff,%rdx
   434db:	77 13                	ja     434f0 <memusage::refresh()+0x178>
            v_[pa / PAGESIZE] |= flags;
   434dd:	48 c1 ea 0c          	shr    $0xc,%rdx
   434e1:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   434e5:	48 8d 14 91          	lea    (%rcx,%rdx,4),%rdx
   434e9:	0b 02                	or     (%rdx),%eax
   434eb:	83 c8 01             	or     $0x1,%eax
   434ee:	89 02                	mov    %eax,(%rdx)
    : vmiter(p->pagetable, va) {
   434f0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   434f4:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   434f7:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   434fb:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   434ff:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43506:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   4350d:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43514:	00 
    real_find(va);
   43515:	be 00 00 00 00       	mov    $0x0,%esi
   4351a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4351e:	e8 03 e8 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   43523:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi

            for (vmiter it(p); it.low(); ) {
   43527:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffff,%rax
   4352e:	7f 00 00 
   43531:	48 39 c6             	cmp    %rax,%rsi
   43534:	0f 87 ea 00 00 00    	ja     43624 <memusage::refresh()+0x2ac>
            return 2U << pid;
   4353a:	b8 02 00 00 00       	mov    $0x2,%eax
   4353f:	44 89 e1             	mov    %r12d,%ecx
   43542:	d3 e0                	shl    %cl,%eax
   43544:	41 83 ff 1c          	cmp    $0x1c,%r15d
   43548:	ba 00 00 00 00       	mov    $0x0,%edx
   4354d:	0f 46 d0             	cmovbe %eax,%edx
   43550:	89 55 a8             	mov    %edx,-0x58(%rbp)
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   43553:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   43559:	eb 20                	jmp    4357b <memusage::refresh()+0x203>
                if (it.user()) {
                    mark(it.pa(), f_user | f_process(pid));
                    it.next();
   4355b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4355f:	e8 76 e8 ff ff       	callq  41dda <vmiter::next()>
   43564:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
            for (vmiter it(p); it.low(); ) {
   43568:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffff,%rax
   4356f:	7f 00 00 
   43572:	48 39 c6             	cmp    %rax,%rsi
   43575:	0f 87 a9 00 00 00    	ja     43624 <memusage::refresh()+0x2ac>
    return (*pep_ & perm_ & p) == p;
   4357b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   4357f:	48 8b 08             	mov    (%rax),%rcx
   43582:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   43586:	48 21 c8             	and    %rcx,%rax
   43589:	83 e0 05             	and    $0x5,%eax
                if (it.user()) {
   4358c:	48 83 f8 05          	cmp    $0x5,%rax
   43590:	75 6c                	jne    435fe <memusage::refresh()+0x286>
    if (*pep_ & PTE_P) {
   43592:	f6 c1 01             	test   $0x1,%cl
   43595:	74 c4                	je     4355b <memusage::refresh()+0x1e3>
        if (level_ > 0) {
   43597:	8b 55 c0             	mov    -0x40(%rbp),%edx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4359a:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   435a1:	ff 0f 00 
   435a4:	48 21 c8             	and    %rcx,%rax
   435a7:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   435ae:	ff 0f 00 
   435b1:	48 21 f9             	and    %rdi,%rcx
   435b4:	85 d2                	test   %edx,%edx
   435b6:	48 0f 4f c1          	cmovg  %rcx,%rax
   435ba:	48 89 c7             	mov    %rax,%rdi
   435bd:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   435c1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   435c8:	48 89 d0             	mov    %rdx,%rax
   435cb:	48 d3 e0             	shl    %cl,%rax
   435ce:	48 f7 d0             	not    %rax
   435d1:	48 21 f0             	and    %rsi,%rax
   435d4:	48 01 f8             	add    %rdi,%rax
        if (pa < maxpa) {
   435d7:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   435dd:	0f 87 78 ff ff ff    	ja     4355b <memusage::refresh()+0x1e3>
            v_[pa / PAGESIZE] |= flags;
   435e3:	48 c1 e8 0c          	shr    $0xc,%rax
   435e7:	49 8b 55 00          	mov    0x0(%r13),%rdx
   435eb:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
   435ef:	8b 45 a8             	mov    -0x58(%rbp),%eax
   435f2:	0b 02                	or     (%rdx),%eax
   435f4:	83 c8 02             	or     $0x2,%eax
   435f7:	89 02                	mov    %eax,(%rdx)
   435f9:	e9 5d ff ff ff       	jmpq   4355b <memusage::refresh()+0x1e3>
   435fe:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43601:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43605:	4c 89 f8             	mov    %r15,%rax
   43608:	48 d3 e0             	shl    %cl,%rax
   4360b:	48 83 e8 01          	sub    $0x1,%rax
    return (va_ | pageoffmask(level_)) + 1;
   4360f:	48 09 f0             	or     %rsi,%rax
   43612:	48 8d 70 01          	lea    0x1(%rax),%rsi
    real_find(last_va());
   43616:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4361a:	e8 07 e7 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
}
   4361f:	e9 40 ff ff ff       	jmpq   43564 <memusage::refresh()+0x1ec>
            any = true;
   43624:	0f b6 75 a7          	movzbl -0x59(%rbp),%esi
    for (int pid = 1; pid < NPROC; ++pid) {
   43628:	41 83 c4 01          	add    $0x1,%r12d
   4362c:	48 81 c3 d0 00 00 00 	add    $0xd0,%rbx
   43633:	41 83 fc 10          	cmp    $0x10,%r12d
   43637:	74 6b                	je     436a4 <memusage::refresh()+0x32c>
        if (p->state != P_FREE
   43639:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   4363d:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
   43641:	74 e5                	je     43628 <memusage::refresh()+0x2b0>
            && p->pagetable
   43643:	48 8b 03             	mov    (%rbx),%rax
            && p->pagetable != kernel_pagetable) {
   43646:	48 3d 00 40 05 00    	cmp    $0x54000,%rax
   4364c:	0f 95 c1             	setne  %cl
            && p->pagetable
   4364f:	48 85 c0             	test   %rax,%rax
   43652:	0f 95 c2             	setne  %dl
            && p->pagetable != kernel_pagetable) {
   43655:	20 d1                	and    %dl,%cl
   43657:	88 4d a7             	mov    %cl,-0x59(%rbp)
   4365a:	74 cc                	je     43628 <memusage::refresh()+0x2b0>
    : pt_(pt) {
   4365c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    go(va);
   43660:	be 00 00 00 00       	mov    $0x0,%esi
   43665:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43669:	e8 56 ea ff ff       	callq  420c4 <ptiter::go(unsigned long)>
            for (ptiter it(p); it.active(); it.next()) {
   4366e:	4c 39 75 c8          	cmp    %r14,-0x38(%rbp)
   43672:	0f 87 3a fe ff ff    	ja     434b2 <memusage::refresh()+0x13a>
            return 2U << pid;
   43678:	b8 02 00 00 00       	mov    $0x2,%eax
   4367d:	44 89 e1             	mov    %r12d,%ecx
   43680:	d3 e0                	shl    %cl,%eax
        } else if (pid >= 1) {
   43682:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
   43687:	83 fa 1c             	cmp    $0x1c,%edx
   4368a:	ba 00 00 00 00       	mov    $0x0,%edx
   4368f:	0f 46 d0             	cmovbe %eax,%edx
   43692:	89 55 a0             	mov    %edx,-0x60(%rbp)
    return *pep_ & PTE_PAMASK;
   43695:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   4369c:	ff 0f 00 
   4369f:	e9 e4 fd ff ff       	jmpq   43488 <memusage::refresh()+0x110>
            }
        }
    }

    // if no different process page tables, use physical address instead
    if (!any) {
   436a4:	40 84 f6             	test   %sil,%sil
   436a7:	74 26                	je     436cf <memusage::refresh()+0x357>
        }
    }

    // mark my own memory
    if (any) {
        mark((uintptr_t) v_, f_kernel);
   436a9:	49 8b 45 00          	mov    0x0(%r13),%rax
        if (pa < maxpa) {
   436ad:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   436b3:	77 0b                	ja     436c0 <memusage::refresh()+0x348>
            v_[pa / PAGESIZE] |= flags;
   436b5:	48 89 c2             	mov    %rax,%rdx
   436b8:	48 c1 ea 0c          	shr    $0xc,%rdx
   436bc:	83 0c 90 01          	orl    $0x1,(%rax,%rdx,4)
    }
}
   436c0:	48 83 c4 38          	add    $0x38,%rsp
   436c4:	5b                   	pop    %rbx
   436c5:	41 5c                	pop    %r12
   436c7:	41 5d                	pop    %r13
   436c9:	41 5e                	pop    %r14
   436cb:	41 5f                	pop    %r15
   436cd:	5d                   	pop    %rbp
   436ce:	c3                   	retq   
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   436cf:	48 c7 45 b0 00 40 05 	movq   $0x54000,-0x50(%rbp)
   436d6:	00 
   436d7:	48 c7 45 b8 00 40 05 	movq   $0x54000,-0x48(%rbp)
   436de:	00 
   436df:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   436e6:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   436ed:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   436f4:	00 
    real_find(va);
   436f5:	be 00 00 00 00       	mov    $0x0,%esi
   436fa:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   436fe:	e8 23 e6 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   43703:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   43707:	41 bc 01 00 00 00    	mov    $0x1,%r12d
            pa &= ~0x1000UL;
   4370d:	49 be 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r14
   43714:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43717:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   4371e:	ff 0f 00 
        for (vmiter it(kernel_pagetable); it.low(); ) {
   43721:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffff,%rbx
   43728:	7f 00 00 
   4372b:	48 39 da             	cmp    %rbx,%rdx
   4372e:	76 30                	jbe    43760 <memusage::refresh()+0x3e8>
   43730:	eb 8e                	jmp    436c0 <memusage::refresh()+0x348>
   43732:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43735:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43739:	4c 89 e0             	mov    %r12,%rax
   4373c:	48 d3 e0             	shl    %cl,%rax
   4373f:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
    return (va_ | pageoffmask(level_)) + 1;
   43743:	48 09 d6             	or     %rdx,%rsi
   43746:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   4374a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4374e:	e8 d3 e5 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   43753:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   43757:	48 39 da             	cmp    %rbx,%rdx
   4375a:	0f 87 60 ff ff ff    	ja     436c0 <memusage::refresh()+0x348>
    return (*pep_ & perm_ & p) == p;
   43760:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43764:	48 8b 08             	mov    (%rax),%rcx
   43767:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   4376b:	48 21 c8             	and    %rcx,%rax
   4376e:	83 e0 05             	and    $0x5,%eax
                && pages[it.pa() / PAGESIZE].used()) {
   43771:	48 83 f8 05          	cmp    $0x5,%rax
   43775:	75 bb                	jne    43732 <memusage::refresh()+0x3ba>
    if (*pep_ & PTE_P) {
   43777:	f6 c1 01             	test   $0x1,%cl
   4377a:	74 b6                	je     43732 <memusage::refresh()+0x3ba>
        if (level_ > 0) {
   4377c:	8b 7d c0             	mov    -0x40(%rbp),%edi
            pa &= ~0x1000UL;
   4377f:	48 89 c8             	mov    %rcx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43782:	4c 21 f8             	and    %r15,%rax
   43785:	4c 21 f1             	and    %r14,%rcx
   43788:	85 ff                	test   %edi,%edi
   4378a:	48 0f 4f c1          	cmovg  %rcx,%rax
   4378e:	48 89 c6             	mov    %rax,%rsi
   43791:	8d 4c ff 0c          	lea    0xc(%rdi,%rdi,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43795:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   4379c:	48 d3 e0             	shl    %cl,%rax
   4379f:	48 f7 d0             	not    %rax
   437a2:	48 21 d0             	and    %rdx,%rax
   437a5:	48 01 f0             	add    %rsi,%rax
                && it.pa() < MEMSIZE_PHYSICAL
   437a8:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   437ae:	77 82                	ja     43732 <memusage::refresh()+0x3ba>
                && pages[it.pa() / PAGESIZE].used()) {
   437b0:	48 89 c6             	mov    %rax,%rsi
   437b3:	48 c1 ee 0c          	shr    $0xc,%rsi
   437b7:	80 be 00 20 05 00 00 	cmpb   $0x0,0x52000(%rsi)
   437be:	0f 84 6e ff ff ff    	je     43732 <memusage::refresh()+0x3ba>
                unsigned owner = (it.pa() - PROC_START_ADDR) / 0x40000;
   437c4:	48 2d 00 00 10 00    	sub    $0x100000,%rax
   437ca:	48 c1 e8 12          	shr    $0x12,%rax
            return 0;
   437ce:	ba 00 00 00 00       	mov    $0x0,%edx
        } else if (pid >= 1) {
   437d3:	83 f8 1c             	cmp    $0x1c,%eax
   437d6:	76 1d                	jbe    437f5 <memusage::refresh()+0x47d>
            v_[pa / PAGESIZE] |= flags;
   437d8:	49 8b 45 00          	mov    0x0(%r13),%rax
   437dc:	48 8d 04 b0          	lea    (%rax,%rsi,4),%rax
   437e0:	0b 10                	or     (%rax),%edx
   437e2:	83 ca 02             	or     $0x2,%edx
   437e5:	89 10                	mov    %edx,(%rax)
                it.next();
   437e7:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   437eb:	e8 ea e5 ff ff       	callq  41dda <vmiter::next()>
   437f0:	e9 5e ff ff ff       	jmpq   43753 <memusage::refresh()+0x3db>
                mark(it.pa(), f_user | f_process(owner + 1));
   437f5:	8d 48 01             	lea    0x1(%rax),%ecx
            return 2U << pid;
   437f8:	ba 02 00 00 00       	mov    $0x2,%edx
   437fd:	d3 e2                	shl    %cl,%edx
   437ff:	eb d7                	jmp    437d8 <memusage::refresh()+0x460>
   43801:	90                   	nop

0000000000043802 <memusage::page_error(unsigned long, char const*, int) const>:

void memusage::page_error(uintptr_t pa, const char* desc, int pid) const {
   43802:	f3 0f 1e fa          	endbr64 
   43806:	55                   	push   %rbp
   43807:	48 89 e5             	mov    %rsp,%rbp
   4380a:	41 56                	push   %r14
   4380c:	41 55                	push   %r13
   4380e:	41 54                	push   %r12
   43810:	53                   	push   %rbx
   43811:	49 89 f5             	mov    %rsi,%r13
   43814:	49 89 d6             	mov    %rdx,%r14
   43817:	89 cb                	mov    %ecx,%ebx
    const char* fmt = pid >= 0
        ? "PAGE TABLE ERROR: %lx: %s (pid %d)\n"
   43819:	85 c9                	test   %ecx,%ecx
   4381b:	41 bc 38 51 04 00    	mov    $0x45138,%r12d
   43821:	b8 9d 50 04 00       	mov    $0x4509d,%eax
   43826:	4c 0f 48 e0          	cmovs  %rax,%r12
        : "PAGE TABLE ERROR: %lx: %s\n";
    error_printf(CPOS(22, 0), COLOR_ERROR, fmt, pa, desc, pid);
   4382a:	41 89 c9             	mov    %ecx,%r9d
   4382d:	49 89 d0             	mov    %rdx,%r8
   43830:	48 89 f1             	mov    %rsi,%rcx
   43833:	4c 89 e2             	mov    %r12,%rdx
   43836:	be 00 c0 00 00       	mov    $0xc000,%esi
   4383b:	bf e0 06 00 00       	mov    $0x6e0,%edi
   43840:	b8 00 00 00 00       	mov    $0x0,%eax
   43845:	e8 b9 ed ff ff       	callq  42603 <error_printf(int, int, char const*, ...)>
    log_printf(fmt, pa, desc, pid);
   4384a:	89 d9                	mov    %ebx,%ecx
   4384c:	4c 89 f2             	mov    %r14,%rdx
   4384f:	4c 89 ee             	mov    %r13,%rsi
   43852:	4c 89 e7             	mov    %r12,%rdi
   43855:	b8 00 00 00 00       	mov    $0x0,%eax
   4385a:	e8 02 ed ff ff       	callq  42561 <log_printf(char const*, ...)>
}
   4385f:	5b                   	pop    %rbx
   43860:	41 5c                	pop    %r12
   43862:	41 5d                	pop    %r13
   43864:	41 5e                	pop    %r14
   43866:	5d                   	pop    %rbp
   43867:	c3                   	retq   

0000000000043868 <memusage::symbol_at(unsigned long) const>:

uint16_t memusage::symbol_at(uintptr_t pa) const {
   43868:	f3 0f 1e fa          	endbr64 
   4386c:	55                   	push   %rbp
   4386d:	48 89 e5             	mov    %rsp,%rbp
   43870:	41 55                	push   %r13
   43872:	41 54                	push   %r12
   43874:	53                   	push   %rbx
   43875:	48 83 ec 08          	sub    $0x8,%rsp
   43879:	49 89 fd             	mov    %rdi,%r13
   4387c:	48 89 f3             	mov    %rsi,%rbx
    bool is_reserved = reserved_physical_address(pa);
   4387f:	48 89 f7             	mov    %rsi,%rdi
   43882:	e8 56 e9 ff ff       	callq  421dd <reserved_physical_address(unsigned long)>
   43887:	41 89 c4             	mov    %eax,%r12d
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   4388a:	84 c0                	test   %al,%al
   4388c:	74 3e                	je     438cc <memusage::symbol_at(unsigned long) const+0x64>

    if (pa >= maxpa) {
        if (is_kernel) {
            return 'K' | 0x4000;
        } else if (is_reserved) {
            return '?' | 0x4000;
   4388e:	b8 3f 40 00 00       	mov    $0x403f,%eax
    if (pa >= maxpa) {
   43893:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   4389a:	77 56                	ja     438f2 <memusage::symbol_at(unsigned long) const+0x8a>
        } else {
            return '?' | 0xF000;
        }
    }

    auto v = v_[pa / PAGESIZE];
   4389c:	48 89 da             	mov    %rbx,%rdx
   4389f:	48 c1 ea 0c          	shr    $0xc,%rdx
   438a3:	49 8b 45 00          	mov    0x0(%r13),%rax
   438a7:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   438aa:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   438af:	48 39 d8             	cmp    %rbx,%rax
   438b2:	77 49                	ja     438fd <memusage::symbol_at(unsigned long) const+0x95>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   438b4:	b9 00 00 00 00       	mov    $0x0,%ecx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   438b9:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
        return 'C' | 0x0700;
   438c0:	b8 43 07 00 00       	mov    $0x743,%eax
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   438c5:	48 39 de             	cmp    %rbx,%rsi
   438c8:	76 38                	jbe    43902 <memusage::symbol_at(unsigned long) const+0x9a>
   438ca:	eb 26                	jmp    438f2 <memusage::symbol_at(unsigned long) const+0x8a>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   438cc:	48 89 df             	mov    %rbx,%rdi
   438cf:	e8 2a e9 ff ff       	callq  421fe <allocatable_physical_address(unsigned long)>
   438d4:	83 f0 01             	xor    $0x1,%eax
   438d7:	89 c1                	mov    %eax,%ecx
    if (pa >= maxpa) {
   438d9:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   438e0:	0f 86 99 01 00 00    	jbe    43a7f <memusage::symbol_at(unsigned long) const+0x217>
            return 'K' | 0x4000;
   438e6:	3c 01                	cmp    $0x1,%al
   438e8:	19 c0                	sbb    %eax,%eax
   438ea:	66 25 f4 af          	and    $0xaff4,%ax
   438ee:	66 05 4b 40          	add    $0x404b,%ax
                ch |= names[pid];
            }
            return ch;
        }
    }
}
   438f2:	48 83 c4 08          	add    $0x8,%rsp
   438f6:	5b                   	pop    %rbx
   438f7:	41 5c                	pop    %r12
   438f9:	41 5d                	pop    %r13
   438fb:	5d                   	pop    %rbp
   438fc:	c3                   	retq   
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   438fd:	b9 00 00 00 00       	mov    $0x0,%ecx
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43902:	83 fa 03             	cmp    $0x3,%edx
   43905:	40 0f 97 c6          	seta   %sil
   43909:	76 09                	jbe    43914 <memusage::symbol_at(unsigned long) const+0xac>
   4390b:	45 84 e4             	test   %r12b,%r12b
   4390e:	0f 85 d6 00 00 00    	jne    439ea <memusage::symbol_at(unsigned long) const+0x182>
        return 'R' | 0x0700;
   43914:	b8 52 07 00 00       	mov    $0x752,%eax
    } else if (is_reserved) {
   43919:	45 84 e4             	test   %r12b,%r12b
   4391c:	75 d4                	jne    438f2 <memusage::symbol_at(unsigned long) const+0x8a>
    } else if (is_kernel && v > (f_kernel | f_user)) {
   4391e:	40 84 f6             	test   %sil,%sil
   43921:	74 08                	je     4392b <memusage::symbol_at(unsigned long) const+0xc3>
   43923:	84 c9                	test   %cl,%cl
   43925:	0f 85 ea 00 00 00    	jne    43a15 <memusage::symbol_at(unsigned long) const+0x1ad>
        return 'K' | 0x0D00;
   4392b:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
    } else if (is_kernel) {
   43930:	84 c9                	test   %cl,%cl
   43932:	75 be                	jne    438f2 <memusage::symbol_at(unsigned long) const+0x8a>
        return ' ' | 0x0700;
   43934:	b8 20 07 00 00       	mov    $0x720,%eax
    } else if (pa >= MEMSIZE_PHYSICAL) {
   43939:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   43940:	77 b0                	ja     438f2 <memusage::symbol_at(unsigned long) const+0x8a>
            return '.' | 0x0700;
   43942:	b8 2e 07 00 00       	mov    $0x72e,%eax
        if (v == 0) {
   43947:	85 d2                	test   %edx,%edx
   43949:	74 a7                	je     438f2 <memusage::symbol_at(unsigned long) const+0x8a>
        } else if (v == f_kernel) {
   4394b:	83 fa 01             	cmp    $0x1,%edx
   4394e:	0f 84 17 01 00 00    	je     43a6b <memusage::symbol_at(unsigned long) const+0x203>
        } else if (v == f_user) {
   43954:	83 fa 02             	cmp    $0x2,%edx
   43957:	0f 84 18 01 00 00    	je     43a75 <memusage::symbol_at(unsigned long) const+0x20d>
        } else if ((v & f_kernel) && (v & f_user)) {
   4395d:	89 d0                	mov    %edx,%eax
   4395f:	83 e0 03             	and    $0x3,%eax
   43962:	83 f8 03             	cmp    $0x3,%eax
   43965:	0f 84 d5 00 00 00    	je     43a40 <memusage::symbol_at(unsigned long) const+0x1d8>
        return lsb(v >> 2);
   4396b:	89 d1                	mov    %edx,%ecx
   4396d:	c1 e9 02             	shr    $0x2,%ecx
//    Returns 0 if `x == 0`.
inline constexpr int lsb(int x) {
    return __builtin_ffs(x);
}
inline constexpr int lsb(unsigned x) {
    return __builtin_ffs(x);
   43970:	0f bc c9             	bsf    %ecx,%ecx
   43973:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43978:	0f 44 c8             	cmove  %eax,%ecx
   4397b:	83 c1 01             	add    $0x1,%ecx
            uint16_t ch = colors[pid % 5] << 8;
   4397e:	48 63 c1             	movslq %ecx,%rax
   43981:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   43988:	48 c1 f8 21          	sar    $0x21,%rax
   4398c:	89 ce                	mov    %ecx,%esi
   4398e:	c1 fe 1f             	sar    $0x1f,%esi
   43991:	29 f0                	sub    %esi,%eax
   43993:	8d 04 80             	lea    (%rax,%rax,4),%eax
   43996:	89 cb                	mov    %ecx,%ebx
   43998:	29 c3                	sub    %eax,%ebx
   4399a:	89 d8                	mov    %ebx,%eax
   4399c:	48 98                	cltq   
   4399e:	0f b6 b8 e1 51 04 00 	movzbl 0x451e1(%rax),%edi
   439a5:	c1 e7 08             	shl    $0x8,%edi
                ch |= 0x4000;
   439a8:	89 f8                	mov    %edi,%eax
   439aa:	80 cc 40             	or     $0x40,%ah
   439ad:	f6 c2 01             	test   $0x1,%dl
   439b0:	0f 45 f8             	cmovne %eax,%edi
        } else if (pid >= 1) {
   439b3:	8d 71 ff             	lea    -0x1(%rcx),%esi
            return 2U << pid;
   439b6:	b8 02 00 00 00       	mov    $0x2,%eax
   439bb:	d3 e0                	shl    %cl,%eax
   439bd:	83 fe 1d             	cmp    $0x1d,%esi
   439c0:	be 00 00 00 00       	mov    $0x0,%esi
   439c5:	0f 42 f0             	cmovb  %eax,%esi
            if (v > (f_process(pid) | f_kernel | f_user)) {
   439c8:	83 ce 03             	or     $0x3,%esi
                ch = 0x0F00 | 'S';
   439cb:	b8 53 0f 00 00       	mov    $0xf53,%eax
            if (v > (f_process(pid) | f_kernel | f_user)) {
   439d0:	39 d6                	cmp    %edx,%esi
   439d2:	0f 82 1a ff ff ff    	jb     438f2 <memusage::symbol_at(unsigned long) const+0x8a>
                ch |= names[pid];
   439d8:	48 63 c9             	movslq %ecx,%rcx
   439db:	66 0f be 81 c0 51 04 	movsbw 0x451c0(%rcx),%ax
   439e2:	00 
   439e3:	09 f8                	or     %edi,%eax
   439e5:	e9 08 ff ff ff       	jmpq   438f2 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   439ea:	c1 ea 02             	shr    $0x2,%edx
   439ed:	0f bc ca             	bsf    %edx,%ecx
   439f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   439f5:	0f 44 c8             	cmove  %eax,%ecx
   439f8:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "reserved page mapped for user", marked_pid(v));
   439fb:	ba b8 50 04 00       	mov    $0x450b8,%edx
   43a00:	48 89 de             	mov    %rbx,%rsi
   43a03:	4c 89 ef             	mov    %r13,%rdi
   43a06:	e8 f7 fd ff ff       	callq  43802 <memusage::page_error(unsigned long, char const*, int) const>
        return 'R' | 0x0C00;
   43a0b:	b8 52 0c 00 00       	mov    $0xc52,%eax
   43a10:	e9 dd fe ff ff       	jmpq   438f2 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   43a15:	c1 ea 02             	shr    $0x2,%edx
   43a18:	0f bc ca             	bsf    %edx,%ecx
   43a1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43a20:	0f 44 c8             	cmove  %eax,%ecx
   43a23:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "kernel data page mapped for user", marked_pid(v));
   43a26:	ba 60 51 04 00       	mov    $0x45160,%edx
   43a2b:	48 89 de             	mov    %rbx,%rsi
   43a2e:	4c 89 ef             	mov    %r13,%rdi
   43a31:	e8 cc fd ff ff       	callq  43802 <memusage::page_error(unsigned long, char const*, int) const>
        return 'K' | 0xCD00;
   43a36:	b8 4b cd ff ff       	mov    $0xffffcd4b,%eax
   43a3b:	e9 b2 fe ff ff       	jmpq   438f2 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   43a40:	c1 ea 02             	shr    $0x2,%edx
   43a43:	0f bc ca             	bsf    %edx,%ecx
   43a46:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43a4b:	0f 44 c8             	cmove  %eax,%ecx
   43a4e:	83 c1 01             	add    $0x1,%ecx
            page_error(pa, "kernel allocated page mapped for user",
   43a51:	ba 88 51 04 00       	mov    $0x45188,%edx
   43a56:	48 89 de             	mov    %rbx,%rsi
   43a59:	4c 89 ef             	mov    %r13,%rdi
   43a5c:	e8 a1 fd ff ff       	callq  43802 <memusage::page_error(unsigned long, char const*, int) const>
            return '*' | 0xF400;
   43a61:	b8 2a f4 ff ff       	mov    $0xfffff42a,%eax
   43a66:	e9 87 fe ff ff       	jmpq   438f2 <memusage::symbol_at(unsigned long) const+0x8a>
            return 'K' | 0x0D00;
   43a6b:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
   43a70:	e9 7d fe ff ff       	jmpq   438f2 <memusage::symbol_at(unsigned long) const+0x8a>
            return '.' | 0x0700;
   43a75:	b8 2e 07 00 00       	mov    $0x72e,%eax
   43a7a:	e9 73 fe ff ff       	jmpq   438f2 <memusage::symbol_at(unsigned long) const+0x8a>
    auto v = v_[pa / PAGESIZE];
   43a7f:	48 89 da             	mov    %rbx,%rdx
   43a82:	48 c1 ea 0c          	shr    $0xc,%rdx
   43a86:	49 8b 45 00          	mov    0x0(%r13),%rax
   43a8a:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43a8d:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43a92:	48 39 c3             	cmp    %rax,%rbx
   43a95:	0f 83 1e fe ff ff    	jae    438b9 <memusage::symbol_at(unsigned long) const+0x51>
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43a9b:	83 fa 03             	cmp    $0x3,%edx
   43a9e:	40 0f 97 c6          	seta   %sil
   43aa2:	e9 77 fe ff ff       	jmpq   4391e <memusage::symbol_at(unsigned long) const+0xb6>

0000000000043aa7 <console_memviewer(proc*)>:
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
    }
}


void console_memviewer(proc* vmp) {
   43aa7:	f3 0f 1e fa          	endbr64 
   43aab:	55                   	push   %rbp
   43aac:	48 89 e5             	mov    %rsp,%rbp
   43aaf:	41 57                	push   %r15
   43ab1:	41 56                	push   %r14
   43ab3:	41 55                	push   %r13
   43ab5:	41 54                	push   %r12
   43ab7:	53                   	push   %rbx
   43ab8:	48 83 ec 28          	sub    $0x28,%rsp
    // Process 0 must never be used.
    assert(ptable[0].state == P_FREE);
   43abc:	83 3d 69 e7 00 00 00 	cmpl   $0x0,0xe769(%rip)        # 5222c <ptable+0xc>
   43ac3:	75 3c                	jne    43b01 <console_memviewer(proc*)+0x5a>
   43ac5:	49 89 fe             	mov    %rdi,%r14

    // track physical memory
    static memusage mu;
   43ac8:	0f b6 05 b9 55 01 00 	movzbl 0x155b9(%rip),%eax        # 59088 <guard variable for console_memviewer(proc*)::mu>
   43acf:	84 c0                	test   %al,%al
   43ad1:	74 42                	je     43b15 <console_memviewer(proc*)+0x6e>
    mu.refresh();
   43ad3:	bf 90 90 05 00       	mov    $0x59090,%edi
   43ad8:	e8 9b f8 ff ff       	callq  43378 <memusage::refresh()>

    // print physical memory
    console_printf(CPOS(0, 32), 0x0F00, "PHYSICAL MEMORY\n");
   43add:	ba f0 50 04 00       	mov    $0x450f0,%edx
   43ae2:	be 00 0f 00 00       	mov    $0xf00,%esi
   43ae7:	bf 20 00 00 00       	mov    $0x20,%edi
   43aec:	b8 00 00 00 00       	mov    $0x0,%eax
   43af1:	e8 fb 0d 00 00       	callq  448f1 <console_printf(int, int, char const*, ...)>
   43af6:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   43afc:	e9 b6 00 00 00       	jmpq   43bb7 <console_memviewer(proc*)+0x110>
    assert(ptable[0].state == P_FREE);
   43b01:	ba d6 50 04 00       	mov    $0x450d6,%edx
   43b06:	be e6 00 00 00       	mov    $0xe6,%esi
   43b0b:	bf 8e 50 04 00       	mov    $0x4508e,%edi
   43b10:	e8 77 eb ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
    static memusage mu;
   43b15:	bf 88 90 05 00       	mov    $0x59088,%edi
   43b1a:	e8 1a f8 ff ff       	callq  43339 <__cxa_guard_acquire>
   43b1f:	85 c0                	test   %eax,%eax
   43b21:	74 b0                	je     43ad3 <console_memviewer(proc*)+0x2c>
        : v_(nullptr) {
   43b23:	48 c7 05 62 55 01 00 	movq   $0x0,0x15562(%rip)        # 59090 <console_memviewer(proc*)::mu>
   43b2a:	00 00 00 00 
    static memusage mu;
   43b2e:	bf 88 90 05 00       	mov    $0x59088,%edi
   43b33:	e8 35 f8 ff ff       	callq  4336d <__cxa_guard_release>
   43b38:	eb 99                	jmp    43ad3 <console_memviewer(proc*)+0x2c>

    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
        if (pn % 64 == 0) {
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
   43b3a:	44 89 e1             	mov    %r12d,%ecx
   43b3d:	c1 e1 0c             	shl    $0xc,%ecx
   43b40:	41 8d 44 24 3f       	lea    0x3f(%r12),%eax
   43b45:	45 85 e4             	test   %r12d,%r12d
   43b48:	41 0f 49 c4          	cmovns %r12d,%eax
   43b4c:	c1 f8 06             	sar    $0x6,%eax
   43b4f:	8d 7c 80 05          	lea    0x5(%rax,%rax,4),%edi
   43b53:	c1 e7 04             	shl    $0x4,%edi
   43b56:	83 c7 03             	add    $0x3,%edi
   43b59:	ba 01 51 04 00       	mov    $0x45101,%edx
   43b5e:	be 00 0f 00 00       	mov    $0xf00,%esi
   43b63:	b8 00 00 00 00       	mov    $0x0,%eax
   43b68:	e8 84 0d 00 00       	callq  448f1 <console_printf(int, int, char const*, ...)>
        }
        console[CPOS(1 + pn/64, 12 + pn%64)] = mu.symbol_at(pn * PAGESIZE);
   43b6d:	8d 43 3f             	lea    0x3f(%rbx),%eax
   43b70:	85 db                	test   %ebx,%ebx
   43b72:	0f 49 c3             	cmovns %ebx,%eax
   43b75:	c1 f8 06             	sar    $0x6,%eax
   43b78:	8d 54 80 05          	lea    0x5(%rax,%rax,4),%edx
   43b7c:	c1 e2 04             	shl    $0x4,%edx
   43b7f:	89 d8                	mov    %ebx,%eax
   43b81:	c1 f8 1f             	sar    $0x1f,%eax
   43b84:	c1 e8 1a             	shr    $0x1a,%eax
   43b87:	01 c3                	add    %eax,%ebx
   43b89:	83 e3 3f             	and    $0x3f,%ebx
   43b8c:	29 c3                	sub    %eax,%ebx
   43b8e:	8d 5c 1a 0c          	lea    0xc(%rdx,%rbx,1),%ebx
   43b92:	4c 89 ee             	mov    %r13,%rsi
   43b95:	bf 90 90 05 00       	mov    $0x59090,%edi
   43b9a:	e8 c9 fc ff ff       	callq  43868 <memusage::symbol_at(unsigned long) const>
   43b9f:	48 63 db             	movslq %ebx,%rbx
   43ba2:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%rbx,%rbx,1)
   43ba9:	00 
    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
   43baa:	49 83 c4 01          	add    $0x1,%r12
   43bae:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
   43bb5:	74 15                	je     43bcc <console_memviewer(proc*)+0x125>
   43bb7:	4d 89 e5             	mov    %r12,%r13
   43bba:	49 c1 e5 0c          	shl    $0xc,%r13
   43bbe:	44 89 e3             	mov    %r12d,%ebx
        if (pn % 64 == 0) {
   43bc1:	41 f6 c4 3f          	test   $0x3f,%r12b
   43bc5:	75 a6                	jne    43b6d <console_memviewer(proc*)+0xc6>
   43bc7:	e9 6e ff ff ff       	jmpq   43b3a <console_memviewer(proc*)+0x93>
    }

    // print virtual memory
    if (vmp && vmp->pagetable) {
   43bcc:	4d 85 f6             	test   %r14,%r14
   43bcf:	0f 84 7f 01 00 00    	je     43d54 <console_memviewer(proc*)+0x2ad>
   43bd5:	49 83 3e 00          	cmpq   $0x0,(%r14)
   43bd9:	0f 84 75 01 00 00    	je     43d54 <console_memviewer(proc*)+0x2ad>
    console_printf(CPOS(10, 26), 0x0F00,
   43bdf:	41 8b 4e 08          	mov    0x8(%r14),%ecx
   43be3:	ba 09 51 04 00       	mov    $0x45109,%edx
   43be8:	be 00 0f 00 00       	mov    $0xf00,%esi
   43bed:	bf 3a 03 00 00       	mov    $0x33a,%edi
   43bf2:	b8 00 00 00 00       	mov    $0x0,%eax
   43bf7:	e8 f5 0c 00 00       	callq  448f1 <console_printf(int, int, char const*, ...)>
    : vmiter(p->pagetable, va) {
   43bfc:	49 8b 06             	mov    (%r14),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43bff:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   43c03:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   43c07:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43c0e:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   43c15:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43c1c:	00 
    real_find(va);
   43c1d:	be 00 00 00 00       	mov    $0x0,%esi
   43c22:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43c26:	e8 fb e0 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   43c2b:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   43c2f:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   43c36:	0f 87 31 01 00 00    	ja     43d6d <console_memviewer(proc*)+0x2c6>
            pa &= ~0x1000UL;
   43c3c:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   43c43:	ff 0f 00 
        return pa + (va_ & pageoffmask(level_));
   43c46:	49 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%r15
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43c4d:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   43c54:	ff 0f 00 
   43c57:	e9 89 00 00 00       	jmpq   43ce5 <console_memviewer(proc*)+0x23e>
            console_printf(CPOS(11 + pn / 64, 3), 0x0F00,
   43c5c:	48 89 d8             	mov    %rbx,%rax
   43c5f:	48 c1 e8 12          	shr    $0x12,%rax
   43c63:	8d 3c 80             	lea    (%rax,%rax,4),%edi
   43c66:	c1 e7 04             	shl    $0x4,%edi
   43c69:	81 c7 73 03 00 00    	add    $0x373,%edi
   43c6f:	48 89 d9             	mov    %rbx,%rcx
   43c72:	ba 01 51 04 00       	mov    $0x45101,%edx
   43c77:	be 00 0f 00 00       	mov    $0xf00,%esi
   43c7c:	b8 00 00 00 00       	mov    $0x0,%eax
   43c81:	e8 6b 0c 00 00       	callq  448f1 <console_printf(int, int, char const*, ...)>
   43c86:	eb 6e                	jmp    43cf6 <console_memviewer(proc*)+0x24f>
                uint16_t z = (ch & 0x0F00) ^ ((ch & 0xF000) >> 4);
   43c88:	89 c2                	mov    %eax,%edx
   43c8a:	66 c1 ea 04          	shr    $0x4,%dx
   43c8e:	31 c2                	xor    %eax,%edx
   43c90:	89 d1                	mov    %edx,%ecx
   43c92:	66 81 e1 00 0f       	and    $0xf00,%cx
                ch ^= z | (z << 4);
   43c97:	81 e2 00 0f 00 00    	and    $0xf00,%edx
   43c9d:	c1 e2 04             	shl    $0x4,%edx
   43ca0:	09 ca                	or     %ecx,%edx
   43ca2:	31 d0                	xor    %edx,%eax
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
   43ca4:	48 c1 eb 12          	shr    $0x12,%rbx
   43ca8:	48 8d 14 9b          	lea    (%rbx,%rbx,4),%rdx
   43cac:	48 c1 e2 04          	shl    $0x4,%rdx
   43cb0:	49 8d 94 14 7c 03 00 	lea    0x37c(%r12,%rdx,1),%rdx
   43cb7:	00 
   43cb8:	66 89 84 12 00 80 0b 	mov    %ax,0xb8000(%rdx,%rdx,1)
   43cbf:	00 
    return find(va_ + delta);
   43cc0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   43cc4:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   43ccb:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43ccf:	e8 52 e0 ff ff       	callq  41d26 <vmiter::real_find(unsigned long)>
    return va_;
   43cd4:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   43cd8:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   43cdf:	0f 87 88 00 00 00    	ja     43d6d <console_memviewer(proc*)+0x2c6>
        unsigned long pn = it.va() / PAGESIZE;
   43ce5:	49 89 dc             	mov    %rbx,%r12
   43ce8:	49 c1 ec 0c          	shr    $0xc,%r12
        if (pn % 64 == 0) {
   43cec:	41 83 e4 3f          	and    $0x3f,%r12d
   43cf0:	0f 84 66 ff ff ff    	je     43c5c <console_memviewer(proc*)+0x1b5>
    return (*pep_ & PTE_P) != 0;
   43cf6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43cfa:	48 8b 10             	mov    (%rax),%rdx
            ch = ' ';
   43cfd:	b8 20 00 00 00       	mov    $0x20,%eax
        if (!it.present()) {
   43d02:	f6 c2 01             	test   $0x1,%dl
   43d05:	74 9d                	je     43ca4 <console_memviewer(proc*)+0x1fd>
        if (level_ > 0) {
   43d07:	8b 4d c0             	mov    -0x40(%rbp),%ecx
            pa &= ~0x1000UL;
   43d0a:	48 89 d0             	mov    %rdx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43d0d:	4c 21 f0             	and    %r14,%rax
   43d10:	4c 21 ea             	and    %r13,%rdx
   43d13:	85 c9                	test   %ecx,%ecx
   43d15:	48 0f 4f c2          	cmovg  %rdx,%rax
   43d19:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43d1d:	4c 89 fe             	mov    %r15,%rsi
   43d20:	48 d3 e6             	shl    %cl,%rsi
   43d23:	48 f7 d6             	not    %rsi
   43d26:	48 23 75 c8          	and    -0x38(%rbp),%rsi
   43d2a:	48 01 c6             	add    %rax,%rsi
            ch = mu.symbol_at(it.pa());
   43d2d:	bf 90 90 05 00       	mov    $0x59090,%edi
   43d32:	e8 31 fb ff ff       	callq  43868 <memusage::symbol_at(unsigned long) const>
    return (*pep_ & perm_ & p) == p;
   43d37:	48 63 55 c4          	movslq -0x3c(%rbp),%rdx
   43d3b:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
   43d3f:	48 23 11             	and    (%rcx),%rdx
   43d42:	83 e2 05             	and    $0x5,%edx
            if (it.user()) { // switch foreground & background colors
   43d45:	48 83 fa 05          	cmp    $0x5,%rdx
   43d49:	0f 85 55 ff ff ff    	jne    43ca4 <console_memviewer(proc*)+0x1fd>
   43d4f:	e9 34 ff ff ff       	jmpq   43c88 <console_memviewer(proc*)+0x1e1>
        console_memviewer_virtual(mu, vmp);
    } else {
        console_printf(CPOS(10, 0), 0x0F00, "\n\n\n\n\n\n\n\n\n\n\n\n\n");
   43d54:	ba 27 51 04 00       	mov    $0x45127,%edx
   43d59:	be 00 0f 00 00       	mov    $0xf00,%esi
   43d5e:	bf 20 03 00 00       	mov    $0x320,%edi
   43d63:	b8 00 00 00 00       	mov    $0x0,%eax
   43d68:	e8 84 0b 00 00       	callq  448f1 <console_printf(int, int, char const*, ...)>
    }
}
   43d6d:	48 83 c4 28          	add    $0x28,%rsp
   43d71:	5b                   	pop    %rbx
   43d72:	41 5c                	pop    %r12
   43d74:	41 5d                	pop    %r13
   43d76:	41 5e                	pop    %r14
   43d78:	41 5f                	pop    %r15
   43d7a:	5d                   	pop    %rbp
   43d7b:	c3                   	retq   

0000000000043d7c <memcpy>:

// memcpy, memmove, memset, memcmp, memchr, strlen, strnlen, strcpy, strcmp,
// strncmp, strchr, strtoul, strtol
//    We must provide our own implementations.

void* memcpy(void* dst, const void* src, size_t n) {
   43d7c:	f3 0f 1e fa          	endbr64 
   43d80:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   43d83:	48 85 d2             	test   %rdx,%rdx
   43d86:	74 17                	je     43d9f <memcpy+0x23>
   43d88:	b9 00 00 00 00       	mov    $0x0,%ecx
        *d = *s;
   43d8d:	44 0f b6 04 0e       	movzbl (%rsi,%rcx,1),%r8d
   43d92:	44 88 04 08          	mov    %r8b,(%rax,%rcx,1)
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   43d96:	48 83 c1 01          	add    $0x1,%rcx
   43d9a:	48 39 d1             	cmp    %rdx,%rcx
   43d9d:	75 ee                	jne    43d8d <memcpy+0x11>
    }
    return dst;
}
   43d9f:	c3                   	retq   

0000000000043da0 <memmove>:

void* memmove(void* dst, const void* src, size_t n) {
   43da0:	f3 0f 1e fa          	endbr64 
   43da4:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
   43da7:	48 39 fe             	cmp    %rdi,%rsi
   43daa:	73 09                	jae    43db5 <memmove+0x15>
   43dac:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
   43db0:	48 39 cf             	cmp    %rcx,%rdi
   43db3:	72 1d                	jb     43dd2 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
   43db5:	b9 00 00 00 00       	mov    $0x0,%ecx
   43dba:	48 85 d2             	test   %rdx,%rdx
   43dbd:	74 12                	je     43dd1 <memmove+0x31>
            *d++ = *s++;
   43dbf:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
   43dc3:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
   43dc7:	48 83 c1 01          	add    $0x1,%rcx
   43dcb:	48 39 d1             	cmp    %rdx,%rcx
   43dce:	75 ef                	jne    43dbf <memmove+0x1f>
        }
    }
    return dst;
}
   43dd0:	c3                   	retq   
   43dd1:	c3                   	retq   
        while (n-- > 0) {
   43dd2:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
   43dd6:	48 85 d2             	test   %rdx,%rdx
   43dd9:	74 f5                	je     43dd0 <memmove+0x30>
            *--d = *--s;
   43ddb:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
   43ddf:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
   43de2:	48 83 e9 01          	sub    $0x1,%rcx
   43de6:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
   43dea:	75 ef                	jne    43ddb <memmove+0x3b>
   43dec:	c3                   	retq   

0000000000043ded <memset>:

void* memset(void* v, int c, size_t n) {
   43ded:	f3 0f 1e fa          	endbr64 
   43df1:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
   43df4:	48 85 d2             	test   %rdx,%rdx
   43df7:	74 13                	je     43e0c <memset+0x1f>
   43df9:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
   43dfd:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
   43e00:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
   43e03:	48 83 c2 01          	add    $0x1,%rdx
   43e07:	48 39 d1             	cmp    %rdx,%rcx
   43e0a:	75 f4                	jne    43e00 <memset+0x13>
    }
    return v;
}
   43e0c:	c3                   	retq   

0000000000043e0d <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
   43e0d:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
   43e11:	80 3f 00             	cmpb   $0x0,(%rdi)
   43e14:	74 10                	je     43e26 <strlen+0x19>
   43e16:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
   43e1b:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
   43e1f:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   43e23:	75 f6                	jne    43e1b <strlen+0xe>
   43e25:	c3                   	retq   
   43e26:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
   43e2b:	c3                   	retq   

0000000000043e2c <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
   43e2c:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   43e30:	48 85 f6             	test   %rsi,%rsi
   43e33:	74 15                	je     43e4a <strnlen+0x1e>
   43e35:	b8 00 00 00 00       	mov    $0x0,%eax
   43e3a:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   43e3e:	74 0d                	je     43e4d <strnlen+0x21>
        ++n;
   43e40:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   43e44:	48 39 c6             	cmp    %rax,%rsi
   43e47:	75 f1                	jne    43e3a <strnlen+0xe>
   43e49:	c3                   	retq   
   43e4a:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
   43e4d:	c3                   	retq   

0000000000043e4e <strcmp>:
        *d++ = *src++;
    } while (d[-1]);
    return dst;
}

int strcmp(const char* a, const char* b) {
   43e4e:	f3 0f 1e fa          	endbr64 
    while (true) {
        unsigned char ac = *a, bc = *b;
   43e52:	0f b6 17             	movzbl (%rdi),%edx
   43e55:	0f b6 0e             	movzbl (%rsi),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   43e58:	84 d2                	test   %dl,%dl
   43e5a:	41 0f 94 c0          	sete   %r8b
   43e5e:	38 ca                	cmp    %cl,%dl
   43e60:	0f 95 c0             	setne  %al
   43e63:	41 08 c0             	or     %al,%r8b
   43e66:	75 2a                	jne    43e92 <strcmp+0x44>
   43e68:	b8 01 00 00 00       	mov    $0x1,%eax
   43e6d:	84 c9                	test   %cl,%cl
   43e6f:	74 21                	je     43e92 <strcmp+0x44>
        unsigned char ac = *a, bc = *b;
   43e71:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
   43e75:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   43e79:	48 83 c0 01          	add    $0x1,%rax
   43e7d:	84 d2                	test   %dl,%dl
   43e7f:	41 0f 94 c1          	sete   %r9b
   43e83:	84 c9                	test   %cl,%cl
   43e85:	41 0f 94 c0          	sete   %r8b
   43e89:	45 08 c1             	or     %r8b,%r9b
   43e8c:	75 04                	jne    43e92 <strcmp+0x44>
   43e8e:	38 ca                	cmp    %cl,%dl
   43e90:	74 df                	je     43e71 <strcmp+0x23>
            return (ac > bc) - (ac < bc);
   43e92:	38 ca                	cmp    %cl,%dl
   43e94:	0f 97 c0             	seta   %al
   43e97:	0f b6 c0             	movzbl %al,%eax
   43e9a:	83 d8 00             	sbb    $0x0,%eax
        }
        ++a, ++b;
    }
}
   43e9d:	c3                   	retq   

0000000000043e9e <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
   43e9e:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
   43ea2:	0f b6 07             	movzbl (%rdi),%eax
   43ea5:	84 c0                	test   %al,%al
   43ea7:	74 10                	je     43eb9 <strchr+0x1b>
   43ea9:	40 38 f0             	cmp    %sil,%al
   43eac:	74 18                	je     43ec6 <strchr+0x28>
        ++s;
   43eae:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
   43eb2:	0f b6 07             	movzbl (%rdi),%eax
   43eb5:	84 c0                	test   %al,%al
   43eb7:	75 f0                	jne    43ea9 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
   43eb9:	40 84 f6             	test   %sil,%sil
   43ebc:	b8 00 00 00 00       	mov    $0x0,%eax
   43ec1:	48 0f 44 c7          	cmove  %rdi,%rax
   43ec5:	c3                   	retq   
   43ec6:	48 89 f8             	mov    %rdi,%rax
    }
}
   43ec9:	c3                   	retq   

0000000000043eca <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
   43eca:	f3 0f 1e fa          	endbr64 
   43ece:	55                   	push   %rbp
   43ecf:	48 89 e5             	mov    %rsp,%rbp
   43ed2:	41 57                	push   %r15
   43ed4:	41 56                	push   %r14
   43ed6:	41 55                	push   %r13
   43ed8:	41 54                	push   %r12
   43eda:	53                   	push   %rbx
   43edb:	48 83 ec 58          	sub    $0x58,%rsp
   43edf:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
   43ee3:	0f b6 02             	movzbl (%rdx),%eax
   43ee6:	84 c0                	test   %al,%al
   43ee8:	0f 84 c6 07 00 00    	je     446b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
   43eee:	49 89 fe             	mov    %rdi,%r14
   43ef1:	41 89 f7             	mov    %esi,%r15d
   43ef4:	48 89 d3             	mov    %rdx,%rbx
   43ef7:	e9 b9 03 00 00       	jmpq   442b5 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
   43efc:	4c 8d 63 01          	lea    0x1(%rbx),%r12
   43f00:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
   43f04:	84 db                	test   %bl,%bl
   43f06:	0f 84 8a 07 00 00    	je     44696 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
   43f0c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
   43f12:	0f be f3             	movsbl %bl,%esi
   43f15:	bf d0 58 04 00       	mov    $0x458d0,%edi
   43f1a:	e8 7f ff ff ff       	callq  43e9e <strchr>
   43f1f:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
   43f22:	48 85 c0             	test   %rax,%rax
   43f25:	74 74                	je     43f9b <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
   43f27:	48 81 e9 d0 58 04 00 	sub    $0x458d0,%rcx
   43f2e:	b8 01 00 00 00       	mov    $0x1,%eax
   43f33:	d3 e0                	shl    %cl,%eax
   43f35:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
   43f38:	49 83 c4 01          	add    $0x1,%r12
   43f3c:	41 0f b6 1c 24       	movzbl (%r12),%ebx
   43f41:	84 db                	test   %bl,%bl
   43f43:	75 cd                	jne    43f12 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
   43f45:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
   43f4c:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
   43f53:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
   43f58:	0f 84 cc 00 00 00    	je     4402a <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
   43f5e:	41 0f b6 04 24       	movzbl (%r12),%eax
   43f63:	3c 6c                	cmp    $0x6c,%al
   43f65:	0f 84 54 01 00 00    	je     440bf <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   43f6b:	0f 8f 42 01 00 00    	jg     440b3 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
   43f71:	3c 68                	cmp    $0x68,%al
   43f73:	0f 85 68 01 00 00    	jne    440e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
   43f79:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
   43f7e:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   43f84:	8d 50 bd             	lea    -0x43(%rax),%edx
   43f87:	80 fa 35             	cmp    $0x35,%dl
   43f8a:	0f 87 aa 05 00 00    	ja     4453a <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   43f90:	0f b6 d2             	movzbl %dl,%edx
   43f93:	3e ff 24 d5 10 52 04 	notrack jmpq *0x45210(,%rdx,8)
   43f9a:	00 
        if (*format >= '1' && *format <= '9') {
   43f9b:	8d 43 cf             	lea    -0x31(%rbx),%eax
   43f9e:	3c 08                	cmp    $0x8,%al
   43fa0:	77 35                	ja     43fd7 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43fa2:	41 0f b6 04 24       	movzbl (%r12),%eax
   43fa7:	8d 50 d0             	lea    -0x30(%rax),%edx
   43faa:	80 fa 09             	cmp    $0x9,%dl
   43fad:	77 63                	ja     44012 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
   43faf:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
   43fb4:	49 83 c4 01          	add    $0x1,%r12
   43fb8:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
   43fbb:	0f be c0             	movsbl %al,%eax
   43fbe:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43fc2:	41 0f b6 04 24       	movzbl (%r12),%eax
   43fc7:	8d 48 d0             	lea    -0x30(%rax),%ecx
   43fca:	80 f9 09             	cmp    $0x9,%cl
   43fcd:	76 e5                	jbe    43fb4 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
   43fcf:	89 55 98             	mov    %edx,-0x68(%rbp)
   43fd2:	e9 75 ff ff ff       	jmpq   43f4c <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
   43fd7:	80 fb 2a             	cmp    $0x2a,%bl
   43fda:	75 42                	jne    4401e <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
   43fdc:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43fe0:	8b 07                	mov    (%rdi),%eax
   43fe2:	83 f8 2f             	cmp    $0x2f,%eax
   43fe5:	77 19                	ja     44000 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
   43fe7:	89 c2                	mov    %eax,%edx
   43fe9:	48 03 57 10          	add    0x10(%rdi),%rdx
   43fed:	83 c0 08             	add    $0x8,%eax
   43ff0:	89 07                	mov    %eax,(%rdi)
   43ff2:	8b 02                	mov    (%rdx),%eax
   43ff4:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
   43ff7:	49 83 c4 01          	add    $0x1,%r12
   43ffb:	e9 4c ff ff ff       	jmpq   43f4c <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
   44000:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44004:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   44008:	48 8d 42 08          	lea    0x8(%rdx),%rax
   4400c:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44010:	eb e0                	jmp    43ff2 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   44012:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
   44019:	e9 2e ff ff ff       	jmpq   43f4c <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
   4401e:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
   44025:	e9 22 ff ff ff       	jmpq   43f4c <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
   4402a:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
   4402f:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   44035:	8d 48 d0             	lea    -0x30(%rax),%ecx
   44038:	80 f9 09             	cmp    $0x9,%cl
   4403b:	76 13                	jbe    44050 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
   4403d:	3c 2a                	cmp    $0x2a,%al
   4403f:	74 32                	je     44073 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
   44041:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
   44044:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
   4404b:	e9 0e ff ff ff       	jmpq   43f5e <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   44050:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
   44055:	48 83 c2 01          	add    $0x1,%rdx
   44059:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
   4405c:	0f be c0             	movsbl %al,%eax
   4405f:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   44063:	0f b6 02             	movzbl (%rdx),%eax
   44066:	8d 48 d0             	lea    -0x30(%rax),%ecx
   44069:	80 f9 09             	cmp    $0x9,%cl
   4406c:	76 e7                	jbe    44055 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
   4406e:	49 89 d4             	mov    %rdx,%r12
   44071:	eb 1c                	jmp    4408f <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
   44073:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44077:	8b 01                	mov    (%rcx),%eax
   44079:	83 f8 2f             	cmp    $0x2f,%eax
   4407c:	77 23                	ja     440a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
   4407e:	89 c2                	mov    %eax,%edx
   44080:	48 03 51 10          	add    0x10(%rcx),%rdx
   44084:	83 c0 08             	add    $0x8,%eax
   44087:	89 01                	mov    %eax,(%rcx)
   44089:	8b 32                	mov    (%rdx),%esi
                ++format;
   4408b:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
   4408f:	85 f6                	test   %esi,%esi
   44091:	b8 00 00 00 00       	mov    $0x0,%eax
   44096:	0f 49 c6             	cmovns %esi,%eax
   44099:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   4409c:	e9 bd fe ff ff       	jmpq   43f5e <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
   440a1:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   440a5:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   440a9:	48 8d 42 08          	lea    0x8(%rdx),%rax
   440ad:	48 89 47 08          	mov    %rax,0x8(%rdi)
   440b1:	eb d6                	jmp    44089 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
   440b3:	3c 74                	cmp    $0x74,%al
   440b5:	74 08                	je     440bf <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   440b7:	3c 7a                	cmp    $0x7a,%al
   440b9:	0f 85 e2 05 00 00    	jne    446a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
   440bf:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
   440c4:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   440ca:	8d 50 bd             	lea    -0x43(%rax),%edx
   440cd:	80 fa 35             	cmp    $0x35,%dl
   440d0:	0f 87 64 04 00 00    	ja     4453a <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   440d6:	0f b6 d2             	movzbl %dl,%edx
   440d9:	3e ff 24 d5 c0 53 04 	notrack jmpq *0x453c0(,%rdx,8)
   440e0:	00 
   440e1:	8d 50 bd             	lea    -0x43(%rax),%edx
   440e4:	80 fa 35             	cmp    $0x35,%dl
   440e7:	0f 87 4a 04 00 00    	ja     44537 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
   440ed:	0f b6 d2             	movzbl %dl,%edx
   440f0:	3e ff 24 d5 70 55 04 	notrack jmpq *0x45570(,%rdx,8)
   440f7:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
   440f8:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   440fc:	8b 07                	mov    (%rdi),%eax
   440fe:	83 f8 2f             	cmp    $0x2f,%eax
   44101:	0f 87 c9 01 00 00    	ja     442d0 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
   44107:	89 c2                	mov    %eax,%edx
   44109:	48 03 57 10          	add    0x10(%rdi),%rdx
   4410d:	83 c0 08             	add    $0x8,%eax
   44110:	89 07                	mov    %eax,(%rdi)
   44112:	48 8b 12             	mov    (%rdx),%rdx
   44115:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
   44118:	48 89 d0             	mov    %rdx,%rax
   4411b:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
   4411f:	49 89 d0             	mov    %rdx,%r8
   44122:	49 f7 d8             	neg    %r8
   44125:	25 80 00 00 00       	and    $0x80,%eax
   4412a:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
   4412e:	41 09 c5             	or     %eax,%r13d
   44131:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
   44135:	bb 34 51 04 00       	mov    $0x45134,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
   4413a:	44 89 e8             	mov    %r13d,%eax
   4413d:	83 e0 20             	and    $0x20,%eax
   44140:	89 45 9c             	mov    %eax,-0x64(%rbp)
   44143:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
   44149:	0f 85 0e 04 00 00    	jne    4455d <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
   4414f:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
   44153:	44 89 e8             	mov    %r13d,%eax
   44156:	83 e0 60             	and    $0x60,%eax
   44159:	83 f8 60             	cmp    $0x60,%eax
   4415c:	0f 84 3e 04 00 00    	je     445a0 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   44162:	44 89 e8             	mov    %r13d,%eax
   44165:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
   44168:	48 c7 45 a8 34 51 04 	movq   $0x45134,-0x58(%rbp)
   4416f:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   44170:	83 f8 21             	cmp    $0x21,%eax
   44173:	0f 84 66 04 00 00    	je     445df <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
   44179:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   4417c:	89 c8                	mov    %ecx,%eax
   4417e:	f7 d0                	not    %eax
   44180:	c1 e8 1f             	shr    $0x1f,%eax
   44183:	89 45 88             	mov    %eax,-0x78(%rbp)
   44186:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   4418a:	0f 85 8b 04 00 00    	jne    4461b <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
   44190:	84 c0                	test   %al,%al
   44192:	0f 84 83 04 00 00    	je     4461b <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
   44198:	48 63 f1             	movslq %ecx,%rsi
   4419b:	48 89 df             	mov    %rbx,%rdi
   4419e:	e8 89 fc ff ff       	callq  43e2c <strnlen>
   441a3:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
   441a6:	8b 45 8c             	mov    -0x74(%rbp),%eax
   441a9:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
   441ac:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
   441b3:	83 f8 22             	cmp    $0x22,%eax
   441b6:	0f 84 97 04 00 00    	je     44653 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
   441bc:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   441c0:	e8 48 fc ff ff       	callq  43e0d <strlen>
   441c5:	8b 55 a4             	mov    -0x5c(%rbp),%edx
   441c8:	03 55 a0             	add    -0x60(%rbp),%edx
   441cb:	8b 7d 98             	mov    -0x68(%rbp),%edi
   441ce:	29 d7                	sub    %edx,%edi
   441d0:	89 fa                	mov    %edi,%edx
   441d2:	29 c2                	sub    %eax,%edx
   441d4:	89 55 98             	mov    %edx,-0x68(%rbp)
   441d7:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   441da:	41 f6 c5 04          	test   $0x4,%r13b
   441de:	75 32                	jne    44212 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
   441e0:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   441e3:	85 d2                	test   %edx,%edx
   441e5:	7e 2b                	jle    44212 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
   441e7:	49 8b 06             	mov    (%r14),%rax
   441ea:	44 89 fa             	mov    %r15d,%edx
   441ed:	be 20 00 00 00       	mov    $0x20,%esi
   441f2:	4c 89 f7             	mov    %r14,%rdi
   441f5:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   441f7:	41 83 ed 01          	sub    $0x1,%r13d
   441fb:	45 85 ed             	test   %r13d,%r13d
   441fe:	7f e7                	jg     441e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
   44200:	8b 7d 98             	mov    -0x68(%rbp),%edi
   44203:	85 ff                	test   %edi,%edi
   44205:	b8 01 00 00 00       	mov    $0x1,%eax
   4420a:	0f 4f c7             	cmovg  %edi,%eax
   4420d:	29 c7                	sub    %eax,%edi
   4420f:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
   44212:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   44216:	0f b6 00             	movzbl (%rax),%eax
   44219:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
   4421d:	84 c0                	test   %al,%al
   4421f:	74 1b                	je     4423c <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
   44221:	0f b6 f0             	movzbl %al,%esi
   44224:	49 8b 06             	mov    (%r14),%rax
   44227:	44 89 fa             	mov    %r15d,%edx
   4422a:	4c 89 f7             	mov    %r14,%rdi
   4422d:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
   4422f:	49 83 c5 01          	add    $0x1,%r13
   44233:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
   44238:	84 c0                	test   %al,%al
   4423a:	75 e5                	jne    44221 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
   4423c:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
   44240:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
   44244:	7e 16                	jle    4425c <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
   44246:	49 8b 06             	mov    (%r14),%rax
   44249:	44 89 fa             	mov    %r15d,%edx
   4424c:	be 30 00 00 00       	mov    $0x30,%esi
   44251:	4c 89 f7             	mov    %r14,%rdi
   44254:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
   44256:	41 83 ed 01          	sub    $0x1,%r13d
   4425a:	75 ea                	jne    44246 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
   4425c:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
   44260:	7e 22                	jle    44284 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
   44262:	8b 45 a0             	mov    -0x60(%rbp),%eax
   44265:	8d 40 ff             	lea    -0x1(%rax),%eax
   44268:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
   4426d:	0f b6 33             	movzbl (%rbx),%esi
   44270:	49 8b 06             	mov    (%r14),%rax
   44273:	44 89 fa             	mov    %r15d,%edx
   44276:	4c 89 f7             	mov    %r14,%rdi
   44279:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
   4427b:	48 83 c3 01          	add    $0x1,%rbx
   4427f:	4c 39 eb             	cmp    %r13,%rbx
   44282:	75 e9                	jne    4426d <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
   44284:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
   44287:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   4428b:	7e 15                	jle    442a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
   4428d:	49 8b 06             	mov    (%r14),%rax
   44290:	44 89 fa             	mov    %r15d,%edx
   44293:	be 20 00 00 00       	mov    $0x20,%esi
   44298:	4c 89 f7             	mov    %r14,%rdi
   4429b:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
   4429d:	83 eb 01             	sub    $0x1,%ebx
   442a0:	75 eb                	jne    4428d <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
   442a2:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
   442a7:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   442ad:	84 c0                	test   %al,%al
   442af:	0f 84 ff 03 00 00    	je     446b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
   442b5:	3c 25                	cmp    $0x25,%al
   442b7:	0f 84 3f fc ff ff    	je     43efc <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
   442bd:	0f b6 f0             	movzbl %al,%esi
   442c0:	49 8b 06             	mov    (%r14),%rax
   442c3:	44 89 fa             	mov    %r15d,%edx
   442c6:	4c 89 f7             	mov    %r14,%rdi
   442c9:	ff 10                	callq  *(%rax)
            continue;
   442cb:	49 89 dc             	mov    %rbx,%r12
   442ce:	eb d2                	jmp    442a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
   442d0:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   442d4:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   442d8:	48 8d 42 08          	lea    0x8(%rdx),%rax
   442dc:	48 89 47 08          	mov    %rax,0x8(%rdi)
   442e0:	e9 2d fe ff ff       	jmpq   44112 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
   442e5:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
   442e8:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   442ec:	8b 01                	mov    (%rcx),%eax
   442ee:	83 f8 2f             	cmp    $0x2f,%eax
   442f1:	77 13                	ja     44306 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
   442f3:	89 c2                	mov    %eax,%edx
   442f5:	48 03 51 10          	add    0x10(%rcx),%rdx
   442f9:	83 c0 08             	add    $0x8,%eax
   442fc:	89 01                	mov    %eax,(%rcx)
   442fe:	48 63 12             	movslq (%rdx),%rdx
   44301:	e9 12 fe ff ff       	jmpq   44118 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
   44306:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4430a:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   4430e:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44312:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44316:	eb e6                	jmp    442fe <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
   44318:	49 89 cc             	mov    %rcx,%r12
   4431b:	b8 01 00 00 00       	mov    $0x1,%eax
   44320:	be 0a 00 00 00       	mov    $0xa,%esi
   44325:	e9 a8 00 00 00       	jmpq   443d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   4432a:	49 89 cc             	mov    %rcx,%r12
   4432d:	b8 00 00 00 00       	mov    $0x0,%eax
   44332:	be 0a 00 00 00       	mov    $0xa,%esi
   44337:	e9 96 00 00 00       	jmpq   443d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   4433c:	b8 00 00 00 00       	mov    $0x0,%eax
   44341:	be 0a 00 00 00       	mov    $0xa,%esi
   44346:	e9 87 00 00 00       	jmpq   443d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   4434b:	b8 00 00 00 00       	mov    $0x0,%eax
   44350:	be 0a 00 00 00       	mov    $0xa,%esi
   44355:	eb 7b                	jmp    443d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   44357:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   4435b:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4435f:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44363:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44367:	e9 84 00 00 00       	jmpq   443f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
   4436c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44370:	8b 01                	mov    (%rcx),%eax
   44372:	83 f8 2f             	cmp    $0x2f,%eax
   44375:	77 10                	ja     44387 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
   44377:	89 c2                	mov    %eax,%edx
   44379:	48 03 51 10          	add    0x10(%rcx),%rdx
   4437d:	83 c0 08             	add    $0x8,%eax
   44380:	89 01                	mov    %eax,(%rcx)
   44382:	44 8b 02             	mov    (%rdx),%r8d
   44385:	eb 6c                	jmp    443f3 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
   44387:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4438b:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   4438f:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44393:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44397:	eb e9                	jmp    44382 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
   44399:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
   4439c:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
   443a3:	bf 00 59 04 00       	mov    $0x45900,%edi
   443a8:	e9 c0 01 00 00       	jmpq   4456d <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   443ad:	49 89 cc             	mov    %rcx,%r12
   443b0:	b8 01 00 00 00       	mov    $0x1,%eax
   443b5:	eb 16                	jmp    443cd <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   443b7:	49 89 cc             	mov    %rcx,%r12
   443ba:	b8 00 00 00 00       	mov    $0x0,%eax
   443bf:	eb 0c                	jmp    443cd <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
   443c1:	b8 00 00 00 00       	mov    $0x0,%eax
   443c6:	eb 05                	jmp    443cd <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   443c8:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
   443cd:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   443d2:	85 c0                	test   %eax,%eax
   443d4:	74 96                	je     4436c <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
   443d6:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   443da:	8b 01                	mov    (%rcx),%eax
   443dc:	83 f8 2f             	cmp    $0x2f,%eax
   443df:	0f 87 72 ff ff ff    	ja     44357 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
   443e5:	89 c2                	mov    %eax,%edx
   443e7:	48 03 51 10          	add    0x10(%rcx),%rdx
   443eb:	83 c0 08             	add    $0x8,%eax
   443ee:	89 01                	mov    %eax,(%rcx)
   443f0:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
   443f3:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
   443f7:	85 f6                	test   %esi,%esi
   443f9:	79 9e                	jns    44399 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
   443fb:	41 89 f1             	mov    %esi,%r9d
   443fe:	f7 de                	neg    %esi
   44400:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
   44407:	bf e0 58 04 00       	mov    $0x458e0,%edi
   4440c:	e9 5c 01 00 00       	jmpq   4456d <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   44411:	49 89 cc             	mov    %rcx,%r12
   44414:	b8 01 00 00 00       	mov    $0x1,%eax
   44419:	eb 16                	jmp    44431 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   4441b:	49 89 cc             	mov    %rcx,%r12
   4441e:	b8 00 00 00 00       	mov    $0x0,%eax
   44423:	eb 0c                	jmp    44431 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
   44425:	b8 00 00 00 00       	mov    $0x0,%eax
   4442a:	eb 05                	jmp    44431 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   4442c:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
   44431:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
   44436:	eb 9a                	jmp    443d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   44438:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
   4443b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4443f:	8b 01                	mov    (%rcx),%eax
   44441:	83 f8 2f             	cmp    $0x2f,%eax
   44444:	77 21                	ja     44467 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
   44446:	89 c2                	mov    %eax,%edx
   44448:	48 03 51 10          	add    0x10(%rcx),%rdx
   4444c:	83 c0 08             	add    $0x8,%eax
   4444f:	89 01                	mov    %eax,(%rcx)
   44451:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
   44454:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
   4445b:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
   44460:	eb 99                	jmp    443fb <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
   44462:	49 89 cc             	mov    %rcx,%r12
   44465:	eb d4                	jmp    4443b <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
   44467:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   4446b:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4446f:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44473:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44477:	eb d8                	jmp    44451 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
   44479:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
   4447c:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44480:	8b 07                	mov    (%rdi),%eax
   44482:	83 f8 2f             	cmp    $0x2f,%eax
   44485:	77 1e                	ja     444a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
   44487:	89 c2                	mov    %eax,%edx
   44489:	48 03 57 10          	add    0x10(%rdi),%rdx
   4448d:	83 c0 08             	add    $0x8,%eax
   44490:	89 07                	mov    %eax,(%rdi)
   44492:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
   44495:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   4449b:	e9 9a fc ff ff       	jmpq   4413a <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   444a0:	49 89 cc             	mov    %rcx,%r12
   444a3:	eb d7                	jmp    4447c <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
   444a5:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   444a9:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   444ad:	48 8d 42 08          	lea    0x8(%rdx),%rax
   444b1:	48 89 41 08          	mov    %rax,0x8(%rcx)
   444b5:	eb db                	jmp    44492 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
   444b7:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
   444ba:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   444be:	8b 01                	mov    (%rcx),%eax
   444c0:	83 f8 2f             	cmp    $0x2f,%eax
   444c3:	77 18                	ja     444dd <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
   444c5:	89 c2                	mov    %eax,%edx
   444c7:	48 03 51 10          	add    0x10(%rcx),%rdx
   444cb:	83 c0 08             	add    $0x8,%eax
   444ce:	89 01                	mov    %eax,(%rcx)
   444d0:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
   444d3:	e9 ca fd ff ff       	jmpq   442a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
   444d8:	49 89 cc             	mov    %rcx,%r12
   444db:	eb dd                	jmp    444ba <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
   444dd:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   444e1:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   444e5:	48 8d 42 08          	lea    0x8(%rdx),%rax
   444e9:	48 89 47 08          	mov    %rax,0x8(%rdi)
   444ed:	eb e1                	jmp    444d0 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
   444ef:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
   444f2:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   444f6:	8b 07                	mov    (%rdi),%eax
   444f8:	83 f8 2f             	cmp    $0x2f,%eax
   444fb:	77 28                	ja     44525 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
   444fd:	89 c2                	mov    %eax,%edx
   444ff:	48 03 57 10          	add    0x10(%rdi),%rdx
   44503:	83 c0 08             	add    $0x8,%eax
   44506:	89 07                	mov    %eax,(%rdi)
   44508:	8b 02                	mov    (%rdx),%eax
   4450a:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   4450d:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   44511:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   44515:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   4451b:	e9 1a fc ff ff       	jmpq   4413a <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   44520:	49 89 cc             	mov    %rcx,%r12
   44523:	eb cd                	jmp    444f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
   44525:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44529:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   4452d:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44531:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44535:	eb d1                	jmp    44508 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
   44537:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
   4453a:	84 c0                	test   %al,%al
   4453c:	0f 85 3b 01 00 00    	jne    4467d <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
   44542:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
   44546:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
   4454a:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
   4454e:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   44552:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   44558:	e9 dd fb ff ff       	jmpq   4413a <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
   4455d:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
   44563:	bf 00 59 04 00       	mov    $0x45900,%edi
        if (flags & FLAG_NUMERIC) {
   44568:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
   4456d:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
   44571:	4c 89 c1             	mov    %r8,%rcx
   44574:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
   44578:	48 63 f6             	movslq %esi,%rsi
   4457b:	48 83 eb 01          	sub    $0x1,%rbx
   4457f:	48 89 c8             	mov    %rcx,%rax
   44582:	ba 00 00 00 00       	mov    $0x0,%edx
   44587:	48 f7 f6             	div    %rsi
   4458a:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
   4458e:	88 13                	mov    %dl,(%rbx)
        val /= base;
   44590:	48 89 ca             	mov    %rcx,%rdx
   44593:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
   44596:	48 39 d6             	cmp    %rdx,%rsi
   44599:	76 e0                	jbe    4457b <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
   4459b:	e9 af fb ff ff       	jmpq   4414f <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
   445a0:	48 c7 45 a8 fd 51 04 	movq   $0x451fd,-0x58(%rbp)
   445a7:	00 
            if (flags & FLAG_NEGATIVE) {
   445a8:	41 f6 c5 80          	test   $0x80,%r13b
   445ac:	0f 85 c7 fb ff ff    	jne    44179 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
   445b2:	48 c7 45 a8 fb 51 04 	movq   $0x451fb,-0x58(%rbp)
   445b9:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
   445ba:	41 f6 c5 10          	test   $0x10,%r13b
   445be:	0f 85 b5 fb ff ff    	jne    44179 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
   445c4:	41 f6 c5 08          	test   $0x8,%r13b
   445c8:	ba 34 51 04 00       	mov    $0x45134,%edx
   445cd:	b8 d6 4e 04 00       	mov    $0x44ed6,%eax
   445d2:	48 0f 44 c2          	cmove  %rdx,%rax
   445d6:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   445da:	e9 9a fb ff ff       	jmpq   44179 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
   445df:	41 8d 41 10          	lea    0x10(%r9),%eax
   445e3:	a9 df ff ff ff       	test   $0xffffffdf,%eax
   445e8:	0f 85 8b fb ff ff    	jne    44179 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
   445ee:	4d 85 c0             	test   %r8,%r8
   445f1:	75 0d                	jne    44600 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
   445f3:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
   445fa:	0f 84 79 fb ff ff    	je     44179 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
   44600:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
   44604:	ba f8 51 04 00       	mov    $0x451f8,%edx
   44609:	b8 ff 51 04 00       	mov    $0x451ff,%eax
   4460e:	48 0f 44 c2          	cmove  %rdx,%rax
   44612:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   44616:	e9 5e fb ff ff       	jmpq   44179 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
   4461b:	48 89 df             	mov    %rbx,%rdi
   4461e:	e8 ea f7 ff ff       	callq  43e0d <strlen>
   44623:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
   44626:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   4462a:	0f 84 76 fb ff ff    	je     441a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
   44630:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
   44634:	0f 84 6c fb ff ff    	je     441a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
   4463a:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   4463d:	89 ca                	mov    %ecx,%edx
   4463f:	29 c2                	sub    %eax,%edx
   44641:	39 c1                	cmp    %eax,%ecx
   44643:	b8 00 00 00 00       	mov    $0x0,%eax
   44648:	0f 4f c2             	cmovg  %edx,%eax
   4464b:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   4464e:	e9 69 fb ff ff       	jmpq   441bc <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
   44653:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   44657:	e8 b1 f7 ff ff       	callq  43e0d <strlen>
   4465c:	8b 75 a0             	mov    -0x60(%rbp),%esi
   4465f:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
   44662:	8b 7d 98             	mov    -0x68(%rbp),%edi
   44665:	89 f9                	mov    %edi,%ecx
   44667:	29 f1                	sub    %esi,%ecx
   44669:	29 c1                	sub    %eax,%ecx
   4466b:	39 fa                	cmp    %edi,%edx
   4466d:	b8 00 00 00 00       	mov    $0x0,%eax
   44672:	0f 4c c1             	cmovl  %ecx,%eax
   44675:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   44678:	e9 3f fb ff ff       	jmpq   441bc <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
   4467d:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
   44680:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   44683:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   44687:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   4468b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   44691:	e9 a4 fa ff ff       	jmpq   4413a <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
   44696:	41 bd 00 00 00 00    	mov    $0x0,%r13d
   4469c:	e9 a4 f8 ff ff       	jmpq   43f45 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
   446a1:	8d 50 bd             	lea    -0x43(%rax),%edx
   446a4:	80 fa 35             	cmp    $0x35,%dl
   446a7:	77 d7                	ja     44680 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
   446a9:	0f b6 d2             	movzbl %dl,%edx
   446ac:	3e ff 24 d5 20 57 04 	notrack jmpq *0x45720(,%rdx,8)
   446b3:	00 
        }
    }
}
   446b4:	48 83 c4 58          	add    $0x58,%rsp
   446b8:	5b                   	pop    %rbx
   446b9:	41 5c                	pop    %r12
   446bb:	41 5d                	pop    %r13
   446bd:	41 5e                	pop    %r14
   446bf:	41 5f                	pop    %r15
   446c1:	5d                   	pop    %rbp
   446c2:	c3                   	retq   

00000000000446c3 <console_clear()>:


// console_clear
//    Erases the console and moves the cursor to the upper left (CPOS(0, 0)).

void console_clear() {
   446c3:	f3 0f 1e fa          	endbr64 
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   446c7:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   446cc:	ba a0 8f 0b 00       	mov    $0xb8fa0,%edx
        console[i] = ' ' | 0x0700;
   446d1:	66 c7 00 20 07       	movw   $0x720,(%rax)
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   446d6:	48 83 c0 02          	add    $0x2,%rax
   446da:	48 39 d0             	cmp    %rdx,%rax
   446dd:	75 f2                	jne    446d1 <console_clear()+0xe>
    }
    cursorpos = 0;
   446df:	c7 05 13 49 07 00 00 	movl   $0x0,0x74913(%rip)        # b8ffc <cursorpos>
   446e6:	00 00 00 
}
   446e9:	c3                   	retq   

00000000000446ea <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
   446ea:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
   446ee:	48 c7 07 88 59 04 00 	movq   $0x45988,(%rdi)
   446f5:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   446fc:	00 
   446fd:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
   44700:	85 f6                	test   %esi,%esi
   44702:	78 18                	js     4471c <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44704:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
   4470a:	7f 0f                	jg     4471b <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
   4470c:	48 63 f6             	movslq %esi,%rsi
   4470f:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
   44716:	00 
   44717:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
   4471b:	c3                   	retq   
        cell_ += cursorpos;
   4471c:	8b 05 da 48 07 00    	mov    0x748da(%rip),%eax        # b8ffc <cursorpos>
   44722:	48 98                	cltq   
   44724:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
   4472b:	00 
   4472c:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44730:	c3                   	retq   
   44731:	90                   	nop

0000000000044732 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
   44732:	f3 0f 1e fa          	endbr64 
   44736:	55                   	push   %rbp
   44737:	48 89 e5             	mov    %rsp,%rbp
   4473a:	53                   	push   %rbx
   4473b:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   4473f:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
   44746:	00 
   44747:	72 18                	jb     44761 <console_printer::scroll()+0x2f>
   44749:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
   4474c:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   44750:	75 23                	jne    44775 <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
   44752:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   44759:	00 
    }
}
   4475a:	48 83 c4 08          	add    $0x8,%rsp
   4475e:	5b                   	pop    %rbx
   4475f:	5d                   	pop    %rbp
   44760:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   44761:	ba 18 59 04 00       	mov    $0x45918,%edx
   44766:	be 1f 02 00 00       	mov    $0x21f,%esi
   4476b:	bf f1 51 04 00       	mov    $0x451f1,%edi
   44770:	e8 17 df ff ff       	callq  4268c <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
   44775:	ba 00 0f 00 00       	mov    $0xf00,%edx
   4477a:	be a0 80 0b 00       	mov    $0xb80a0,%esi
   4477f:	bf 00 80 0b 00       	mov    $0xb8000,%edi
   44784:	e8 17 f6 ff ff       	callq  43da0 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
   44789:	ba a0 00 00 00       	mov    $0xa0,%edx
   4478e:	be 00 00 00 00       	mov    $0x0,%esi
   44793:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
   44798:	e8 50 f6 ff ff       	callq  43ded <memset>
        cell_ -= CONSOLE_COLUMNS;
   4479d:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
   447a4:	00 
   447a5:	eb b3                	jmp    4475a <console_printer::scroll()+0x28>
   447a7:	90                   	nop

00000000000447a8 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
   447a8:	f3 0f 1e fa          	endbr64 
   447ac:	55                   	push   %rbp
   447ad:	48 89 e5             	mov    %rsp,%rbp
   447b0:	41 55                	push   %r13
   447b2:	41 54                	push   %r12
   447b4:	53                   	push   %rbx
   447b5:	48 83 ec 08          	sub    $0x8,%rsp
   447b9:	48 89 fb             	mov    %rdi,%rbx
   447bc:	41 89 f5             	mov    %esi,%r13d
   447bf:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   447c2:	48 8b 47 08          	mov    0x8(%rdi),%rax
   447c6:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   447cc:	72 14                	jb     447e2 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
   447ce:	48 89 df             	mov    %rbx,%rdi
   447d1:	e8 5c ff ff ff       	callq  44732 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   447d6:	48 8b 43 08          	mov    0x8(%rbx),%rax
   447da:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   447e0:	73 ec                	jae    447ce <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
   447e2:	41 80 fd 0a          	cmp    $0xa,%r13b
   447e6:	74 1e                	je     44806 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
   447e8:	48 8d 50 02          	lea    0x2(%rax),%rdx
   447ec:	48 89 53 08          	mov    %rdx,0x8(%rbx)
   447f0:	45 0f b6 ed          	movzbl %r13b,%r13d
   447f4:	45 09 ec             	or     %r13d,%r12d
   447f7:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
   447fb:	48 83 c4 08          	add    $0x8,%rsp
   447ff:	5b                   	pop    %rbx
   44800:	41 5c                	pop    %r12
   44802:	41 5d                	pop    %r13
   44804:	5d                   	pop    %rbp
   44805:	c3                   	retq   
        int pos = (cell_ - console) % 80;
   44806:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   4480c:	48 89 c1             	mov    %rax,%rcx
   4480f:	48 89 c6             	mov    %rax,%rsi
   44812:	48 d1 fe             	sar    %rsi
   44815:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
   4481c:	66 66 66 
   4481f:	48 89 f0             	mov    %rsi,%rax
   44822:	48 f7 ea             	imul   %rdx
   44825:	48 c1 fa 05          	sar    $0x5,%rdx
   44829:	48 89 c8             	mov    %rcx,%rax
   4482c:	48 c1 f8 3f          	sar    $0x3f,%rax
   44830:	48 29 c2             	sub    %rax,%rdx
   44833:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
   44837:	48 c1 e0 04          	shl    $0x4,%rax
   4483b:	89 f2                	mov    %esi,%edx
   4483d:	29 c2                	sub    %eax,%edx
   4483f:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
   44841:	41 83 cc 20          	or     $0x20,%r12d
   44845:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
   44849:	48 8d 71 02          	lea    0x2(%rcx),%rsi
   4484d:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   44851:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
   44855:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
   44858:	83 f8 50             	cmp    $0x50,%eax
   4485b:	75 e8                	jne    44845 <console_printer::putc(unsigned char, int)+0x9d>
   4485d:	eb 9c                	jmp    447fb <console_printer::putc(unsigned char, int)+0x53>
   4485f:	90                   	nop

0000000000044860 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
   44860:	f3 0f 1e fa          	endbr64 
   44864:	55                   	push   %rbp
   44865:	48 89 e5             	mov    %rsp,%rbp
    cursorpos = cell_ - console;
   44868:	48 8b 47 08          	mov    0x8(%rdi),%rax
   4486c:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   44872:	48 d1 f8             	sar    %rax
   44875:	89 05 81 47 07 00    	mov    %eax,0x74781(%rip)        # b8ffc <cursorpos>
    console_show_cursor(cursorpos);
   4487b:	8b 3d 7b 47 07 00    	mov    0x7477b(%rip),%edi        # b8ffc <cursorpos>
   44881:	e8 5a da ff ff       	callq  422e0 <console_show_cursor(int)>
}
   44886:	5d                   	pop    %rbp
   44887:	c3                   	retq   

0000000000044888 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
   44888:	f3 0f 1e fa          	endbr64 
   4488c:	55                   	push   %rbp
   4488d:	48 89 e5             	mov    %rsp,%rbp
   44890:	41 56                	push   %r14
   44892:	41 55                	push   %r13
   44894:	41 54                	push   %r12
   44896:	53                   	push   %rbx
   44897:	48 83 ec 20          	sub    $0x20,%rsp
   4489b:	89 fb                	mov    %edi,%ebx
   4489d:	41 89 f4             	mov    %esi,%r12d
   448a0:	49 89 d5             	mov    %rdx,%r13
   448a3:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
   448a6:	89 fa                	mov    %edi,%edx
   448a8:	c1 ea 1f             	shr    $0x1f,%edx
   448ab:	89 fe                	mov    %edi,%esi
   448ad:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   448b1:	e8 34 fe ff ff       	callq  446ea <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
   448b6:	4c 89 f1             	mov    %r14,%rcx
   448b9:	4c 89 ea             	mov    %r13,%rdx
   448bc:	44 89 e6             	mov    %r12d,%esi
   448bf:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   448c3:	e8 02 f6 ff ff       	callq  43eca <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
   448c8:	85 db                	test   %ebx,%ebx
   448ca:	78 1a                	js     448e6 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
   448cc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   448d0:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   448d6:	48 d1 f8             	sar    %rax
}
   448d9:	48 83 c4 20          	add    $0x20,%rsp
   448dd:	5b                   	pop    %rbx
   448de:	41 5c                	pop    %r12
   448e0:	41 5d                	pop    %r13
   448e2:	41 5e                	pop    %r14
   448e4:	5d                   	pop    %rbp
   448e5:	c3                   	retq   
        cp.move_cursor();
   448e6:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   448ea:	e8 71 ff ff ff       	callq  44860 <console_printer::move_cursor()>
   448ef:	eb db                	jmp    448cc <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

00000000000448f1 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
   448f1:	f3 0f 1e fa          	endbr64 
   448f5:	55                   	push   %rbp
   448f6:	48 89 e5             	mov    %rsp,%rbp
   448f9:	48 83 ec 50          	sub    $0x50,%rsp
   448fd:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   44901:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   44905:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   44909:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   44910:	48 8d 45 10          	lea    0x10(%rbp),%rax
   44914:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   44918:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   4491c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
   44920:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   44924:	e8 5f ff ff ff       	callq  44888 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
   44929:	c9                   	leaveq 
   4492a:	c3                   	retq   
