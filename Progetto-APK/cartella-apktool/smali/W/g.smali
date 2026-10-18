.class public final LW/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final C:[B

.field public static final D:[B

.field public static final E:[Ljava/lang/String;

.field public static final F:[I

.field public static final G:[B

.field public static final H:LW/d;

.field public static final I:[[LW/d;

.field public static final J:[LW/d;

.field public static final K:[Ljava/util/HashMap;

.field public static final L:[Ljava/util/HashMap;

.field public static final M:Ljava/util/Set;

.field public static final N:Ljava/util/HashMap;

.field public static final O:Ljava/nio/charset/Charset;

.field public static final P:[B

.field public static final Q:[B

.field public static final m:Z

.field public static final n:Ljava/util/List;

.field public static final o:Ljava/util/List;

.field public static final p:[I

.field public static final q:[I

.field public static final r:[B

.field public static final s:[B

.field public static final t:[B

.field public static final u:[B

.field public static final v:[B

.field public static final w:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public final a:Ljava/io/FileDescriptor;

.field public final b:Landroid/content/res/AssetManager$AssetInputStream;

.field public c:I

.field public final d:[Ljava/util/HashMap;

.field public final e:Ljava/util/HashSet;

.field public f:Ljava/nio/ByteOrder;

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:LW/c;


# direct methods
.method static constructor <clinit>()V
    .locals 121

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    const-string v2, "ExifInterface"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, LW/g;->m:Z

    const/4 v2, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    aput-object v5, v9, v2

    const/4 v5, 0x2

    aput-object v1, v9, v5

    aput-object v7, v9, v0

    .line 6
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, LW/g;->n:Ljava/util/List;

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    .line 8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v11, v8, [Ljava/lang/Integer;

    aput-object v9, v11, v10

    aput-object v12, v11, v2

    aput-object v13, v11, v5

    aput-object v15, v11, v0

    .line 9
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    sput-object v11, LW/g;->o:Ljava/util/List;

    .line 10
    filled-new-array {v6, v6, v6}, [I

    move-result-object v11

    sput-object v11, LW/g;->p:[I

    .line 11
    filled-new-array {v6}, [I

    move-result-object v11

    sput-object v11, LW/g;->q:[I

    .line 12
    new-array v11, v0, [B

    fill-array-data v11, :array_0

    sput-object v11, LW/g;->r:[B

    .line 13
    new-array v11, v8, [B

    fill-array-data v11, :array_1

    sput-object v11, LW/g;->s:[B

    .line 14
    new-array v11, v8, [B

    fill-array-data v11, :array_2

    sput-object v11, LW/g;->t:[B

    .line 15
    new-array v11, v8, [B

    fill-array-data v11, :array_3

    sput-object v11, LW/g;->u:[B

    .line 16
    new-array v11, v8, [B

    fill-array-data v11, :array_4

    sput-object v11, LW/g;->v:[B

    .line 17
    new-array v11, v8, [B

    fill-array-data v11, :array_5

    sput-object v11, LW/g;->w:[B

    .line 18
    new-array v11, v4, [B

    fill-array-data v11, :array_6

    sput-object v11, LW/g;->x:[B

    const/16 v13, 0xa

    .line 19
    new-array v11, v13, [B

    fill-array-data v11, :array_7

    sput-object v11, LW/g;->y:[B

    .line 20
    new-array v11, v6, [B

    fill-array-data v11, :array_8

    sput-object v11, LW/g;->z:[B

    .line 21
    const-string v11, "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, LW/g;->A:[B

    .line 22
    new-array v11, v8, [B

    fill-array-data v11, :array_9

    sput-object v11, LW/g;->B:[B

    .line 23
    new-array v11, v8, [B

    fill-array-data v11, :array_a

    sput-object v11, LW/g;->C:[B

    .line 24
    new-array v11, v8, [B

    fill-array-data v11, :array_b

    sput-object v11, LW/g;->D:[B

    .line 25
    const-string v11, "VP8X"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 26
    const-string v11, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 27
    const-string v11, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    const-string v11, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    const-string v11, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    const-string v27, "SRATIONAL"

    const-string v28, "SINGLE"

    const-string v17, ""

    const-string v18, "BYTE"

    const-string v19, "STRING"

    const-string v20, "USHORT"

    const-string v21, "ULONG"

    const-string v22, "URATIONAL"

    const-string v23, "SBYTE"

    const-string v24, "UNDEFINED"

    const-string v25, "SSHORT"

    const-string v26, "SLONG"

    const-string v29, "DOUBLE"

    const-string v30, "IFD"

    filled-new-array/range {v17 .. v30}, [Ljava/lang/String;

    move-result-object v11

    sput-object v11, LW/g;->E:[Ljava/lang/String;

    const/16 v11, 0xe

    .line 31
    new-array v13, v11, [I

    fill-array-data v13, :array_c

    sput-object v13, LW/g;->F:[I

    .line 32
    new-array v13, v6, [B

    fill-array-data v13, :array_d

    sput-object v13, LW/g;->G:[B

    .line 33
    new-instance v13, LW/d;

    const-string v11, "NewSubfileType"

    const/16 v6, 0xfe

    invoke-direct {v13, v11, v6, v8}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, LW/d;

    const-string v10, "SubfileType"

    const/16 v2, 0xff

    invoke-direct {v6, v10, v2, v8}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v4, "ImageWidth"

    const/16 v14, 0x100

    invoke-direct {v2, v14, v4, v0, v8}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v14, "ImageLength"

    const/16 v5, 0x101

    invoke-direct {v4, v5, v14, v0, v8}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v5, "BitsPerSample"

    const/16 v8, 0x102

    invoke-direct {v14, v5, v8, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, LW/d;

    move-object/from16 v30, v7

    const-string v7, "Compression"

    move-object/from16 v31, v12

    const/16 v12, 0x103

    invoke-direct {v8, v7, v12, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    move-object/from16 v33, v1

    const-string v1, "PhotometricInterpretation"

    move-object/from16 v34, v9

    const/16 v9, 0x106

    invoke-direct {v12, v1, v9, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, LW/d;

    const-string v0, "ImageDescription"

    move-object/from16 v36, v3

    const/16 v3, 0x10e

    move-object/from16 v37, v15

    const/4 v15, 0x2

    invoke-direct {v9, v0, v3, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, LW/d;

    move-object/from16 v39, v0

    const-string v0, "Make"

    move-object/from16 v40, v1

    const/16 v1, 0x10f

    invoke-direct {v3, v0, v1, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, LW/d;

    move-object/from16 v42, v0

    const-string v0, "Model"

    move-object/from16 v43, v7

    const/16 v7, 0x110

    invoke-direct {v1, v0, v7, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const/16 v7, 0x111

    const-string v15, "StripOffsets"

    move-object/from16 v44, v5

    move-object/from16 v45, v10

    const/4 v5, 0x3

    const/4 v10, 0x4

    invoke-direct {v0, v7, v15, v5, v10}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v7, "Orientation"

    move-object/from16 v46, v15

    const/16 v15, 0x112

    invoke-direct {v10, v7, v15, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v15, "SamplesPerPixel"

    move-object/from16 v47, v11

    const/16 v11, 0x115

    invoke-direct {v7, v15, v11, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v15, "RowsPerStrip"

    move-object/from16 v48, v7

    const/16 v7, 0x116

    move-object/from16 v49, v10

    const/4 v10, 0x4

    invoke-direct {v11, v7, v15, v5, v10}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v15, "StripByteCounts"

    move-object/from16 v50, v11

    const/16 v11, 0x117

    invoke-direct {v7, v11, v15, v5, v10}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v10, "XResolution"

    const/16 v11, 0x11a

    const/4 v15, 0x5

    invoke-direct {v5, v10, v11, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v11, "YResolution"

    move-object/from16 v51, v5

    const/16 v5, 0x11b

    invoke-direct {v10, v11, v5, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v11, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v52, v10

    const/4 v10, 0x3

    invoke-direct {v5, v11, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v15, "ResolutionUnit"

    move-object/from16 v53, v5

    const/16 v5, 0x128

    invoke-direct {v11, v15, v5, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v15, "TransferFunction"

    move-object/from16 v54, v11

    const/16 v11, 0x12d

    invoke-direct {v5, v15, v11, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v11, "Software"

    const/16 v15, 0x131

    move-object/from16 v55, v5

    const/4 v5, 0x2

    invoke-direct {v10, v11, v15, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v15, "DateTime"

    move-object/from16 v56, v10

    const/16 v10, 0x132

    invoke-direct {v11, v15, v10, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "Artist"

    move-object/from16 v57, v11

    const/16 v11, 0x13b

    invoke-direct {v10, v15, v11, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v11, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v58, v10

    const/4 v10, 0x5

    invoke-direct {v5, v11, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v59, v5

    const/16 v5, 0x13f

    invoke-direct {v11, v15, v5, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v10, "SubIFDPointer"

    const/16 v15, 0x14a

    move-object/from16 v60, v11

    const/4 v11, 0x4

    invoke-direct {v5, v10, v15, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, LW/d;

    move-object/from16 v61, v10

    const-string v10, "JPEGInterchangeFormat"

    move-object/from16 v62, v5

    const/16 v5, 0x201

    invoke-direct {v15, v10, v5, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v10, "JPEGInterchangeFormatLength"

    move-object/from16 v63, v15

    const/16 v15, 0x202

    invoke-direct {v5, v10, v15, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v11, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v64, v5

    const/4 v5, 0x5

    invoke-direct {v10, v11, v15, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v11, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v65, v10

    const/4 v10, 0x3

    invoke-direct {v5, v11, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v66, v5

    const/16 v5, 0x213

    invoke-direct {v11, v15, v5, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v10, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v67, v11

    const/4 v11, 0x5

    invoke-direct {v5, v10, v15, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v11, "Copyright"

    const v15, 0x8298

    move-object/from16 v68, v5

    const/4 v5, 0x2

    invoke-direct {v10, v11, v15, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v11, "ExifIFDPointer"

    const v15, 0x8769

    move-object/from16 v69, v10

    const/4 v10, 0x4

    invoke-direct {v5, v11, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, LW/d;

    move-object/from16 v70, v11

    const-string v11, "GPSInfoIFDPointer"

    move-object/from16 v71, v5

    const v5, 0x8825

    invoke-direct {v15, v11, v5, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    move-object/from16 v72, v11

    const-string v11, "SensorTopBorder"

    invoke-direct {v5, v11, v10, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    move-object/from16 v73, v5

    const-string v5, "SensorLeftBorder"

    move-object/from16 v74, v15

    const/4 v15, 0x5

    invoke-direct {v11, v5, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v15, "SensorBottomBorder"

    move-object/from16 v75, v11

    const/4 v11, 0x6

    invoke-direct {v5, v15, v11, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v15, "SensorRightBorder"

    move-object/from16 v76, v5

    const/4 v5, 0x7

    invoke-direct {v11, v15, v5, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "ISO"

    const/16 v5, 0x17

    move-object/from16 v77, v11

    const/4 v11, 0x3

    invoke-direct {v10, v15, v5, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v15, "JpgFromRaw"

    const/16 v5, 0x2e

    move-object/from16 v78, v10

    const/4 v10, 0x7

    invoke-direct {v11, v15, v5, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v10, "Xmp"

    const/16 v15, 0x2bc

    move-object/from16 v79, v11

    const/4 v11, 0x1

    invoke-direct {v5, v10, v15, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x2a

    new-array v10, v10, [LW/d;

    const/4 v15, 0x0

    aput-object v13, v10, v15

    aput-object v6, v10, v11

    const/4 v6, 0x2

    aput-object v2, v10, v6

    const/4 v2, 0x3

    aput-object v4, v10, v2

    const/4 v2, 0x4

    aput-object v14, v10, v2

    const/4 v2, 0x5

    aput-object v8, v10, v2

    const/4 v2, 0x6

    aput-object v12, v10, v2

    const/4 v2, 0x7

    aput-object v9, v10, v2

    const/16 v2, 0x8

    aput-object v3, v10, v2

    const/16 v2, 0x9

    aput-object v1, v10, v2

    const/16 v1, 0xa

    aput-object v0, v10, v1

    const/16 v0, 0xb

    aput-object v49, v10, v0

    const/16 v1, 0xc

    aput-object v48, v10, v1

    const/16 v3, 0xd

    aput-object v50, v10, v3

    const/16 v3, 0xe

    aput-object v7, v10, v3

    const/16 v3, 0xf

    aput-object v51, v10, v3

    const/16 v4, 0x10

    aput-object v52, v10, v4

    const/16 v6, 0x11

    aput-object v53, v10, v6

    const/16 v7, 0x12

    aput-object v54, v10, v7

    const/16 v8, 0x13

    aput-object v55, v10, v8

    const/16 v8, 0x14

    aput-object v56, v10, v8

    const/16 v8, 0x15

    aput-object v57, v10, v8

    const/16 v8, 0x16

    aput-object v58, v10, v8

    const/16 v8, 0x17

    aput-object v59, v10, v8

    const/16 v8, 0x18

    aput-object v60, v10, v8

    const/16 v8, 0x19

    aput-object v62, v10, v8

    const/16 v8, 0x1a

    aput-object v63, v10, v8

    const/16 v8, 0x1b

    aput-object v64, v10, v8

    const/16 v8, 0x1c

    aput-object v65, v10, v8

    const/16 v8, 0x1d

    aput-object v66, v10, v8

    const/16 v8, 0x1e

    aput-object v67, v10, v8

    const/16 v8, 0x1f

    aput-object v68, v10, v8

    const/16 v8, 0x20

    aput-object v69, v10, v8

    const/16 v8, 0x21

    aput-object v71, v10, v8

    const/16 v8, 0x22

    aput-object v74, v10, v8

    const/16 v8, 0x23

    aput-object v73, v10, v8

    const/16 v8, 0x24

    aput-object v75, v10, v8

    const/16 v8, 0x25

    aput-object v76, v10, v8

    const/16 v8, 0x26

    aput-object v77, v10, v8

    const/16 v8, 0x27

    aput-object v78, v10, v8

    const/16 v8, 0x28

    aput-object v79, v10, v8

    const/16 v8, 0x29

    aput-object v5, v10, v8

    .line 34
    new-instance v5, LW/d;

    const-string v8, "ExposureTime"

    const v9, 0x829a

    const/4 v11, 0x5

    invoke-direct {v5, v8, v9, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, LW/d;

    const-string v9, "FNumber"

    const v12, 0x829d

    invoke-direct {v8, v9, v12, v11}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, LW/d;

    const-string v11, "ExposureProgram"

    const v12, 0x8822

    const/4 v13, 0x3

    invoke-direct {v9, v11, v12, v13}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v12, "SpectralSensitivity"

    const v14, 0x8824

    const/4 v15, 0x2

    invoke-direct {v11, v12, v14, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "PhotographicSensitivity"

    const v15, 0x8827

    invoke-direct {v12, v14, v15, v13}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "OECF"

    const v7, 0x8828

    const/4 v6, 0x7

    invoke-direct {v14, v15, v7, v6}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, LW/d;

    const-string v7, "SensitivityType"

    const v15, 0x8830

    invoke-direct {v6, v7, v15, v13}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v13, "StandardOutputSensitivity"

    const v15, 0x8831

    const/4 v4, 0x4

    invoke-direct {v7, v13, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, LW/d;

    const-string v15, "RecommendedExposureIndex"

    const v3, 0x8832

    invoke-direct {v13, v15, v3, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, LW/d;

    const-string v15, "ISOSpeed"

    const v1, 0x8833

    invoke-direct {v3, v15, v1, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, LW/d;

    const-string v15, "ISOSpeedLatitudeyyy"

    const v0, 0x8834

    invoke-direct {v1, v15, v0, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "ISOSpeedLatitudezzz"

    const v2, 0x8835

    invoke-direct {v0, v15, v2, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v4, "ExifVersion"

    const v15, 0x9000

    move-object/from16 v55, v10

    const/4 v10, 0x2

    invoke-direct {v2, v4, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "DateTimeOriginal"

    move-object/from16 v56, v2

    const v2, 0x9003

    invoke-direct {v4, v15, v2, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v15, "DateTimeDigitized"

    move-object/from16 v57, v4

    const v4, 0x9004

    invoke-direct {v2, v15, v4, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "OffsetTime"

    move-object/from16 v58, v2

    const v2, 0x9010

    invoke-direct {v4, v15, v2, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v15, "OffsetTimeOriginal"

    move-object/from16 v59, v4

    const v4, 0x9011

    invoke-direct {v2, v15, v4, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "OffsetTimeDigitized"

    move-object/from16 v60, v2

    const v2, 0x9012

    invoke-direct {v4, v15, v2, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v10, "ComponentsConfiguration"

    const v15, 0x9101

    move-object/from16 v62, v4

    const/4 v4, 0x7

    invoke-direct {v2, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "CompressedBitsPerPixel"

    const v15, 0x9102

    move-object/from16 v63, v2

    const/4 v2, 0x5

    invoke-direct {v4, v10, v15, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "ShutterSpeedValue"

    const v2, 0x9201

    move-object/from16 v64, v4

    const/16 v4, 0xa

    invoke-direct {v10, v15, v2, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v15, "ApertureValue"

    const v4, 0x9202

    move-object/from16 v65, v10

    const/4 v10, 0x5

    invoke-direct {v2, v15, v4, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "BrightnessValue"

    const v15, 0x9203

    move-object/from16 v66, v2

    const/16 v2, 0xa

    invoke-direct {v4, v10, v15, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "ExposureBiasValue"

    move-object/from16 v67, v4

    const v4, 0x9204

    invoke-direct {v10, v15, v4, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v4, "MaxApertureValue"

    const v15, 0x9205

    move-object/from16 v68, v10

    const/4 v10, 0x5

    invoke-direct {v2, v4, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "SubjectDistance"

    move-object/from16 v69, v2

    const v2, 0x9206

    invoke-direct {v4, v15, v2, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v10, "MeteringMode"

    const v15, 0x9207

    move-object/from16 v71, v4

    const/4 v4, 0x3

    invoke-direct {v2, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "LightSource"

    move-object/from16 v73, v2

    const v2, 0x9208

    invoke-direct {v10, v15, v2, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v15, "Flash"

    move-object/from16 v74, v10

    const v10, 0x9209

    invoke-direct {v2, v15, v10, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "FocalLength"

    const v4, 0x920a

    move-object/from16 v75, v2

    const/4 v2, 0x5

    invoke-direct {v10, v15, v4, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v4, "SubjectArea"

    const v15, 0x9214

    move-object/from16 v76, v10

    const/4 v10, 0x3

    invoke-direct {v2, v4, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "MakerNote"

    const v15, 0x927c

    move-object/from16 v77, v2

    const/4 v2, 0x7

    invoke-direct {v4, v10, v15, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "UserComment"

    move-object/from16 v78, v4

    const v4, 0x9286

    invoke-direct {v10, v15, v4, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v4, "SubSecTime"

    const v15, 0x9290

    move-object/from16 v79, v10

    const/4 v10, 0x2

    invoke-direct {v2, v4, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "SubSecTimeOriginal"

    move-object/from16 v80, v2

    const v2, 0x9291

    invoke-direct {v4, v15, v2, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v15, "SubSecTimeDigitized"

    move-object/from16 v81, v4

    const v4, 0x9292

    invoke-direct {v2, v15, v4, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "FlashpixVersion"

    const v15, 0xa000

    move-object/from16 v82, v2

    const/4 v2, 0x7

    invoke-direct {v4, v10, v15, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v10, "ColorSpace"

    const v15, 0xa001

    move-object/from16 v83, v4

    const/4 v4, 0x3

    invoke-direct {v2, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "PixelXDimension"

    move-object/from16 v84, v2

    const v2, 0xa002

    move-object/from16 v85, v0

    const/4 v0, 0x4

    invoke-direct {v10, v2, v15, v4, v0}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v15, "PixelYDimension"

    move-object/from16 v86, v10

    const v10, 0xa003

    invoke-direct {v2, v10, v15, v4, v0}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "RelatedSoundFile"

    const v15, 0xa004

    const/4 v0, 0x2

    invoke-direct {v4, v10, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v10, "InteroperabilityIFDPointer"

    const v15, 0xa005

    move-object/from16 v87, v4

    const/4 v4, 0x4

    invoke-direct {v0, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "FlashEnergy"

    const v15, 0xa20b

    move-object/from16 v88, v0

    const/4 v0, 0x5

    invoke-direct {v4, v10, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "SpatialFrequencyResponse"

    const v0, 0xa20c

    move-object/from16 v89, v4

    const/4 v4, 0x7

    invoke-direct {v10, v15, v0, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v4, "FocalPlaneXResolution"

    const v15, 0xa20e

    move-object/from16 v90, v10

    const/4 v10, 0x5

    invoke-direct {v0, v4, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "FocalPlaneYResolution"

    move-object/from16 v91, v0

    const v0, 0xa20f

    invoke-direct {v4, v15, v0, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v10, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    move-object/from16 v92, v4

    const/4 v4, 0x3

    invoke-direct {v0, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "SubjectLocation"

    move-object/from16 v93, v0

    const v0, 0xa214

    invoke-direct {v10, v15, v0, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "ExposureIndex"

    const v4, 0xa215

    move-object/from16 v94, v10

    const/4 v10, 0x5

    invoke-direct {v0, v15, v4, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "SensingMethod"

    const v15, 0xa217

    move-object/from16 v95, v0

    const/4 v0, 0x3

    invoke-direct {v4, v10, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v10, "FileSource"

    const v15, 0xa300

    move-object/from16 v96, v4

    const/4 v4, 0x7

    invoke-direct {v0, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "SceneType"

    move-object/from16 v97, v0

    const v0, 0xa301

    invoke-direct {v10, v15, v0, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "CFAPattern"

    move-object/from16 v98, v10

    const v10, 0xa302

    invoke-direct {v0, v15, v10, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "CustomRendered"

    const v15, 0xa401

    move-object/from16 v99, v0

    const/4 v0, 0x3

    invoke-direct {v4, v10, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "ExposureMode"

    move-object/from16 v100, v4

    const v4, 0xa402

    invoke-direct {v10, v15, v4, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "WhiteBalance"

    move-object/from16 v101, v10

    const v10, 0xa403

    invoke-direct {v4, v15, v10, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "DigitalZoomRatio"

    const v0, 0xa404

    move-object/from16 v102, v4

    const/4 v4, 0x5

    invoke-direct {v10, v15, v0, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v4, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    move-object/from16 v103, v10

    const/4 v10, 0x3

    invoke-direct {v0, v4, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "SceneCaptureType"

    move-object/from16 v104, v0

    const v0, 0xa406

    invoke-direct {v4, v15, v0, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "GainControl"

    move-object/from16 v105, v4

    const v4, 0xa407

    invoke-direct {v0, v15, v4, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "Contrast"

    move-object/from16 v106, v0

    const v0, 0xa408

    invoke-direct {v4, v15, v0, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "Saturation"

    move-object/from16 v107, v4

    const v4, 0xa409

    invoke-direct {v0, v15, v4, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "Sharpness"

    move-object/from16 v108, v0

    const v0, 0xa40a

    invoke-direct {v4, v15, v0, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "DeviceSettingDescription"

    const v10, 0xa40b

    move-object/from16 v109, v4

    const/4 v4, 0x7

    invoke-direct {v0, v15, v10, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "SubjectDistanceRange"

    const v15, 0xa40c

    move-object/from16 v110, v0

    const/4 v0, 0x3

    invoke-direct {v4, v10, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v10, "ImageUniqueID"

    const v15, 0xa420

    move-object/from16 v111, v4

    const/4 v4, 0x2

    invoke-direct {v0, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "CameraOwnerName"

    move-object/from16 v112, v0

    const v0, 0xa430

    invoke-direct {v10, v15, v0, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "BodySerialNumber"

    move-object/from16 v113, v10

    const v10, 0xa431

    invoke-direct {v0, v15, v10, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "LensSpecification"

    const v4, 0xa432

    move-object/from16 v114, v0

    const/4 v0, 0x5

    invoke-direct {v10, v15, v4, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v4, "LensMake"

    const v15, 0xa433

    move-object/from16 v115, v10

    const/4 v10, 0x2

    invoke-direct {v0, v4, v15, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v15, "LensModel"

    move-object/from16 v116, v0

    const v0, 0xa434

    invoke-direct {v4, v15, v0, v10}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v10, "Gamma"

    const v15, 0xa500

    move-object/from16 v117, v4

    const/4 v4, 0x5

    invoke-direct {v0, v10, v15, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v10, "DNGVersion"

    const v15, 0xc612

    move-object/from16 v118, v0

    const/4 v0, 0x1

    invoke-direct {v4, v10, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v15, "DefaultCropSize"

    const v0, 0xc620

    move-object/from16 v120, v2

    move-object/from16 v119, v4

    const/4 v2, 0x4

    const/4 v4, 0x3

    invoke-direct {v10, v0, v15, v4, v2}, LW/d;-><init>(ILjava/lang/String;II)V

    const/16 v0, 0x4a

    new-array v0, v0, [LW/d;

    const/4 v15, 0x0

    aput-object v5, v0, v15

    const/4 v5, 0x1

    aput-object v8, v0, v5

    const/4 v5, 0x2

    aput-object v9, v0, v5

    aput-object v11, v0, v4

    aput-object v12, v0, v2

    const/4 v2, 0x5

    aput-object v14, v0, v2

    const/4 v2, 0x6

    aput-object v6, v0, v2

    const/4 v2, 0x7

    aput-object v7, v0, v2

    const/16 v2, 0x8

    aput-object v13, v0, v2

    const/16 v2, 0x9

    aput-object v3, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    aput-object v85, v0, v1

    const/16 v1, 0xc

    aput-object v56, v0, v1

    const/16 v1, 0xd

    aput-object v57, v0, v1

    const/16 v1, 0xe

    aput-object v58, v0, v1

    const/16 v1, 0xf

    aput-object v59, v0, v1

    const/16 v1, 0x10

    aput-object v60, v0, v1

    const/16 v1, 0x11

    aput-object v62, v0, v1

    const/16 v1, 0x12

    aput-object v63, v0, v1

    const/16 v1, 0x13

    aput-object v64, v0, v1

    const/16 v1, 0x14

    aput-object v65, v0, v1

    const/16 v1, 0x15

    aput-object v66, v0, v1

    const/16 v1, 0x16

    aput-object v67, v0, v1

    const/16 v1, 0x17

    aput-object v68, v0, v1

    const/16 v1, 0x18

    aput-object v69, v0, v1

    const/16 v1, 0x19

    aput-object v71, v0, v1

    const/16 v1, 0x1a

    aput-object v73, v0, v1

    const/16 v1, 0x1b

    aput-object v74, v0, v1

    const/16 v1, 0x1c

    aput-object v75, v0, v1

    const/16 v1, 0x1d

    aput-object v76, v0, v1

    const/16 v1, 0x1e

    aput-object v77, v0, v1

    const/16 v1, 0x1f

    aput-object v78, v0, v1

    const/16 v1, 0x20

    aput-object v79, v0, v1

    const/16 v1, 0x21

    aput-object v80, v0, v1

    const/16 v1, 0x22

    aput-object v81, v0, v1

    const/16 v1, 0x23

    aput-object v82, v0, v1

    const/16 v1, 0x24

    aput-object v83, v0, v1

    const/16 v1, 0x25

    aput-object v84, v0, v1

    const/16 v1, 0x26

    aput-object v86, v0, v1

    const/16 v1, 0x27

    aput-object v120, v0, v1

    const/16 v1, 0x28

    aput-object v87, v0, v1

    const/16 v1, 0x29

    aput-object v88, v0, v1

    const/16 v1, 0x2a

    aput-object v89, v0, v1

    const/16 v1, 0x2b

    aput-object v90, v0, v1

    const/16 v1, 0x2c

    aput-object v91, v0, v1

    const/16 v1, 0x2d

    aput-object v92, v0, v1

    const/16 v1, 0x2e

    aput-object v93, v0, v1

    const/16 v1, 0x2f

    aput-object v94, v0, v1

    const/16 v1, 0x30

    aput-object v95, v0, v1

    const/16 v1, 0x31

    aput-object v96, v0, v1

    const/16 v1, 0x32

    aput-object v97, v0, v1

    const/16 v1, 0x33

    aput-object v98, v0, v1

    const/16 v1, 0x34

    aput-object v99, v0, v1

    const/16 v1, 0x35

    aput-object v100, v0, v1

    const/16 v1, 0x36

    aput-object v101, v0, v1

    const/16 v1, 0x37

    aput-object v102, v0, v1

    const/16 v1, 0x38

    aput-object v103, v0, v1

    const/16 v1, 0x39

    aput-object v104, v0, v1

    const/16 v1, 0x3a

    aput-object v105, v0, v1

    const/16 v1, 0x3b

    aput-object v106, v0, v1

    const/16 v1, 0x3c

    aput-object v107, v0, v1

    const/16 v1, 0x3d

    aput-object v108, v0, v1

    const/16 v1, 0x3e

    aput-object v109, v0, v1

    const/16 v1, 0x3f

    aput-object v110, v0, v1

    const/16 v1, 0x40

    aput-object v111, v0, v1

    const/16 v1, 0x41

    aput-object v112, v0, v1

    const/16 v1, 0x42

    aput-object v113, v0, v1

    const/16 v1, 0x43

    aput-object v114, v0, v1

    const/16 v1, 0x44

    aput-object v115, v0, v1

    const/16 v1, 0x45

    aput-object v116, v0, v1

    const/16 v1, 0x46

    aput-object v117, v0, v1

    const/16 v1, 0x47

    aput-object v118, v0, v1

    const/16 v1, 0x48

    aput-object v119, v0, v1

    const/16 v1, 0x49

    aput-object v10, v0, v1

    .line 35
    new-instance v1, LW/d;

    const-string v2, "GPSVersionID"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v4, "GPSLatitudeRef"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, LW/d;

    const-string v4, "GPSLatitude"

    const/4 v6, 0x5

    const/16 v7, 0xa

    invoke-direct {v3, v5, v4, v6, v7}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v8, "GPSLongitudeRef"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v8, "GPSLongitude"

    const/4 v9, 0x4

    invoke-direct {v5, v9, v8, v6, v7}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v8, "GPSAltitudeRef"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v6, v9}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, LW/d;

    const-string v9, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v6}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, LW/d;

    const-string v10, "GPSTimeStamp"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v6}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, LW/d;

    const-string v10, "GPSSatellites"

    const/16 v11, 0x8

    const/4 v12, 0x2

    invoke-direct {v6, v10, v11, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    const-string v11, "GPSStatus"

    const/16 v13, 0x9

    invoke-direct {v10, v11, v13, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    const-string v13, "GPSMeasureMode"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, LW/d;

    const-string v14, "GPSDOP"

    const/16 v12, 0xb

    const/4 v15, 0x5

    invoke-direct {v13, v14, v12, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "GPSSpeedRef"

    move-object/from16 v16, v0

    const/4 v15, 0x2

    const/16 v0, 0xc

    invoke-direct {v12, v14, v0, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v14, "GPSSpeed"

    move-object/from16 v56, v12

    const/16 v12, 0xd

    const/4 v15, 0x5

    invoke-direct {v0, v14, v12, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "GPSTrackRef"

    move-object/from16 v57, v0

    const/16 v0, 0xe

    const/4 v15, 0x2

    invoke-direct {v12, v14, v0, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v14, "GPSTrack"

    move-object/from16 v58, v12

    const/16 v12, 0xf

    const/4 v15, 0x5

    invoke-direct {v0, v14, v12, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "GPSImgDirectionRef"

    move-object/from16 v59, v0

    const/16 v0, 0x10

    const/4 v15, 0x2

    invoke-direct {v12, v14, v0, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v14, "GPSImgDirection"

    move-object/from16 v60, v12

    const/16 v12, 0x11

    const/4 v15, 0x5

    invoke-direct {v0, v14, v12, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "GPSMapDatum"

    move-object/from16 v62, v0

    const/16 v0, 0x12

    const/4 v15, 0x2

    invoke-direct {v12, v14, v0, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v14, "GPSDestLatitudeRef"

    move-object/from16 v63, v12

    const/16 v12, 0x13

    invoke-direct {v0, v14, v12, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    move-object/from16 v64, v0

    const/4 v0, 0x5

    invoke-direct {v12, v14, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "GPSDestLongitudeRef"

    const/16 v0, 0x15

    move-object/from16 v65, v12

    const/4 v12, 0x2

    invoke-direct {v14, v15, v0, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "GPSDestLongitude"

    const/16 v12, 0x16

    move-object/from16 v66, v14

    const/4 v14, 0x5

    invoke-direct {v0, v15, v12, v14}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v15, "GPSDestBearingRef"

    move-object/from16 v67, v0

    const/4 v0, 0x2

    const/16 v14, 0x17

    invoke-direct {v12, v15, v14, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "GPSDestBearing"

    const/16 v0, 0x18

    move-object/from16 v68, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v0, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "GPSDestDistanceRef"

    const/16 v12, 0x19

    move-object/from16 v69, v14

    const/4 v14, 0x2

    invoke-direct {v0, v15, v12, v14}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "GPSDestDistance"

    move-object/from16 v71, v0

    const/16 v0, 0x1a

    const/4 v15, 0x5

    invoke-direct {v12, v14, v0, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    move-object/from16 v73, v12

    const/4 v12, 0x7

    invoke-direct {v0, v14, v15, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "GPSAreaInformation"

    move-object/from16 v74, v0

    const/16 v0, 0x1c

    invoke-direct {v14, v15, v0, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v12, "GPSDateStamp"

    const/16 v15, 0x1d

    move-object/from16 v75, v14

    const/4 v14, 0x2

    invoke-direct {v0, v12, v15, v14}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    move-object/from16 v76, v0

    const/4 v0, 0x3

    invoke-direct {v12, v14, v15, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "GPSHPositioningError"

    const/16 v0, 0x1f

    move-object/from16 v77, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v0, v12}, LW/d;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x20

    new-array v0, v0, [LW/d;

    const/4 v15, 0x0

    aput-object v1, v0, v15

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    aput-object v7, v0, v12

    const/4 v1, 0x6

    aput-object v8, v0, v1

    const/4 v1, 0x7

    aput-object v9, v0, v1

    const/16 v1, 0x8

    aput-object v6, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v13, v0, v1

    const/16 v1, 0xc

    aput-object v56, v0, v1

    const/16 v1, 0xd

    aput-object v57, v0, v1

    const/16 v1, 0xe

    aput-object v58, v0, v1

    const/16 v1, 0xf

    aput-object v59, v0, v1

    const/16 v1, 0x10

    aput-object v60, v0, v1

    const/16 v1, 0x11

    aput-object v62, v0, v1

    const/16 v1, 0x12

    aput-object v63, v0, v1

    const/16 v1, 0x13

    aput-object v64, v0, v1

    const/16 v1, 0x14

    aput-object v65, v0, v1

    const/16 v1, 0x15

    aput-object v66, v0, v1

    const/16 v1, 0x16

    aput-object v67, v0, v1

    const/16 v1, 0x17

    aput-object v68, v0, v1

    const/16 v1, 0x18

    aput-object v69, v0, v1

    const/16 v1, 0x19

    aput-object v71, v0, v1

    const/16 v1, 0x1a

    aput-object v73, v0, v1

    const/16 v1, 0x1b

    aput-object v74, v0, v1

    const/16 v1, 0x1c

    aput-object v75, v0, v1

    const/16 v1, 0x1d

    aput-object v76, v0, v1

    const/16 v1, 0x1e

    aput-object v77, v0, v1

    const/16 v1, 0x1f

    aput-object v14, v0, v1

    .line 36
    new-instance v1, LW/d;

    const-string v2, "InteroperabilityIndex"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-array v2, v3, [LW/d;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 37
    new-instance v1, LW/d;

    move-object/from16 v3, v47

    const/16 v4, 0xfe

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, LW/d;

    move-object/from16 v4, v45

    const/16 v6, 0xff

    invoke-direct {v3, v4, v6, v5}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v6, "ThumbnailImageWidth"

    const/4 v7, 0x3

    const/16 v8, 0x100

    invoke-direct {v4, v8, v6, v7, v5}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v6, LW/d;

    const-string v8, "ThumbnailImageLength"

    const/16 v9, 0x101

    invoke-direct {v6, v9, v8, v7, v5}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v5, LW/d;

    move-object/from16 v8, v44

    const/16 v9, 0x102

    invoke-direct {v5, v8, v9, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, LW/d;

    move-object/from16 v9, v43

    const/16 v10, 0x103

    invoke-direct {v8, v9, v10, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, LW/d;

    move-object/from16 v10, v40

    const/16 v11, 0x106

    invoke-direct {v9, v10, v11, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, LW/d;

    move-object/from16 v11, v39

    const/16 v12, 0x10e

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, LW/d;

    move-object/from16 v12, v42

    const/16 v14, 0x10f

    invoke-direct {v11, v12, v14, v13}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, LW/d;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v12, v14, v15, v13}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, LW/d;

    move-object/from16 v19, v2

    move-object/from16 v15, v46

    const/4 v2, 0x4

    const/16 v14, 0x111

    invoke-direct {v13, v14, v15, v7, v2}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v14, "ThumbnailOrientation"

    move-object/from16 v22, v0

    const/16 v0, 0x112

    invoke-direct {v2, v14, v0, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v14, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v0, v14, v15, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "RowsPerStrip"

    move-object/from16 v32, v0

    const/16 v0, 0x116

    move-object/from16 v35, v2

    const/4 v2, 0x4

    invoke-direct {v14, v0, v15, v7, v2}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v15, "StripByteCounts"

    move-object/from16 v38, v14

    const/16 v14, 0x117

    invoke-direct {v0, v14, v15, v7, v2}, LW/d;-><init>(ILjava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v7, "XResolution"

    const/16 v14, 0x11a

    const/4 v15, 0x5

    invoke-direct {v2, v7, v14, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v14, "YResolution"

    move-object/from16 v39, v2

    const/16 v2, 0x11b

    invoke-direct {v7, v14, v2, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v14, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v40, v7

    const/4 v7, 0x3

    invoke-direct {v2, v14, v15, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "ResolutionUnit"

    move-object/from16 v41, v2

    const/16 v2, 0x128

    invoke-direct {v14, v15, v2, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v15, "TransferFunction"

    move-object/from16 v42, v14

    const/16 v14, 0x12d

    invoke-direct {v2, v15, v14, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v14, "Software"

    const/16 v15, 0x131

    move-object/from16 v43, v2

    const/4 v2, 0x2

    invoke-direct {v7, v14, v15, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "DateTime"

    move-object/from16 v44, v7

    const/16 v7, 0x132

    invoke-direct {v14, v15, v7, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v15, "Artist"

    move-object/from16 v45, v14

    const/16 v14, 0x13b

    invoke-direct {v7, v15, v14, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v14, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v47, v7

    const/4 v7, 0x5

    invoke-direct {v2, v14, v15, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v56, v2

    const/16 v2, 0x13f

    invoke-direct {v14, v15, v2, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    move-object/from16 v57, v14

    move-object/from16 v7, v61

    const/4 v14, 0x4

    const/16 v15, 0x14a

    invoke-direct {v2, v7, v15, v14}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, LW/d;

    const-string v7, "JPEGInterchangeFormat"

    move-object/from16 v58, v2

    const/16 v2, 0x201

    invoke-direct {v15, v7, v2, v14}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v7, "JPEGInterchangeFormatLength"

    move-object/from16 v59, v15

    const/16 v15, 0x202

    invoke-direct {v2, v7, v15, v14}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v14, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v60, v2

    const/4 v2, 0x5

    invoke-direct {v7, v14, v15, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v14, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v62, v7

    const/4 v7, 0x3

    invoke-direct {v2, v14, v15, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, LW/d;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v63, v2

    const/16 v2, 0x213

    invoke-direct {v14, v15, v2, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v7, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v64, v14

    const/4 v14, 0x5

    invoke-direct {v2, v7, v15, v14}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v14, "Copyright"

    const v15, 0x8298

    move-object/from16 v65, v2

    const/4 v2, 0x2

    invoke-direct {v7, v14, v15, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    move-object/from16 v66, v7

    move-object/from16 v14, v70

    const/4 v7, 0x4

    const v15, 0x8769

    invoke-direct {v2, v14, v15, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, LW/d;

    move-object/from16 v67, v2

    move-object/from16 v14, v72

    const v2, 0x8825

    invoke-direct {v15, v14, v2, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v7, "DNGVersion"

    const v14, 0xc612

    move-object/from16 v68, v15

    const/4 v15, 0x1

    invoke-direct {v2, v7, v14, v15}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, LW/d;

    const-string v14, "DefaultCropSize"

    const v15, 0xc620

    move-object/from16 v71, v0

    move-object/from16 v69, v2

    const/4 v0, 0x4

    const/4 v2, 0x3

    invoke-direct {v7, v15, v14, v2, v0}, LW/d;-><init>(ILjava/lang/String;II)V

    const/16 v14, 0x25

    new-array v14, v14, [LW/d;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v1, 0x1

    aput-object v3, v14, v1

    const/4 v1, 0x2

    aput-object v4, v14, v1

    aput-object v6, v14, v2

    aput-object v5, v14, v0

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v9, v14, v0

    const/4 v0, 0x7

    aput-object v10, v14, v0

    const/16 v0, 0x8

    aput-object v11, v14, v0

    const/16 v0, 0x9

    aput-object v12, v14, v0

    const/16 v0, 0xa

    aput-object v13, v14, v0

    const/16 v0, 0xb

    aput-object v35, v14, v0

    const/16 v0, 0xc

    aput-object v32, v14, v0

    const/16 v0, 0xd

    aput-object v38, v14, v0

    const/16 v0, 0xe

    aput-object v71, v14, v0

    const/16 v0, 0xf

    aput-object v39, v14, v0

    const/16 v0, 0x10

    aput-object v40, v14, v0

    const/16 v0, 0x11

    aput-object v41, v14, v0

    const/16 v0, 0x12

    aput-object v42, v14, v0

    const/16 v0, 0x13

    aput-object v43, v14, v0

    const/16 v0, 0x14

    aput-object v44, v14, v0

    const/16 v0, 0x15

    aput-object v45, v14, v0

    const/16 v0, 0x16

    aput-object v47, v14, v0

    const/16 v0, 0x17

    aput-object v56, v14, v0

    const/16 v0, 0x18

    aput-object v57, v14, v0

    const/16 v0, 0x19

    aput-object v58, v14, v0

    const/16 v0, 0x1a

    aput-object v59, v14, v0

    const/16 v0, 0x1b

    aput-object v60, v14, v0

    const/16 v0, 0x1c

    aput-object v62, v14, v0

    const/16 v0, 0x1d

    aput-object v63, v14, v0

    const/16 v0, 0x1e

    aput-object v64, v14, v0

    const/16 v0, 0x1f

    aput-object v65, v14, v0

    const/16 v0, 0x20

    aput-object v66, v14, v0

    const/16 v0, 0x21

    aput-object v67, v14, v0

    const/16 v0, 0x22

    aput-object v68, v14, v0

    const/16 v0, 0x23

    aput-object v69, v14, v0

    const/16 v0, 0x24

    aput-object v7, v14, v0

    .line 38
    new-instance v0, LW/d;

    move-object/from16 v3, v46

    const/4 v1, 0x3

    const/16 v2, 0x111

    invoke-direct {v0, v3, v2, v1}, LW/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, LW/g;->H:LW/d;

    .line 39
    new-instance v0, LW/d;

    const-string v1, "ThumbnailImage"

    const/4 v2, 0x7

    const/16 v3, 0x100

    invoke-direct {v0, v1, v3, v2}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, LW/d;

    const-string v2, "CameraSettingsIFDPointer"

    const/16 v3, 0x2020

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v5, 0x2040

    invoke-direct {v2, v3, v5, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    new-array v5, v3, [LW/d;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    .line 40
    new-instance v2, LW/d;

    const-string v6, "PreviewImageStart"

    const/16 v7, 0x101

    invoke-direct {v2, v6, v7, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, LW/d;

    const-string v7, "PreviewImageLength"

    const/16 v8, 0x102

    invoke-direct {v6, v7, v8, v4}, LW/d;-><init>(Ljava/lang/String;II)V

    new-array v4, v1, [LW/d;

    aput-object v2, v4, v3

    aput-object v6, v4, v0

    .line 41
    new-instance v1, LW/d;

    const-string v2, "AspectFrame"

    const/16 v6, 0x1113

    const/4 v7, 0x3

    invoke-direct {v1, v2, v6, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-array v2, v0, [LW/d;

    aput-object v1, v2, v3

    .line 42
    new-instance v1, LW/d;

    const-string v6, "ColorSpace"

    const/16 v8, 0x37

    invoke-direct {v1, v6, v8, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-array v6, v0, [LW/d;

    aput-object v1, v6, v3

    const/16 v1, 0xa

    .line 43
    new-array v8, v1, [[LW/d;

    aput-object v55, v8, v3

    aput-object v16, v8, v0

    const/4 v0, 0x2

    aput-object v22, v8, v0

    aput-object v19, v8, v7

    const/4 v0, 0x4

    aput-object v14, v8, v0

    const/4 v1, 0x5

    aput-object v55, v8, v1

    const/4 v1, 0x6

    aput-object v5, v8, v1

    const/4 v1, 0x7

    aput-object v4, v8, v1

    const/16 v1, 0x8

    aput-object v2, v8, v1

    const/16 v1, 0x9

    aput-object v6, v8, v1

    sput-object v8, LW/g;->I:[[LW/d;

    .line 44
    new-instance v1, LW/d;

    move-object/from16 v2, v61

    const/16 v3, 0x14a

    invoke-direct {v1, v2, v3, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, LW/d;

    move-object/from16 v3, v70

    const v4, 0x8769

    invoke-direct {v2, v3, v4, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, LW/d;

    move-object/from16 v4, v72

    const v5, 0x8825

    invoke-direct {v3, v4, v5, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, LW/d;

    const-string v5, "InteroperabilityIFDPointer"

    const v6, 0xa005

    invoke-direct {v4, v5, v6, v0}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, LW/d;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v6, 0x2020

    const/4 v7, 0x1

    invoke-direct {v0, v5, v6, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, LW/d;

    const-string v6, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    invoke-direct {v5, v6, v8, v7}, LW/d;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x6

    new-array v6, v6, [LW/d;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    aput-object v2, v6, v7

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v0, v6, v1

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, LW/g;->J:[LW/d;

    const/16 v0, 0xa

    .line 45
    new-array v1, v0, [Ljava/util/HashMap;

    sput-object v1, LW/g;->K:[Ljava/util/HashMap;

    .line 46
    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, LW/g;->L:[Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v3, "ExposureTime"

    const-string v4, "SubjectDistance"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LW/g;->M:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LW/g;->N:Ljava/util/HashMap;

    .line 51
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, LW/g;->O:Ljava/nio/charset/Charset;

    .line 52
    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, LW/g;->P:[B

    .line 53
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, LW/g;->Q:[B

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 56
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 58
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v15, 0x0

    .line 59
    :goto_0
    sget-object v0, LW/g;->I:[[LW/d;

    array-length v1, v0

    if-ge v15, v1, :cond_1

    .line 60
    sget-object v1, LW/g;->K:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    .line 61
    sget-object v1, LW/g;->L:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    .line 62
    aget-object v0, v0, v15

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    sget-object v4, LW/g;->K:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget v5, v3, LW/d;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v4, LW/g;->L:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget-object v5, v3, LW/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    add-int/2addr v15, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 65
    sget-object v0, LW/g;->N:Ljava/util/HashMap;

    sget-object v1, LW/g;->J:[LW/d;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, LW/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v37

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    aget-object v2, v1, v3

    iget v2, v2, LW/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v36

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 67
    aget-object v2, v1, v2

    iget v2, v2, LW/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v34

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 68
    aget-object v2, v1, v2

    iget v2, v2, LW/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 69
    aget-object v2, v1, v2

    iget v2, v2, LW/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 70
    aget-object v1, v1, v2

    iget v1, v1, LW/d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_a
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_b
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, LW/g;->I:[[LW/d;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [Ljava/util/HashMap;

    .line 8
    .line 9
    iput-object v1, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, LW/g;->e:Ljava/util/HashSet;

    .line 18
    .line 19
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    .line 21
    iput-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    if-eqz p1, :cond_10

    .line 24
    .line 25
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    .line 30
    sget-boolean v4, LW/g;->m:Z

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move-object v1, p1

    .line 35
    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 36
    .line 37
    iput-object v1, p0, LW/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 38
    .line 39
    iput-object v2, p0, LW/g;->a:Ljava/io/FileDescriptor;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    move-object v1, p1

    .line 47
    check-cast v1, Ljava/io/FileInputStream;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :try_start_0
    sget v6, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 54
    .line 55
    const-wide/16 v7, 0x0

    .line 56
    .line 57
    invoke-static {v5, v7, v8, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, LW/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, LW/g;->a:Ljava/io/FileDescriptor;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    nop

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    const-string v1, "The file descriptor for the given input is not seekable"

    .line 73
    .line 74
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_1
    iput-object v2, p0, LW/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 78
    .line 79
    iput-object v2, p0, LW/g;->a:Ljava/io/FileDescriptor;

    .line 80
    .line 81
    :goto_0
    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    :goto_1
    :try_start_1
    array-length v5, v0

    .line 84
    if-ge v2, v5, :cond_2

    .line 85
    .line 86
    iget-object v5, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 87
    .line 88
    new-instance v6, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    aput-object v6, v5, v2

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :catch_1
    move-exception p1

    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :catch_2
    move-exception p1

    .line 105
    goto/16 :goto_7

    .line 106
    .line 107
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 108
    .line 109
    const/16 v2, 0x1388

    .line 110
    .line 111
    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, LW/g;->f(Ljava/io/BufferedInputStream;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iput p1, p0, LW/g;->c:I

    .line 119
    .line 120
    const/16 v2, 0xe

    .line 121
    .line 122
    const/16 v5, 0xd

    .line 123
    .line 124
    const/16 v6, 0x9

    .line 125
    .line 126
    const/4 v7, 0x4

    .line 127
    if-eq p1, v7, :cond_8

    .line 128
    .line 129
    if-eq p1, v6, :cond_8

    .line 130
    .line 131
    if-eq p1, v5, :cond_8

    .line 132
    .line 133
    if-ne p1, v2, :cond_3

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_3
    new-instance p1, LW/f;

    .line 137
    .line 138
    invoke-direct {p1, v0}, LW/f;-><init>(Ljava/io/InputStream;)V

    .line 139
    .line 140
    .line 141
    iget v0, p0, LW/g;->c:I

    .line 142
    .line 143
    const/16 v1, 0xc

    .line 144
    .line 145
    if-eq v0, v1, :cond_7

    .line 146
    .line 147
    const/16 v1, 0xf

    .line 148
    .line 149
    if-ne v0, v1, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const/4 v1, 0x7

    .line 153
    if-ne v0, v1, :cond_5

    .line 154
    .line 155
    invoke-virtual {p0, p1}, LW/g;->g(LW/f;)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    const/16 v1, 0xa

    .line 160
    .line 161
    if-ne v0, v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {p0, p1}, LW/g;->k(LW/f;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    invoke-virtual {p0, p1}, LW/g;->j(LW/f;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v0}, LW/g;->d(LW/f;I)V

    .line 172
    .line 173
    .line 174
    :goto_3
    iget v0, p0, LW/g;->h:I

    .line 175
    .line 176
    int-to-long v0, v0

    .line 177
    invoke-virtual {p1, v0, v1}, LW/f;->E(J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, LW/g;->u(LW/b;)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    :goto_4
    new-instance p1, LW/b;

    .line 185
    .line 186
    invoke-direct {p1, v0}, LW/b;-><init>(Ljava/io/InputStream;)V

    .line 187
    .line 188
    .line 189
    iget v0, p0, LW/g;->c:I

    .line 190
    .line 191
    if-ne v0, v7, :cond_9

    .line 192
    .line 193
    invoke-virtual {p0, p1, v1, v1}, LW/g;->e(LW/b;II)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_9
    if-ne v0, v5, :cond_a

    .line 198
    .line 199
    invoke-virtual {p0, p1}, LW/g;->h(LW/b;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_a
    if-ne v0, v6, :cond_b

    .line 204
    .line 205
    invoke-virtual {p0, p1}, LW/g;->i(LW/b;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_b
    if-ne v0, v2, :cond_c

    .line 210
    .line 211
    invoke-virtual {p0, p1}, LW/g;->l(LW/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .line 213
    .line 214
    :cond_c
    :goto_5
    invoke-virtual {p0}, LW/g;->a()V

    .line 215
    .line 216
    .line 217
    if-eqz v4, :cond_f

    .line 218
    .line 219
    :goto_6
    invoke-virtual {p0}, LW/g;->p()V

    .line 220
    .line 221
    .line 222
    goto :goto_a

    .line 223
    :goto_7
    if-eqz v4, :cond_e

    .line 224
    .line 225
    :try_start_2
    const-string v0, "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 226
    .line 227
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .line 229
    .line 230
    goto :goto_9

    .line 231
    :goto_8
    invoke-virtual {p0}, LW/g;->a()V

    .line 232
    .line 233
    .line 234
    if-eqz v4, :cond_d

    .line 235
    .line 236
    invoke-virtual {p0}, LW/g;->p()V

    .line 237
    .line 238
    .line 239
    :cond_d
    throw p1

    .line 240
    :cond_e
    :goto_9
    invoke-virtual {p0}, LW/g;->a()V

    .line 241
    .line 242
    .line 243
    if-eqz v4, :cond_f

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_f
    :goto_a
    return-void

    .line 247
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    .line 248
    .line 249
    const-string v0, "inputStream cannot be null"

    .line 250
    .line 251
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1
.end method

.method public static q(LW/b;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, LW/b;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v2, LW/g;->m:Z

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4d4d

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p0, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid byte order: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const-string p0, "readExifSegment: Byte Align II"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LW/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, LW/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v2, v1

    .line 21
    .line 22
    const-string v5, "\u0000"

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v5, LW/g;->O:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v5, LW/c;

    .line 35
    .line 36
    array-length v6, v0

    .line 37
    const/4 v7, 0x2

    .line 38
    invoke-direct {v5, v7, v0, v6}, LW/c;-><init>(I[BI)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, "ImageWidth"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, LW/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    aget-object v3, v2, v1

    .line 55
    .line 56
    iget-object v6, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 57
    .line 58
    invoke-static {v4, v5, v6}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string v0, "ImageLength"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, LW/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    aget-object v3, v2, v1

    .line 74
    .line 75
    iget-object v6, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 76
    .line 77
    invoke-static {v4, v5, v6}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string v0, "Orientation"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, LW/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    aget-object v1, v2, v1

    .line 93
    .line 94
    iget-object v3, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-static {v4, v5, v3}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    const-string v0, "LightSource"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, LW/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    aget-object v1, v2, v1

    .line 113
    .line 114
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 115
    .line 116
    invoke-static {v4, v5, v2}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-virtual {p0, p1}, LW/g;->c(Ljava/lang/String;)LW/c;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const/4 v5, 0x0

    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    return-object v5

    .line 13
    :cond_0
    const-string v6, "GPSTimeStamp"

    .line 14
    .line 15
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_4

    .line 20
    .line 21
    const/4 p1, 0x5

    .line 22
    const-string v6, "ExifInterface"

    .line 23
    .line 24
    iget v7, v4, LW/c;->a:I

    .line 25
    .line 26
    if-eq v7, p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0xa

    .line 29
    .line 30
    if-eq v7, p1, :cond_1

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "GPS Timestamp format is not rational. format="

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-object v5

    .line 50
    :cond_1
    iget-object p1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    invoke-virtual {v4, p1}, LW/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, [LW/e;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    array-length v4, p1

    .line 61
    if-eq v4, v3, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    aget-object v4, p1, v2

    .line 65
    .line 66
    iget-wide v5, v4, LW/e;->a:J

    .line 67
    .line 68
    long-to-float v5, v5

    .line 69
    iget-wide v6, v4, LW/e;->b:J

    .line 70
    .line 71
    long-to-float v4, v6

    .line 72
    div-float/2addr v5, v4

    .line 73
    float-to-int v4, v5

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    aget-object v5, p1, v1

    .line 79
    .line 80
    iget-wide v6, v5, LW/e;->a:J

    .line 81
    .line 82
    long-to-float v6, v6

    .line 83
    iget-wide v7, v5, LW/e;->b:J

    .line 84
    .line 85
    long-to-float v5, v7

    .line 86
    div-float/2addr v6, v5

    .line 87
    float-to-int v5, v6

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    aget-object p1, p1, v0

    .line 93
    .line 94
    iget-wide v6, p1, LW/e;->a:J

    .line 95
    .line 96
    long-to-float v6, v6

    .line 97
    iget-wide v7, p1, LW/e;->b:J

    .line 98
    .line 99
    long-to-float p1, v7

    .line 100
    div-float/2addr v6, p1

    .line 101
    float-to-int p1, v6

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-array v3, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v4, v3, v2

    .line 109
    .line 110
    aput-object v5, v3, v1

    .line 111
    .line 112
    aput-object p1, v3, v0

    .line 113
    .line 114
    const-string p1, "%02d:%02d:%02d"

    .line 115
    .line 116
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v1, "Invalid GPS Timestamp array. array="

    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    return-object v5

    .line 143
    :cond_4
    sget-object v0, LW/g;->M:Ljava/util/Set;

    .line 144
    .line 145
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    :try_start_0
    iget-object p1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 152
    .line 153
    invoke-virtual {v4, p1}, LW/c;->d(Ljava/nio/ByteOrder;)D

    .line 154
    .line 155
    .line 156
    move-result-wide v0

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-object p1

    .line 162
    :catch_0
    return-object v5

    .line 163
    :cond_5
    iget-object p1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 164
    .line 165
    invoke-virtual {v4, p1}, LW/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1
.end method

.method public final c(Ljava/lang/String;)LW/c;
    .locals 3

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean p1, LW/g;->m:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "ExifInterface"

    .line 14
    .line 15
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 21
    .line 22
    :cond_1
    const-string v0, "Xmp"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget v1, p0, LW/g;->c:I

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    if-eq v1, v2, :cond_3

    .line 34
    .line 35
    const/16 v2, 0x9

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0xf

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0xc

    .line 44
    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    const/16 v2, 0xd

    .line 48
    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, LW/g;->l:LW/c;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 58
    :goto_1
    sget-object v2, LW/g;->I:[[LW/d;

    .line 59
    .line 60
    array-length v2, v2

    .line 61
    if-ge v1, v2, :cond_5

    .line 62
    .line 63
    iget-object v2, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 64
    .line 65
    aget-object v2, v2, v1

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, LW/c;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, LW/g;->l:LW/c;

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_6
    const/4 p1, 0x0

    .line 91
    return-object p1
.end method

.method public final d(LW/f;I)V
    .locals 12

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    const-string v1, "Heif meta: "

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    if-lt v2, v3, :cond_f

    .line 10
    .line 11
    const/16 v3, 0xf

    .line 12
    .line 13
    const/16 v4, 0x1f

    .line 14
    .line 15
    if-ne p2, v3, :cond_1

    .line 16
    .line 17
    if-lt v2, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p2, "Reading EXIF from AVIF files is supported from SDK 31 and above"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    .line 29
    .line 30
    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v2, LW/a;

    .line 34
    .line 35
    invoke-direct {v2, p1}, LW/a;-><init>(LW/f;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v2}, Ll/H;->q(Landroid/media/MediaMetadataRetriever;LW/a;)V

    .line 39
    .line 40
    .line 41
    const/16 v2, 0x21

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/16 v3, 0x22

    .line 48
    .line 49
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v5, 0x1a

    .line 54
    .line 55
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/16 v6, 0x11

    .line 60
    .line 61
    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    const/16 v0, 0x1d

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/16 v5, 0x1e

    .line 78
    .line 79
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    const/16 v0, 0x12

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/16 v4, 0x13

    .line 107
    .line 108
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const/16 v4, 0x18

    .line 113
    .line 114
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const/4 v0, 0x0

    .line 120
    move-object v4, v0

    .line 121
    move-object v5, v4

    .line 122
    :goto_1
    iget-object v6, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    :try_start_1
    aget-object v8, v6, v7

    .line 128
    .line 129
    const-string v9, "ImageWidth"

    .line 130
    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    iget-object v11, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 136
    .line 137
    invoke-static {v10, v11}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_4
    if-eqz v5, :cond_5

    .line 145
    .line 146
    aget-object v8, v6, v7

    .line 147
    .line 148
    const-string v9, "ImageLength"

    .line 149
    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    iget-object v11, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 155
    .line 156
    invoke-static {v10, v11}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_5
    const/4 v8, 0x6

    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    const/16 v10, 0x5a

    .line 171
    .line 172
    if-eq v9, v10, :cond_8

    .line 173
    .line 174
    const/16 v10, 0xb4

    .line 175
    .line 176
    if-eq v9, v10, :cond_7

    .line 177
    .line 178
    const/16 v10, 0x10e

    .line 179
    .line 180
    if-eq v9, v10, :cond_6

    .line 181
    .line 182
    const/4 v9, 0x1

    .line 183
    goto :goto_2

    .line 184
    :cond_6
    const/16 v9, 0x8

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    const/4 v9, 0x3

    .line 188
    goto :goto_2

    .line 189
    :cond_8
    const/4 v9, 0x6

    .line 190
    :goto_2
    aget-object v6, v6, v7

    .line 191
    .line 192
    const-string v10, "Orientation"

    .line 193
    .line 194
    iget-object v11, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 195
    .line 196
    invoke-static {v9, v11}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_9
    if-eqz v2, :cond_c

    .line 204
    .line 205
    if-eqz v3, :cond_c

    .line 206
    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-le v3, v8, :cond_b

    .line 216
    .line 217
    int-to-long v9, v2

    .line 218
    invoke-virtual {p1, v9, v10}, LW/f;->E(J)V

    .line 219
    .line 220
    .line 221
    new-array v6, v8, [B

    .line 222
    .line 223
    invoke-virtual {p1, v6}, LW/b;->readFully([B)V

    .line 224
    .line 225
    .line 226
    add-int/2addr v2, v8

    .line 227
    add-int/lit8 v3, v3, -0x6

    .line 228
    .line 229
    sget-object v8, LW/g;->P:[B

    .line 230
    .line 231
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_a

    .line 236
    .line 237
    new-array v3, v3, [B

    .line 238
    .line 239
    invoke-virtual {p1, v3}, LW/b;->readFully([B)V

    .line 240
    .line 241
    .line 242
    iput v2, p0, LW/g;->h:I

    .line 243
    .line 244
    invoke-virtual {p0, v7, v3}, LW/g;->r(I[B)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 249
    .line 250
    const-string v0, "Invalid identifier"

    .line 251
    .line 252
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw p1

    .line 256
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 257
    .line 258
    const-string v0, "Invalid exif length"

    .line 259
    .line 260
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p1

    .line 264
    :cond_c
    :goto_3
    const/16 v2, 0x29

    .line 265
    .line 266
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const/16 v3, 0x2a

    .line 271
    .line 272
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-eqz v2, :cond_d

    .line 277
    .line 278
    if-eqz v3, :cond_d

    .line 279
    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    int-to-long v7, v2

    .line 289
    invoke-virtual {p1, v7, v8}, LW/f;->E(J)V

    .line 290
    .line 291
    .line 292
    new-array v9, v11, [B

    .line 293
    .line 294
    invoke-virtual {p1, v9}, LW/b;->readFully([B)V

    .line 295
    .line 296
    .line 297
    new-instance p1, LW/c;

    .line 298
    .line 299
    const/4 v10, 0x1

    .line 300
    move-object v6, p1

    .line 301
    invoke-direct/range {v6 .. v11}, LW/c;-><init>(J[BII)V

    .line 302
    .line 303
    .line 304
    iput-object p1, p0, LW/g;->l:LW/c;

    .line 305
    .line 306
    :cond_d
    sget-boolean p1, LW/g;->m:Z

    .line 307
    .line 308
    if-eqz p1, :cond_e

    .line 309
    .line 310
    const-string p1, "ExifInterface"

    .line 311
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v0, "x"

    .line 321
    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v0, ", rotation "

    .line 329
    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .line 342
    .line 343
    :cond_e
    :try_start_2
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    .line 345
    .line 346
    :catch_1
    return-void

    .line 347
    :goto_4
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 348
    .line 349
    const-string v1, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 350
    .line 351
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    :goto_5
    :try_start_4
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 356
    .line 357
    .line 358
    :catch_2
    throw p1

    .line 359
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 360
    .line 361
    const-string p2, "Reading EXIF from HEIC files is supported from SDK 28 and above"

    .line 362
    .line 363
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw p1
.end method

.method public final e(LW/b;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v4, LW/g;->m:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iput-object v5, v1, LW/b;->I:Ljava/nio/ByteOrder;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, LW/b;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "Invalid marker: "

    .line 39
    .line 40
    const/4 v7, -0x1

    .line 41
    if-ne v5, v7, :cond_10

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, LW/b;->readByte()B

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const/16 v9, -0x28

    .line 48
    .line 49
    if-ne v8, v9, :cond_f

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    const/4 v6, 0x2

    .line 53
    :goto_0
    invoke-virtual/range {p1 .. p1}, LW/b;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, v7, :cond_e

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, LW/b;->readByte()B

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v10, "Found JPEG segment indicator: "

    .line 68
    .line 69
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    and-int/lit16 v10, v8, 0xff

    .line 73
    .line 74
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_1
    const/16 v9, -0x27

    .line 89
    .line 90
    if-eq v8, v9, :cond_d

    .line 91
    .line 92
    const/16 v9, -0x26

    .line 93
    .line 94
    if-ne v8, v9, :cond_2

    .line 95
    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_2
    invoke-virtual/range {p1 .. p1}, LW/b;->readUnsignedShort()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    add-int/lit8 v10, v9, -0x2

    .line 103
    .line 104
    const/4 v11, 0x4

    .line 105
    add-int/2addr v6, v11

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    new-instance v12, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v13, "JPEG segment: "

    .line 111
    .line 112
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    and-int/lit16 v13, v8, 0xff

    .line 116
    .line 117
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v13, " (length: "

    .line 125
    .line 126
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v13, ")"

    .line 133
    .line 134
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_3
    const-string v12, "Invalid length"

    .line 145
    .line 146
    if-ltz v10, :cond_c

    .line 147
    .line 148
    const/16 v13, -0x1f

    .line 149
    .line 150
    const/4 v14, 0x0

    .line 151
    if-eq v8, v13, :cond_8

    .line 152
    .line 153
    const/4 v13, -0x2

    .line 154
    const/4 v15, 0x1

    .line 155
    iget-object v7, v0, LW/g;->d:[Ljava/util/HashMap;

    .line 156
    .line 157
    if-eq v8, v13, :cond_6

    .line 158
    .line 159
    packed-switch v8, :pswitch_data_0

    .line 160
    .line 161
    .line 162
    packed-switch v8, :pswitch_data_1

    .line 163
    .line 164
    .line 165
    packed-switch v8, :pswitch_data_2

    .line 166
    .line 167
    .line 168
    packed-switch v8, :pswitch_data_3

    .line 169
    .line 170
    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :pswitch_0
    invoke-virtual {v1, v15}, LW/b;->k(I)V

    .line 174
    .line 175
    .line 176
    aget-object v8, v7, v2

    .line 177
    .line 178
    if-eq v2, v11, :cond_4

    .line 179
    .line 180
    const-string v10, "ImageLength"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const-string v10, "ThumbnailImageLength"

    .line 184
    .line 185
    :goto_1
    invoke-virtual/range {p1 .. p1}, LW/b;->readUnsignedShort()I

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    int-to-long v13, v13

    .line 190
    iget-object v15, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 191
    .line 192
    invoke-static {v13, v14, v15}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    invoke-virtual {v8, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    aget-object v7, v7, v2

    .line 200
    .line 201
    if-eq v2, v11, :cond_5

    .line 202
    .line 203
    const-string v8, "ImageWidth"

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    const-string v8, "ThumbnailImageWidth"

    .line 207
    .line 208
    :goto_2
    invoke-virtual/range {p1 .. p1}, LW/b;->readUnsignedShort()I

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    int-to-long v10, v10

    .line 213
    iget-object v13, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 214
    .line 215
    invoke-static {v10, v11, v13}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    add-int/lit8 v10, v9, -0x7

    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_6
    new-array v8, v10, [B

    .line 227
    .line 228
    invoke-virtual {v1, v8}, LW/b;->readFully([B)V

    .line 229
    .line 230
    .line 231
    const-string v9, "UserComment"

    .line 232
    .line 233
    invoke-virtual {v0, v9}, LW/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    if-nez v10, :cond_7

    .line 238
    .line 239
    aget-object v7, v7, v15

    .line 240
    .line 241
    new-instance v10, Ljava/lang/String;

    .line 242
    .line 243
    sget-object v11, LW/g;->O:Ljava/nio/charset/Charset;

    .line 244
    .line 245
    invoke-direct {v10, v8, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 246
    .line 247
    .line 248
    const-string v8, "\u0000"

    .line 249
    .line 250
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    new-instance v10, LW/c;

    .line 259
    .line 260
    array-length v11, v8

    .line 261
    invoke-direct {v10, v5, v8, v11}, LW/c;-><init>(I[BI)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_7
    :goto_3
    const/4 v10, 0x0

    .line 268
    goto :goto_5

    .line 269
    :cond_8
    new-array v7, v10, [B

    .line 270
    .line 271
    invoke-virtual {v1, v7}, LW/b;->readFully([B)V

    .line 272
    .line 273
    .line 274
    add-int v8, v6, v10

    .line 275
    .line 276
    sget-object v9, LW/g;->P:[B

    .line 277
    .line 278
    invoke-static {v7, v9}, Lcom/bumptech/glide/d;->q([B[B)Z

    .line 279
    .line 280
    .line 281
    move-result v11

    .line 282
    if-eqz v11, :cond_9

    .line 283
    .line 284
    array-length v11, v9

    .line 285
    invoke-static {v7, v11, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    add-int v6, p2, v6

    .line 290
    .line 291
    array-length v9, v9

    .line 292
    add-int/2addr v6, v9

    .line 293
    iput v6, v0, LW/g;->h:I

    .line 294
    .line 295
    invoke-virtual {v0, v2, v7}, LW/g;->r(I[B)V

    .line 296
    .line 297
    .line 298
    new-instance v6, LW/b;

    .line 299
    .line 300
    invoke-direct {v6, v7}, LW/b;-><init>([B)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v6}, LW/g;->u(LW/b;)V

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_9
    sget-object v9, LW/g;->Q:[B

    .line 308
    .line 309
    invoke-static {v7, v9}, Lcom/bumptech/glide/d;->q([B[B)Z

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    if-eqz v11, :cond_a

    .line 314
    .line 315
    array-length v11, v9

    .line 316
    add-int/2addr v6, v11

    .line 317
    array-length v9, v9

    .line 318
    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    new-instance v9, LW/c;

    .line 323
    .line 324
    array-length v10, v7

    .line 325
    int-to-long v5, v6

    .line 326
    const/16 v20, 0x1

    .line 327
    .line 328
    move-object/from16 v16, v9

    .line 329
    .line 330
    move-wide/from16 v17, v5

    .line 331
    .line 332
    move-object/from16 v19, v7

    .line 333
    .line 334
    move/from16 v21, v10

    .line 335
    .line 336
    invoke-direct/range {v16 .. v21}, LW/c;-><init>(J[BII)V

    .line 337
    .line 338
    .line 339
    iput-object v9, v0, LW/g;->l:LW/c;

    .line 340
    .line 341
    :cond_a
    :goto_4
    move v6, v8

    .line 342
    goto :goto_3

    .line 343
    :goto_5
    if-ltz v10, :cond_b

    .line 344
    .line 345
    invoke-virtual {v1, v10}, LW/b;->k(I)V

    .line 346
    .line 347
    .line 348
    add-int/2addr v6, v10

    .line 349
    const/4 v5, 0x2

    .line 350
    const/4 v7, -0x1

    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 354
    .line 355
    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v1

    .line 359
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 360
    .line 361
    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v1

    .line 365
    :cond_d
    :goto_6
    iget-object v2, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 366
    .line 367
    iput-object v2, v1, LW/b;->I:Ljava/nio/ByteOrder;

    .line 368
    .line 369
    return-void

    .line 370
    :cond_e
    new-instance v1, Ljava/io/IOException;

    .line 371
    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v3, "Invalid marker:"

    .line 375
    .line 376
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    and-int/lit16 v3, v8, 0xff

    .line 380
    .line 381
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v1

    .line 396
    :cond_f
    new-instance v1, Ljava/io/IOException;

    .line 397
    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    and-int/lit16 v3, v5, 0xff

    .line 404
    .line 405
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v1

    .line 420
    :cond_10
    new-instance v1, Ljava/io/IOException;

    .line 421
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    and-int/lit16 v3, v5, 0xff

    .line 428
    .line 429
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw v1

    .line 444
    nop

    .line 445
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 458
    .line 459
    .line 460
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/io/BufferedInputStream;)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    sget-object v5, LW/g;->r:[B

    .line 21
    .line 22
    array-length v6, v5

    .line 23
    const/4 v7, 0x4

    .line 24
    if-ge v0, v6, :cond_21

    .line 25
    .line 26
    aget-byte v6, v3, v0

    .line 27
    .line 28
    aget-byte v5, v5, v0

    .line 29
    .line 30
    if-eq v6, v5, :cond_20

    .line 31
    .line 32
    const-string v0, "FUJIFILMCCD-RAW"

    .line 33
    .line 34
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_1
    array-length v6, v0

    .line 44
    if-ge v5, v6, :cond_1f

    .line 45
    .line 46
    aget-byte v6, v3, v5

    .line 47
    .line 48
    aget-byte v8, v0, v5

    .line 49
    .line 50
    if-eq v6, v8, :cond_1e

    .line 51
    .line 52
    :try_start_0
    new-instance v8, LW/b;

    .line 53
    .line 54
    invoke-direct {v8, v3}, LW/b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v8}, LW/b;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-long v9, v0

    .line 62
    new-array v0, v7, [B

    .line 63
    .line 64
    invoke-virtual {v8, v0}, LW/b;->readFully([B)V

    .line 65
    .line 66
    .line 67
    sget-object v11, LW/g;->s:[B

    .line 68
    .line 69
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    :catch_0
    :cond_0
    :goto_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 76
    .line 77
    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_2
    const-wide/16 v11, 0x8

    .line 82
    .line 83
    const-wide/16 v13, 0x1

    .line 84
    .line 85
    cmp-long v0, v9, v13

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v8}, LW/b;->readLong()J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    const-wide/16 v15, 0x10

    .line 94
    .line 95
    cmp-long v0, v9, v15

    .line 96
    .line 97
    if-gez v0, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    move-object v6, v8

    .line 102
    goto/16 :goto_13

    .line 103
    .line 104
    :catch_1
    move-exception v0

    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_3
    move-wide v15, v11

    .line 108
    :cond_4
    int-to-long v5, v2

    .line 109
    cmp-long v0, v9, v5

    .line 110
    .line 111
    if-lez v0, :cond_5

    .line 112
    .line 113
    move-wide v9, v5

    .line 114
    :cond_5
    sub-long/2addr v9, v15

    .line 115
    cmp-long v0, v9, v11

    .line 116
    .line 117
    if-gez v0, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    new-array v0, v7, [B

    .line 121
    .line 122
    const-wide/16 v5, 0x0

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v11, 0x0

    .line 126
    const/4 v12, 0x0

    .line 127
    :goto_3
    const-wide/16 v15, 0x4

    .line 128
    .line 129
    div-long v15, v9, v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    cmp-long v17, v5, v15

    .line 132
    .line 133
    if-gez v17, :cond_0

    .line 134
    .line 135
    :try_start_3
    invoke-virtual {v8, v0}, LW/b;->readFully([B)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .line 137
    .line 138
    cmp-long v15, v5, v13

    .line 139
    .line 140
    if-nez v15, :cond_7

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_7
    :try_start_4
    sget-object v15, LW/g;->t:[B

    .line 144
    .line 145
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 146
    .line 147
    .line 148
    move-result v15

    .line 149
    if-eqz v15, :cond_8

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    sget-object v15, LW/g;->u:[B

    .line 154
    .line 155
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 156
    .line 157
    .line 158
    move-result v15

    .line 159
    if-eqz v15, :cond_9

    .line 160
    .line 161
    const/4 v11, 0x1

    .line 162
    goto :goto_4

    .line 163
    :cond_9
    sget-object v15, LW/g;->v:[B

    .line 164
    .line 165
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-nez v15, :cond_a

    .line 170
    .line 171
    sget-object v15, LW/g;->w:[B

    .line 172
    .line 173
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 174
    .line 175
    .line 176
    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    if-eqz v15, :cond_b

    .line 178
    .line 179
    :cond_a
    const/4 v12, 0x1

    .line 180
    :cond_b
    :goto_4
    if-eqz v2, :cond_d

    .line 181
    .line 182
    if-eqz v11, :cond_c

    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 185
    .line 186
    .line 187
    const/16 v0, 0xc

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_c
    if-eqz v12, :cond_d

    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 193
    .line 194
    .line 195
    const/16 v0, 0xf

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_d
    :goto_5
    add-long/2addr v5, v13

    .line 199
    goto :goto_3

    .line 200
    :catchall_1
    move-exception v0

    .line 201
    const/4 v6, 0x0

    .line 202
    goto/16 :goto_13

    .line 203
    .line 204
    :catch_2
    move-exception v0

    .line 205
    const/4 v8, 0x0

    .line 206
    :goto_6
    :try_start_5
    sget-boolean v2, LW/g;->m:Z

    .line 207
    .line 208
    if-eqz v2, :cond_e

    .line 209
    .line 210
    const-string v2, "ExifInterface"

    .line 211
    .line 212
    const-string v5, "Exception parsing HEIF file type box."

    .line 213
    .line 214
    invoke-static {v2, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    .line 216
    .line 217
    :cond_e
    if-eqz v8, :cond_1

    .line 218
    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :goto_7
    if-eqz v0, :cond_f

    .line 222
    .line 223
    return v0

    .line 224
    :cond_f
    :try_start_6
    new-instance v2, LW/b;

    .line 225
    .line 226
    invoke-direct {v2, v3}, LW/b;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 227
    .line 228
    .line 229
    :try_start_7
    invoke-static {v2}, LW/g;->q(LW/b;)Ljava/nio/ByteOrder;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iput-object v0, v1, LW/g;->f:Ljava/nio/ByteOrder;

    .line 234
    .line 235
    iput-object v0, v2, LW/b;->I:Ljava/nio/ByteOrder;

    .line 236
    .line 237
    invoke-virtual {v2}, LW/b;->readShort()S

    .line 238
    .line 239
    .line 240
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 241
    const/16 v5, 0x4f52

    .line 242
    .line 243
    if-eq v0, v5, :cond_11

    .line 244
    .line 245
    const/16 v5, 0x5352

    .line 246
    .line 247
    if-ne v0, v5, :cond_10

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_10
    const/4 v0, 0x0

    .line 251
    goto :goto_9

    .line 252
    :cond_11
    :goto_8
    const/4 v0, 0x1

    .line 253
    :goto_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 254
    .line 255
    .line 256
    if-eqz v0, :cond_13

    .line 257
    .line 258
    const/4 v0, 0x7

    .line 259
    return v0

    .line 260
    :catchall_2
    move-exception v0

    .line 261
    move-object v6, v2

    .line 262
    goto :goto_a

    .line 263
    :catch_3
    nop

    .line 264
    goto :goto_b

    .line 265
    :catchall_3
    move-exception v0

    .line 266
    const/4 v6, 0x0

    .line 267
    goto :goto_a

    .line 268
    :catch_4
    nop

    .line 269
    const/4 v2, 0x0

    .line 270
    goto :goto_b

    .line 271
    :goto_a
    if-eqz v6, :cond_12

    .line 272
    .line 273
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 274
    .line 275
    .line 276
    :cond_12
    throw v0

    .line 277
    :goto_b
    if-eqz v2, :cond_13

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 280
    .line 281
    .line 282
    :cond_13
    :try_start_8
    new-instance v2, LW/b;

    .line 283
    .line 284
    invoke-direct {v2, v3}, LW/b;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 285
    .line 286
    .line 287
    :try_start_9
    invoke-static {v2}, LW/g;->q(LW/b;)Ljava/nio/ByteOrder;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iput-object v0, v1, LW/g;->f:Ljava/nio/ByteOrder;

    .line 292
    .line 293
    iput-object v0, v2, LW/b;->I:Ljava/nio/ByteOrder;

    .line 294
    .line 295
    invoke-virtual {v2}, LW/b;->readShort()S

    .line 296
    .line 297
    .line 298
    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 299
    const/16 v5, 0x55

    .line 300
    .line 301
    if-ne v0, v5, :cond_14

    .line 302
    .line 303
    const/4 v5, 0x1

    .line 304
    goto :goto_c

    .line 305
    :cond_14
    const/4 v5, 0x0

    .line 306
    :goto_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 307
    .line 308
    .line 309
    if-eqz v5, :cond_16

    .line 310
    .line 311
    const/16 v0, 0xa

    .line 312
    .line 313
    return v0

    .line 314
    :catchall_4
    move-exception v0

    .line 315
    move-object v6, v2

    .line 316
    goto :goto_d

    .line 317
    :catch_5
    nop

    .line 318
    move-object v6, v2

    .line 319
    goto :goto_e

    .line 320
    :catchall_5
    move-exception v0

    .line 321
    const/4 v6, 0x0

    .line 322
    goto :goto_d

    .line 323
    :catch_6
    nop

    .line 324
    const/4 v6, 0x0

    .line 325
    goto :goto_e

    .line 326
    :goto_d
    if-eqz v6, :cond_15

    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 329
    .line 330
    .line 331
    :cond_15
    throw v0

    .line 332
    :goto_e
    if-eqz v6, :cond_16

    .line 333
    .line 334
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 335
    .line 336
    .line 337
    :cond_16
    const/4 v0, 0x0

    .line 338
    :goto_f
    sget-object v2, LW/g;->z:[B

    .line 339
    .line 340
    array-length v5, v2

    .line 341
    if-ge v0, v5, :cond_1c

    .line 342
    .line 343
    aget-byte v5, v3, v0

    .line 344
    .line 345
    aget-byte v2, v2, v0

    .line 346
    .line 347
    if-eq v5, v2, :cond_1b

    .line 348
    .line 349
    const/4 v0, 0x0

    .line 350
    :goto_10
    sget-object v2, LW/g;->B:[B

    .line 351
    .line 352
    array-length v5, v2

    .line 353
    if-ge v0, v5, :cond_18

    .line 354
    .line 355
    aget-byte v5, v3, v0

    .line 356
    .line 357
    aget-byte v2, v2, v0

    .line 358
    .line 359
    if-eq v5, v2, :cond_17

    .line 360
    .line 361
    goto :goto_12

    .line 362
    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 363
    .line 364
    goto :goto_10

    .line 365
    :cond_18
    const/4 v0, 0x0

    .line 366
    :goto_11
    sget-object v5, LW/g;->C:[B

    .line 367
    .line 368
    array-length v6, v5

    .line 369
    if-ge v0, v6, :cond_1a

    .line 370
    .line 371
    array-length v6, v2

    .line 372
    add-int/2addr v6, v0

    .line 373
    add-int/2addr v6, v7

    .line 374
    aget-byte v6, v3, v6

    .line 375
    .line 376
    aget-byte v5, v5, v0

    .line 377
    .line 378
    if-eq v6, v5, :cond_19

    .line 379
    .line 380
    :goto_12
    return v4

    .line 381
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 382
    .line 383
    goto :goto_11

    .line 384
    :cond_1a
    const/16 v0, 0xe

    .line 385
    .line 386
    return v0

    .line 387
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 388
    .line 389
    goto :goto_f

    .line 390
    :cond_1c
    const/16 v0, 0xd

    .line 391
    .line 392
    return v0

    .line 393
    :goto_13
    if-eqz v6, :cond_1d

    .line 394
    .line 395
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 396
    .line 397
    .line 398
    :cond_1d
    throw v0

    .line 399
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :cond_1f
    const/16 v0, 0x9

    .line 404
    .line 405
    return v0

    .line 406
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 407
    .line 408
    goto/16 :goto_0

    .line 409
    .line 410
    :cond_21
    return v7
.end method

.method public final g(LW/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, LW/g;->j(LW/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, LW/c;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, LW/f;

    .line 20
    .line 21
    iget-object v1, v1, LW/c;->d:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, LW/f;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    iput-object v1, v2, LW/b;->I:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    sget-object v1, LW/g;->x:[B

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    invoke-virtual {v2, v3}, LW/b;->readFully([B)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, LW/f;->E(J)V

    .line 41
    .line 42
    .line 43
    sget-object v4, LW/g;->y:[B

    .line 44
    .line 45
    array-length v5, v4

    .line 46
    new-array v5, v5, [B

    .line 47
    .line 48
    invoke-virtual {v2, v5}, LW/b;->readFully([B)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-wide/16 v3, 0x8

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, LW/f;->E(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-wide/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, LW/f;->E(J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 75
    invoke-virtual {p0, v2, v1}, LW/g;->s(LW/f;I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    aget-object v2, p1, v1

    .line 80
    .line 81
    const-string v3, "PreviewImageStart"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, LW/c;

    .line 88
    .line 89
    aget-object v1, p1, v1

    .line 90
    .line 91
    const-string v3, "PreviewImageLength"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, LW/c;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    aget-object v4, p1, v3

    .line 105
    .line 106
    const-string v5, "JPEGInterchangeFormat"

    .line 107
    .line 108
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    aget-object v2, p1, v3

    .line 112
    .line 113
    const-string v3, "JPEGInterchangeFormatLength"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    const/16 v1, 0x8

    .line 119
    .line 120
    aget-object v1, p1, v1

    .line 121
    .line 122
    const-string v2, "AspectFrame"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, LW/c;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, LW/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, [I

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    array-length v2, v1

    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v2, v3, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 v2, 0x2

    .line 148
    aget v2, v1, v2

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aget v4, v1, v3

    .line 152
    .line 153
    if-le v2, v4, :cond_6

    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    aget v5, v1, v5

    .line 157
    .line 158
    aget v1, v1, v0

    .line 159
    .line 160
    if-le v5, v1, :cond_6

    .line 161
    .line 162
    sub-int/2addr v2, v4

    .line 163
    add-int/2addr v2, v0

    .line 164
    sub-int/2addr v5, v1

    .line 165
    add-int/2addr v5, v0

    .line 166
    if-ge v2, v5, :cond_4

    .line 167
    .line 168
    add-int/2addr v2, v5

    .line 169
    sub-int v5, v2, v5

    .line 170
    .line 171
    sub-int/2addr v2, v5

    .line 172
    :cond_4
    iget-object v0, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 173
    .line 174
    invoke-static {v2, v0}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v5, v1}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    aget-object v2, p1, v3

    .line 185
    .line 186
    const-string v4, "ImageWidth"

    .line 187
    .line 188
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    aget-object p1, p1, v3

    .line 192
    .line 193
    const-string v0, "ImageLength"

    .line 194
    .line 195
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v0, "Invalid aspect frame values. frame="

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v0, "ExifInterface"

    .line 218
    .line 219
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_6
    :goto_2
    return-void
.end method

.method public final h(LW/b;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    sget-boolean v2, LW/g;->m:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "getPngAttributes starting with: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "ExifInterface"

    .line 24
    .line 25
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    iput-object v2, v0, LW/b;->I:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iget v2, v0, LW/b;->H:I

    .line 33
    .line 34
    sget-object v3, LW/g;->z:[B

    .line 35
    .line 36
    array-length v3, v3

    .line 37
    invoke-virtual {v0, v3}, LW/b;->k(I)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_0
    if-eqz v4, :cond_1

    .line 44
    .line 45
    if-nez v5, :cond_4

    .line 46
    .line 47
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget v8, v0, LW/b;->H:I

    .line 56
    .line 57
    add-int v9, v8, v6

    .line 58
    .line 59
    add-int/lit8 v9, v9, 0x4

    .line 60
    .line 61
    sub-int/2addr v8, v2

    .line 62
    const/16 v10, 0x10

    .line 63
    .line 64
    if-ne v8, v10, :cond_3

    .line 65
    .line 66
    const v10, 0x49484452

    .line 67
    .line 68
    .line 69
    if-ne v7, v10, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 73
    .line 74
    const-string v2, "Encountered invalid PNG file--IHDR chunk should appear as the first chunk"

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_3
    :goto_1
    const v10, 0x49454e44    # 808164.25f

    .line 84
    .line 85
    .line 86
    if-ne v7, v10, :cond_5

    .line 87
    .line 88
    :cond_4
    return-void

    .line 89
    :cond_5
    const v10, 0x65584966

    .line 90
    .line 91
    .line 92
    const/4 v11, 0x1

    .line 93
    if-ne v7, v10, :cond_7

    .line 94
    .line 95
    if-nez v4, :cond_7

    .line 96
    .line 97
    iput v8, v1, LW/g;->h:I

    .line 98
    .line 99
    new-array v4, v6, [B

    .line 100
    .line 101
    invoke-virtual {v0, v4}, LW/b;->readFully([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    new-instance v8, Ljava/util/zip/CRC32;

    .line 109
    .line 110
    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 111
    .line 112
    .line 113
    ushr-int/lit8 v10, v7, 0x18

    .line 114
    .line 115
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 116
    .line 117
    .line 118
    ushr-int/lit8 v10, v7, 0x10

    .line 119
    .line 120
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 121
    .line 122
    .line 123
    ushr-int/lit8 v10, v7, 0x8

    .line 124
    .line 125
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v7}, Ljava/util/zip/CRC32;->update(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    long-to-int v7, v12

    .line 139
    if-ne v7, v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v1, v3, v4}, LW/g;->r(I[B)V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, LW/g;->x()V

    .line 145
    .line 146
    .line 147
    new-instance v6, LW/b;

    .line 148
    .line 149
    invoke-direct {v6, v4}, LW/b;-><init>([B)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6}, LW/g;->u(LW/b;)V

    .line 153
    .line 154
    .line 155
    const/4 v4, 0x1

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v3, ", calculated CRC value: "

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_7
    const v8, 0x69545874

    .line 193
    .line 194
    .line 195
    if-ne v7, v8, :cond_8

    .line 196
    .line 197
    if-nez v5, :cond_8

    .line 198
    .line 199
    sget-object v7, LW/g;->A:[B

    .line 200
    .line 201
    array-length v8, v7

    .line 202
    if-lt v6, v8, :cond_8

    .line 203
    .line 204
    array-length v8, v7

    .line 205
    new-array v10, v8, [B

    .line 206
    .line 207
    invoke-virtual {v0, v10}, LW/b;->readFully([B)V

    .line 208
    .line 209
    .line 210
    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_8

    .line 215
    .line 216
    iget v5, v0, LW/b;->H:I

    .line 217
    .line 218
    sub-int/2addr v5, v2

    .line 219
    sub-int/2addr v6, v8

    .line 220
    new-array v15, v6, [B

    .line 221
    .line 222
    invoke-virtual {v0, v15}, LW/b;->readFully([B)V

    .line 223
    .line 224
    .line 225
    new-instance v7, LW/c;

    .line 226
    .line 227
    const/16 v16, 0x1

    .line 228
    .line 229
    int-to-long v13, v5

    .line 230
    move-object v12, v7

    .line 231
    move/from16 v17, v6

    .line 232
    .line 233
    invoke-direct/range {v12 .. v17}, LW/c;-><init>(J[BII)V

    .line 234
    .line 235
    .line 236
    iput-object v7, v1, LW/g;->l:LW/c;

    .line 237
    .line 238
    const/4 v5, 0x1

    .line 239
    :cond_8
    :goto_2
    iget v6, v0, LW/b;->H:I

    .line 240
    .line 241
    sub-int/2addr v9, v6

    .line 242
    invoke-virtual {v0, v9}, LW/b;->k(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :goto_3
    new-instance v2, Ljava/io/IOException;

    .line 248
    .line 249
    const-string v3, "Encountered corrupt PNG file."

    .line 250
    .line 251
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    throw v2
.end method

.method public final i(LW/b;)V
    .locals 9

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    sget-boolean v1, LW/g;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "getRafAttributes starting with: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x54

    .line 25
    .line 26
    invoke-virtual {p1, v2}, LW/b;->k(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    new-array v4, v2, [B

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, LW/b;->readFully([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, LW/b;->readFully([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, LW/b;->readFully([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    iget v5, p1, LW/b;->H:I

    .line 72
    .line 73
    sub-int v5, v3, v5

    .line 74
    .line 75
    invoke-virtual {p1, v5}, LW/b;->k(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, LW/b;->readFully([B)V

    .line 79
    .line 80
    .line 81
    new-instance v5, LW/b;

    .line 82
    .line 83
    invoke-direct {v5, v4}, LW/b;-><init>([B)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    invoke-virtual {p0, v5, v3, v4}, LW/g;->e(LW/b;II)V

    .line 88
    .line 89
    .line 90
    iget v3, p1, LW/b;->H:I

    .line 91
    .line 92
    sub-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, LW/b;->k(I)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 97
    .line 98
    iput-object v2, p1, LW/b;->I:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {p1}, LW/b;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "numberOfDirectoryEntry: "

    .line 109
    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    :goto_0
    if-ge v4, v2, :cond_4

    .line 126
    .line 127
    invoke-virtual {p1}, LW/b;->readUnsignedShort()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p1}, LW/b;->readUnsignedShort()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    sget-object v7, LW/g;->H:LW/d;

    .line 136
    .line 137
    iget v7, v7, LW/d;->a:I

    .line 138
    .line 139
    if-ne v5, v7, :cond_3

    .line 140
    .line 141
    invoke-virtual {p1}, LW/b;->readShort()S

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {p1}, LW/b;->readShort()S

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iget-object v4, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 150
    .line 151
    invoke-static {v2, v4}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v5, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 156
    .line 157
    invoke-static {p1, v5}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    iget-object v6, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 162
    .line 163
    aget-object v7, v6, v3

    .line 164
    .line 165
    const-string v8, "ImageLength"

    .line 166
    .line 167
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    aget-object v3, v6, v3

    .line 171
    .line 172
    const-string v4, "ImageWidth"

    .line 173
    .line 174
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    if-eqz v1, :cond_2

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "Updated to length: "

    .line 182
    .line 183
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v2, ", width: "

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    :cond_2
    return-void

    .line 205
    :cond_3
    invoke-virtual {p1, v6}, LW/b;->k(I)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_4
    return-void
.end method

.method public final j(LW/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, LW/g;->o(LW/b;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, LW/g;->s(LW/f;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, LW/g;->w(LW/f;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, LW/g;->w(LW/f;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, LW/g;->w(LW/f;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, LW/g;->x()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, LW/g;->c:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, LW/c;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, LW/f;

    .line 44
    .line 45
    iget-object v1, v1, LW/c;->d:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, LW/f;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    iput-object v1, v2, LW/b;->I:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v2, v1}, LW/b;->k(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    invoke-virtual {p0, v2, v1}, LW/g;->s(LW/f;I)V

    .line 61
    .line 62
    .line 63
    aget-object v1, p1, v1

    .line 64
    .line 65
    const-string v2, "ColorSpace"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, LW/c;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    aget-object p1, p1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public final k(LW/f;)V
    .locals 5

    .line 1
    sget-boolean v0, LW/g;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, LW/g;->j(LW/f;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    const-string v2, "JpgFromRaw"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, LW/c;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, LW/b;

    .line 43
    .line 44
    iget-object v3, v1, LW/c;->d:[B

    .line 45
    .line 46
    invoke-direct {v2, v3}, LW/b;-><init>([B)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, v1, LW/c;->c:J

    .line 50
    .line 51
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v2, v1, v3}, LW/g;->e(LW/b;II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    aget-object v0, p1, v0

    .line 57
    .line 58
    const-string v1, "ISO"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, LW/c;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget-object v2, p1, v1

    .line 68
    .line 69
    const-string v3, "PhotographicSensitivity"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, LW/c;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    aget-object p1, p1, v1

    .line 82
    .line 83
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final l(LW/b;)V
    .locals 5

    .line 1
    sget-boolean v0, LW/g;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    iput-object v0, p1, LW/b;->I:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    sget-object v0, LW/g;->B:[B

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    invoke-virtual {p1, v0}, LW/b;->k(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, LW/b;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x8

    .line 39
    .line 40
    sget-object v1, LW/g;->C:[B

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    invoke-virtual {p1, v2}, LW/b;->k(I)V

    .line 44
    .line 45
    .line 46
    array-length v1, v1

    .line 47
    add-int/lit8 v1, v1, 0x8

    .line 48
    .line 49
    :goto_0
    const/4 v2, 0x4

    .line 50
    :try_start_0
    new-array v2, v2, [B

    .line 51
    .line 52
    invoke-virtual {p1, v2}, LW/b;->readFully([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, LW/b;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    add-int/lit8 v1, v1, 0x8

    .line 60
    .line 61
    sget-object v4, LW/g;->D:[B

    .line 62
    .line 63
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    new-array v0, v3, [B

    .line 70
    .line 71
    invoke-virtual {p1, v0}, LW/b;->readFully([B)V

    .line 72
    .line 73
    .line 74
    sget-object p1, LW/g;->P:[B

    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->q([B[B)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    array-length p1, p1

    .line 83
    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception p1

    .line 89
    goto :goto_3

    .line 90
    :cond_1
    :goto_1
    iput v1, p0, LW/g;->h:I

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, LW/g;->r(I[B)V

    .line 94
    .line 95
    .line 96
    new-instance p1, LW/b;

    .line 97
    .line 98
    invoke-direct {p1, v0}, LW/b;-><init>([B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, LW/g;->u(LW/b;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    rem-int/lit8 v2, v3, 0x2

    .line 106
    .line 107
    const/4 v4, 0x1

    .line 108
    if-ne v2, v4, :cond_3

    .line 109
    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    :cond_3
    add-int/2addr v1, v3

    .line 113
    if-ne v1, v0, :cond_4

    .line 114
    .line 115
    :goto_2
    return-void

    .line 116
    :cond_4
    if-gt v1, v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v3}, LW/b;->k(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 123
    .line 124
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_3
    new-instance v0, Ljava/io/IOException;

    .line 131
    .line 132
    const-string v1, "Encountered corrupt WebP file."

    .line 133
    .line 134
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method public final m(LW/b;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LW/c;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, LW/c;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, LW/g;->c:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, LW/g;->i:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, LW/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, LW/g;->a:Ljava/io/FileDescriptor;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    new-array v1, p2, [B

    .line 54
    .line 55
    invoke-virtual {p1, v0}, LW/b;->k(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, LW/b;->readFully([B)V

    .line 59
    .line 60
    .line 61
    :cond_1
    sget-boolean p1, LW/g;->m:Z

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Setting thumbnail attributes with offset: "

    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", length: "

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string p2, "ExifInterface"

    .line 88
    .line 89
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method

.method public final n(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LW/c;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, LW/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final o(LW/b;)V
    .locals 3

    .line 1
    invoke-static {p1}, LW/g;->q(LW/b;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    iput-object v0, p1, LW/b;->I:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1}, LW/b;->readUnsignedShort()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, LW/g;->c:I

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x2a

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid start code: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, LW/b;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    if-lt v0, v1, :cond_3

    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x8

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v0}, LW/b;->k(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    const-string v1, "Invalid first Ifd offset: "

    .line 70
    .line 71
    invoke-static {v1, v0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final p()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "The size of tag group["

    .line 8
    .line 9
    const-string v3, "]: "

    .line 10
    .line 11
    invoke-static {v2, v0, v3}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget-object v3, v1, v0

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    aget-object v1, v1, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, LW/c;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "tagName: "

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", tagType: "

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, LW/c;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", tagValue: \'"

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v4, v2}, LW/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, "\'"

    .line 104
    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public final r(I[B)V
    .locals 1

    .line 1
    new-instance v0, LW/f;

    .line 2
    .line 3
    invoke-direct {v0, p2}, LW/f;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, LW/g;->o(LW/b;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, LW/g;->s(LW/f;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s(LW/f;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v6, v1, LW/b;->H:I

    .line 8
    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    iget-object v7, v0, LW/g;->e:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, LW/b;->readShort()S

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    sget-boolean v8, LW/g;->m:Z

    .line 23
    .line 24
    const-string v9, "ExifInterface"

    .line 25
    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v11, "numberOfDirectoryEntry: "

    .line 31
    .line 32
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    if-gtz v6, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v10, 0x0

    .line 49
    :goto_0
    const/4 v11, 0x5

    .line 50
    iget-object v14, v0, LW/g;->d:[Ljava/util/HashMap;

    .line 51
    .line 52
    if-ge v10, v6, :cond_2e

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, LW/b;->readUnsignedShort()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    invoke-virtual/range {p1 .. p1}, LW/b;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    iget v3, v1, LW/b;->H:I

    .line 67
    .line 68
    move/from16 v22, v6

    .line 69
    .line 70
    int-to-long v5, v3

    .line 71
    const-wide/16 v17, 0x4

    .line 72
    .line 73
    add-long v5, v5, v17

    .line 74
    .line 75
    sget-object v3, LW/g;->K:[Ljava/util/HashMap;

    .line 76
    .line 77
    aget-object v3, v3, v2

    .line 78
    .line 79
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, LW/d;

    .line 88
    .line 89
    if-eqz v8, :cond_3

    .line 90
    .line 91
    new-array v11, v11, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v19

    .line 97
    const/16 v20, 0x0

    .line 98
    .line 99
    aput-object v19, v11, v20

    .line 100
    .line 101
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v19

    .line 105
    const/16 v20, 0x1

    .line 106
    .line 107
    aput-object v19, v11, v20

    .line 108
    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    iget-object v4, v3, LW/d;->b:Ljava/lang/String;

    .line 112
    .line 113
    :goto_1
    const/16 v19, 0x2

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    const/4 v4, 0x0

    .line 117
    goto :goto_1

    .line 118
    :goto_2
    aput-object v4, v11, v19

    .line 119
    .line 120
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const/16 v19, 0x3

    .line 125
    .line 126
    aput-object v4, v11, v19

    .line 127
    .line 128
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const/16 v16, 0x4

    .line 133
    .line 134
    aput-object v4, v11, v16

    .line 135
    .line 136
    const-string v4, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 137
    .line 138
    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_3
    if-nez v3, :cond_6

    .line 146
    .line 147
    if-eqz v8, :cond_4

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v11, "Skip the tag entry since tag number is not defined: "

    .line 152
    .line 153
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_4
    move-object/from16 v24, v7

    .line 167
    .line 168
    move/from16 v23, v10

    .line 169
    .line 170
    :cond_5
    :goto_3
    move v7, v12

    .line 171
    goto/16 :goto_b

    .line 172
    .line 173
    :cond_6
    if-lez v13, :cond_7

    .line 174
    .line 175
    sget-object v4, LW/g;->F:[I

    .line 176
    .line 177
    array-length v11, v4

    .line 178
    if-lt v13, v11, :cond_8

    .line 179
    .line 180
    :cond_7
    move-object/from16 v24, v7

    .line 181
    .line 182
    move/from16 v23, v10

    .line 183
    .line 184
    move v7, v12

    .line 185
    goto/16 :goto_a

    .line 186
    .line 187
    :cond_8
    iget v11, v3, LW/d;->c:I

    .line 188
    .line 189
    move/from16 v23, v10

    .line 190
    .line 191
    const/4 v10, 0x7

    .line 192
    if-eq v11, v10, :cond_a

    .line 193
    .line 194
    if-ne v13, v10, :cond_9

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_9
    if-eq v11, v13, :cond_a

    .line 198
    .line 199
    iget v10, v3, LW/d;->d:I

    .line 200
    .line 201
    if-ne v10, v13, :cond_b

    .line 202
    .line 203
    :cond_a
    :goto_4
    move-object/from16 v24, v7

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_b
    move-object/from16 v24, v7

    .line 207
    .line 208
    const/4 v7, 0x4

    .line 209
    if-eq v11, v7, :cond_c

    .line 210
    .line 211
    if-ne v10, v7, :cond_d

    .line 212
    .line 213
    :cond_c
    const/4 v7, 0x3

    .line 214
    goto :goto_5

    .line 215
    :cond_d
    const/16 v7, 0x9

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :goto_5
    if-ne v13, v7, :cond_d

    .line 219
    .line 220
    :goto_6
    const/4 v7, 0x7

    .line 221
    goto :goto_8

    .line 222
    :goto_7
    if-eq v11, v7, :cond_e

    .line 223
    .line 224
    if-ne v10, v7, :cond_f

    .line 225
    .line 226
    :cond_e
    const/16 v7, 0x8

    .line 227
    .line 228
    if-ne v13, v7, :cond_f

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_f
    const/16 v7, 0xc

    .line 232
    .line 233
    if-eq v11, v7, :cond_10

    .line 234
    .line 235
    if-ne v10, v7, :cond_11

    .line 236
    .line 237
    :cond_10
    const/16 v7, 0xb

    .line 238
    .line 239
    if-ne v13, v7, :cond_11

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_11
    if-eqz v8, :cond_5

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v7, "Skip the tag entry since data format ("

    .line 247
    .line 248
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sget-object v7, LW/g;->E:[Ljava/lang/String;

    .line 252
    .line 253
    aget-object v7, v7, v13

    .line 254
    .line 255
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v7, ") is unexpected for tag: "

    .line 259
    .line 260
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-object v7, v3, LW/d;->b:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :goto_8
    if-ne v13, v7, :cond_12

    .line 277
    .line 278
    move v13, v11

    .line 279
    :cond_12
    int-to-long v10, v15

    .line 280
    aget v4, v4, v13

    .line 281
    .line 282
    move v7, v12

    .line 283
    move/from16 v21, v13

    .line 284
    .line 285
    int-to-long v12, v4

    .line 286
    mul-long v10, v10, v12

    .line 287
    .line 288
    const-wide/16 v12, 0x0

    .line 289
    .line 290
    cmp-long v4, v10, v12

    .line 291
    .line 292
    if-ltz v4, :cond_14

    .line 293
    .line 294
    const-wide/32 v12, 0x7fffffff

    .line 295
    .line 296
    .line 297
    cmp-long v4, v10, v12

    .line 298
    .line 299
    if-lez v4, :cond_13

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_13
    move/from16 v13, v21

    .line 303
    .line 304
    const/4 v4, 0x1

    .line 305
    goto :goto_c

    .line 306
    :cond_14
    :goto_9
    if-eqz v8, :cond_15

    .line 307
    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v12, "Skip the tag entry since the number of components is invalid: "

    .line 311
    .line 312
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :cond_15
    move/from16 v13, v21

    .line 326
    .line 327
    const/4 v4, 0x0

    .line 328
    goto :goto_c

    .line 329
    :goto_a
    if-eqz v8, :cond_16

    .line 330
    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v10, "Skip the tag entry since data format is invalid: "

    .line 334
    .line 335
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    :cond_16
    :goto_b
    const/4 v4, 0x0

    .line 349
    const-wide/16 v10, 0x0

    .line 350
    .line 351
    :goto_c
    if-nez v4, :cond_18

    .line 352
    .line 353
    invoke-virtual {v1, v5, v6}, LW/f;->E(J)V

    .line 354
    .line 355
    .line 356
    move-object v6, v9

    .line 357
    :cond_17
    :goto_d
    const/4 v2, 0x1

    .line 358
    goto/16 :goto_18

    .line 359
    .line 360
    :cond_18
    const-string v4, "Compression"

    .line 361
    .line 362
    cmp-long v12, v10, v17

    .line 363
    .line 364
    if-lez v12, :cond_1c

    .line 365
    .line 366
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v12

    .line 370
    move-wide/from16 v25, v5

    .line 371
    .line 372
    if-eqz v8, :cond_19

    .line 373
    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v6, "seek to data offset: "

    .line 377
    .line 378
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    :cond_19
    iget v5, v0, LW/g;->c:I

    .line 392
    .line 393
    const/4 v6, 0x7

    .line 394
    if-ne v5, v6, :cond_1a

    .line 395
    .line 396
    iget-object v5, v3, LW/d;->b:Ljava/lang/String;

    .line 397
    .line 398
    const-string v6, "MakerNote"

    .line 399
    .line 400
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_1b

    .line 405
    .line 406
    iput v12, v0, LW/g;->i:I

    .line 407
    .line 408
    :cond_1a
    move-object/from16 v27, v3

    .line 409
    .line 410
    move-object v6, v9

    .line 411
    move-wide/from16 v17, v10

    .line 412
    .line 413
    goto :goto_e

    .line 414
    :cond_1b
    const/4 v5, 0x6

    .line 415
    if-ne v2, v5, :cond_1a

    .line 416
    .line 417
    const-string v6, "ThumbnailImage"

    .line 418
    .line 419
    iget-object v5, v3, LW/d;->b:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-eqz v5, :cond_1a

    .line 426
    .line 427
    iput v12, v0, LW/g;->j:I

    .line 428
    .line 429
    iput v15, v0, LW/g;->k:I

    .line 430
    .line 431
    iget-object v5, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 432
    .line 433
    const/4 v6, 0x6

    .line 434
    invoke-static {v6, v5}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    iget v6, v0, LW/g;->j:I

    .line 439
    .line 440
    move-object/from16 v27, v3

    .line 441
    .line 442
    int-to-long v2, v6

    .line 443
    iget-object v6, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 444
    .line 445
    invoke-static {v2, v3, v6}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    iget v3, v0, LW/g;->k:I

    .line 450
    .line 451
    move-object v6, v9

    .line 452
    move-wide/from16 v17, v10

    .line 453
    .line 454
    int-to-long v9, v3

    .line 455
    iget-object v3, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 456
    .line 457
    invoke-static {v9, v10, v3}, LW/c;->a(JLjava/nio/ByteOrder;)LW/c;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    const/4 v9, 0x4

    .line 462
    aget-object v10, v14, v9

    .line 463
    .line 464
    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    aget-object v5, v14, v9

    .line 468
    .line 469
    const-string v10, "JPEGInterchangeFormat"

    .line 470
    .line 471
    invoke-virtual {v5, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    aget-object v2, v14, v9

    .line 475
    .line 476
    const-string v5, "JPEGInterchangeFormatLength"

    .line 477
    .line 478
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    :goto_e
    int-to-long v2, v12

    .line 482
    invoke-virtual {v1, v2, v3}, LW/f;->E(J)V

    .line 483
    .line 484
    .line 485
    goto :goto_f

    .line 486
    :cond_1c
    move-object/from16 v27, v3

    .line 487
    .line 488
    move-wide/from16 v25, v5

    .line 489
    .line 490
    move-object v6, v9

    .line 491
    move-wide/from16 v17, v10

    .line 492
    .line 493
    :goto_f
    sget-object v2, LW/g;->N:Ljava/util/HashMap;

    .line 494
    .line 495
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    check-cast v2, Ljava/lang/Integer;

    .line 504
    .line 505
    if-eqz v8, :cond_1d

    .line 506
    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string v5, "nextIfdType: "

    .line 510
    .line 511
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v5, " byteCount: "

    .line 518
    .line 519
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    move-wide/from16 v10, v17

    .line 523
    .line 524
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    goto :goto_10

    .line 535
    :cond_1d
    move-wide/from16 v10, v17

    .line 536
    .line 537
    :goto_10
    if-eqz v2, :cond_28

    .line 538
    .line 539
    const/4 v3, 0x3

    .line 540
    if-eq v13, v3, :cond_21

    .line 541
    .line 542
    const/4 v3, 0x4

    .line 543
    if-eq v13, v3, :cond_20

    .line 544
    .line 545
    const/16 v3, 0x8

    .line 546
    .line 547
    if-eq v13, v3, :cond_1f

    .line 548
    .line 549
    const/16 v3, 0x9

    .line 550
    .line 551
    if-eq v13, v3, :cond_1e

    .line 552
    .line 553
    const/16 v3, 0xd

    .line 554
    .line 555
    if-eq v13, v3, :cond_1e

    .line 556
    .line 557
    const-wide/16 v3, -0x1

    .line 558
    .line 559
    goto :goto_12

    .line 560
    :cond_1e
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    :goto_11
    int-to-long v3, v3

    .line 565
    goto :goto_12

    .line 566
    :cond_1f
    invoke-virtual/range {p1 .. p1}, LW/b;->readShort()S

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    goto :goto_11

    .line 571
    :cond_20
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    int-to-long v3, v3

    .line 576
    const-wide v9, 0xffffffffL

    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    and-long/2addr v3, v9

    .line 582
    goto :goto_12

    .line 583
    :cond_21
    invoke-virtual/range {p1 .. p1}, LW/b;->readUnsignedShort()I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    goto :goto_11

    .line 588
    :goto_12
    if-eqz v8, :cond_22

    .line 589
    .line 590
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    move-object/from16 v7, v27

    .line 595
    .line 596
    iget-object v7, v7, LW/d;->b:Ljava/lang/String;

    .line 597
    .line 598
    const/4 v9, 0x2

    .line 599
    new-array v10, v9, [Ljava/lang/Object;

    .line 600
    .line 601
    const/4 v11, 0x0

    .line 602
    aput-object v5, v10, v11

    .line 603
    .line 604
    const/4 v5, 0x1

    .line 605
    aput-object v7, v10, v5

    .line 606
    .line 607
    const-string v5, "Offset: %d, tagName: %s"

    .line 608
    .line 609
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    goto :goto_13

    .line 617
    :cond_22
    const/4 v9, 0x2

    .line 618
    :goto_13
    iget v5, v1, LW/b;->K:I

    .line 619
    .line 620
    const-string v7, ")"

    .line 621
    .line 622
    const/4 v10, -0x1

    .line 623
    const-wide/16 v11, 0x0

    .line 624
    .line 625
    cmp-long v13, v3, v11

    .line 626
    .line 627
    if-lez v13, :cond_23

    .line 628
    .line 629
    if-eq v5, v10, :cond_24

    .line 630
    .line 631
    int-to-long v11, v5

    .line 632
    cmp-long v13, v3, v11

    .line 633
    .line 634
    if-gez v13, :cond_23

    .line 635
    .line 636
    goto :goto_14

    .line 637
    :cond_23
    move-object/from16 v12, v24

    .line 638
    .line 639
    goto :goto_16

    .line 640
    :cond_24
    :goto_14
    long-to-int v5, v3

    .line 641
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    move-object/from16 v12, v24

    .line 646
    .line 647
    invoke-virtual {v12, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v5

    .line 651
    if-nez v5, :cond_26

    .line 652
    .line 653
    invoke-virtual {v1, v3, v4}, LW/f;->E(J)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    invoke-virtual {v0, v1, v2}, LW/g;->s(LW/f;I)V

    .line 661
    .line 662
    .line 663
    :cond_25
    :goto_15
    move-wide/from16 v2, v25

    .line 664
    .line 665
    goto :goto_17

    .line 666
    :cond_26
    if-eqz v8, :cond_25

    .line 667
    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    const-string v10, "Skip jump into the IFD since it has already been read: IfdType "

    .line 671
    .line 672
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    const-string v2, " (at "

    .line 679
    .line 680
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    goto :goto_15

    .line 697
    :goto_16
    if-eqz v8, :cond_25

    .line 698
    .line 699
    const-string v2, "Skip jump into the IFD since its offset is invalid: "

    .line 700
    .line 701
    invoke-static {v2, v3, v4}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    if-eq v5, v10, :cond_27

    .line 706
    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v2, " (total length: "

    .line 716
    .line 717
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    :cond_27
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    goto :goto_15

    .line 734
    :goto_17
    invoke-virtual {v1, v2, v3}, LW/f;->E(J)V

    .line 735
    .line 736
    .line 737
    move-object/from16 v24, v12

    .line 738
    .line 739
    goto/16 :goto_d

    .line 740
    .line 741
    :cond_28
    move-object/from16 v12, v24

    .line 742
    .line 743
    move-wide/from16 v2, v25

    .line 744
    .line 745
    move-object/from16 v7, v27

    .line 746
    .line 747
    const/4 v9, 0x2

    .line 748
    iget v5, v1, LW/b;->H:I

    .line 749
    .line 750
    iget v9, v0, LW/g;->h:I

    .line 751
    .line 752
    add-int/2addr v5, v9

    .line 753
    long-to-int v9, v10

    .line 754
    new-array v9, v9, [B

    .line 755
    .line 756
    invoke-virtual {v1, v9}, LW/b;->readFully([B)V

    .line 757
    .line 758
    .line 759
    new-instance v10, LW/c;

    .line 760
    .line 761
    move-object/from16 v24, v12

    .line 762
    .line 763
    int-to-long v11, v5

    .line 764
    move-object/from16 v16, v10

    .line 765
    .line 766
    move-wide/from16 v17, v11

    .line 767
    .line 768
    move-object/from16 v19, v9

    .line 769
    .line 770
    move/from16 v20, v13

    .line 771
    .line 772
    move/from16 v21, v15

    .line 773
    .line 774
    invoke-direct/range {v16 .. v21}, LW/c;-><init>(J[BII)V

    .line 775
    .line 776
    .line 777
    aget-object v5, v14, p2

    .line 778
    .line 779
    iget-object v9, v7, LW/d;->b:Ljava/lang/String;

    .line 780
    .line 781
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    const-string v5, "DNGVersion"

    .line 785
    .line 786
    iget-object v7, v7, LW/d;->b:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    if-eqz v5, :cond_29

    .line 793
    .line 794
    const/4 v5, 0x3

    .line 795
    iput v5, v0, LW/g;->c:I

    .line 796
    .line 797
    :cond_29
    const-string v5, "Make"

    .line 798
    .line 799
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v5

    .line 803
    if-nez v5, :cond_2a

    .line 804
    .line 805
    const-string v5, "Model"

    .line 806
    .line 807
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v5

    .line 811
    if-eqz v5, :cond_2b

    .line 812
    .line 813
    :cond_2a
    iget-object v5, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 814
    .line 815
    invoke-virtual {v10, v5}, LW/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    const-string v9, "PENTAX"

    .line 820
    .line 821
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    if-nez v5, :cond_2c

    .line 826
    .line 827
    :cond_2b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    if-eqz v4, :cond_2d

    .line 832
    .line 833
    iget-object v4, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 834
    .line 835
    invoke-virtual {v10, v4}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 836
    .line 837
    .line 838
    move-result v4

    .line 839
    const v5, 0xffff

    .line 840
    .line 841
    .line 842
    if-ne v4, v5, :cond_2d

    .line 843
    .line 844
    :cond_2c
    const/16 v4, 0x8

    .line 845
    .line 846
    iput v4, v0, LW/g;->c:I

    .line 847
    .line 848
    :cond_2d
    iget v4, v1, LW/b;->H:I

    .line 849
    .line 850
    int-to-long v4, v4

    .line 851
    cmp-long v7, v4, v2

    .line 852
    .line 853
    if-eqz v7, :cond_17

    .line 854
    .line 855
    invoke-virtual {v1, v2, v3}, LW/f;->E(J)V

    .line 856
    .line 857
    .line 858
    goto/16 :goto_d

    .line 859
    .line 860
    :goto_18
    add-int/lit8 v10, v23, 0x1

    .line 861
    .line 862
    int-to-short v10, v10

    .line 863
    move/from16 v2, p2

    .line 864
    .line 865
    move-object v9, v6

    .line 866
    move/from16 v6, v22

    .line 867
    .line 868
    move-object/from16 v7, v24

    .line 869
    .line 870
    goto/16 :goto_0

    .line 871
    .line 872
    :cond_2e
    move-object/from16 v24, v7

    .line 873
    .line 874
    move-object v6, v9

    .line 875
    const/4 v2, 0x1

    .line 876
    invoke-virtual/range {p1 .. p1}, LW/b;->readInt()I

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    if-eqz v8, :cond_2f

    .line 881
    .line 882
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    new-array v2, v2, [Ljava/lang/Object;

    .line 887
    .line 888
    const/4 v5, 0x0

    .line 889
    aput-object v4, v2, v5

    .line 890
    .line 891
    const-string v4, "nextIfdOffset: %d"

    .line 892
    .line 893
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    .line 899
    .line 900
    :cond_2f
    int-to-long v4, v3

    .line 901
    const-wide/16 v9, 0x0

    .line 902
    .line 903
    cmp-long v2, v4, v9

    .line 904
    .line 905
    if-lez v2, :cond_32

    .line 906
    .line 907
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    move-object/from16 v7, v24

    .line 912
    .line 913
    invoke-virtual {v7, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    if-nez v2, :cond_31

    .line 918
    .line 919
    invoke-virtual {v1, v4, v5}, LW/f;->E(J)V

    .line 920
    .line 921
    .line 922
    const/4 v2, 0x4

    .line 923
    aget-object v3, v14, v2

    .line 924
    .line 925
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    if-eqz v3, :cond_30

    .line 930
    .line 931
    invoke-virtual {v0, v1, v2}, LW/g;->s(LW/f;I)V

    .line 932
    .line 933
    .line 934
    goto :goto_19

    .line 935
    :cond_30
    aget-object v2, v14, v11

    .line 936
    .line 937
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 938
    .line 939
    .line 940
    move-result v2

    .line 941
    if-eqz v2, :cond_33

    .line 942
    .line 943
    invoke-virtual {v0, v1, v11}, LW/g;->s(LW/f;I)V

    .line 944
    .line 945
    .line 946
    goto :goto_19

    .line 947
    :cond_31
    if-eqz v8, :cond_33

    .line 948
    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    const-string v2, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 952
    .line 953
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .line 965
    .line 966
    goto :goto_19

    .line 967
    :cond_32
    if-eqz v8, :cond_33

    .line 968
    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    .line 970
    .line 971
    const-string v2, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 972
    .line 973
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    :cond_33
    :goto_19
    return-void
.end method

.method public final t(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    aget-object v1, v0, p1

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aget-object v1, v0, p1

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, LW/c;

    .line 26
    .line 27
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    aget-object p1, v0, p1

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final u(LW/b;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LW/g;->d:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, LW/c;

    .line 17
    .line 18
    if-eqz v3, :cond_f

    .line 19
    .line 20
    iget-object v4, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x6

    .line 28
    if-eq v3, v4, :cond_1

    .line 29
    .line 30
    if-eq v3, v5, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v3, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1, v2}, LW/g;->m(LW/b;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    const-string v3, "BitsPerSample"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, LW/c;

    .line 49
    .line 50
    const-string v6, "ExifInterface"

    .line 51
    .line 52
    if-eqz v3, :cond_e

    .line 53
    .line 54
    iget-object v7, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 55
    .line 56
    invoke-virtual {v3, v7}, LW/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, [I

    .line 61
    .line 62
    sget-object v7, LW/g;->p:[I

    .line 63
    .line 64
    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget v8, v0, LW/g;->c:I

    .line 72
    .line 73
    const/4 v9, 0x3

    .line 74
    if-ne v8, v9, :cond_e

    .line 75
    .line 76
    const-string v8, "PhotometricInterpretation"

    .line 77
    .line 78
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, LW/c;

    .line 83
    .line 84
    if-eqz v8, :cond_e

    .line 85
    .line 86
    iget-object v9, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 87
    .line 88
    invoke-virtual {v8, v9}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-ne v8, v4, :cond_3

    .line 93
    .line 94
    sget-object v9, LW/g;->q:[I

    .line 95
    .line 96
    invoke-static {v3, v9}, Ljava/util/Arrays;->equals([I[I)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-nez v9, :cond_4

    .line 101
    .line 102
    :cond_3
    if-ne v8, v5, :cond_e

    .line 103
    .line 104
    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([I[I)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_e

    .line 109
    .line 110
    :cond_4
    :goto_0
    const-string v3, " bytes."

    .line 111
    .line 112
    const-string v5, "StripOffsets"

    .line 113
    .line 114
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, LW/c;

    .line 119
    .line 120
    const-string v7, "StripByteCounts"

    .line 121
    .line 122
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, LW/c;

    .line 127
    .line 128
    if-eqz v5, :cond_10

    .line 129
    .line 130
    if-eqz v2, :cond_10

    .line 131
    .line 132
    iget-object v7, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 133
    .line 134
    invoke-virtual {v5, v7}, LW/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {v5}, Lcom/bumptech/glide/d;->f(Ljava/io/Serializable;)[J

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    iget-object v7, v0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 143
    .line 144
    invoke-virtual {v2, v7}, LW/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Lcom/bumptech/glide/d;->f(Ljava/io/Serializable;)[J

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-eqz v5, :cond_d

    .line 153
    .line 154
    array-length v7, v5

    .line 155
    if-nez v7, :cond_5

    .line 156
    .line 157
    goto/16 :goto_4

    .line 158
    .line 159
    :cond_5
    if-eqz v2, :cond_c

    .line 160
    .line 161
    array-length v7, v2

    .line 162
    if-nez v7, :cond_6

    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :cond_6
    array-length v7, v5

    .line 167
    array-length v8, v2

    .line 168
    if-eq v7, v8, :cond_7

    .line 169
    .line 170
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 171
    .line 172
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :cond_7
    array-length v7, v2

    .line 178
    const/4 v8, 0x0

    .line 179
    const-wide/16 v9, 0x0

    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    :goto_1
    if-ge v11, v7, :cond_8

    .line 183
    .line 184
    aget-wide v12, v2, v11

    .line 185
    .line 186
    add-long/2addr v9, v12

    .line 187
    add-int/lit8 v11, v11, 0x1

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    long-to-int v7, v9

    .line 191
    new-array v7, v7, [B

    .line 192
    .line 193
    iput-boolean v4, v0, LW/g;->g:Z

    .line 194
    .line 195
    const/4 v9, 0x0

    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v11, 0x0

    .line 198
    :goto_2
    array-length v12, v5

    .line 199
    if-ge v9, v12, :cond_b

    .line 200
    .line 201
    aget-wide v12, v5, v9

    .line 202
    .line 203
    long-to-int v13, v12

    .line 204
    aget-wide v14, v2, v9

    .line 205
    .line 206
    long-to-int v12, v14

    .line 207
    array-length v14, v5

    .line 208
    sub-int/2addr v14, v4

    .line 209
    if-ge v9, v14, :cond_9

    .line 210
    .line 211
    add-int v14, v13, v12

    .line 212
    .line 213
    int-to-long v14, v14

    .line 214
    add-int/lit8 v16, v9, 0x1

    .line 215
    .line 216
    aget-wide v16, v5, v16

    .line 217
    .line 218
    cmp-long v18, v14, v16

    .line 219
    .line 220
    if-eqz v18, :cond_9

    .line 221
    .line 222
    iput-boolean v8, v0, LW/g;->g:Z

    .line 223
    .line 224
    :cond_9
    sub-int/2addr v13, v10

    .line 225
    if-gez v13, :cond_a

    .line 226
    .line 227
    const-string v1, "Invalid strip offset value"

    .line 228
    .line 229
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_a
    :try_start_0
    invoke-virtual {v1, v13}, LW/b;->k(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .line 235
    .line 236
    add-int/2addr v10, v13

    .line 237
    new-array v13, v12, [B

    .line 238
    .line 239
    :try_start_1
    invoke-virtual {v1, v13}, LW/b;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    .line 241
    .line 242
    add-int/2addr v10, v12

    .line 243
    invoke-static {v13, v8, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    .line 246
    add-int/2addr v11, v12

    .line 247
    add-int/lit8 v9, v9, 0x1

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v2, "Failed to read "

    .line 253
    .line 254
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v2, "Failed to skip "

    .line 274
    .line 275
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_b
    iget-boolean v1, v0, LW/g;->g:Z

    .line 293
    .line 294
    if-eqz v1, :cond_10

    .line 295
    .line 296
    aget-wide v1, v5, v8

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_c
    :goto_3
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 300
    .line 301
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_d
    :goto_4
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 306
    .line 307
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_e
    sget-boolean v1, LW/g;->m:Z

    .line 312
    .line 313
    if-eqz v1, :cond_10

    .line 314
    .line 315
    const-string v1, "Unsupported data type value"

    .line 316
    .line 317
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_f
    invoke-virtual {v0, v1, v2}, LW/g;->m(LW/b;Ljava/util/HashMap;)V

    .line 322
    .line 323
    .line 324
    :cond_10
    :goto_5
    return-void
.end method

.method public final v(II)V
    .locals 8

    .line 1
    iget-object v0, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    .line 11
    sget-boolean v3, LW/g;->m:Z

    .line 12
    .line 13
    if-nez v1, :cond_6

    .line 14
    .line 15
    aget-object v1, v0, p2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    const-string v4, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, LW/c;

    .line 33
    .line 34
    aget-object v5, v0, p1

    .line 35
    .line 36
    const-string v6, "ImageWidth"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, LW/c;

    .line 43
    .line 44
    aget-object v7, v0, p2

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, LW/c;

    .line 51
    .line 52
    aget-object v7, v0, p2

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, LW/c;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v4, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v6, v4}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v1, v3, :cond_5

    .line 95
    .line 96
    if-ge v2, v4, :cond_5

    .line 97
    .line 98
    aget-object v1, v0, p1

    .line 99
    .line 100
    aget-object v2, v0, p2

    .line 101
    .line 102
    aput-object v2, v0, p1

    .line 103
    .line 104
    aput-object v1, v0, p2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 108
    .line 109
    const-string p1, "Second image does not contain valid size information"

    .line 110
    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 116
    .line 117
    const-string p1, "First image does not contain valid size information"

    .line 118
    .line 119
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_2
    return-void

    .line 123
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 124
    .line 125
    const-string p1, "Cannot perform swap since only one image data exists"

    .line 126
    .line 127
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_7
    return-void
.end method

.method public final w(LW/f;I)V
    .locals 10

    .line 1
    iget-object v0, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, LW/c;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, LW/c;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, LW/c;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, LW/c;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, LW/c;

    .line 52
    .line 53
    const-string v6, "ImageLength"

    .line 54
    .line 55
    const-string v7, "ImageWidth"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, LW/c;->a:I

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    const-string v3, "Invalid crop size values. cropSize="

    .line 63
    .line 64
    const-string v4, "ExifInterface"

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x2

    .line 69
    if-ne p1, v2, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, LW/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [LW/e;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    if-eq v1, v9, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v8

    .line 86
    .line 87
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    invoke-static {v1, v2}, LW/c;->b(LW/e;Ljava/nio/ByteOrder;)LW/c;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget-object p1, p1, v5

    .line 94
    .line 95
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-static {p1, v2}, LW/c;->b(LW/e;Ljava/nio/ByteOrder;)LW/c;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, LW/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, [I

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    array-length v1, p1

    .line 133
    if-eq v1, v9, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    aget v1, p1, v8

    .line 137
    .line 138
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-static {v1, v2}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    aget p1, p1, v5

    .line 145
    .line 146
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-static {p1, v2}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :goto_1
    aget-object v2, v0, p2

    .line 153
    .line 154
    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    aget-object p2, v0, p2

    .line 158
    .line 159
    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_5
    if-eqz v2, :cond_6

    .line 185
    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    if-eqz v4, :cond_6

    .line 189
    .line 190
    if-eqz v5, :cond_6

    .line 191
    .line 192
    iget-object p1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 193
    .line 194
    invoke-virtual {v2, p1}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 199
    .line 200
    invoke-virtual {v4, v1}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 205
    .line 206
    invoke-virtual {v5, v2}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    iget-object v4, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 211
    .line 212
    invoke-virtual {v3, v4}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-le v1, p1, :cond_8

    .line 217
    .line 218
    if-le v2, v3, :cond_8

    .line 219
    .line 220
    sub-int/2addr v1, p1

    .line 221
    sub-int/2addr v2, v3

    .line 222
    iget-object p1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 223
    .line 224
    invoke-static {v1, p1}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object v1, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 229
    .line 230
    invoke-static {v2, v1}, LW/c;->c(ILjava/nio/ByteOrder;)LW/c;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    aget-object v2, v0, p2

    .line 235
    .line 236
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    aget-object p1, v0, p2

    .line 240
    .line 241
    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    aget-object v1, v0, p2

    .line 246
    .line 247
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, LW/c;

    .line 252
    .line 253
    aget-object v2, v0, p2

    .line 254
    .line 255
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, LW/c;

    .line 260
    .line 261
    if-eqz v1, :cond_7

    .line 262
    .line 263
    if-nez v2, :cond_8

    .line 264
    .line 265
    :cond_7
    aget-object v1, v0, p2

    .line 266
    .line 267
    const-string v2, "JPEGInterchangeFormat"

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    check-cast v1, LW/c;

    .line 274
    .line 275
    aget-object v0, v0, p2

    .line 276
    .line 277
    const-string v2, "JPEGInterchangeFormatLength"

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, LW/c;

    .line 284
    .line 285
    if-eqz v1, :cond_8

    .line 286
    .line 287
    if-eqz v0, :cond_8

    .line 288
    .line 289
    iget-object v0, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 290
    .line 291
    invoke-virtual {v1, v0}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    iget-object v2, p0, LW/g;->f:Ljava/nio/ByteOrder;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, LW/c;->e(Ljava/nio/ByteOrder;)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    int-to-long v2, v0

    .line 302
    invoke-virtual {p1, v2, v3}, LW/f;->E(J)V

    .line 303
    .line 304
    .line 305
    new-array v1, v1, [B

    .line 306
    .line 307
    invoke-virtual {p1, v1}, LW/b;->readFully([B)V

    .line 308
    .line 309
    .line 310
    new-instance p1, LW/b;

    .line 311
    .line 312
    invoke-direct {p1, v1}, LW/b;-><init>([B)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, p1, v0, p2}, LW/g;->e(LW/b;II)V

    .line 316
    .line 317
    .line 318
    :cond_8
    :goto_3
    return-void
.end method

.method public final x()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, LW/g;->v(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, LW/g;->v(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, LW/g;->v(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, LW/g;->d:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, LW/c;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, LW/c;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4}, LW/g;->n(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-virtual {p0, v3}, LW/g;->n(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, "ExifInterface"

    .line 90
    .line 91
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    .line 98
    const-string v4, "Orientation"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v3, v4}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "ThumbnailImageLength"

    .line 104
    .line 105
    invoke-virtual {p0, v0, v5, v6}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v8, "ThumbnailImageWidth"

    .line 109
    .line 110
    invoke-virtual {p0, v0, v8, v7}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v3, v4}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v5, v6}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v8, v7}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2, v4, v3}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v6, v5}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, v7, v8}, LW/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
