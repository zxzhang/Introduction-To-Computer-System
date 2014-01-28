
bomb:     file format elf64-x86-64

SYMBOL TABLE:
0000000000400200 l    d  .interp	0000000000000000              .interp
000000000040021c l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000400240 l    d  .gnu.hash	0000000000000000              .gnu.hash
0000000000400270 l    d  .dynsym	0000000000000000              .dynsym
0000000000400588 l    d  .dynstr	0000000000000000              .dynstr
00000000004006b6 l    d  .gnu.version	0000000000000000              .gnu.version
00000000004006f8 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000400728 l    d  .rela.dyn	0000000000000000              .rela.dyn
0000000000400788 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000400a28 l    d  .init	0000000000000000              .init
0000000000400a40 l    d  .plt	0000000000000000              .plt
0000000000400c10 l    d  .text	0000000000000000              .text
00000000004024f8 l    d  .fini	0000000000000000              .fini
0000000000402520 l    d  .rodata	0000000000000000              .rodata
0000000000402c60 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
0000000000402d68 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000603140 l    d  .ctors	0000000000000000              .ctors
0000000000603150 l    d  .dtors	0000000000000000              .dtors
0000000000603160 l    d  .jcr	0000000000000000              .jcr
0000000000603168 l    d  .dynamic	0000000000000000              .dynamic
00000000006032f8 l    d  .got	0000000000000000              .got
0000000000603300 l    d  .got.plt	0000000000000000              .got.plt
0000000000603400 l    d  .data	0000000000000000              .data
0000000000603d00 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    d  .debug_aranges	0000000000000000              .debug_aranges
0000000000000000 l    d  .debug_pubnames	0000000000000000              .debug_pubnames
0000000000000000 l    d  .debug_info	0000000000000000              .debug_info
0000000000000000 l    d  .debug_abbrev	0000000000000000              .debug_abbrev
0000000000000000 l    d  .debug_line	0000000000000000              .debug_line
0000000000000000 l    d  .debug_frame	0000000000000000              .debug_frame
0000000000000000 l    d  .debug_str	0000000000000000              .debug_str
0000000000000000 l    d  .debug_loc	0000000000000000              .debug_loc
0000000000400c3c l     F .text	0000000000000000              call_gmon_start
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000603140 l     O .ctors	0000000000000000              __CTOR_LIST__
0000000000603150 l     O .dtors	0000000000000000              __DTOR_LIST__
0000000000603160 l     O .jcr	0000000000000000              __JCR_LIST__
0000000000603d18 l     O .bss	0000000000000008              dtor_idx.6147
0000000000603d20 l     O .bss	0000000000000001              completed.6145
0000000000400c60 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000400cc0 l     F .text	0000000000000000              frame_dummy
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000603148 l     O .ctors	0000000000000000              __CTOR_END__
0000000000403138 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000603160 l     O .jcr	0000000000000000              __JCR_END__
00000000004024c0 l     F .text	0000000000000000              __do_global_ctors_aux
0000000000000000 l    df *ABS*	0000000000000000              bomb.c
0000000000000000 l    df *ABS*	0000000000000000              phases.c
0000000000402720 l     O .rodata	0000000000000040              array.3306
0000000000000000 l    df *ABS*	0000000000000000              support.c
0000000000401723 l     F .text	0000000000000051              sig_handler
0000000000000000 l    df *ABS*	0000000000000000              driverlib.c
0000000000401979 l     F .text	00000000000000da              rio_readlineb
000000000060313c l       .ctors	0000000000000000              .hidden __preinit_array_start
000000000060313c l       .ctors	0000000000000000              .hidden __fini_array_end
0000000000603300 l     O .got.plt	0000000000000000              .hidden _GLOBAL_OFFSET_TABLE_
000000000060313c l       .ctors	0000000000000000              .hidden __preinit_array_end
000000000060313c l       .ctors	0000000000000000              .hidden __fini_array_start
000000000060313c l       .ctors	0000000000000000              .hidden __init_array_end
000000000060313c l       .ctors	0000000000000000              .hidden __init_array_start
0000000000603168 l     O .dynamic	0000000000000000              .hidden _DYNAMIC
0000000000603400  w      .data	0000000000000000              data_start
0000000000402370 g     F .text	0000000000000078              driver_post
0000000000000000       F *UND*	00000000000000a2              printf@@GLIBC_2.2.5
0000000000603a60 g     O .data	0000000000000018              n1
0000000000000000       F *UND*	0000000000000b1b              memset@@GLIBC_2.2.5
0000000000402420 g     F .text	0000000000000002              __libc_csu_fini
0000000000400c10 g     F .text	0000000000000000              _start
0000000000603a20 g     O .data	0000000000000018              n22
0000000000000000       F *UND*	000000000000006c              close@@GLIBC_2.2.5
0000000000603a00 g     O .data	0000000000000018              n32
00000000004012d1 g     F .text	0000000000000002              initialize_bomb_solve
0000000000000000       F *UND*	00000000000001a9              gethostbyname@@GLIBC_2.2.5
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000000000  w      *UND*	0000000000000000              _Jv_RegisterClasses
0000000000000000       F *UND*	000000000000018c              puts@@GLIBC_2.2.5
0000000000401477 g     F .text	0000000000000042              read_six_numbers
0000000000000000       F *UND*	00000000000000f1              exit@@GLIBC_2.2.5
0000000000603960 g     O .data	0000000000000018              n41
0000000000603980 g     O .data	0000000000000018              n45
0000000000000000       F *UND*	000000000000003a              strcasecmp@@GLIBC_2.2.5
0000000000603420 g     O .data	0000000000000004              bomb_id
00000000004024f8 g     F .fini	0000000000000000              _fini
000000000040126f g     F .text	0000000000000062              strings_not_equal
0000000000400ee3 g     F .text	0000000000000115              phase_6
0000000000000000       F *UND*	0000000000000080              read@@GLIBC_2.2.5
0000000000000000       F *UND*	000000000000000a              fopen@@GLIBC_2.2.5
0000000000000000       F *UND*	00000000000001a5              __libc_start_main@@GLIBC_2.2.5
0000000000400ff8 g     F .text	0000000000000044              phase_2
0000000000603870 g     O .data	0000000000000010              node3
0000000000000000       F *UND*	000000000000019a              fgets@@GLIBC_2.2.5
0000000000402520 g     O .rodata	0000000000000004              _IO_stdin_used
00000000006039e0 g     O .data	0000000000000018              n33
0000000000603440 g     O .data	0000000000000400              userid
0000000000603400 g       .data	0000000000000000              __data_start
0000000000000000       F *UND*	0000000000000165              bcopy@@GLIBC_2.2.5
0000000000400e5a g     F .text	0000000000000034              fun7
0000000000400e8e g     F .text	0000000000000055              secret_phase
0000000000000000       F *UND*	0000000000000037              __ctype_b_loc@@GLIBC_2.3
00000000006038c0 g     O .data	0000000000000018              n46
0000000000603900 g     O .data	0000000000000018              n42
0000000000000000       F *UND*	0000000000000090              sprintf@@GLIBC_2.2.5
0000000000603d00 g     O .bss	0000000000000008              stdin@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000010              __strtol_internal@@GLIBC_2.2.5
0000000000401441 g     F .text	0000000000000036              explode_bomb
0000000000000000       F *UND*	0000000000000090              sscanf@@GLIBC_2.2.5
0000000000000000       F *UND*	00000000000001b9              sleep@@GLIBC_2.2.5
00000000004010e1 g     F .text	000000000000014d              phase_3
0000000000603880 g     O .data	0000000000000010              node2
0000000000401537 g     F .text	000000000000012a              read_line
0000000000402528 g     O .rodata	0000000000000000              .hidden __dso_handle
0000000000401952 g     F .text	0000000000000027              init_timeout
0000000000603158 g     O .dtors	0000000000000000              .hidden __DTOR_END__
0000000000402430 g     F .text	000000000000008b              __libc_csu_init
0000000000603d40 g     O .bss	0000000000000640              input_strings
0000000000000000       F *UND*	0000000000000080              connect@@GLIBC_2.2.5
0000000000000000       F *UND*	00000000000000a1              gethostname@@GLIBC_2.2.5
0000000000603840 g     O .data	0000000000000010              node6
0000000000401661 g     F .text	00000000000000c2              initialize_bomb
00000000006039a0 g     O .data	0000000000000018              n34
00000000004013b5 g     F .text	000000000000008c              phase_defused
00000000004014b9 g     F .text	000000000000003d              blank_line
0000000000000000       F *UND*	00000000000000d4              signal@@GLIBC_2.2.5
00000000004014f6 g     F .text	0000000000000041              skip
0000000000000000       F *UND*	0000000000000025              socket@@GLIBC_2.2.5
0000000000603a80 g     O .data	0000000000000280              host_table
0000000000000000       F *UND*	00000000000000f5              getenv@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000025              alarm@@GLIBC_2.2.5
0000000000603940 g     O .data	0000000000000018              n47
0000000000603d28 g     O .bss	0000000000000008              infile
0000000000000000       F *UND*	0000000000000011              __errno_location@@GLIBC_2.2.5
00000000006038e0 g     O .data	0000000000000018              n43
0000000000603d00 g       *ABS*	0000000000000000              __bss_start
00000000004012f3 g     F .text	00000000000000c2              send_msg
0000000000401081 g     F .text	0000000000000060              phase_4
0000000000604380 g     O .bss	0000000000000050              scratch
0000000000603d24 g     O .bss	0000000000000004              num_input_strings
0000000000000000       F *UND*	00000000000000dc              strcpy@@GLIBC_2.2.5
00000000006039c0 g     O .data	0000000000000018              n31
00000000004012d3 g     F .text	0000000000000020              invalid_phase
0000000000603890 g     O .data	0000000000000010              node1
0000000000603a40 g     O .data	0000000000000018              n21
00000000006043d0 g       *ABS*	0000000000000000              _end
0000000000401780 g     F .text	00000000000001d2              init_driver
0000000000603850 g     O .data	0000000000000010              node5
00000000004023e8 g     F .text	0000000000000029              sigalrm_handler
0000000000603d08 g     O .bss	0000000000000008              stderr@@GLIBC_2.2.5
0000000000603d00 g       *ABS*	0000000000000000              _edata
0000000000603920 g     O .data	0000000000000018              n44
0000000000000000       F *UND*	0000000000000090              fprintf@@GLIBC_2.2.5
000000000040103c g     F .text	0000000000000045              phase_5
00000000006038a0 g     O .data	0000000000000018              n48
0000000000000000       F *UND*	0000000000000080              write@@GLIBC_2.2.5
0000000000401250 g     F .text	000000000000001f              string_length
0000000000401a53 g     F .text	000000000000091d              submitr
0000000000400e20 g     F .text	000000000000003a              func4
0000000000603d10 g     O .bss	0000000000000008              stdout@@GLIBC_2.2.5
0000000000603860 g     O .data	0000000000000010              node4
0000000000400ce8 g     F .text	000000000000012d              main
0000000000400a28 g     F .init	0000000000000000              _init
0000000000000000       F *UND*	00000000000000fe              fflush@@GLIBC_2.2.5
000000000040122e g     F .text	000000000000001c              phase_1


