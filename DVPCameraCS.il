
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.module extern Kernel32.dll
.module extern kernel32.dll
.module extern DVPCamera.dll
.module extern kernel32
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly DVPCameraCS
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 下列自定义特性会自动添加，不要取消注释 -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0B 44 56 50 43 61 6D 65 72 61 43 53 00 00 ) // ...DVPCameraCS..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 08 64 6F 33 74 68 69 6E 6B 00 00 )          // ...do3think..
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0B 44 56 50 43 61 6D 65 72 61 43 53 00 00 ) // ...DVPCameraCS..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1A 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  64 6F 33 74 68 69 6E 6B 20 32 30 32 31 00 00 )    // do3think 2021..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 01 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 35 32 34 61 64 38 65 2D 61 64 38 35   // ..$0524ad8e-ad85
                                                                                                  2D 34 64 62 35 2D 38 38 39 66 2D 62 33 31 62 36   // -4db5-889f-b31b6
                                                                                                  39 32 38 61 66 37 37 00 00 )                      // 928af77..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 32 2E 30 2E 30 2E 31 00 00 )             // ...2.0.0.1..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 01 00 54   // ,Version=v4.0..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 10 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 )                            // ework 4
  .hash algorithm 0x00008004
  .ver 2:0:0:1
}
.module DVPCameraCS.dll
// MVID: {5FFEF118-782B-4AC1-84EF-84EC4FED46E0}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x06F10000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi sealed DVPCameraType.dvpImageFormat
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_MONO = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 BB 91 E7 99 BD E5 9B BE E5 83 8F 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BAYER_BG = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 42 47 47 52 E5 8E 9F E5 A7 8B E5 9B BE   // ...BGGR.........
                                                                                              E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BAYER_GB = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 47 42 52 47 E5 8E 9F E5 A7 8B E5 9B BE   // ...GBRG.........
                                                                                              E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BAYER_GR = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 47 42 52 47 E5 8E 9F E5 A7 8B E5 9B BE   // ...GBRG.........
                                                                                              E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BAYER_RG = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 52 47 47 42 E5 8E 9F E5 A7 8B E5 9B BE   // ...RGGB.........
                                                                                              E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BGR24 = int32(0x0000000A)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1A 52 47 42 E4 B8 89 E9 80 9A E9 81 93 32   // ...RGB.........2
                                                                                              34 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 )    // 4..............
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BGR32 = int32(0x0000000B)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 42 47 52 41 E5 9B 9B E9 80 9A E9 81 93   // ...BGRA.........
                                                                                              33 32 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 32..............
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BGR48 = int32(0x0000000C)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1A 42 47 52 E4 B8 89 E9 80 9A E9 81 93 34   // ...BGR.........4
                                                                                              38 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 )    // 8..............
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_BGR64 = int32(0x0000000D)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 42 47 52 41 E5 9B 9B E9 80 9A E9 81 93   // ...BGRA.........
                                                                                              36 34 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 64..............
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_RGB24 = int32(0x0000000E)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1A 52 47 42 E4 B8 89 E9 80 9A E9 81 93 32   // ...RGB.........2
                                                                                              34 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 )    // 4..............
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_RGB32 = int32(0x0000000F)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 52 47 42 41 E5 9B 9B E9 80 9A E9 81 93   // ...RGBA.........
                                                                                              33 32 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 32..............
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_RGB48 = int32(0x00000010)
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_YUV_411 = int32(0x00000014)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 59 55 56 34 31 31 00 00 )                // ...YUV411..
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_YUV_422 = int32(0x00000015)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 59 55 56 34 32 32 00 00 )                // ...YUV422..
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_B8_G8_R8 = int32(0x00000028)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 22 42 47 52 E4 B8 89 E9 80 9A E9 81 93 38   // .."BGR.........8
                                                                                              E6 AF 94 E7 89 B9 E6 8B 86 E5 88 86 E7 9A 84 E5 
                                                                                              9B BE E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpImageFormat FORMAT_B16_G16_R16 = int32(0x0000002C)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 23 42 47 52 E4 B8 89 E9 80 9A E9 81 93 31   // ..#BGR.........1
                                                                                              36 E6 AF 94 E7 89 B9 E6 8B 86 E5 88 86 E7 9A 84   // 6...............
                                                                                              E5 9B BE E5 83 8F 00 00 ) 
} // end of class DVPCameraType.dvpImageFormat

.class public auto ansi sealed DVPCameraType.dvpStreamFormat
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RAW8 = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0A 38 E4 BD 8D E5 9B BE E5 83 8F 00 00 )    // ...8...........
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RAW10 = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0B 31 30 E4 BD 8D E5 9B BE E5 83 8F 00 00 ) // ...10...........
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RAW12 = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0B 31 32 E4 BD 8D E5 9B BE E5 83 8F 00 00 ) // ...12...........
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RAW14 = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0B 31 34 E4 BD 8D E5 9B BE E5 83 8F 00 00 ) // ...14...........
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RAW16 = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0B 31 36 E4 BD 8D E5 9B BE E5 83 8F 00 00 ) // ...16...........
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_BGR24 = int32(0x0000000A)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1A 42 47 52 E4 B8 89 E9 80 9A E9 81 93 32   // ...BGR.........2
                                                                                              34 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 )    // 4..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_BGR32 = int32(0x0000000B)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 42 47 52 41 E5 9B 9B E9 80 9A E9 81 93   // ...BGRA.........
                                                                                              33 32 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 32..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_BGR48 = int32(0x0000000C)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 42 47 52 41 E5 9B 9B E9 80 9A E9 81 93   // ...BGRA.........
                                                                                              34 38 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 48..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_BGR64 = int32(0x0000000D)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 42 47 52 41 E5 9B 9B E9 80 9A E9 81 93   // ...BGRA.........
                                                                                              36 34 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 64..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RGB24 = int32(0x0000000E)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1A 52 47 42 E4 B8 89 E9 80 9A E9 81 93 32   // ...RGB.........2
                                                                                              34 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 )    // 4..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RGB32 = int32(0x0000000F)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 52 47 42 41 E5 9B 9B E9 80 9A E9 81 93   // ...RGBA.........
                                                                                              33 32 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 32..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RGB48 = int32(0x00000010)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 52 47 42 41 E5 9B 9B E9 80 9A E9 81 93   // ...RGBA.........
                                                                                              34 38 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 48..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_RGB64 = int32(0x00000011)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B 52 47 42 41 E5 9B 9B E9 80 9A E9 81 93   // ...RGBA.........
                                                                                              36 34 E6 AF 94 E7 89 B9 E5 9B BE E5 83 8F 00 00 ) // 64..............
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_YCBCR_411 = int32(0x00000014)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 59 55 56 34 31 31 00 00 )                // ...YUV411..
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_YCBCR_422 = int32(0x00000015)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 59 55 56 34 32 32 00 00 )                // ...YUV422..
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_YCBCR_444 = int32(0x00000016)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 59 55 56 34 34 34 00 00 )                // ...YUV444..
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_MONO8 = int32(0x0000001E)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 38 E4 BD 8D E7 81 B0 E5 BA A6 E5 9B BE   // ...8............
                                                                                              E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_MONO10 = int32(0x0000001F)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 11 31 30 E4 BD 8D E7 81 B0 E5 BA A6 E5 9B   // ...10...........
                                                                                              BE E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_MONO12 = int32(0x00000020)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 11 31 32 E4 BD 8D E7 81 B0 E5 BA A6 E5 9B   // ...12...........
                                                                                              BE E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_MONO14 = int32(0x00000021)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 11 31 34 E4 BD 8D E7 81 B0 E5 BA A6 E5 9B   // ...14...........
                                                                                              BE E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_MONO16 = int32(0x00000022)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 11 31 36 E4 BD 8D E7 81 B0 E5 BA A6 E5 9B   // ...16...........
                                                                                              BE E5 83 8F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_B8_G8_R8 = int32(0x00000028)
  .field public static literal valuetype DVPCameraType.dvpStreamFormat S_B16_G16_R16 = int32(0x0000002C)
} // end of class DVPCameraType.dvpStreamFormat

.class public auto ansi sealed DVPCameraType.dvpBits
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpBits BITS_8 = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D 38 E6 AF 94 E7 89 B9 E6 95 B0 E6 8D AE   // ...8............
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpBits BITS_10 = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0E 31 30 E6 AF 94 E7 89 B9 E6 95 B0 E6 8D   // ...10...........
                                                                                              AE 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpBits BITS_12 = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0E 31 32 E6 AF 94 E7 89 B9 E6 95 B0 E6 8D   // ...12...........
                                                                                              AE 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpBits BITS_14 = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0E 31 34 E6 AF 94 E7 89 B9 E6 95 B0 E6 8D   // ...14...........
                                                                                              AE 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpBits BITS_16 = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0E 31 36 E6 AF 94 E7 89 B9 E6 95 B0 E6 8D   // ...16...........
                                                                                              AE 00 00 ) 
} // end of class DVPCameraType.dvpBits

.class public auto ansi sealed DVPCameraType.dvpAeMode
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpAeMode AE_MODE_AE_AG = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 36 E8 87 AA E5 8A A8 E6 9B 9D E5 85 89 EF   // ..6.............
                                                                                              BC 8C E8 87 AA E5 8A A8 E5 A2 9E E7 9B 8A E5 90 
                                                                                              8C E6 97 B6 E5 BC 80 E5 90 AF EF BC 8C E6 9B 9D 
                                                                                              E5 85 89 E4 BC 98 E5 85 88 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpAeMode AE_MODE_AG_AE = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 36 E8 87 AA E5 8A A8 E6 9B 9D E5 85 89 EF   // ..6.............
                                                                                              BC 8C E8 87 AA E5 8A A8 E5 A2 9E E7 9B 8A E5 90 
                                                                                              8C E6 97 B6 E5 BC 80 E5 90 AF EF BC 8C E5 A2 9E 
                                                                                              E7 9B 8A E4 BC 98 E5 85 88 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpAeMode AE_MODE_AE_ONLY = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 87 AA E5 8A A8 E6 9B 9D E5 85 89 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpAeMode AE_MODE_AG_ONLY = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 87 AA E5 8A A8 E5 A2 9E E7 9B 8A 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpAeMode

.class public auto ansi sealed DVPCameraType.dvpAeOperation
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpAeOperation AE_OP_OFF = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 8A 9F E8 83 BD E5 85 B3 E9 97 AD 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpAeOperation AE_OP_ONCE = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 BF 9B E8 A1 8C E4 B8 80 E6 AC A1 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpAeOperation AE_OP_CONTINUOUS = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 BF 9E E7 BB AD E6 93 8D E4 BD 9C 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpAeOperation

.class public auto ansi sealed DVPCameraType.dvpAwbOperation
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpAwbOperation AWB_OP_OFF = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 8A 9F E8 83 BD E5 85 B3 E9 97 AD 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpAwbOperation AWB_OP_ONCE = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 BF 9B E8 A1 8C E4 B8 80 E6 AC A1 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpAwbOperation AWB_OP_CONTINUOUS = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 BF 9E E7 BB AD E6 93 8D E4 BD 9C 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpAwbOperation

.class public auto ansi sealed DVPCameraType.dvpAntiFlick
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpAntiFlick ANTIFLICK_DISABLE = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E7 A6 81 E6 AD A2 E6 B6 88 E9 99 A4 E9 
                                                                                              A2 91 E9 97 AA 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpAntiFlick ANTIFLICK_50HZ = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 E6 B6 88 E9 99 A4 35 30 68 7A E9 A2 91   // .........50hz...
                                                                                              E9 97 AA 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpAntiFlick ANTIFLICK_60HZ = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 E6 B6 88 E9 99 A4 36 30 68 7A E9 A2 91   // .........60hz...
                                                                                              E9 97 AA 00 00 ) 
} // end of class DVPCameraType.dvpAntiFlick

.class public auto ansi sealed DVPCameraType.dvpSensorType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpSensorType SENSOR_TYPE_CMOS = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 13 43 4D 4F 53 E5 9B BE E5 83 8F E4 BC A0   // ...CMOS.........
                                                                                              E6 84 9F E5 99 A8 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpSensorType SENSOR_TYPE_CCD = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 43 43 44 E5 9B BE E5 83 8F E4 BC A0 E6   // ...CCD..........
                                                                                              84 9F E5 99 A8 00 00 ) 
} // end of class DVPCameraType.dvpSensorType

.class public auto ansi sealed DVPCameraType.dvpSensorPixel
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpSensorPixel SENSOR_PIXEL_MONO = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 BB 91 E7 99 BD E5 83 8F E7 B4 A0 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpSensorPixel SENSOR_PIXEL_BAYER_RG = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 BB 91 E7 99 BD E5 83 8F E7 B4 A0 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpSensorPixel SENSOR_PIXEL_BAYER_GB = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 47 42 52 47 E5 BD A9 E8 89 B2 E5 83 8F   // ...GBRG.........
                                                                                              E7 B4 A0 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpSensorPixel SENSOR_PIXEL_BAYER_GR = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 47 52 42 47 E5 BD A9 E8 89 B2 E5 83 8F   // ...GRBG.........
                                                                                              E7 B4 A0 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpSensorPixel SENSOR_PIXEL_BAYER_BG = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 42 47 47 52 E5 BD A9 E8 89 B2 E5 83 8F   // ...BGGR.........
                                                                                              E7 B4 A0 00 00 ) 
} // end of class DVPCameraType.dvpSensorPixel

.class public auto ansi sealed DVPCameraType.dvpStreamEvent
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpStreamEvent STREAM_EVENT_ARRIVED = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E5 9B BE E5 83 8F E8 BE BE E5 88 B0 E5 
                                                                                              90 8E 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamEvent STREAM_EVENT_CORRECTED = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E5 9B BE E5 83 8F E6 A0 A1 E6 AD A3 E5 
                                                                                              90 8E 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamEvent STREAM_EVENT_PROCESSED = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E5 9B BE E5 83 8F E5 A4 84 E7 90 86 E5 
                                                                                              90 8E 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamEvent STREAM_EVENT_FRAME_THREAD = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 3E E5 90 AF E5 8A A8 E4 B8 80 E4 B8 AA E4   // ..>.............
                                                                                              B8 93 E9 97 A8 E7 9A 84 E7 BA BF E7 A8 8B E4 BB 
                                                                                              A5 64 76 70 47 65 74 46 72 61 6D 65 E7 9A 84 E6   // .dvpGetFrame....
                                                                                              96 B9 E5 BC 8F E8 8E B7 E5 8F 96 E5 9B BE E5 83 
                                                                                              8F 00 00 ) 
} // end of class DVPCameraType.dvpStreamEvent

.class public auto ansi sealed DVPCameraType.dvpEvent
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_UNKNOW = int32(0x00000000)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_CONNECTED = int32(0x00000001)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_DISCONNECTED = int32(0x00000002)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_STREAM_STARTRD = int32(0x00000003)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_STREAM_STOPPED = int32(0x00000004)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_FRAME_LOST = int32(0x00000005)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_FRAME_TIMEOUT = int32(0x00000006)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_LOST_CONNECTION = int32(0x00000007)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_RECONNECTED = int32(0x00000008)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_FRAME_START = int32(0x00000009)
  .field public static literal valuetype DVPCameraType.dvpEvent EVENT_FRAME_END = int32(0x0000000A)
} // end of class DVPCameraType.dvpEvent

.class public auto ansi sealed DVPCameraType.dvpTriggerInputType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpTriggerInputType TRIGGER_IN_OFF = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 A7 A6 E5 8F 91 E8 BE 93 E5 85 A5 E5 
                                                                                              85 B3 E9 97 AD 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerInputType TRIGGER_NEG_EDGE = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E4 B8 8B E9 99 8D E6 B2 BF E8 A7 A6 E5 
                                                                                              8F 91 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerInputType TRIGGER_LOW_LEVEL = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E4 BD 8E E7 94 B5 E5 B9 B3 E8 A7 A6 E5 
                                                                                              8F 91 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerInputType TRIGGER_POS_EDGE = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E4 B8 8A E5 8D 87 E6 B2 BF E8 A7 A6 E5 
                                                                                              8F 91 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerInputType TRIGGER_HIGH_LEVEL = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 AB 98 E7 94 B5 E5 B9 B3 E8 A7 A6 E5 
                                                                                              8F 91 00 00 ) 
} // end of class DVPCameraType.dvpTriggerInputType

.class public auto ansi sealed DVPCameraType.dvpStrobeOutputType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpStrobeOutputType STROBE_OUT_OFF = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 53 74 72 6F 62 65 E8 BE 93 E5 87 BA E5   // ...Strobe.......
                                                                                              85 B3 E9 97 AD 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStrobeOutputType STROBE_OUT_LOW = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E8 BE 93 E5 87 BA E4 BD 8E E7 94 B5 E5 
                                                                                              B9 B3 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStrobeOutputType STROBE_OUT_HIGH = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E8 BE 93 E5 87 BA E9 AB 98 E7 94 B5 E5 
                                                                                              B9 B3 00 00 ) 
} // end of class DVPCameraType.dvpStrobeOutputType

.class public auto ansi sealed DVPCameraType.dvpStrobeDriver
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpStrobeDriver FRAME_DURATION = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 95 B4 E4 B8 AA E5 B8 A7 E5 91 A8 E6 
                                                                                              9C 9F E9 83 BD E6 9C 89 E6 95 88 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStrobeDriver TIMER_LOGIC = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E7 94 B1 E5 AE 9A E6 97 B6 E5 99 A8 E9 
                                                                                              A9 B1 E5 8A A8 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStrobeDriver SENSOR_STROBE = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B E8 B7 9F E9 9A 8F 53 45 4E 53 4F 52 E7   // .........SENSOR.
                                                                                              9A 84 53 74 72 6F 62 65 E4 BF A1 E5 8F B7 00 00 ) // ..Strobe........
} // end of class DVPCameraType.dvpStrobeDriver

.class public auto ansi sealed DVPCameraType.dvpOutputIoFunction
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpOutputIoFunction OUTPUT_FUNCTION_NORMAL = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 99 AE E9 80 9A E8 BE 93 E5 87 BA 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpOutputIoFunction OUTPUT_FUNCTION_STROBE = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 97 AA E5 85 89 E7 81 AF E8 BE 93 E5 
                                                                                              87 BA 00 00 ) 
} // end of class DVPCameraType.dvpOutputIoFunction

.class public auto ansi sealed DVPCameraType.dvpInputIoFunction
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpInputIoFunction INPUT_FUNCTION_NORMAL = int32(0x00008001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 99 AE E9 80 9A E8 BE 93 E5 85 A5 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpInputIoFunction INPUT_FUNCTION_TRIGGER = int32(0x00008002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 A7 A6 E5 8F 91 E8 BE 93 E5 85 A5 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpInputIoFunction

.class public auto ansi sealed DVPCameraType.dvpOutputIo
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_1 = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 31 00 00 )             // .........1..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_2 = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 32 00 00 )             // .........2..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_3 = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 33 00 00 )             // .........3..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_4 = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 34 00 00 )             // .........4..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_5 = int32(0x00000005)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 35 00 00 )             // .........5..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_6 = int32(0x00000006)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 36 00 00 )             // .........6..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_7 = int32(0x00000007)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 37 00 00 )             // .........7..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_8 = int32(0x00000008)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 38 00 00 )             // .........8..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_9 = int32(0x00000009)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 87 BA 39 00 00 )             // .........9..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_10 = int32(0x0000000A)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 08 E8 BE 93 E5 87 BA 31 30 00 00 )          // .........10..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_11 = int32(0x0000000B)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 08 E8 BE 93 E5 87 BA 31 31 00 00 )          // .........11..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_12 = int32(0x0000000C)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 08 E8 BE 93 E5 87 BA 31 32 00 00 )          // .........12..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_13 = int32(0x0000000D)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 08 E8 BE 93 E5 87 BA 31 33 00 00 )          // .........13..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_14 = int32(0x0000000E)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 08 E8 BE 93 E5 87 BA 31 34 00 00 )          // .........14..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_15 = int32(0x0000000F)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 08 E8 BE 93 E5 87 BA 31 35 00 00 )          // .........15..
  .field public static literal valuetype DVPCameraType.dvpOutputIo OUTPUT_IO_16 = int32(0x00000010)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 08 E8 BE 93 E5 87 BA 31 36 00 00 )          // .........16..
} // end of class DVPCameraType.dvpOutputIo

.class public auto ansi sealed DVPCameraType.dvpInputIo
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_1 = int32(0x00008001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 31 00 00 )             // .........1..
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_2 = int32(0x00008002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 32 00 00 )             // .........2..
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_3 = int32(0x00008003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 33 00 00 )             // .........3..
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_4 = int32(0x00008004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 34 00 00 )             // .........4..
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_5 = int32(0x00008005)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 35 00 00 )             // .........5..
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_6 = int32(0x00008006)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 36 00 00 )             // .........6..
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_7 = int32(0x00008007)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 37 00 00 )             // .........7..
  .field public static literal valuetype DVPCameraType.dvpInputIo INPUT_IO_8 = int32(0x00008008)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E8 BE 93 E5 85 A5 38 00 00 )             // .........8..
} // end of class DVPCameraType.dvpInputIo

.class public auto ansi sealed DVPCameraType.dvpLine
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpLine LINE_1 = int32(0x00010001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 31 00 00 )             // .........1..
  .field public static literal valuetype DVPCameraType.dvpLine LINE_2 = int32(0x00010002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 32 00 00 )             // .........2..
  .field public static literal valuetype DVPCameraType.dvpLine LINE_3 = int32(0x00010003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 33 00 00 )             // .........3..
  .field public static literal valuetype DVPCameraType.dvpLine LINE_4 = int32(0x00010004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 34 00 00 )             // .........4..
  .field public static literal valuetype DVPCameraType.dvpLine LINE_5 = int32(0x00010005)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 35 00 00 )             // .........5..
  .field public static literal valuetype DVPCameraType.dvpLine LINE_6 = int32(0x00010006)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 36 00 00 )             // .........6..
  .field public static literal valuetype DVPCameraType.dvpLine LINE_7 = int32(0x00010007)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 37 00 00 )             // .........7..
  .field public static literal valuetype DVPCameraType.dvpLine LINE_8 = int32(0x00010008)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 07 E5 BC 95 E8 84 9A 38 00 00 )             // .........8..
} // end of class DVPCameraType.dvpLine

.class public auto ansi sealed DVPCameraType.dvpLineMode
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpLineMode LINE_MODE_INPUT = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 BE 93 E5 85 A5 E4 BF A1 E5 8F B7 E5 
                                                                                              BC 95 E8 84 9A 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpLineMode LINE_MODE_OUTPUT = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 BE 93 E5 87 BA E4 BF A1 E5 8F B7 E5 
                                                                                              BC 95 E8 84 9A 00 00 ) 
} // end of class DVPCameraType.dvpLineMode

.class public auto ansi sealed DVPCameraType.dvpLineSource
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpLineSource OUTPUT_SOURCE_NORMAL = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E7 94 A8 E6 88 B7 E6 8E A7 E5 88 B6 E7 
                                                                                              94 B5 E5 B9 B3 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpLineSource OUTPUT_SOURCE_STROBE = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 97 AA E5 85 89 E7 81 AF E4 BF A1 E5 
                                                                                              8F B7 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpLineSource OUTPUT_SOURCE_PWM = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 50 57 4D E4 BF A1 E5 8F B7 00 00 )       // ...PWM........
  .field public static literal valuetype DVPCameraType.dvpLineSource OUTPUT_SOURCE_PULSE = int32(0x00000010)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0B 50 55 4C 53 45 E4 BF A1 E5 8F B7 00 00 ) // ...PULSE........
} // end of class DVPCameraType.dvpLineSource

.class public auto ansi sealed DVPCameraType.dvpTriggerLineMode
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpTriggerLineMode TRIGGER_LINE_MODE_NORMAL = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E6 99 AE E9 80 9A 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerLineMode TRIGGER_LINE_MODE_BULB = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 21 E6 9B 9D E5 85 89 E6 97 B6 E9 97 B4 E7   // ..!.............
                                                                                              94 B1 E8 84 89 E5 86 B2 E5 AE BD E5 BA A6 E5 86 
                                                                                              B3 E5 AE 9A 00 00 ) 
} // end of class DVPCameraType.dvpTriggerLineMode

.class public auto ansi sealed DVPCameraType.dvpTriggerSource
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_SOFTWARE = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 64 76 70 54 72 69 67 67 65 72 46 69 72   // ...dvpTriggerFir
                                                                                              65 20 E8 BD AF E8 A7 A6 E5 8F 91 00 00 )          // e ...........
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE1 = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 31 E8 A7 A6 E5 8F 91   // .........1......
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE2 = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 32 E8 A7 A6 E5 8F 91   // .........2......
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE3 = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 33 E8 A7 A6 E5 8F 91   // .........3......
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE4 = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 34 E8 A7 A6 E5 8F 91   // .........4......
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE5 = int32(0x00000005)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 35 E8 A7 A6 E5 8F 91   // .........5......
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE6 = int32(0x00000006)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 36 E8 A7 A6 E5 8F 91   // .........6......
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE7 = int32(0x00000007)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 37 E8 A7 A6 E5 8F 91   // .........7......
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpTriggerSource TRIGGER_SOURCE_LINE8 = int32(0x00000008)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E5 BC 95 E8 84 9A 38 E8 A7 A6 E5 8F 91   // .........8......
                                                                                              00 00 ) 
} // end of class DVPCameraType.dvpTriggerSource

.class public auto ansi sealed DVPCameraType.dvpFirstPosition
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpFirstPosition UP_LEFT = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 B7 A6 E4 B8 8A E8 A7 92 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpFirstPosition UP_RIGHT = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 8F B3 E4 B8 8A E8 A7 92 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpFirstPosition BOTTOM_LEFT = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 B7 A6 E4 B8 8B E8 A7 92 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpFirstPosition BOTTOM_RIGHT = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 8F B3 E4 B8 8B E8 A7 92 00 00 ) 
} // end of class DVPCameraType.dvpFirstPosition

.class public auto ansi sealed DVPCameraType.dvpOpenMode
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpOpenMode OPEN_OFFLINE = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E7 A6 BB E7 BA BF E6 89 93 E5 BC 80 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpOpenMode OPEN_NORMAL = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 89 93 E5 BC 80 E5 AE 9E E9 99 85 E8 
                                                                                              AE BE E5 A4 87 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpOpenMode OPEN_DEBUG = int32(0x00000008)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 3F E4 BB A5 E8 B0 83 E8 AF 95 E6 96 B9 E5   // ..?.............
                                                                                              BC 8F E6 89 93 E5 BC 80 EF BC 8C E5 8D 83 E5 85 
                                                                                              86 E7 BD 91 E7 9B B8 E6 9C BA E5 8F AF E4 BB A5 
                                                                                              E9 81 BF E5 85 8D E6 89 93 E4 B8 8D E8 B0 83 E8 
                                                                                              AF 95 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpOpenMode HIGH_PRIORITY = int32(0x00000010)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 33 E5 9B BE E5 83 8F E9 87 87 E9 9B 86 E5   // ..3.............
                                                                                              92 8C E5 A4 84 E7 90 86 E7 BA BF E7 A8 8B E4 BD 
                                                                                              BF E7 94 A8 E8 BE 83 E9 AB 98 E7 9A 84 E4 BC 98 
                                                                                              E5 85 88 E7 BA A7 00 00 ) 
} // end of class DVPCameraType.dvpOpenMode

.class public auto ansi sealed DVPCameraType.dvpStreamState
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpStreamState STATE_STOPED = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 B7 B2 E5 81 9C E6 AD A2 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStreamState STATE_STARTED = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 B7 B2 E5 90 AF E5 8A A8 00 00 ) 
} // end of class DVPCameraType.dvpStreamState

.class public auto ansi sealed DVPCameraType.dvpCurveStyle
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpCurveStyle CURVE_STYLE_LINE = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E7 9B B4 E7 BA BF E6 8B 9F E5 90 88 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpCurveStyle CURVE_STYLE_WAVE = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 B9 B3 E6 BB 91 E6 8B 9F E5 90 88 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpCurveStyle

.class public auto ansi sealed DVPCameraType.dvpUserSet
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpUserSet USER_SET_DEFAULT = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E9 BB 98 E8 AE A4 E5 8F AA E8 AF BB E8 
                                                                                              AE BE E7 BD AE 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpUserSet USER_SET_1 = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E7 94 A8 E6 88 B7 E8 AE BE E7 BD AE 31   // ...............1
                                                                                              00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpUserSet USER_SET_2 = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0D E7 94 A8 E6 88 B7 E8 AE BE E7 BD AE 32   // ...............2
                                                                                              00 00 ) 
} // end of class DVPCameraType.dvpUserSet

.class public auto ansi sealed DVPCameraType.dvpBufferMode
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpBufferMode BUFFER_MODE_NEWEST = int32(0x00000000)
  .field public static literal valuetype DVPCameraType.dvpBufferMode BUFFER_MODE_FIFO = int32(0x00000001)
} // end of class DVPCameraType.dvpBufferMode

.class public auto ansi sealed DVPCameraType.dvpDeviceType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpDeviceType DEVICE_TYPE_UNKNOWN = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9C AA E7 9F A5 E7 B1 BB E5 9E 8B 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpDeviceType DEVICE_TYPE_USB2_CAMERA = int32(0x0000000A)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 55 53 42 32 2E 30 E6 8E A5 E5 8F A3 E7   // ...USB2.0.......
                                                                                              9A 84 E7 9B B8 E6 9C BA 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpDeviceType DEVICE_TYPE_USB3_CAMERA = int32(0x00000014)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 55 53 42 33 2E 30 E6 8E A5 E5 8F A3 E7   // ...USB3.0.......
                                                                                              9A 84 E7 9B B8 E6 9C BA 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpDeviceType DEVICE_TYPE_GLAN_CAMERA = int32(0x0000001E)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E5 8D 83 E5 85 86 E7 BD 91 E6 8E A5 E5 
                                                                                              8F A3 E7 9A 84 E7 9B B8 E6 9C BA 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpDeviceType DEVICE_TYPE_XGIGE_CAMERA = int32(0x00000028)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E4 B8 87 E5 85 86 E7 BD 91 E6 8E A5 E5 
                                                                                              8F A3 E7 9A 84 E7 9B B8 E6 9C BA 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpDeviceType DEVICE_TYPE_XGIGE_GRABBER = int32(0x00000064)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E4 B8 87 E5 85 86 E7 BD 91 E9 87 87 E9 
                                                                                              9B 86 E5 8D A1 00 00 ) 
} // end of class DVPCameraType.dvpDeviceType

.class public auto ansi sealed DVPCameraType.dvpReportPart
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpReportPart PART_DEFAULT = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B E9 BB 98 E8 AE A4 E6 88 96 E6 9C AA E5 
                                                                                              81 9A E5 8A 9F E8 83 BD E5 88 86 E7 B1 BB 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpReportPart PART_LINK = int32(0x00000010)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 80 9A E8 AE AF E7 9B B8 E5 85 B3 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpReportPart PART_CONTROL = int32(0x00000020)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 8E A7 E5 88 B6 E7 9B B8 E5 85 B3 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpReportPart PART_STREAM = int32(0x00000030)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 95 B0 E6 8D AE E6 B5 81 E6 88 96 E9 
                                                                                              87 87 E9 9B 86 E7 9B B8 E5 85 B3 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpReportPart PART_TRIG = int32(0x00000040)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 A7 A6 E5 8F 91 E5 8A 9F E8 83 BD E7 
                                                                                              9B B8 E5 85 B3 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpReportPart PART_GPIO = int32(0x00000050)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 47 50 49 4F E5 8A 9F E8 83 BD E7 9B B8   // ...GPIO.........
                                                                                              E5 85 B3 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpReportPart PART_IMAGE = int32(0x00000060)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 9B BE E5 83 8F E6 95 88 E6 9E 9C E7 
                                                                                              9B B8 E5 85 B3 00 00 ) 
} // end of class DVPCameraType.dvpReportPart

.class public auto ansi sealed DVPCameraType.dvpReportLevel
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpReportLevel LEVEL_INFO = int32(0x00000010)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E4 BF A1 E6 81 AF E6 88 96 E6 8F 90 E7 
                                                                                              A4 BA 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpReportLevel LEVEL_PROBLEM = int32(0x00000040)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 97 AE E9 A2 98 E6 88 96 E6 95 85 E9 
                                                                                              9A 9C 00 00 ) 
} // end of class DVPCameraType.dvpReportLevel

.class public auto ansi sealed DVPCameraType.dvpStatus
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_IGNORED = int32(0x00000007)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 2A E6 93 8D E4 BD 9C E5 BF BD E7 95 A5 E6   // ..*.............
                                                                                              8E 89 E4 BA 86 EF BC 8C E4 B8 8D E9 A1 BB E8 A6 
                                                                                              81 E4 BB BB E4 BD 95 E5 8A A8 E4 BD 9C 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NEED_OTHER = int32(0x00000006)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B E9 9C 80 E8 A6 81 E5 85 B6 E4 BB 96 E6 
                                                                                              95 B0 E6 8D AE E5 92 8C E6 93 8D E4 BD 9C 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NEXT_STAGE = int32(0x00000005)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 33 E8 BF 98 E9 A1 BB E8 BF 9B E8 A1 8C E4   // ..3.............
                                                                                              B8 8B E4 B8 80 E9 98 B6 E6 AE B5 EF BC 8C E5 8F 
                                                                                              AA E5 AE 8C E6 88 90 E4 BA 86 E9 83 A8 E5 88 86 
                                                                                              E5 8A A8 E4 BD 9C 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_BUSY = int32(0x00000004)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 21 E6 AD A3 E5 BF 99 EF BC 8C E6 AD A4 E6   // ..!.............
                                                                                              AC A1 E6 93 8D E4 BD 9C E4 B8 8D E8 83 BD E8 BF 
                                                                                              9B E8 A1 8C 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_WAIT = int32(0x00000003)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 21 E9 9C 80 E8 A6 81 E7 AD 89 E5 BE 85 EF   // ..!.............
                                                                                              BC 8C E5 8F AF E4 BB A5 E5 86 8D E6 AC A1 E5 B0 
                                                                                              9D E8 AF 95 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_IN_PROCESS = int32(0x00000002)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 21 E6 AD A3 E5 9C A8 E8 BF 9B E8 A1 8C EF   // ..!.............
                                                                                              BC 8C E5 B7 B2 E7 BB 8F E8 A2 AB E6 93 8D E4 BD 
                                                                                              9C E8 BF 87 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_OK = int32(0x00000001)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 93 8D E4 BD 9C E6 88 90 E5 8A 9F 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FAILED = int32(0x00000000)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 93 8D E4 BD 9C E5 A4 B1 E8 B4 A5 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_UNKNOW = int32(0xFFFFFFFF)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9C AA E7 9F A5 E9 94 99 E8 AF AF 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NOT_SUPPORTED = int32(0xFFFFFFFE)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E4 B8 8D E6 94 AF E6 8C 81 E8 AF A5 E5 
                                                                                              8A 9F E8 83 BD 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NOT_INITIALIZED = int32(0xFFFFFFFD)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 88 9D E5 A7 8B E5 8C 96 E6 9C AA E5 
                                                                                              AE 8C E6 88 90 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_PARAMETER_INVALID = int32(0xFFFFFFFC)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 8F 82 E6 95 B0 E6 97 A0 E6 95 88 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_PARAMETER_OUT_OF_BOUND = int32(0xFFFFFFFB)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 8F 82 E6 95 B0 E8 B6 8A E7 95 8C 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_UNENABLE = int32(0xFFFFFFFA)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E7 89 B9 E6 80 A7 E6 9C AA E6 89 93 E5 
                                                                                              BC 80 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_UNCONNECTED = int32(0xFFFFFFF9)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 9C AA E8 BF 9E E6 8E A5 E5 88 B0 E8 
                                                                                              AE BE E5 A4 87 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NOT_VALID = int32(0xFFFFFFF8)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 8A 9F E8 83 BD E6 97 A0 E6 95 88 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_UNPLAY = int32(0xFFFFFFF7)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E8 AE BE E5 A4 87 E6 B2 A1 E6 89 93 E5 
                                                                                              BC 80 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NOT_STARTED = int32(0xFFFFFFF6)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C AA E5 90 AF E5 8A A8 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NOT_STOPPED = int32(0xFFFFFFF5)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C AA E5 81 9C E6 AD A2 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NOT_READY = int32(0xFFFFFFF4)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9C AA E5 87 86 E5 A4 87 E5 A5 BD 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_INVALID_HANDLE = int32(0xFFFFFFF3)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 48 E6 97 A0 E6 95 88 E5 8F A5 E6 9F 84 EF   // ..H.............
                                                                                              BC 88 E7 A9 BA E5 8F A5 E6 9F 84 E6 88 96 E9 87 
                                                                                              8E E5 8F A5 E6 9F 84 EF BC 89 EF BC 8C E9 80 9A 
                                                                                              E5 B8 B8 E6 98 AF E7 9B B8 E6 9C BA E6 9C AA E6 
                                                                                              89 93 E5 BC 80 E6 89 80 E8 87 B4 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DESCR_FAULT = int32(0xFFFFFFEC)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 94 99 E8 AF AF E7 9A 84 E6 8F 8F E8 
                                                                                              BF B0 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NAME_FAULT = int32(0xFFFFFFEB)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 94 99 E8 AF AF E7 9A 84 E5 90 8D E7 
                                                                                              A7 B0 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_VALUE_FAULT = int32(0xFFFFFFEA)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 94 99 E8 AF AF E7 9A 84 E8 B5 8B E5 
                                                                                              80 BC 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_LIMITED = int32(0xFFFFFFE4)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E8 A2 AB E9 99 90 E5 88 B6 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FUNCTION_INVALID = int32(0xFFFFFFE3)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 8A 9F E8 83 BD E6 97 A0 E6 95 88 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_IN_AUTO = int32(0xFFFFFFE2)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 27 E5 9C A8 E8 87 AA E5 8A A8 E8 BF 9B E8   // ..'.............
                                                                                              A1 8C E4 B8 AD EF BC 8C E6 89 8B E5 8A A8 E6 96 
                                                                                              B9 E5 BC 8F E6 97 A0 E6 95 88 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DENIED = int32(0xFFFFFFE1)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E6 93 8D E4 BD 9C E8 A2 AB E6 8B 92 E7 
                                                                                              BB 9D 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_BAD_ALIGNMENT = int32(0xFFFFFFD8)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E5 81 8F E7 A7 BB E6 88 96 E5 9C B0 E5 
                                                                                              9D 80 E6 9C AA E5 AF B9 E9 BD 90 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_ADDRESS_INVALID = int32(0xFFFFFFD7)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 9C B0 E5 9D 80 E6 97 A0 E6 95 88 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_SIZE_INVALID = int32(0xFFFFFFD6)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 95 B0 E6 8D AE E5 9D 97 E5 A4 A7 E5 
                                                                                              B0 8F E6 97 A0 E6 95 88 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_OVER_LOAD = int32(0xFFFFFFD5)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E6 95 B0 E6 8D AE E9 87 8F E8 BF 87 E8 
                                                                                              BD BD 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_UNDER_LOAD = int32(0xFFFFFFD4)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E6 95 B0 E6 8D AE E9 87 8F E4 B8 8D E5 
                                                                                              A4 9F 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_CHECKED_FAILED = int32(0xFFFFFFCE)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 14 E6 A3 80 E6 9F A5 2C 20 E6 A0 A1 E9 AA   // ........., .....
                                                                                              8C E5 A4 B1 E8 B4 A5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_UNUSABLE = int32(0xFFFFFFCD)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E4 B8 8D E5 8F AF E7 94 A8 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_TIME_OUT = int32(0xFFFFFC18)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 B6 85 E6 97 B6 E9 94 99 E8 AF AF 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_IO_ERROR = int32(0xFFFFFC17)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0E E7 A1 AC E4 BB B6 49 4F E9 94 99 E8 AF   // .........IO.....
                                                                                              AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_COMM_ERROR = int32(0xFFFFFC16)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 80 9A E8 AE AF E9 94 99 E8 AF AF 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_BUS_ERROR = int32(0xFFFFFC15)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 80 BB E7 BA BF E9 94 99 E8 AF AF 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FORMAT_INVALID = int32(0xFFFFFC14)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 A0 BC E5 BC 8F E9 94 99 E8 AF AF 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_CONTENT_INVALID = int32(0xFFFFFC13)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 86 85 E5 AE B9 E6 97 A0 E6 95 88 00 
                                                                                              00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_I2C_FAULT = int32(0xFFFFFC0E)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F 49 32 43 E6 80 BB E7 BA BF E9 94 99 E8   // ...I2C..........
                                                                                              AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_I2C_ACK_TIMEOUT = int32(0xFFFFFC0D)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 49 32 43 E7 AD 89 E5 BE 85 E5 BA 94 E7   // ...I2C..........
                                                                                              AD 94 E8 B6 85 E6 97 B6 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_I2C_BUS_TIMEOUT = int32(0xFFFFFC0C)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 42 49 32 43 E7 AD 89 E5 BE 85 E6 80 BB E7   // ..BI2C..........
                                                                                              BA BF E5 8A A8 E4 BD 9C E8 B6 85 E6 97 B6 EF BC 
                                                                                              8C E4 BE 8B E5 A6 82 53 43 4C E8 A2 AB E5 A4 96   // .......SCL......
                                                                                              E9 83 A8 E5 99 A8 E4 BB B6 E6 8B 89 E4 B8 BA E4 
                                                                                              BD 8E E7 94 B5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_SPI_FAULT = int32(0xFFFFFC04)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F 53 50 49 E6 80 BB E7 BA BF E9 94 99 E8   // ...SPI..........
                                                                                              AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_UART_FAULT = int32(0xFFFFFBFA)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 55 41 52 54 E6 80 BB E7 BA BF E9 94 99   // ...UART.........
                                                                                              E8 AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_GPIO_FAULT = int32(0xFFFFFBF0)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 47 50 49 4F E6 80 BB E7 BA BF E9 94 99   // ...GPIO.........
                                                                                              E8 AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_USB_FAULT = int32(0xFFFFFBE6)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F 55 53 42 E6 80 BB E7 BA BF E9 94 99 E8   // ...USB..........
                                                                                              AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_PCI_FAULT = int32(0xFFFFFBDC)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F 50 43 49 E6 80 BB E7 BA BF E9 94 99 E8   // ...PCI..........
                                                                                              AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_PHY_FAULT = int32(0xFFFFFBD2)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E7 89 A9 E7 90 86 E5 B1 82 E9 94 99 E8 
                                                                                              AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_LINK_FAULT = int32(0xFFFFFBC8)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 93 BE E8 B7 AF E5 B1 82 E9 94 99 E8 
                                                                                              AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_TRANS_FAULT = int32(0xFFFFFBBE)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E4 BC A0 E8 BE 93 E5 B1 82 E9 94 99 E8 
                                                                                              AF AF 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NO_DEVICE_FOUND = int32(0xFFFFFBB4)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 B2 A1 E6 9C 89 E5 8F 91 E7 8E B0 E8 
                                                                                              AE BE E5 A4 87 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_NO_LOGIC_DEVICE_FOUND = int32(0xFFFFFBB3)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 9C AA E6 89 BE E5 88 B0 E9 80 BB E8 
                                                                                              BE 91 E8 AE BE E5 A4 87 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DEVICE_IS_OPENED = int32(0xFFFFFBB2)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 AE BE E5 A4 87 E5 B7 B2 E7 BB 8F E6 
                                                                                              89 93 E5 BC 80 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DEVICE_IS_CLOSED = int32(0xFFFFFBB1)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 AE BE E5 A4 87 E5 B7 B2 E7 BB 8F E5 
                                                                                              85 B3 E9 97 AD 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DEVICE_IS_DISCONNECTED = int32(0xFFFFFBB0)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E8 AE BE E5 A4 87 E5 B7 B2 E7 BB 8F E6 
                                                                                              96 AD E5 BC 80 E8 BF 9E E6 8E A5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DEVICE_IS_OPENED_BY_ANOTHER = int32(0xFFFFFBAF)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 21 E8 AE BE E5 A4 87 E5 B7 B2 E7 BB 8F E8   // ..!.............
                                                                                              A2 AB E5 85 B6 E4 BB 96 E4 B8 BB E6 9C BA E6 89 
                                                                                              93 E5 BC 80 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DEVICE_IS_STARTED = int32(0xFFFFFBAE)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E8 AE BE E5 A4 87 E5 B7 B2 E7 BB 8F E8 
                                                                                              A2 AB E5 90 AF E5 8A A8 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_DEVICE_IS_STOPPED = int32(0xFFFFFBAD)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 36 E8 AE BE E5 A4 87 E5 B7 B2 E7 BB 8F E8   // ..6.............
                                                                                              A2 AB E5 81 9C E6 AD A2 E8 AE BE E5 A4 87 E5 B7 
                                                                                              B2 E7 BB 8F E8 A2 AB E5 85 B6 E4 BB 96 E4 B8 BB 
                                                                                              E6 9C BA E6 89 93 E5 BC 80 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_INSUFFICIENT_MEMORY = int32(0xFFFFFB50)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 B2 A1 E6 9C 89 E8 B6 B3 E5 A4 9F E7 
                                                                                              B3 BB E7 BB 9F E5 86 85 E5 AD 98 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_MEMORY_FAULT = int32(0xFFFFFB4F)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 30 E5 AD 98 E5 82 A8 E5 99 A8 E8 AF BB E5   // ..0.............
                                                                                              86 99 E5 87 BA E7 8E B0 E8 AF AF E7 A0 81 E6 88 
                                                                                              96 E6 97 A0 E6 B3 95 E6 AD A3 E5 B8 B8 E8 AF BB 
                                                                                              E5 86 99 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_WRITE_PROTECTED = int32(0xFFFFFB4E)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E5 86 99 E4 BF 9D E6 8A A4 EF BC 8C E4 
                                                                                              B8 8D E5 8F AF E5 86 99 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FILE_CREATE_FAILED = int32(0xFFFFFAEC)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 88 9B E5 BB BA E6 96 87 E4 BB B6 E5 
                                                                                              A4 B1 E8 B4 A5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FILE_INVALID = int32(0xFFFFFAEB)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 96 87 E4 BB B6 E6 A0 BC E5 BC 8F E6 
                                                                                              97 A0 E6 95 88 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FILE_READ_FAILED = int32(0xFFFFFAEA)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 AF BB E5 8F 96 E6 96 87 E4 BB B6 E5 
                                                                                              A4 B1 E8 B4 A5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FILE_WRITE_FAILED = int32(0xFFFFFAE9)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 86 99 E5 85 A5 E6 96 87 E4 BB B6 E5 
                                                                                              A4 B1 E8 B4 A5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FILE_OPEN_FAILED = int32(0xFFFFFAE8)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 89 93 E5 BC 80 E6 96 87 E4 BB B6 E5 
                                                                                              A4 B1 E8 B4 A5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_FILE_CHECKSUM_FAILED = int32(0xFFFFFAE7)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E8 AF BB E5 8F 96 E6 95 B0 E6 8D AE E8 
                                                                                              BE 83 E6 A3 80 E5 A4 B1 E8 B4 A5 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_GRAB_FAILED = int32(0xFFFFF9C0)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 36 E6 95 B0 E6 8D AE E9 87 87 E9 9B 86 E5   // ..6.............
                                                                                              A4 B1 E8 B4 A5 EF BC 8C E6 8C 87 E5 AE 9A E7 9A 
                                                                                              84 E6 97 B6 E9 97 B4 E5 86 85 E6 9C AA E8 8E B7 
                                                                                              E5 BE 97 E6 95 B0 E6 8D AE 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_LOST_DATA = int32(0xFFFFF9BF)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 95 B0 E6 8D AE E4 B8 A2 E5 A4 B1 EF 
                                                                                              BC 8C E4 B8 8D E5 AE 8C E6 95 B4 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_EOF_ERROR = int32(0xFFFFF9BE)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 9C AA E6 8E A5 E6 94 B6 E5 88 B0 E5 
                                                                                              B8 A7 E7 BB 93 E6 9D 9F E7 AC A6 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_GRAB_IS_OPENED = int32(0xFFFFF9BD)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1E E6 95 B0 E6 8D AE E9 87 87 E9 9B 86 E5 
                                                                                              8A 9F E8 83 BD E5 B7 B2 E7 BB 8F E6 89 93 E5 BC 
                                                                                              80 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_GRAB_IS_CLOSED = int32(0xFFFFF9BC)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1E E6 95 B0 E6 8D AE E9 87 87 E9 9B 86 E5 
                                                                                              8A 9F E8 83 BD E5 B7 B2 E7 BB 8F E5 85 B3 E9 97 
                                                                                              AD 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_GRAB_IS_STARTED = int32(0xFFFFF9BB)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 95 B0 E6 8D AE E9 87 87 E9 9B 86 E5 
                                                                                              B7 B2 E7 BB 8F E5 90 AF E5 8A A8 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_GRAB_IS_STOPPED = int32(0xFFFFF9BA)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 95 B0 E6 8D AE E9 87 87 E9 9B 86 E5 
                                                                                              B7 B2 E7 BB 8F E5 81 9C E6 AD A2 00 00 ) 
  .field public static literal valuetype DVPCameraType.dvpStatus DVP_STATUS_GRAB_IS_RESTARTING = int32(0xFFFFF9B9)
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 95 B0 E6 8D AE E9 87 87 E9 9B 86 E6 
                                                                                              AD A3 E5 9C A8 E9 87 8D E5 90 AF 00 00 ) 
} // end of class DVPCameraType.dvpStatus

.class public sequential ansi sealed beforefieldinit DVPCameraType.RECT
       extends [mscorlib]System.ValueType
{
  .field public uint32 Left
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 03 E5 B7 A6 00 00 ) 
  .field public uint32 Top
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 03 E4 B8 8A 00 00 ) 
  .field public uint32 Right
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 03 E5 8F B3 00 00 ) 
  .field public uint32 Bottom
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 03 E4 B8 8B 00 00 ) 
} // end of class DVPCameraType.RECT

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpColorMatrix
       extends [mscorlib]System.ValueType
{
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 A2 9C E8 89 B2 E7 9F A9 E9 98 B5 00 
                                                                                              00 ) 
  .field public  marshal( fixed array [12]) float32[] matrix
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E7 9F A9 E9 98 B5 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0E 52 65 73 65 72 76 65 64 20 62 79 74 65   // ...Reserved byte
                                                                                              73 00 00 )                                        // s..
} // end of class DVPCameraType.dvpColorMatrix

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpColorCorrection
       extends [mscorlib]System.ValueType
{
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E9 A2 9C E8 89 B2 E6 A0 A1 E6 AD A3 E4 
                                                                                              BF A1 E6 81 AF 00 00 ) 
  .field public  marshal( fixed array [3]) float32[] bgr
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 42 47 52 E4 B8 89 E8 89 B2 E6 A0 A1 E6   // ...BGR..........
                                                                                              AD A3 E7 B3 BB E6 95 B0 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] dvpReserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpColorCorrection

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpPoint2f
       extends [mscorlib]System.ValueType
{
  .field public float32 X
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 A8 AA E5 9D 90 E6 A0 87 00 00 ) 
  .field public float32 Y
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E7 BA B5 E5 9D 90 E6 A0 87 00 00 ) 
} // end of class DVPCameraType.dvpPoint2f

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpPoint3c
       extends [mscorlib]System.ValueType
{
  .field public  marshal( fixed array [768]) valuetype DVPCameraType.dvpPoint2f[] matrix
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 42 47 52 E4 B8 89 E8 89 B2 32 35 36 E4   // ...BGR......256.
                                                                                              B8 AA E9 94 9A E7 82 B9 00 00 ) 
} // end of class DVPCameraType.dvpPoint3c

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpCurveArray
       extends [mscorlib]System.ValueType
{
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F 42 47 52 E6 9B B2 E7 BA BF E6 95 B0 E7   // ...BGR..........
                                                                                              BB 84 00 00 ) 
  .field public valuetype DVPCameraType.dvpPoint3c point
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 42 47 52 E6 9B B2 E7 BA BF E6 95 B0 E7   // ...BGR..........
                                                                                              BB 84 E7 A9 BA E9 97 B4 00 00 ) 
  .field public uint32 rows
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1F 42 47 52 E6 9C 89 E6 95 88 E9 80 9A E9   // ...BGR..........
                                                                                              81 93 E6 95 B0 EF BC 8C E6 9C 80 E5 A4 9A 33 E4   // ..............3.
                                                                                              B8 AA 00 00 ) 
  .field public  marshal( fixed array [3]) uint32[] cols
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 33 42 47 52 E4 B8 89 E9 80 9A E9 81 93 E7   // ..3BGR..........
                                                                                              9A 84 E6 9C 89 E6 95 88 E7 82 B9 E6 95 B0 EF BC 
                                                                                              8C E6 AF 8F E9 80 9A E9 81 93 E6 9C 80 E5 A4 9A 
                                                                                              32 35 36 E4 B8 AA 00 00 )                         // 256.....
} // end of class DVPCameraType.dvpCurveArray

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpCurveLut
       extends [mscorlib]System.ValueType
{
  .field public bool enable
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BD BF E8 83 BD E7 8A B6 E6 80 81 00 
                                                                                              00 ) 
  .field public valuetype DVPCameraType.dvpCurveStyle style
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9B B2 E7 BA BF E9 A3 8E E6 A0 BC 00 
                                                                                              00 ) 
  .field public valuetype DVPCameraType.dvpCurveArray 'array'
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 42 E9 94 9A E7 82 B9 E6 95 B0 E7 BB 84 EF   // ..B.............
                                                                                              BC 8C E7 94 B1 E5 B0 91 E6 95 B0 E5 87 A0 E4 B8 
                                                                                              AA E9 94 9A E7 82 B9 E5 8F AF E4 BB A5 E7 A1 AE 
                                                                                              E5 AE 9A E4 B8 80 E4 B8 AA E5 AE 8C E6 95 B4 E7 
                                                                                              9A 84 4C 55 54 00 00 )                            // ..LUT..
  .field public  marshal( fixed array [32]) uint32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpCurveLut

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpCameraInfo
       extends [mscorlib]System.ValueType
{
  .field public  marshal( fixed sysstring [64]) string Vendor
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E8 AE BE E8 AE A1 E5 8E 82 E5 95 86 00 
                                                                                              00 ) 
  .field public  marshal( fixed sysstring [64]) string Manufacturer
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E7 94 9F E4 BA A7 E5 8E 82 E5 95 86 00 
                                                                                              00 ) 
  .field public  marshal( fixed sysstring [64]) string Model
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E5 9E 8B E5 8F B7 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string Family
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E7 B3 BB E5 88 97 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string LinkName
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E8 BF 9E E6 8E A5 E5 90 8D 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string SensorInfo
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E4 BC A0 E6 84 9F E5 99 A8 E6 8F 8F E8 
                                                                                              BF B0 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string HardwareVersion
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E7 A1 AC E4 BB B6 E7 89 88 E6 9C AC 00 
                                                                                              00 ) 
  .field public  marshal( fixed sysstring [64]) string FirmwareVersion
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 9B BA E4 BB B6 E7 89 88 E6 9C AC 00 
                                                                                              00 ) 
  .field public  marshal( fixed sysstring [64]) string KernelVersion
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 86 85 E6 A0 B8 E9 A9 B1 E5 8A A8 E7 
                                                                                              89 88 E6 9C AC 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string DscamVersion
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E8 AE BE E5 A4 87 E9 A9 B1 E5 8A A8 E7 
                                                                                              89 88 E6 9C AC 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string FriendlyName
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 8F 8B E5 A5 BD E8 AE BE E5 A4 87 E5 
                                                                                              90 8D E7 A7 B0 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string PortInfo
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 8E A5 E5 8F A3 E6 8F 8F E8 BF B0 00 
                                                                                              00 ) 
  .field public  marshal( fixed sysstring [64]) string SerialNumber
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 BA 8F E5 88 97 E5 8F B7 00 00 ) 
  .field public  marshal( fixed sysstring [128]) string CameraInfo
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E7 9B B8 E6 9C BA E6 8F 8F E8 BF B0 00 
                                                                                              00 ) 
  .field public  marshal( fixed sysstring [128]) string UserID
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E7 94 A8 E6 88 B7 E5 91 BD E5 90 8D 00 
                                                                                              00 ) 
  .field public  marshal( fixed sysstring [128]) string reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpCameraInfo

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpRegionDescr
       extends [mscorlib]System.ValueType
{
  .field public int32 iMinW
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9C 80 E5 B0 8F E5 AE BD E5 BA A6 00 
                                                                                              00 ) 
  .field public int32 iMinH
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9C 80 E5 B0 8F E9 AB 98 E5 BA A6 00 
                                                                                              00 ) 
  .field public int32 iMaxW
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9C 80 E5 A4 A7 E5 AE BD E5 BA A6 00 
                                                                                              00 ) 
  .field public int32 iMaxH
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 9C 80 E5 A4 A7 E9 AB 98 E5 BA A6 00 
                                                                                              00 ) 
  .field public int32 iStepW
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 AE BD E5 BA A6 E6 AD A5 E9 95 BF 00 
                                                                                              00 ) 
  .field public int32 iStepH
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 AB 98 E5 BA A6 E6 AD A5 E9 95 BF 00 
                                                                                              00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpRegionDescr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpRegion
       extends [mscorlib]System.ValueType
{
  .field public int32 X
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 A8 AA E5 90 91 E8 B5 B7 E5 A7 8B E4 
                                                                                              BD 8D E7 BD AE 00 00 ) 
  .field public int32 Y
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E7 BA B5 E5 90 91 E8 B5 B7 E5 A7 8B E4 
                                                                                              BD 8D E7 BD AE 00 00 ) 
  .field public int32 W
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 13 E5 AE BD E5 BA A6 EF BC 88 E5 A4 A7 E4 
                                                                                              BA 8E 30 EF BC 89 00 00 )                         // ..0.....
  .field public int32 H
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 13 E9 AB 98 E5 BA A6 EF BC 88 E5 A4 A7 E4 
                                                                                              BA 8E 30 EF BC 89 00 00 )                         // ..0.....
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpRegion

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpFrame
       extends [mscorlib]System.ValueType
{
  .field public valuetype DVPCameraType.dvpImageFormat format
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E6 A0 BC E5 BC 8F 00 00 ) 
  .field public valuetype DVPCameraType.dvpBits bits
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E4 BD 8D E5 AE BD 00 00 ) 
  .field public uint32 uBytes
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 AD 97 E8 8A 82 E6 95 B0 00 00 ) 
  .field public int32 iWidth
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E5 AE BD E5 BA A6 00 00 ) 
  .field public int32 iHeight
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E9 AB 98 E5 BA A6 00 00 ) 
  .field public uint64 uFrameID
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 B8 A7 E7 BC 96 E5 8F B7 00 00 ) 
  .field public uint64 uTimestamp
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 97 B6 E9 97 B4 E6 88 B3 00 00 ) 
  .field public float64 fExposure
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 9B 9D E5 85 89 E6 97 B6 E9 97 B4 EF 
                                                                                              BC 88 E5 BE AE E7 A7 92 EF BC 89 00 00 ) 
  .field public float32 fAGain
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E6 A8 A1 E6 8B 9F E5 A2 9E E7 9B 8A 00 
                                                                                              00 ) 
  .field public valuetype DVPCameraType.dvpFirstPosition position
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B E7 AC AC E4 B8 80 E4 B8 AA E5 83 8F E7 
                                                                                              B4 A0 E7 82 B9 E7 9A 84 E4 BD 8D E7 BD AE 00 00 ) 
  .field public bool bFlipHorizontalState
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 98 AF E5 90 A6 E6 B0 B4 E5 B9 B3 E7 
                                                                                              BF BB E8 BD AC 00 00 ) 
  .field public bool bFlipVerticalState
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 98 AF E5 90 A6 E5 9E 82 E7 9B B4 E7 
                                                                                              BF BB E8 BD AC 00 00 ) 
  .field public bool bRotateState
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 11 E6 98 AF E5 90 A6 E6 97 8B E8 BD AC 39   // ...............9
                                                                                              30 E5 BA A6 00 00 )                               // 0.....
  .field public bool bRotateOpposite
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 98 AF E5 90 A6 E9 80 86 E6 97 B6 E9 
                                                                                              92 88 E6 97 8B E8 BD AC 00 00 ) 
  .field public uint32 internalFlags
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E5 86 85 E9 83 A8 E6 A0 87 E5 BF 97 E4 
                                                                                              BD 8D 00 00 ) 
  .field public uint32 internalValue
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 86 85 E9 83 A8 E4 BF A1 E6 81 AF 00 
                                                                                              00 ) 
  .field public uint64 uTriggerId
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 98 AF E5 90 A6 E9 80 86 E6 97 B6 E9 
                                                                                              92 88 E6 97 8B E8 BD AC 00 00 ) 
  .field public  marshal( fixed array [26]) uint32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpFrame

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpFrameBuffer
       extends [mscorlib]System.ValueType
{
  .field public valuetype DVPCameraType.dvpFrame frame
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E5 B8 A7 E4 BF A1 E6 81 AF 00 00 ) 
  .field public native int pData
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E5 9B BE E5 83 8F E6 95 B0 E6 8D AE E9 
                                                                                              A6 96 E5 9C B0 E5 9D 80 00 00 ) 
} // end of class DVPCameraType.dvpFrameBuffer

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpVariant
       extends [mscorlib]System.ValueType
{
  .field private native int pData
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E6 95 B0 E6 8D AE E9 A6 96 E5 9C B0 E5 
                                                                                              9D 80 00 00 ) 
  .field private uint32 uSize
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E6 95 B0 E6 8D AE E5 AD 97 E8 8A 82 E6 
                                                                                              95 B0 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string name
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 95 B0 E6 8D AE E7 B1 BB E5 9E 8B E5 
                                                                                              90 8D E7 A7 B0 00 00 ) 
} // end of class DVPCameraType.dvpVariant

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpIntDescr
       extends [mscorlib]System.ValueType
{
  .field public int32 iStep
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E6 AD A5 E9 95 BF 00 00 ) 
  .field public int32 iMin
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 B0 8F E5 80 BC 00 00 ) 
  .field public int32 iMax
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 A4 A7 E5 80 BC 00 00 ) 
  .field public int32 iDefault
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 BB 98 E8 AE A4 E5 80 BC 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpIntDescr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpUintDescr
       extends [mscorlib]System.ValueType
{
  .field public uint32 uStep
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E6 AD A5 E9 95 BF 00 00 ) 
  .field public uint32 uMin
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 B0 8F E5 80 BC 00 00 ) 
  .field public uint32 uMax
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 A4 A7 E5 80 BC 00 00 ) 
  .field public uint32 uDefault
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 BB 98 E8 AE A4 E5 80 BC 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpUintDescr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpFloatDescr
       extends [mscorlib]System.ValueType
{
  .field public float32 fStep
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E6 AD A5 E9 95 BF 00 00 ) 
  .field public float32 fMin
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 B0 8F E5 80 BC 00 00 ) 
  .field public float32 fMax
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 A4 A7 E5 80 BC 00 00 ) 
  .field public float32 fDefault
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 BB 98 E8 AE A4 E5 80 BC 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpFloatDescr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpDoubleDescr
       extends [mscorlib]System.ValueType
{
  .field public float64 fStep
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E6 AD A5 E9 95 BF 00 00 ) 
  .field public float64 fMin
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 B0 8F E5 80 BC 00 00 ) 
  .field public float64 fMax
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 A4 A7 E5 80 BC 00 00 ) 
  .field public float64 fDefault
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 BB 98 E8 AE A4 E5 80 BC 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpDoubleDescr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpUint64Descr
       extends [mscorlib]System.ValueType
{
  .field public uint32 uStep
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E6 AD A5 E9 95 BF 00 00 ) 
  .field public uint32 uMin
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 B0 8F E5 80 BC 00 00 ) 
  .field public uint32 uMax
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E6 9C 80 E5 A4 A7 E5 80 BC 00 00 ) 
  .field public uint32 uDefault
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 BB 98 E8 AE A4 E5 80 BC 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpUint64Descr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpSelectionDescr
       extends [mscorlib]System.ValueType
{
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 80 89 E6 8B A9 E9 A1 B9 E6 8F 8F E8 
                                                                                              BF B0 00 00 ) 
  .field public uint32 uDefault
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 BB 98 E8 AE A4 E7 B4 A2 E5 BC 95 00 
                                                                                              00 ) 
  .field public uint32 uCount
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E7 B4 A2 E5 BC 95 E4 B8 AA E6 95 B0 00 
                                                                                              00 ) 
  .field public char bNeedStop
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 98 AF E5 90 A6 E5 BA 94 E5 81 9C E6 
                                                                                              AD A2 E8 A7 86 E9 A2 91 E6 B5 81 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpSelectionDescr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpEnumDescr
       extends [mscorlib]System.ValueType
{
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 80 89 E6 8B A9 E9 A1 B9 E6 8F 8F E8 
                                                                                              BF B0 00 00 ) 
  .field public int32 iEnumValue
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E6 9E 9A E4 B8 BE E5 AF B9 E5 BA 94 E5 
                                                                                              80 BC 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string szEnumName
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E6 9E 9A E4 B8 BE E5 AF B9 E5 BA 94 E5 
                                                                                              90 8D 00 00 ) 
} // end of class DVPCameraType.dvpEnumDescr

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpSelection
       extends [mscorlib]System.ValueType
{
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 80 89 E6 8B A9 E9 A1 B9 00 00 ) 
  .field public  marshal( fixed sysstring [64]) string _string
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E5 AD 97 E7 AC A6 E4 B8 B2 E6 8F 8F E8 
                                                                                              BF B0 00 00 ) 
  .field public int32 iIndex
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E7 B4 A2 E5 BC 95 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpSelection

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpResolutionMode
       extends [mscorlib]System.ValueType
{
  .field public valuetype DVPCameraType.dvpSelection selection
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E5 88 86 E8 BE A8 E7 8E 87 E6 A8 A1 E5 
                                                                                              BC 8F E9 80 89 E6 8B A9 E9 A1 B9 00 00 ) 
  .field public valuetype DVPCameraType.dvpRegionDescr region
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E5 8C BA E5 9F 9F 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpResolutionMode

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpQuickRoi
       extends [mscorlib]System.ValueType
{
  .field public valuetype DVPCameraType.dvpSelection selection
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 80 89 E6 8B A9 E9 A1 B9 00 00 ) 
  .field public valuetype DVPCameraType.dvpRegion roi
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E6 84 9F E5 85 B4 E8 B6 A3 E7 9A 84 E5 
                                                                                              8C BA E5 9F 9F 00 00 ) 
  .field public valuetype DVPCameraType.dvpResolutionMode mode
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E5 88 86 E8 BE A8 E7 8E 87 E6 A8 A1 E5 
                                                                                              BC 8F 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpQuickRoi

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpFormatSelection
       extends [mscorlib]System.ValueType
{
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E5 9B BE E5 83 8F E6 A0 BC E5 BC 8F 00 
                                                                                              00 ) 
  .field public valuetype DVPCameraType.dvpSelection selection
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E5 88 86 E8 BE A8 E7 8E 87 E6 A8 A1 E5 
                                                                                              BC 8F E9 80 89 E6 8B A9 E9 A1 B9 00 00 ) 
  .field public valuetype DVPCameraType.dvpStreamFormat format
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E5 AF B9 E5 BA 94 E7 9A 84 E6 9E 9A E4 
                                                                                              B8 BE E7 B1 BB E5 9E 8B 00 00 ) 
  .field public  marshal( fixed array [32]) uint32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpFormatSelection

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpFrameCount
       extends [mscorlib]System.ValueType
{
  .field public uint32 uFrameCount
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 2D E6 8E A5 E6 94 B6 E5 B8 A7 E6 95 B0 EF   // ..-.............
                                                                                              BC 8C E4 B8 80 E8 88 AC E4 B8 BA E4 BC A0 E8 BE 
                                                                                              93 E5 88 B0 E7 94 B5 E8 84 91 E7 9A 84 E5 B8 A7 
                                                                                              00 00 ) 
  .field public uint32 uFrameDrop
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 21 E4 B8 A2 E5 A4 B1 E5 B8 A7 E6 95 B0 EF   // ..!.............
                                                                                              BC 8C E6 9D A5 E4 B8 8D E5 8F 8A E8 AF BB E5 8F 
                                                                                              96 E7 9A 84 00 00 ) 
  .field public uint32 uFrameIgnore
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 21 E6 94 BE E5 BC 83 E7 9A 84 EF BC 8C E9   // ..!.............
                                                                                              87 87 E9 9B 86 E5 90 8E E8 A2 AB E4 B8 A2 E6 8E 
                                                                                              89 E7 9A 84 00 00 ) 
  .field public uint32 uFrameError
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E9 94 99 E8 AF AF E5 B8 A7 E8 AE A1 E6 
                                                                                              95 B0 00 00 ) 
  .field public uint32 uFrameOK
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E8 A2 AB E9 87 87 E9 9B 86 E5 88 B0 E7 
                                                                                              9A 84 E6 AD A3 E7 A1 AE E5 B8 A7 00 00 ) 
  .field public uint32 uFrameOut
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1E E8 A2 AB E6 8F 90 E4 BA A4 20 2F 20 E8   // ............ / .
                                                                                              BE 93 E5 87 BA E7 9A 84 E6 9C 89 E6 95 88 E5 B8 
                                                                                              A7 00 00 ) 
  .field public uint32 uFrameResend
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 87 8D E4 BC A0 E5 B8 A7 00 00 ) 
  .field public uint32 uFrameProc
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E5 9B BE E5 83 8F E5 A4 84 E7 90 86 E5 
                                                                                              B8 A7 E6 80 BB E6 95 B0 00 00 ) 
  .field public float32 fFrameRate
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E9 87 87 E9 9B 86 E5 B8 A7 E7 8E 87 00 
                                                                                              00 ) 
  .field public float32 fProcRate
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 9B BE E5 83 8F E5 A4 84 E7 90 86 E5 
                                                                                              B8 A7 E7 8E 87 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpFrameCount

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpUserIoInfo
       extends [mscorlib]System.ValueType
{
  .field public  marshal( fixed array [32]) char[] inputValid
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 11 E5 8F AF E7 94 A8 E7 9A 84 E8 BE 93 E5 
                                                                                              85 A5 49 4F 00 00 )                               // ..IO..
  .field public  marshal( fixed array [32]) char[] outputValid
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 11 E5 8F AF E7 94 A8 E7 9A 84 E8 BE 93 E5 
                                                                                              87 BA 49 4F 00 00 )                               // ..IO..
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpUserIoInfo

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpLineInfo
       extends [mscorlib]System.ValueType
{
  .field public  marshal( fixed array [32]) char[] valid
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0B E5 8F AF E7 94 A8 E7 9A 84 49 4F 00 00 ) // ............IO..
  .field public char[] bidir
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0B E5 8F 8C E5 90 91 E7 9A 84 49 4F 00 00 ) // ............IO..
  .field public char[] inverter
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E5 
                                                                                              8F 8D E5 90 91 E5 99 A8 00 00 ) 
  .field public char[] user
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 24 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E8   // ..$.............
                                                                                              BD AF E4 BB B6 E8 AE BE E7 BD AE E8 BE 93 E5 87 
                                                                                              BA E7 94 B5 E5 B9 B3 00 00 ) 
  .field public char[] strobe
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 73   // ...............s
                                                                                              74 72 6F 62 65 E4 BF A1 E5 8F B7 00 00 )          // trobe........
  .field public char[] pwm
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 70   // ...............p
                                                                                              77 6D E4 BF A1 E5 8F B7 00 00 )                   // wm........
  .field public char[] timer
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 17 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 74   // ...............t
                                                                                              69 6D 65 72 E4 BF A1 E5 8F B7 00 00 )             // imer........
  .field public char[] uart
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 16 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 75   // ...............u
                                                                                              61 72 74 E4 BF A1 E5 8F B7 00 00 )                // art........
  .field public char[] pulse
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 17 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 70   // ...............p
                                                                                              75 6C 73 65 E4 BF A1 E5 8F B7 00 00 )             // ulse........
  .field public  marshal( fixed array [24]) uint32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpLineInfo

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpAeConfig
       extends [mscorlib]System.ValueType
{
  .field public float64 fExposureMin
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 2D E6 9C 80 E5 B0 8F E8 87 AA E5 8A A8 E6   // ..-.............
                                                                                              9B 9D E5 85 89 E6 97 B6 E9 97 B4 EF BC 88 E5 8D 
                                                                                              95 E4 BD 8D E4 B8 BA E5 BE AE E7 A7 92 EF BC 89 
                                                                                              00 00 ) 
  .field public float64 fExposureMax
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 2D E6 9C 80 E5 A4 A7 E8 87 AA E5 8A A8 E6   // ..-.............
                                                                                              9B 9D E5 85 89 E6 97 B6 E9 97 B4 EF BC 88 E5 8D 
                                                                                              95 E4 BD 8D E4 B8 BA E5 BE AE E7 A7 92 EF BC 89 
                                                                                              00 00 ) 
  .field public float64 reserved1
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0A E4 BF 9D E7 95 99 E5 80 BC 31 00 00 )    // ............1..
  .field public float32 fGainMin
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 9C 80 E5 B0 8F E8 87 AA E5 8A A8 E5 
                                                                                              A2 9E E7 9B 8A E5 80 BC 00 00 ) 
  .field public float32 fGainMax
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 9C 80 E5 A4 A7 E8 87 AA E5 8A A8 E5 
                                                                                              A2 9E E7 9B 8A E5 80 BC 00 00 ) 
  .field public float32 reserved2
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0A E4 BF 9D E7 95 99 E5 80 BC 32 00 00 )    // ............2..
  .field public  marshal( fixed array [32]) int32[] dvpReserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpAeConfig

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpSensorInfo
       extends [mscorlib]System.ValueType
{
  .field public  marshal( fixed sysstring [64]) string descr
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E5 AD 97 E7 AC A6 E4 B8 B2 E6 8F 8F E8 
                                                                                              BF B0 00 00 ) 
  .field public valuetype DVPCameraType.dvpSensorType sensor
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E4 BC A0 E6 84 9F E5 99 A8 E7 B1 BB E5 
                                                                                              9E 8B 00 00 ) 
  .field public valuetype DVPCameraType.dvpSensorPixel pixel
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E5 8E 9F E5 A7 8B E5 83 8F E7 B4 A0 E7 
                                                                                              B1 BB E5 9E 8B 00 00 ) 
  .field public valuetype DVPCameraType.dvpRegionDescr region
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E5 8C BA E5 9F 9F 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpSensorInfo

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpFunctionInfo
       extends [mscorlib]System.ValueType
{
  .field public char bTrigger
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E8 
                                                                                              A7 A6 E5 8F 91 E5 8A 9F E8 83 BD 00 00 ) 
  .field public char bHardwareIsp
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E7 
                                                                                              A1 AC E4 BB B6 49 53 50 E5 8A 9F E8 83 BD 00 00 ) // .....ISP........
  .field public char bUserSet
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 19 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 55   // ...............U
                                                                                              73 65 72 53 65 74 E5 8A 9F E8 83 BD 00 00 )       // serSet........
  .field public char bHflip
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1E E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E6 
                                                                                              B0 B4 E5 B9 B3 E7 BF BB E8 BD AC E5 8A 9F E8 83 
                                                                                              BD 00 00 ) 
  .field public char bVflip
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1E E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E5 
                                                                                              9E 82 E7 9B B4 E7 BF BB E8 BD AC E5 8A 9F E8 83 
                                                                                              BD 00 00 ) 
  .field public char bInverse
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 18 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E8 
                                                                                              B4 9F E7 89 87 E5 8A 9F E8 83 BD 00 00 ) 
  .field public char bLine
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 3A E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E7   // ..:.............
                                                                                              AC A6 E5 90 88 67 69 67 65 E6 A0 87 E5 87 86 E7   // .....gige.......
                                                                                              9A 84 20 64 76 70 4C 69 6E 65 20 E7 9B B8 E6 9C   // .. dvpLine .....
                                                                                              BA E5 BC 95 E8 84 9A E5 8A 9F E8 83 BD 00 00 ) 
  .field public char bCooler
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 15 E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E5 
                                                                                              88 B6 E5 86 B7 E5 99 A8 00 00 ) 
  .field public char bTemperature
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B E6 98 AF E5 90 A6 E6 94 AF E6 8C 81 E6 
                                                                                              B8 A9 E5 BA A6 E8 AE A1 E5 8A 9F E8 83 BD 00 00 ) 
  .field public char bReserved3
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E4 BF 9D E7 95 99 00 00 ) 
  .field public  marshal( fixed array [30]) int32[] dvpReserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpFunctionInfo

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpTemperatureInfo
       extends [mscorlib]System.ValueType
{
  .field public float32 fDevice
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0F E8 AE BE E5 A4 87 E7 9A 84 E6 B8 A9 E5 
                                                                                              BA A6 00 00 ) 
  .field public float32 fSensor
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E4 BC A0 E6 84 9F E5 99 A8 E7 9A 84 E6 
                                                                                              B8 A9 E5 BA A6 00 00 ) 
  .field public float32 fChip1
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 E8 8A AF E7 89 87 31 E7 9A 84 E6 B8 A9   // .........1......
                                                                                              E5 BA A6 00 00 ) 
  .field public float32 fChip2
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 10 E8 8A AF E7 89 87 32 E7 9A 84 E6 B8 A9   // .........2......
                                                                                              E5 BA A6 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] dvpReserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpTemperatureInfo

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpBufferConfig
       extends [mscorlib]System.ValueType
{
  .field public valuetype DVPCameraType.dvpBufferMode mode
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E7 BC 93 E5 AD 98 E5 B7 A5 E4 BD 9C E6 
                                                                                              A8 A1 E5 BC 8F 00 00 ) 
  .field public uint32 uQueueSize
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 12 E7 BC 93 E5 AD 98 E9 98 9F E5 88 97 E5 
                                                                                              A4 A7 E5 B0 8F 00 00 ) 
  .field public bool bDropNew
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 30 E7 BC 93 E5 AD 98 E9 98 9F E5 88 97 E6   // ..0.............
                                                                                              BB A1 E6 97 B6 EF BC 8C E6 98 AF E5 90 A6 E4 B8 
                                                                                              A2 E5 BC 83 E6 96 B0 E4 BA A7 E7 94 9F E7 9A 84 
                                                                                              E5 B8 A7 00 00 ) 
  .field public bool bLite
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 1B E7 B4 A7 E5 87 91 E7 BC 93 E5 AD 98 E7 
                                                                                              9A 84 E5 86 85 E5 AD 98 E7 94 B3 E8 AF B7 00 00 ) 
  .field public  marshal( fixed array [32]) int32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpBufferConfig

.class public sequential ansi sealed beforefieldinit DVPCameraType.dvpLineTriggerConfig
       extends [mscorlib]System.ValueType
{
  .field public uint32 uPreDiv
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 09 E9 A2 84 E5 88 86 E9 A2 91 00 00 ) 
  .field public uint32 uMult
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E5 80 8D E9 A2 91 00 00 ) 
  .field public uint32 uDiv
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 06 E5 88 86 E9 A2 91 00 00 ) 
  .field public  marshal( fixed array [32]) uint32[] reserved
  .custom instance void [System]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 0C E4 BF 9D E7 95 99 E5 AD 97 E8 8A 82 00 
                                                                                              00 ) 
} // end of class DVPCameraType.dvpLineTriggerConfig

.class public auto ansi beforefieldinit DVPCameraType.DllInvoke
       extends [mscorlib]System.Object
{
  .field private native int libr
  .method private hidebysig static pinvokeimpl("Kernel32.dll" winapi) 
          native int  LoadLibrary(string path) cil managed preservesig
  {
  }
  .method private hidebysig static pinvokeimpl("Kernel32.dll" winapi) 
          native int  GetProcAddress(native int lib,
                                     string FunName) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("kernel32.dll" winapi) 
          bool  FreeLibrary(native int lib) cil managed preservesig
  {
  }
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string path) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       native int DVPCameraType.DllInvoke::LoadLibrary(string)
    IL_000d:  stfld      native int DVPCameraType.DllInvoke::libr
    IL_0012:  ret
  } // end of method DllInvoke::.ctor

  .method public hidebysig instance class [mscorlib]System.Delegate 
          Invoke(string funName,
                 class [mscorlib]System.Type 'type') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int DVPCameraType.DllInvoke::libr
    IL_0006:  ldarg.1
    IL_0007:  call       native int DVPCameraType.DllInvoke::GetProcAddress(native int,
                                                                            string)
    IL_000c:  ldarg.2
    IL_000d:  call       class [mscorlib]System.Delegate [mscorlib]System.Runtime.InteropServices.Marshal::GetDelegateForFunctionPointer(native int,
                                                                                                                                         class [mscorlib]System.Type)
    IL_0012:  ret
  } // end of method DllInvoke::Invoke

  .method family hidebysig virtual instance void 
          Finalize() cil managed
  {
    .override [mscorlib]System.Object::Finalize
    // 代码大小       22 (0x16)
    .maxstack  1
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldfld      native int DVPCameraType.DllInvoke::libr
      IL_0006:  call       bool DVPCameraType.DllInvoke::FreeLibrary(native int)
      IL_000b:  pop
      IL_000c:  leave.s    IL_0015

    }  // end .try
    finally
    {
      IL_000e:  ldarg.0
      IL_000f:  call       instance void [mscorlib]System.Object::Finalize()
      IL_0014:  endfinally
    }  // end handler
    IL_0015:  ret
  } // end of method DllInvoke::Finalize

} // end of class DVPCameraType.DllInvoke

.class public auto ansi beforefieldinit DVPCameraType.DVPCamera
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested public dvpStreamCallback
         extends [mscorlib]System.MulticastDelegate
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute::.ctor(valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 02 00 00 00 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method dvpStreamCallback::.ctor

    .method public hidebysig newslot virtual 
            instance int32  Invoke(uint32 handle,
                                   valuetype DVPCameraType.dvpStreamEvent _event,
                                   native int pContext,
                                   valuetype DVPCameraType.dvpFrame& refFrame,
                                   native int pBuffer) runtime managed
    {
    } // end of method dvpStreamCallback::Invoke

    .method public hidebysig newslot virtual 
            instance class [mscorlib]System.IAsyncResult 
            BeginInvoke(uint32 handle,
                        valuetype DVPCameraType.dvpStreamEvent _event,
                        native int pContext,
                        valuetype DVPCameraType.dvpFrame& refFrame,
                        native int pBuffer,
                        class [mscorlib]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method dvpStreamCallback::BeginInvoke

    .method public hidebysig newslot virtual 
            instance int32  EndInvoke(valuetype DVPCameraType.dvpFrame& refFrame,
                                      class [mscorlib]System.IAsyncResult result) runtime managed
    {
    } // end of method dvpStreamCallback::EndInvoke

  } // end of class dvpStreamCallback

  .class auto ansi sealed nested public dvpEventCallback
         extends [mscorlib]System.MulticastDelegate
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute::.ctor(valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 02 00 00 00 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method dvpEventCallback::.ctor

    .method public hidebysig newslot virtual 
            instance int32  Invoke(uint32 handle,
                                   valuetype DVPCameraType.dvpEvent _event,
                                   native int pContext,
                                   int32 param,
                                   valuetype DVPCameraType.dvpVariant& refVariant) runtime managed
    {
    } // end of method dvpEventCallback::Invoke

    .method public hidebysig newslot virtual 
            instance class [mscorlib]System.IAsyncResult 
            BeginInvoke(uint32 handle,
                        valuetype DVPCameraType.dvpEvent _event,
                        native int pContext,
                        int32 param,
                        valuetype DVPCameraType.dvpVariant& refVariant,
                        class [mscorlib]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method dvpEventCallback::BeginInvoke

    .method public hidebysig newslot virtual 
            instance int32  EndInvoke(valuetype DVPCameraType.dvpVariant& refVariant,
                                      class [mscorlib]System.IAsyncResult result) runtime managed
    {
    } // end of method dvpEventCallback::EndInvoke

  } // end of class dvpEventCallback

  .field public static literal string str_dll_file = "DVPCamera.dll"
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetCameraInfo(uint32 handle,
                           valuetype DVPCameraType.dvpCameraInfo& refCameraInfo) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSensorInfo(uint32 handle,
                           valuetype DVPCameraType.dvpSensorInfo& refSensorInfo) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFrameCount(uint32 handle,
                           valuetype DVPCameraType.dvpFrameCount& refFrameCount) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetUserIoInfo(uint32 handle,
                           valuetype DVPCameraType.dvpUserIoInfo& refUserIoInfo) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineInfo(uint32 handle,
                         valuetype DVPCameraType.dvpLineInfo& pLineInfo) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFirstPosition(uint32 handle,
                              valuetype DVPCameraType.dvpFirstPosition& refFirstPosition) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFunctionInfo(uint32 handle,
                             valuetype DVPCameraType.dvpFunctionInfo& pFunctionInfo) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetDeviceType(uint32 handle,
                           valuetype DVPCameraType.dvpDeviceType& pDeviceType) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTemperatureInfo(uint32 handle,
                                valuetype DVPCameraType.dvpTemperatureInfo& pTemperatureInfo) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpTriggerFire(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpCreateDefectFixInfo(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpCreateFlatFieldInfo(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpResetDevice(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpRestart(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpHold(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetGamma(uint32 handle,
                      int32& refGamma) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetGamma(uint32 handle,
                      int32 Gamma) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetGammaDescr(uint32 handle,
                           valuetype DVPCameraType.dvpIntDescr& refGammaDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetGammaState(uint32 handle,
                           bool& refGammaState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetGammaState(uint32 handle,
                           bool GammaState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetContrast(uint32 handle,
                         int32& refContrast) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetContrast(uint32 handle,
                         int32 Contrast) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetContrastDescr(uint32 handle,
                              valuetype DVPCameraType.dvpIntDescr& refContrastDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetContrastState(uint32 handle,
                              bool& refContrastState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetContrastState(uint32 handle,
                              bool ContrastState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetRoi(uint32 handle,
                    valuetype DVPCameraType.dvpRegion& refRoi) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetRoi(uint32 handle,
                    valuetype DVPCameraType.dvpRegion Roi) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetRoiDescr(uint32 handle,
                         valuetype DVPCameraType.dvpRegionDescr& refRoiDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetRoiState(uint32 handle,
                         bool& refRoiState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetRoiState(uint32 handle,
                         bool RoiState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetColorTemperature(uint32 handle,
                                 int32& refColorTemperature) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetColorTemperature(uint32 handle,
                                 int32 ColorTemperature) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetColorTemperatureDescr(uint32 handle,
                                      valuetype DVPCameraType.dvpIntDescr& refColorTemperatureDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetColorTemperatureState(uint32 handle,
                                      bool& refColorTemperatureState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetColorTemperatureState(uint32 handle,
                                      bool ColorTemperatureState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSharpness(uint32 handle,
                          int32& refSharpness) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSharpness(uint32 handle,
                          int32 Sharpness) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSharpnessDescr(uint32 handle,
                               valuetype DVPCameraType.dvpIntDescr& refSharpnessDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSharpnessState(uint32 handle,
                               bool& refSharpnessState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSharpnessState(uint32 handle,
                               bool SharpnessState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSaturation(uint32 handle,
                           int32& refSaturation) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSaturation(uint32 handle,
                           int32 Saturation) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSaturationDescr(uint32 handle,
                                valuetype DVPCameraType.dvpIntDescr& refSaturationDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSaturationState(uint32 handle,
                                bool& refSaturationState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSaturationState(uint32 handle,
                                bool SaturationState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetNoiseReduct2d(uint32 handle,
                              int32& refNoiseReduct2d) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetNoiseReduct2d(uint32 handle,
                              int32 NoiseReduct2d) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetNoiseReduct2dDescr(uint32 handle,
                                   valuetype DVPCameraType.dvpIntDescr& refNoiseReduct2dDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetNoiseReduct2dState(uint32 handle,
                                   bool& refNoiseReduct2dState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetNoiseReduct2dState(uint32 handle,
                                   bool NoiseReduct2dState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetNoiseReduct3d(uint32 handle,
                              int32& refNoiseReduct3d) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetNoiseReduct3d(uint32 handle,
                              int32 NoiseReduct3d) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetNoiseReduct3dDescr(uint32 handle,
                                   valuetype DVPCameraType.dvpIntDescr& refNoiseReduct3dDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetNoiseReduct3dState(uint32 handle,
                                   bool& refNoiseReduct3dState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetNoiseReduct3dState(uint32 handle,
                                   bool NoiseReduct3dState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBlackLevel(uint32 handle,
                           float32& refBlackLevel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetBlackLevel(uint32 handle,
                           float32 BlackLevel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBlackLevelDescr(uint32 handle,
                                valuetype DVPCameraType.dvpFloatDescr& refBlackLevelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBlackLevelState(uint32 handle,
                                bool& refBlackLevelState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetBlackLevelState(uint32 handle,
                                bool BlackLevelState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSoftTriggerLoop(uint32 handle,
                                float64& refSoftTriggerLoop) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSoftTriggerLoop(uint32 handle,
                                float64 SoftTriggerLoop) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSoftTriggerLoopDescr(uint32 handle,
                                     valuetype DVPCameraType.dvpDoubleDescr& refSoftTriggerLoopDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSoftTriggerLoopState(uint32 handle,
                                     bool& refSoftTriggerLoopState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSoftTriggerLoopState(uint32 handle,
                                     bool SoftTriggerLoopState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetMultiFrames(uint32 handle,
                            uint64& refMultiFrames) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetMultiFrames(uint32 handle,
                            uint64 MultiFrames) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetMultiFramesDescr(uint32 handle,
                                 valuetype DVPCameraType.dvpUint64Descr& refMultiFramesDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetMultiFramesState(uint32 handle,
                                 bool& refMultiFramesState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetMultiFramesState(uint32 handle,
                                 char MultiFramesState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamPackInterval(uint32 handle,
                                   int32& refStreamPackInterval) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStreamPackInterval(uint32 handle,
                                   int32 StreamPackInterval) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamPackIntervalDescr(uint32 handle,
                                        valuetype DVPCameraType.dvpIntDescr& refStreamPackIntervalDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamPackSize(uint32 handle,
                               int32& refStreamPackSize) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStreamPackSize(uint32 handle,
                               int32 StreamPackSize) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamPackSizeDescr(uint32 handle,
                                    valuetype DVPCameraType.dvpIntDescr& refStreamPackSizeDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeTarget(uint32 handle,
                         int32& refAeTarget) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAeTarget(uint32 handle,
                         int32 AeTarget) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeTargetDescr(uint32 handle,
                              valuetype DVPCameraType.dvpIntDescr& refAeTargetDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAnalogGain(uint32 handle,
                           float32& refAnalogGain) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAnalogGain(uint32 handle,
                           float32 AnalogGain) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAnalogGainDescr(uint32 handle,
                                valuetype DVPCameraType.dvpFloatDescr& refAnalogGainDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetExposure(uint32 handle,
                         float64& refExposure) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetExposure(uint32 handle,
                         float64 Exposure) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetExposureDescr(uint32 handle,
                              valuetype DVPCameraType.dvpDoubleDescr& refExposureDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerJitterFilter(uint32 handle,
                                    float64& refTriggerJitterFilter) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTriggerJitterFilter(uint32 handle,
                                    float64 TriggerJitterFilter) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerJitterFilterDescr(uint32 handle,
                                         valuetype DVPCameraType.dvpDoubleDescr& refTriggerJitterFilterDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerDelay(uint32 handle,
                             float64& refTriggerDelay) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTriggerDelay(uint32 handle,
                             float64 TriggerDelay) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerDelayDescr(uint32 handle,
                                  valuetype DVPCameraType.dvpDoubleDescr& refTriggerDelayDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStrobeDelay(uint32 handle,
                            float64& refStrobeDelay) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStrobeDelay(uint32 handle,
                            float64 StrobeDelay) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStrobeDelayDescr(uint32 handle,
                                 valuetype DVPCameraType.dvpDoubleDescr& refStrobeDelayDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStrobeDuration(uint32 handle,
                               float64& refStrobeDuration) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStrobeDuration(uint32 handle,
                               float64 StrobeDuration) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStrobeDurationDescr(uint32 handle,
                                    valuetype DVPCameraType.dvpDoubleDescr& refStrobeDurationDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFramesPerTrigger(uint32 handle,
                                 int32& refFramesPerTrigger) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetFramesPerTrigger(uint32 handle,
                                 int32 FramesPerTrigger) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFramesPerTriggerDescr(uint32 handle,
                                      valuetype DVPCameraType.dvpIntDescr& refFramesPerTriggerDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTimerValue(uint32 handle,
                           float64& refTimerValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTimerValue(uint32 handle,
                           float64 TimerValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTimerValueDescr(uint32 handle,
                                valuetype DVPCameraType.dvpDoubleDescr& refTimerValueDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBufferQueueSize(uint32 handle,
                                int32& refBufferQueueSize) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetBufferQueueSize(uint32 handle,
                                int32 BufferQueueSize) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBufferQueueSizeDescr(uint32 handle,
                                     valuetype DVPCameraType.dvpIntDescr& refBufferQueueSizeDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineRate(uint32 handle,
                         float64& pLineRate) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetLineRate(uint32 handle,
                         float64 LineRate) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineRateDescr(uint32 handle,
                              valuetype DVPCameraType.dvpDoubleDescr& pLineRateDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerSource(uint32 handle,
                              valuetype DVPCameraType.dvpTriggerSource& pTriggerSource) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTriggerSource(uint32 handle,
                              valuetype DVPCameraType.dvpTriggerSource TriggerSource) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetCurveLut(uint32 handle,
                         valuetype DVPCameraType.dvpCurveLut& refCurveLut) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetCurveLut(uint32 handle,
                         valuetype DVPCameraType.dvpCurveLut CurveLut) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetColorCorrection(uint32 handle,
                                valuetype DVPCameraType.dvpColorCorrection& refColorCorrection) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetColorCorrection(uint32 handle,
                                valuetype DVPCameraType.dvpColorCorrection ColorCorrection) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamState(uint32 handle,
                            valuetype DVPCameraType.dvpStreamState& refStreamState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStreamState(uint32 handle,
                            valuetype DVPCameraType.dvpStreamState StreamState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetHardwareIspState(uint32 handle,
                                 char& refHardwareIspState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetHardwareIspState(uint32 handle,
                                 char HardwareIspState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerState(uint32 handle,
                             bool& refTriggerState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTriggerState(uint32 handle,
                             bool TriggerState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetMonoState(uint32 handle,
                          bool& refMonoState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetMonoState(uint32 handle,
                          bool MonoState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetInverseState(uint32 handle,
                             bool& refInverseState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetInverseState(uint32 handle,
                             bool InverseState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFlipHorizontalState(uint32 handle,
                                    bool& refFlipHorizontalState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetFlipHorizontalState(uint32 handle,
                                    bool FlipHorizontalState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFlipVerticalState(uint32 handle,
                                  bool& refFlipVerticalState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetFlipVerticalState(uint32 handle,
                                  bool FlipVerticalState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFlatFieldState(uint32 handle,
                               bool& refFlatFieldState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetFlatFieldState(uint32 handle,
                               bool FlatFieldState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetDefectFixState(uint32 handle,
                               bool& refDefectFixState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetDefectFixState(uint32 handle,
                               bool DefectFixState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAutoDefectFixState(uint32 handle,
                                   bool& refAutoDefectFixState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAutoDefectFixState(uint32 handle,
                                   bool AutoDefectFixState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetRotateState(uint32 handle,
                            bool& refSimpleRotateState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetRotateState(uint32 handle,
                            bool SimpleRotateState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetRotateOpposite(uint32 handle,
                               bool& refRotateOpposite) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetRotateOpposite(uint32 handle,
                               bool RotateOpposite) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetCoolerState(uint32 handle,
                            bool& pCoolerState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetCoolerState(uint32 handle,
                            bool CoolerState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeRoi(uint32 handle,
                      valuetype DVPCameraType.dvpRegion& refAeRoi) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAeRoi(uint32 handle,
                      valuetype DVPCameraType.dvpRegion AeRoi) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAwbRoi(uint32 handle,
                       valuetype DVPCameraType.dvpRegion& refAwbRoi) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAwbRoi(uint32 handle,
                       valuetype DVPCameraType.dvpRegion AwbRoi) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeMode(uint32 handle,
                       valuetype DVPCameraType.dvpAeMode& refAeMode) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAeMode(uint32 handle,
                       valuetype DVPCameraType.dvpAeMode AeMode) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAntiFlick(uint32 handle,
                          valuetype DVPCameraType.dvpAntiFlick& refAntiFlick) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAntiFlick(uint32 handle,
                          valuetype DVPCameraType.dvpAntiFlick AntiFlick) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeOperation(uint32 handle,
                            valuetype DVPCameraType.dvpAeOperation& refAeOperation) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAeOperation(uint32 handle,
                            valuetype DVPCameraType.dvpAeOperation AeOperation) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAwbOperation(uint32 handle,
                             valuetype DVPCameraType.dvpAwbOperation& refAwbOperation) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAwbOperation(uint32 handle,
                             valuetype DVPCameraType.dvpAwbOperation AwbOperation) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStrobeDriver(uint32 handle,
                             valuetype DVPCameraType.dvpStrobeDriver& refStrobeDriver) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStrobeDriver(uint32 handle,
                             valuetype DVPCameraType.dvpStrobeDriver StrobeDriver) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStrobeOutputType(uint32 handle,
                                 valuetype DVPCameraType.dvpStrobeOutputType& refStrobeOutputType) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStrobeOutputType(uint32 handle,
                                 valuetype DVPCameraType.dvpStrobeOutputType StrobeOutputType) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerInputType(uint32 handle,
                                 valuetype DVPCameraType.dvpTriggerInputType& refTriggerInputType) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTriggerInputType(uint32 handle,
                                 valuetype DVPCameraType.dvpTriggerInputType TriggerInputType) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTriggerLineMode(uint32 handle,
                                valuetype DVPCameraType.dvpTriggerLineMode& pTriggerLineMode) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTriggerLineMode(uint32 handle,
                                valuetype DVPCameraType.dvpTriggerLineMode TriggerLineMode) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSourceFormat(uint32 handle,
                             valuetype DVPCameraType.dvpStreamFormat& refSourceFormat) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSourceFormat(uint32 handle,
                             valuetype DVPCameraType.dvpStreamFormat SourceFormat) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTargetFormat(uint32 handle,
                             valuetype DVPCameraType.dvpStreamFormat& refTargetFormat) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTargetFormat(uint32 handle,
                             valuetype DVPCameraType.dvpStreamFormat TargetFormat) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetUserColorMatrix(uint32 handle,
                                valuetype DVPCameraType.dvpColorMatrix& refUserColorMatrix) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetUserColorMatrix(uint32 handle,
                                valuetype DVPCameraType.dvpColorMatrix UserColorMatrix) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLinkTimeout(uint32 handle,
                            uint32& refLinkTimeout) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetLinkTimeout(uint32 handle,
                            uint32& LinkTimeout) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeConfig(uint32 handle,
                         valuetype DVPCameraType.dvpAeConfig& refAeConfig) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAeConfig(uint32 handle,
                         valuetype DVPCameraType.dvpAeConfig AeConfig) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBufferConfig(uint32 handle,
                             valuetype DVPCameraType.dvpBufferConfig& refBufferConfig) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetBufferConfig(uint32 handle,
                             valuetype DVPCameraType.dvpBufferConfig BufferConfig) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineTriggerConfig(uint32 handle,
                                  valuetype DVPCameraType.dvpLineTriggerConfig& pLineTriggerConfig) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetLineTriggerConfig(uint32 handle,
                                  valuetype DVPCameraType.dvpLineTriggerConfig& LineTriggerConfig) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetUserSet(uint32 handle,
                        valuetype DVPCameraType.dvpUserSet& pUserSet) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetUserSet(uint32 handle,
                        valuetype DVPCameraType.dvpUserSet UserSet) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetInputIoLevel(uint32 handle,
                             valuetype DVPCameraType.dvpInputIo inputIo,
                             bool& refInputIoLevel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineLevel(uint32 handle,
                          valuetype DVPCameraType.dvpLine line,
                          bool& pLineLevel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetLineLevel(uint32 handle,
                          valuetype DVPCameraType.dvpLine line,
                          bool LineLevel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineInverter(uint32 handle,
                             valuetype DVPCameraType.dvpLine line,
                             bool& pLineInverter) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetLineInverter(uint32 handle,
                             valuetype DVPCameraType.dvpLine line,
                             bool LineInverter) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineMode(uint32 handle,
                         valuetype DVPCameraType.dvpLine line,
                         valuetype DVPCameraType.dvpLineMode& pLineMode) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetLineMode(uint32 handle,
                         valuetype DVPCameraType.dvpLine line,
                         valuetype DVPCameraType.dvpLineMode LineMode) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineSource(uint32 handle,
                           valuetype DVPCameraType.dvpLine line,
                           valuetype DVPCameraType.dvpLineSource& pLineSource) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetLineSource(uint32 handle,
                           valuetype DVPCameraType.dvpLine line,
                           valuetype DVPCameraType.dvpLineSource LineSource) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetLineStatus(uint32 handle,
                           valuetype DVPCameraType.dvpLine line,
                           bool pLineStatus) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetOutputIoLevel(uint32 handle,
                              valuetype DVPCameraType.dvpOutputIo outputIo,
                              bool& refOutputIoLevel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetOutputIoLevel(uint32 handle,
                              valuetype DVPCameraType.dvpOutputIo outputIo,
                              bool OutputIoLevel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetOutputIoFunction(uint32 handle,
                                 valuetype DVPCameraType.dvpOutputIo outputIo,
                                 valuetype DVPCameraType.dvpOutputIoFunction& refpOutputIoFunction) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetOutputIoFunction(uint32 handle,
                                 valuetype DVPCameraType.dvpOutputIo outputIo,
                                 valuetype DVPCameraType.dvpOutputIoFunction OutputIoFunction) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetInputIoFunction(uint32 handle,
                                valuetype DVPCameraType.dvpInputIo inputIo,
                                valuetype DVPCameraType.dvpInputIoFunction& refInputIoFunction) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetInputIoFunction(uint32 handle,
                                valuetype DVPCameraType.dvpInputIo inputIo,
                                valuetype DVPCameraType.dvpInputIoFunction InputIoFunction) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamFlowCtrlSel(uint32 handle,
                                  uint32& pStreamFlowCtrlSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStreamFlowCtrlSel(uint32 handle,
                                  uint32 StreamFlowCtrlSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamFlowCtrlSelDescr(uint32 handle,
                                       valuetype DVPCameraType.dvpSelectionDescr& pStreamFlowCtrlSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStreamFlowCtrlSelDetail(uint32 handle,
                                        uint32 StreamFlowCtrlSel,
                                        valuetype DVPCameraType.dvpSelection& pStreamFlowCtrlSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetColorSolutionSel(uint32 handle,
                                 uint32& refColorSolutionSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetColorSolutionSel(uint32 handle,
                                 uint32 ColorSolutionSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetColorSolutionSelDescr(uint32 handle,
                                      valuetype DVPCameraType.dvpSelectionDescr& refColorSolutionSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetColorSolutionSelDetail(uint32 handle,
                                       uint32 ColorSolutionSel,
                                       valuetype DVPCameraType.dvpSelection& refColorSolutionSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBayerDecodeSel(uint32 handle,
                               uint32& refBayerDecodeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetBayerDecodeSel(uint32 handle,
                               uint32 BayerDecodeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBayerDecodeSelDescr(uint32 handle,
                                    valuetype DVPCameraType.dvpSelectionDescr& refBayerDecodeSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBayerDecodeSelDetail(uint32 handle,
                                     uint32 BayerDecodeSel,
                                     valuetype DVPCameraType.dvpSelection& refBayerDecodeSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSourceFormatSel(uint32 handle,
                                uint32& refSourceFormatSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetSourceFormatSel(uint32 handle,
                                uint32 SourceFormatSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSourceFormatSelDescr(uint32 handle,
                                     valuetype DVPCameraType.dvpSelectionDescr& refSourceFormatSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSourceFormatSelDetail(uint32 handle,
                                      uint32 SourceFormatSel,
                                      valuetype DVPCameraType.dvpFormatSelection& refSourceFormatSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTargetFormatSel(uint32 handle,
                                uint32& refTargetFormatSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetTargetFormatSel(uint32 handle,
                                uint32 TargetFormatSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTargetFormatSelDescr(uint32 handle,
                                     valuetype DVPCameraType.dvpSelectionDescr& refTargetFormatSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetTargetFormatSelDetail(uint32 handle,
                                      uint32 TargetFormatSel,
                                      valuetype DVPCameraType.dvpFormatSelection& refTargetFormatSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetResolutionModeSel(uint32 handle,
                                  uint32& refResolutionModeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetResolutionModeSel(uint32 handle,
                                  uint32 ResolutionModeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetResolutionModeSelDescr(uint32 handle,
                                       valuetype DVPCameraType.dvpSelectionDescr& refResolutionModeSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetResolutionModeSelDetail(uint32 handle,
                                        uint32 ResolutionModeSel,
                                        valuetype DVPCameraType.dvpResolutionMode& refResolutionModeSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeSchemeSel(uint32 handle,
                            uint32& refAeSchemeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAeSchemeSel(uint32 handle,
                            uint32 AeSchemeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeSchemeSelDescr(uint32 handle,
                                 valuetype DVPCameraType.dvpSelectionDescr& refAeSchemeSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAeSchemeSelDetail(uint32 handle,
                                  int32& refSaturation,
                                  valuetype DVPCameraType.dvpSelection& refAeSchemeSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetQuickRoiSel(uint32 handle,
                            uint32& refQuickRoiSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetQuickRoiSel(uint32 handle,
                            uint32 QuickRoiSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetQuickRoiSelDescr(uint32 handle,
                                 valuetype DVPCameraType.dvpSelectionDescr& refQuickRoiSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetQuickRoiSelDetail(uint32 handle,
                                  uint32 QuickRoiSel,
                                  valuetype DVPCameraType.dvpQuickRoi& refQuickRoiSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetPixelRateSel(uint32 handle,
                             uint32& refPixelRateSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetPixelRateSel(uint32 handle,
                             uint32 PixelRateSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetPixelRateSelDescr(uint32 handle,
                                  valuetype DVPCameraType.dvpSelectionDescr& refPixelRateSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetPixelRateSelDetail(uint32 handle,
                                   uint32 PixelRateSel,
                                   valuetype DVPCameraType.dvpSelection& refPixelRateSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetPacketSizeSel(uint32 handle,
                              uint32& refPacketSizeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetPacketSizeSel(uint32 handle,
                              uint32 PacketSizeSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetPacketSizeSelDescr(uint32 handle,
                                   valuetype DVPCameraType.dvpSelectionDescr& refPacketSizeSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetPacketSizeSelDetail(uint32 handle,
                                    uint32 PacketSizeSel,
                                    valuetype DVPCameraType.dvpSelection& refPacketSizeSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAccelerateSel(uint32 handle,
                              uint32& refAccelerateSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetAccelerateSel(uint32 handle,
                              uint32 AccelerateSel) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAccelerateSelDescr(uint32 handle,
                                   valuetype DVPCameraType.dvpSelectionDescr& refAccelerateSelDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetAccelerateSelDetail(uint32 handle,
                                    uint32 AccelerateSel,
                                    valuetype DVPCameraType.dvpSelection& refAccelerateSelDetail) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetRgbGain(uint32 handle,
                        float32 rGain,
                        float32 gGain,
                        float32 bGain) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetRgbGain(uint32 handle,
                        float32& refrGain,
                        float32& refgGain,
                        float32& refbGain) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetRgbGainState(uint32 handle,
                             bool state) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetRgbGainState(uint32 handle,
                             bool& refState) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpRefresh(uint32& refCount) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpEnum(uint32 index,
                  valuetype DVPCameraType.dvpCameraInfo& refCameraInfo) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpOpenByName(string friendlyName,
                        valuetype DVPCameraType.dvpOpenMode 'type',
                        uint32& refHandle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpOpenByUserId(string UserId,
                          valuetype DVPCameraType.dvpOpenMode 'type',
                          uint32& refHandle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpOpen(uint32 index,
                  valuetype DVPCameraType.dvpOpenMode mode,
                  uint32& refHandlee) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpIsValid(uint32 handle,
                     bool& reIsValid) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpIsOnline(uint32 handle,
                      bool& reIsOnline) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpStart(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpStop(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpIsHold(uint32 handle,
                    bool& IsHold) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFrame(uint32 handle,
                      valuetype DVPCameraType.dvpFrame& refFrame,
                      native int& pBuffer,
                      uint32 timeout) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFrameBuffer(uint32 handle,
                            valuetype DVPCameraType.dvpFrameBuffer& refRaw,
                            valuetype DVPCameraType.dvpFrameBuffer& refOut,
                            uint32 timeout) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpProcessImage(uint32 handle,
                          valuetype DVPCameraType.dvpFrame& refSourceFrame,
                          native int pSourceBuffer,
                          valuetype DVPCameraType.dvpFrame& pTargetFrame,
                          native int pTargetBuffer,
                          uint32 targetBufferSize,
                          valuetype DVPCameraType.dvpStreamFormat targetFormat) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDebugReport(uint32 handle,
                         valuetype DVPCameraType.dvpReportPart part,
                         valuetype DVPCameraType.dvpReportLevel level,
                         bool bForce,
                         string text,
                         uint32 param) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpClose(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpRegisterStreamCallback(uint32 handle,
                                    class DVPCameraType.DVPCamera/dvpStreamCallback proc,
                                    valuetype DVPCameraType.dvpStreamEvent _event,
                                    native int pContex) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpUnregisterStreamCallback(uint32 handle,
                                      class DVPCameraType.DVPCamera/dvpStreamCallback proc,
                                      valuetype DVPCameraType.dvpStreamEvent _event,
                                      native int pContex) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpRegisterEventCallback(uint32 handle,
                                   class DVPCameraType.DVPCamera/dvpEventCallback proc,
                                   valuetype DVPCameraType.dvpEvent _event,
                                   native int pContext) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpUnregisterEventCallback(uint32 handle,
                                     class DVPCameraType.DVPCamera/dvpEventCallback proc,
                                     valuetype DVPCameraType.dvpEvent _event,
                                     native int pContext) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpLoadDefault(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpLoadConfig(uint32 handle,
                        string path) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSaveConfig(uint32 handle,
                        string path) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSaveUserSet(uint32 handle,
                         valuetype DVPCameraType.dvpUserSet UserSet) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpLoadUserSet(uint32 handle,
                         valuetype DVPCameraType.dvpUserSet UserSet) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSavePicture(valuetype DVPCameraType.dvpFrame& refFrame,
                         native int pBuffer,
                         string file,
                         int32 quality) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpCaptureFile(uint32 handle,
                         uint32 ResoulutionModeSel,
                         valuetype DVPCameraType.dvpRegion& roi,
                         uint32 timeout,
                         string FilePath,
                         uint32 quality) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpCaptureFile(uint32 handle,
                         uint32 ResoulutionModeSel,
                         native int roi,
                         uint32 timeout,
                         string FilePath,
                         uint32 quality) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(valuetype DVPCameraType.dvpFrame& refFrame,
                         native int pBuffer,
                         native int hWnd,
                         valuetype DVPCameraType.RECT& psRect,
                         valuetype DVPCameraType.RECT& pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(valuetype DVPCameraType.dvpFrame& refFrame,
                         native int pBuffer,
                         native int hWnd,
                         native int psRect,
                         native int pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(valuetype DVPCameraType.dvpFrame& refFrame,
                         native int pBuffer,
                         native int hWnd,
                         valuetype DVPCameraType.RECT& psRect,
                         native int pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(valuetype DVPCameraType.dvpFrame& refFrame,
                         native int pBuffer,
                         native int hWnd,
                         native int psRect,
                         valuetype DVPCameraType.RECT& pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(native int pFrame,
                         native int pBuffer,
                         native int hWnd,
                         valuetype DVPCameraType.RECT& psRect,
                         valuetype DVPCameraType.RECT& pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(native int pFrame,
                         native int pBuffer,
                         native int hWnd,
                         native int psRect,
                         native int pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(native int pFrame,
                         native int pBuffer,
                         native int hWnd,
                         valuetype DVPCameraType.RECT& psRect,
                         native int pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpDrawPicture(native int pFrame,
                         native int pBuffer,
                         native int hWnd,
                         native int psRect,
                         valuetype DVPCameraType.RECT& pdRect) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpStartVideoRecord(string file,
                              uint32 width,
                              uint32 height,
                              int32 quality,
                              uint32& refHandle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpIsVideoRecorderValid(uint32 handle,
                                  bool& refValid) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpVideoRecordWrite(uint32 handle,
                              valuetype DVPCameraType.dvpFrame& refFrame,
                              native int pBuffer) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpStopVideoRecord(uint32 handle) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpShowPropertyModalDialog(uint32 handle,
                                     native int hParent) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpReadUserData(uint32 handle,
                          uint32 addr,
                          native int pBuffer,
                          uint32 size) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpWriteUserData(uint32 handle,
                           uint32 addr,
                           native int pBuffer,
                           uint32 size) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetUserId(uint32 handle,
                       string UserId,
                       uint32& refLength) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGet(uint32 handle,
                 uint32 command,
                 native int pParam,
                 uint32& refSize) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSet(uint32 handle,
                 uint32 command,
                 native int pParam,
                 uint32& refSize) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpConfig(uint32 command,
                    uint32 param,
                    native int pData) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpConfigEx(uint32 index,
                      uint32 command,
                      uint32 param,
                      native int pData) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetConfigString(uint32 handle,
                             string key,
                             native int& pStr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetConfigString(uint32 handle,
                             string key,
                             native int pStr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSelectionDescr(uint32 handle,
                               string key,
                               valuetype DVPCameraType.dvpSelectionDescr& refSelectionDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetSelectionDetail(uint32 handle,
                                string key,
                                int32 iIndex,
                                valuetype DVPCameraType.dvpSelection& refSelection) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpWriteGenICamReg(uint32 handle,
                             uint32 addr,
                             uint32 data) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpReadGenICamReg(uint32 handle,
                            uint32 addr,
                            uint32& data) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpWriteGenICamRegFloat(uint32 handle,
                                  uint32 addr,
                                  float32 data) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpReadGenICamRegFloat(uint32 handle,
                                 uint32 addr,
                                 float32& data) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetIntValue(uint32 handle,
                         string key,
                         int32& pCurIntValue,
                         valuetype DVPCameraType.dvpIntDescr& pstIntDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetIntValue(uint32 handle,
                         string key,
                         int32 nValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetUint64Value(uint32 handle,
                            string key,
                            uint32& pCurUint64Value,
                            valuetype DVPCameraType.dvpUint64Descr& pstUint64Descr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetUint64Value(uint32 handle,
                            string key,
                            uint32 nValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetEnumValue(uint32 handle,
                          string key,
                          uint32& pCurEnumValue,
                          uint32[] nszSupportValue,
                          uint32& pnSupportNum) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetEnumNameValue(uint32 handle,
                              string key,
                              int32 uIndx,
                              valuetype DVPCameraType.dvpEnumDescr& pEnumDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetEnumValue(uint32 handle,
                          string key,
                          int32 nValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetEnumValueByString(uint32 handle,
                                  string key,
                                  string strValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetFloatValue(uint32 handle,
                           string key,
                           float32& pCurFloatValue,
                           valuetype DVPCameraType.dvpFloatDescr& pstFloatDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetFloatValue(uint32 handle,
                           string key,
                           float32 fValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetDoubleValue(uint32 handle,
                            string key,
                            float64& pCurDoubleValue,
                            valuetype DVPCameraType.dvpDoubleDescr& pstDoubleDescr) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetDoubleValue(uint32 handle,
                            string key,
                            float64 dValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetBoolValue(uint32 handle,
                          string key,
                          bool& pbValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetBoolValue(uint32 handle,
                          string key,
                          bool bValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpGetStringValue(uint32 handle,
                            string key,
                            class [mscorlib]System.Text.StringBuilder pstStringValue,
                            int32 i32StrValueSize) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetStringValue(uint32 handle,
                            string key,
                            string strValue) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("DVPCamera.dll" cdecl) 
          valuetype DVPCameraType.dvpStatus 
          dvpSetCommandValue(uint32 handle,
                             string key) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("kernel32.dll" lasterr winapi) 
          int32  WriteProfileString(string lpszSection,
                                    string lpszKeyName,
                                    string lpszString) cil managed preservesig
  {
  }
  .method public hidebysig static int32  dvpWriteProfileString(string lpszSection,
                                                               string lpszKeyName,
                                                               string lpszString) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       int32 DVPCameraType.DVPCamera::WriteProfileString(string,
                                                                           string,
                                                                           string)
    IL_0008:  ret
  } // end of method DVPCamera::dvpWriteProfileString

  .method public hidebysig static pinvokeimpl("kernel32" winapi) 
          int64  GetProfileString(string lpApplicationName,
                                  string lpKeyName,
                                  string lpDefault,
                                  class [mscorlib]System.Text.StringBuilder lpReturnedString,
                                  int32 nSize) cil managed preservesig
  {
  }
  .method public hidebysig static string 
          dvpGetProfileString(string lpApplicationName,
                              string lpKeyName,
                              string lpDefault) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  5
    .locals init ([0] string str,
             [1] class [mscorlib]System.Text.StringBuilder ReturnedString)
    IL_0000:  ldstr      ""
    IL_0005:  stloc.0
    IL_0006:  ldc.i4     0x100
    IL_000b:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor(int32)
    IL_0010:  stloc.1
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  ldarg.2
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4     0x100
    IL_001a:  call       int64 DVPCameraType.DVPCamera::GetProfileString(string,
                                                                         string,
                                                                         string,
                                                                         class [mscorlib]System.Text.StringBuilder,
                                                                         int32)
    IL_001f:  ldc.i4.0
    IL_0020:  conv.i8
    IL_0021:  ble.s      IL_002a

    IL_0023:  ldloc.1
    IL_0024:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ret
  } // end of method DVPCamera::dvpGetProfileString

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method DVPCamera::.ctor

} // end of class DVPCameraType.DVPCamera


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 DVPCameraCS.res
