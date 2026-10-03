.class public abstract Lo1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "OpusHead"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo1/e;->a:[B

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lp0/E;)V
    .locals 3

    .line 1
    iget v0, p0, Lp0/E;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1}, Lp0/E;->M(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x68646c72    # 4.3148E24f

    .line 12
    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lp0/E;->L(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static b(Lp0/E;IIIILjava/lang/String;ZLm0/n;Lc/g;I)V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    const/4 v15, 0x2

    const/4 v7, 0x1

    const/16 v13, 0x10

    add-int/lit8 v8, v2, 0x10

    .line 2
    invoke-virtual {v0, v8}, Lp0/E;->L(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    move-result v18

    .line 4
    invoke-virtual {v0, v8}, Lp0/E;->M(I)V

    move/from16 v10, v18

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v9}, Lp0/E;->M(I)V

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x4

    const/16 v19, 0x15

    const/16 v14, 0x18

    const/high16 v21, 0x10000000

    if-eqz v10, :cond_d

    if-ne v10, v7, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v10, v15, :cond_c

    .line 6
    invoke-virtual {v0, v13}, Lp0/E;->M(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lp0/E;->t()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v22

    .line 8
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v10, v12

    .line 9
    invoke-virtual/range {p0 .. p0}, Lp0/E;->D()I

    move-result v12

    .line 10
    invoke-virtual {v0, v11}, Lp0/E;->M(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lp0/E;->D()I

    move-result v13

    .line 12
    invoke-virtual/range {p0 .. p0}, Lp0/E;->D()I

    move-result v22

    and-int/lit8 v23, v22, 0x1

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    goto :goto_1

    :cond_2
    const/16 v23, 0x0

    :goto_1
    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    goto :goto_2

    :cond_3
    const/16 v22, 0x0

    :goto_2
    if-nez v23, :cond_a

    if-ne v13, v9, :cond_4

    const/4 v13, 0x3

    goto :goto_3

    :cond_4
    const/16 v15, 0x10

    if-ne v13, v15, :cond_6

    if-eqz v22, :cond_5

    const/high16 v13, 0x10000000

    goto :goto_3

    :cond_5
    const/4 v13, 0x2

    goto :goto_3

    :cond_6
    if-ne v13, v14, :cond_8

    if-eqz v22, :cond_7

    const/high16 v13, 0x50000000

    goto :goto_3

    :cond_7
    const/16 v13, 0x15

    goto :goto_3

    :cond_8
    const/16 v15, 0x20

    if-ne v13, v15, :cond_b

    if-eqz v22, :cond_9

    const/high16 v13, 0x60000000

    goto :goto_3

    :cond_9
    const/16 v13, 0x16

    goto :goto_3

    :cond_a
    const/16 v15, 0x20

    if-ne v13, v15, :cond_b

    const/4 v13, 0x4

    goto :goto_3

    :cond_b
    const/4 v13, -0x1

    .line 13
    :goto_3
    invoke-virtual {v0, v9}, Lp0/E;->M(I)V

    const/4 v15, 0x0

    goto :goto_5

    :cond_c
    return-void

    .line 14
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    move-result v12

    const/4 v13, 0x6

    .line 15
    invoke-virtual {v0, v13}, Lp0/E;->M(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lp0/E;->A()I

    move-result v13

    .line 17
    iget v15, v0, Lp0/E;->b:I

    sub-int/2addr v15, v11

    .line 18
    invoke-virtual {v0, v15}, Lp0/E;->L(I)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    move-result v15

    if-ne v10, v7, :cond_e

    const/16 v10, 0x10

    .line 20
    invoke-virtual {v0, v10}, Lp0/E;->M(I)V

    :cond_e
    move v10, v13

    const/4 v13, -0x1

    :goto_5
    const v14, 0x73617762

    const v11, 0x73616d72

    const v7, 0x69616d66

    if-ne v1, v7, :cond_f

    const/4 v10, -0x1

    const/4 v12, -0x1

    goto :goto_7

    :cond_f
    if-ne v1, v11, :cond_10

    const/16 v10, 0x1f40

    :goto_6
    const/4 v12, 0x1

    goto :goto_7

    :cond_10
    if-ne v1, v14, :cond_11

    const/16 v10, 0x3e80

    goto :goto_6

    .line 21
    :cond_11
    :goto_7
    iget v9, v0, Lp0/E;->b:I

    const v7, 0x656e6361

    if-ne v1, v7, :cond_14

    .line 22
    invoke-static {v2, v3, v0}, Lo1/e;->h(IILp0/E;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 23
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v5, :cond_12

    const/4 v8, 0x0

    goto :goto_8

    .line 24
    :cond_12
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lo1/q;

    iget-object v8, v8, Lo1/q;->b:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lm0/n;->a(Ljava/lang/String;)Lm0/n;

    move-result-object v5

    move-object v8, v5

    .line 25
    :goto_8
    iget-object v5, v6, Lc/g;->J:Ljava/lang/Object;

    check-cast v5, [Lo1/q;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lo1/q;

    aput-object v7, v5, p9

    goto :goto_9

    :cond_13
    move-object v8, v5

    .line 26
    :goto_9
    invoke-virtual {v0, v9}, Lp0/E;->L(I)V

    goto :goto_a

    :cond_14
    move-object v8, v5

    .line 27
    :goto_a
    const-string v7, "audio/mhm1"

    const-string v27, "audio/ac4"

    const-string v28, "audio/eac3"

    const-string v29, "audio/ac3"

    const v5, 0x61632d33

    const-string v30, "audio/raw"

    if-ne v1, v5, :cond_15

    move/from16 v21, v13

    move-object/from16 v5, v29

    goto/16 :goto_10

    :cond_15
    const v5, 0x65632d33

    if-ne v1, v5, :cond_16

    move/from16 v21, v13

    move-object/from16 v5, v28

    goto/16 :goto_10

    :cond_16
    const v5, 0x61632d34

    if-ne v1, v5, :cond_17

    move/from16 v21, v13

    move-object/from16 v5, v27

    goto/16 :goto_10

    :cond_17
    const v5, 0x64747363

    if-ne v1, v5, :cond_18

    .line 28
    const-string v5, "audio/vnd.dts"

    :goto_b
    move/from16 v21, v13

    goto/16 :goto_10

    :cond_18
    const v5, 0x64747368

    if-eq v1, v5, :cond_2d

    const v5, 0x6474736c

    if-ne v1, v5, :cond_19

    goto/16 :goto_f

    :cond_19
    const v5, 0x64747365

    if-ne v1, v5, :cond_1a

    .line 29
    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_b

    :cond_1a
    const v5, 0x64747378

    if-ne v1, v5, :cond_1b

    .line 30
    const-string v5, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_b

    :cond_1b
    if-ne v1, v11, :cond_1c

    .line 31
    const-string v5, "audio/3gpp"

    goto :goto_b

    :cond_1c
    if-ne v1, v14, :cond_1d

    .line 32
    const-string v5, "audio/amr-wb"

    goto :goto_b

    :cond_1d
    const v5, 0x736f7774

    if-ne v1, v5, :cond_1e

    :goto_c
    move-object/from16 v5, v30

    const/16 v21, 0x2

    goto/16 :goto_10

    :cond_1e
    const v5, 0x74776f73

    if-ne v1, v5, :cond_1f

    :goto_d
    move-object/from16 v5, v30

    goto/16 :goto_10

    :cond_1f
    const v5, 0x6c70636d

    if-ne v1, v5, :cond_21

    const/4 v5, -0x1

    if-ne v13, v5, :cond_20

    goto :goto_c

    :cond_20
    move/from16 v21, v13

    goto :goto_d

    :cond_21
    const v5, 0x2e6d7032

    if-eq v1, v5, :cond_2c

    const v5, 0x2e6d7033

    if-ne v1, v5, :cond_22

    goto :goto_e

    :cond_22
    const v5, 0x6d686131

    if-ne v1, v5, :cond_23

    .line 33
    const-string v5, "audio/mha1"

    goto :goto_b

    :cond_23
    const v5, 0x6d686d31

    if-ne v1, v5, :cond_24

    move-object v5, v7

    goto :goto_b

    :cond_24
    const v5, 0x616c6163

    if-ne v1, v5, :cond_25

    .line 34
    const-string v5, "audio/alac"

    goto :goto_b

    :cond_25
    const v5, 0x616c6177

    if-ne v1, v5, :cond_26

    .line 35
    const-string v5, "audio/g711-alaw"

    goto :goto_b

    :cond_26
    const v5, 0x756c6177

    if-ne v1, v5, :cond_27

    .line 36
    const-string v5, "audio/g711-mlaw"

    goto :goto_b

    :cond_27
    const v5, 0x4f707573

    if-ne v1, v5, :cond_28

    .line 37
    const-string v5, "audio/opus"

    goto/16 :goto_b

    :cond_28
    const v5, 0x664c6143

    if-ne v1, v5, :cond_29

    .line 38
    const-string v5, "audio/flac"

    goto/16 :goto_b

    :cond_29
    const v5, 0x6d6c7061

    if-ne v1, v5, :cond_2a

    .line 39
    const-string v5, "audio/true-hd"

    goto/16 :goto_b

    :cond_2a
    const v5, 0x69616d66

    if-ne v1, v5, :cond_2b

    .line 40
    const-string v5, "audio/iamf"

    goto/16 :goto_b

    :cond_2b
    move/from16 v21, v13

    const/4 v5, 0x0

    goto :goto_10

    .line 41
    :cond_2c
    :goto_e
    const-string v5, "audio/mpeg"

    goto/16 :goto_b

    .line 42
    :cond_2d
    :goto_f
    const-string v5, "audio/vnd.dts.hd"

    goto/16 :goto_b

    :goto_10
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_11
    sub-int v11, v9, v2

    if-ge v11, v3, :cond_a1

    .line 43
    invoke-virtual {v0, v9}, Lp0/E;->L(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    move-result v11

    if-lez v11, :cond_2e

    const/4 v2, 0x1

    goto :goto_12

    :cond_2e
    const/4 v2, 0x0

    .line 45
    :goto_12
    const-string v3, "childAtomSize must be positive"

    invoke-static {v3, v2}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    move-result v2

    move-object/from16 v26, v13

    const v13, 0x6d686143

    if-ne v2, v13, :cond_31

    const/16 v13, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 47
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v2}, Lp0/E;->M(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    move-result v3

    .line 50
    invoke-virtual {v0, v2}, Lp0/E;->M(I)V

    .line 51
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v13, v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    move-object/from16 p7, v7

    goto :goto_13

    :cond_2f
    const/4 v2, 0x0

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 p7, v7

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v3, v7, v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 54
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    move-result v3

    .line 55
    new-array v7, v3, [B

    .line 56
    invoke-virtual {v0, v2, v7, v3}, Lp0/E;->j(I[BI)V

    if-nez v14, :cond_30

    .line 57
    invoke-static {v7}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v3

    move-object v14, v3

    goto :goto_14

    .line 58
    :cond_30
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v7, v3}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    move-result-object v2

    move-object v14, v2

    :goto_14
    move/from16 v37, v1

    move-object v1, v6

    move-object v6, v8

    move v8, v9

    move/from16 v34, v10

    move/from16 v35, v12

    :goto_15
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v10, v0

    move-object v9, v4

    move v12, v11

    goto/16 :goto_5d

    :cond_31
    move-object/from16 p7, v7

    const v7, 0x6d686150

    if-ne v2, v7, :cond_34

    const/16 v7, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 59
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    move-result v2

    if-lez v2, :cond_33

    .line 61
    new-array v3, v2, [B

    const/4 v7, 0x0

    .line 62
    invoke-virtual {v0, v7, v3, v2}, Lp0/E;->j(I[BI)V

    if-nez v14, :cond_32

    .line 63
    invoke-static {v3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v14

    goto :goto_16

    .line 64
    :cond_32
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    move-result-object v14

    :cond_33
    :goto_16
    move/from16 v37, v1

    move-object v1, v6

    :goto_17
    move-object v6, v8

    move v8, v9

    move/from16 v34, v10

    move/from16 v35, v12

    move-object/from16 v13, v26

    goto :goto_15

    :cond_34
    const v7, 0x65736473

    if-eq v2, v7, :cond_35

    if-eqz p6, :cond_36

    const v13, 0x77617665

    if-ne v2, v13, :cond_36

    :cond_35
    move-object/from16 v36, v5

    move/from16 v38, v9

    move/from16 v40, v11

    move v5, v12

    move-object/from16 p9, v14

    const/4 v11, 0x3

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/16 v14, 0x1f

    move-object v9, v4

    move v4, v10

    move-object v10, v0

    move v0, v1

    move-object v1, v6

    move-object v6, v8

    const/16 v8, 0xd

    goto/16 :goto_51

    :cond_36
    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    const/16 v3, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 65
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    const/4 v2, 0x4

    .line 66
    invoke-virtual {v0, v2}, Lp0/E;->M(I)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lp0/E;->B()J

    move-result-wide v2

    move-object/from16 p9, v14

    .line 68
    invoke-virtual/range {p0 .. p0}, Lp0/E;->B()J

    move-result-wide v13

    .line 69
    new-instance v7, LU0/C;

    .line 70
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide v13, v7, LU0/C;->a:J

    .line 72
    iput-wide v2, v7, LU0/C;->b:J

    move-object/from16 v14, p9

    move/from16 v37, v1

    move-object v1, v6

    move-object/from16 v32, v7

    goto :goto_17

    :cond_37
    move-object/from16 p9, v14

    .line 73
    sget-object v3, LW0/a;->f:[I

    sget-object v7, LW0/a;->d:[I

    const v13, 0x64616333

    if-ne v2, v13, :cond_39

    const/16 v13, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 74
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 75
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v14, Lp0/D;

    invoke-direct {v14}, Lp0/D;-><init>()V

    .line 77
    invoke-virtual {v14, v0}, Lp0/D;->q(Lp0/E;)V

    const/4 v13, 0x2

    .line 78
    invoke-virtual {v14, v13}, Lp0/D;->i(I)I

    move-result v34

    .line 79
    aget v7, v7, v34

    const/16 v13, 0x8

    .line 80
    invoke-virtual {v14, v13}, Lp0/D;->u(I)V

    const/4 v13, 0x3

    .line 81
    invoke-virtual {v14, v13}, Lp0/D;->i(I)I

    move-result v34

    aget v3, v3, v34

    const/4 v13, 0x1

    .line 82
    invoke-virtual {v14, v13}, Lp0/D;->i(I)I

    move-result v24

    if-eqz v24, :cond_38

    add-int/2addr v3, v13

    :cond_38
    const/4 v13, 0x5

    .line 83
    invoke-virtual {v14, v13}, Lp0/D;->i(I)I

    move-result v13

    .line 84
    sget-object v33, LW0/a;->g:[I

    aget v13, v33, v13

    mul-int/lit16 v13, v13, 0x3e8

    .line 85
    invoke-virtual {v14}, Lp0/D;->c()V

    .line 86
    invoke-virtual {v14}, Lp0/D;->f()I

    move-result v14

    invoke-virtual {v0, v14}, Lp0/E;->L(I)V

    .line 87
    new-instance v14, Lm0/s;

    invoke-direct {v14}, Lm0/s;-><init>()V

    .line 88
    iput-object v2, v14, Lm0/s;->a:Ljava/lang/String;

    .line 89
    invoke-static/range {v29 .. v29}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lm0/s;->n:Ljava/lang/String;

    .line 90
    iput v3, v14, Lm0/s;->F:I

    .line 91
    iput v7, v14, Lm0/s;->G:I

    .line 92
    iput-object v8, v14, Lm0/s;->r:Lm0/n;

    .line 93
    iput-object v4, v14, Lm0/s;->d:Ljava/lang/String;

    .line 94
    iput v13, v14, Lm0/s;->h:I

    .line 95
    iput v13, v14, Lm0/s;->i:I

    .line 96
    new-instance v2, Lm0/t;

    invoke-direct {v2, v14}, Lm0/t;-><init>(Lm0/s;)V

    .line 97
    iput-object v2, v6, Lc/g;->K:Ljava/lang/Object;

    move-object/from16 v36, v5

    move/from16 v38, v9

    move/from16 v40, v11

    move v3, v12

    const/16 v7, 0x20

    const/4 v11, 0x3

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/16 v14, 0x1f

    move-object v9, v4

    move v4, v10

    move-object v10, v0

    move v0, v1

    move-object v1, v6

    move-object v6, v8

    const/16 v8, 0xd

    goto/16 :goto_50

    :cond_39
    const v13, 0x64656333

    if-ne v2, v13, :cond_3e

    const/16 v13, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 98
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 99
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    new-instance v13, Lp0/D;

    invoke-direct {v13}, Lp0/D;-><init>()V

    .line 101
    invoke-virtual {v13, v0}, Lp0/D;->q(Lp0/E;)V

    move/from16 v34, v10

    const/16 v14, 0xd

    .line 102
    invoke-virtual {v13, v14}, Lp0/D;->i(I)I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    const/4 v14, 0x3

    .line 103
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    const/4 v14, 0x2

    .line 104
    invoke-virtual {v13, v14}, Lp0/D;->i(I)I

    move-result v33

    .line 105
    aget v7, v7, v33

    const/16 v14, 0xa

    .line 106
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    const/4 v14, 0x3

    .line 107
    invoke-virtual {v13, v14}, Lp0/D;->i(I)I

    move-result v20

    aget v3, v3, v20

    const/4 v14, 0x1

    .line 108
    invoke-virtual {v13, v14}, Lp0/D;->i(I)I

    move-result v24

    if-eqz v24, :cond_3a

    add-int/2addr v3, v14

    :cond_3a
    const/4 v14, 0x3

    .line 109
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    const/4 v14, 0x4

    .line 110
    invoke-virtual {v13, v14}, Lp0/D;->i(I)I

    move-result v33

    const/4 v14, 0x1

    .line 111
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    move/from16 v35, v12

    if-lez v33, :cond_3c

    const/4 v12, 0x6

    .line 112
    invoke-virtual {v13, v12}, Lp0/D;->u(I)V

    .line 113
    invoke-virtual {v13, v14}, Lp0/D;->i(I)I

    move-result v12

    if-eqz v12, :cond_3b

    const/4 v12, 0x2

    add-int/2addr v3, v12

    .line 114
    :cond_3b
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    .line 115
    :cond_3c
    invoke-virtual {v13}, Lp0/D;->b()I

    move-result v12

    const/4 v14, 0x7

    if-le v12, v14, :cond_3d

    .line 116
    invoke-virtual {v13, v14}, Lp0/D;->u(I)V

    const/4 v12, 0x1

    .line 117
    invoke-virtual {v13, v12}, Lp0/D;->i(I)I

    move-result v14

    if-eqz v14, :cond_3d

    .line 118
    const-string v12, "audio/eac3-joc"

    goto :goto_18

    :cond_3d
    move-object/from16 v12, v28

    .line 119
    :goto_18
    invoke-virtual {v13}, Lp0/D;->c()V

    .line 120
    invoke-virtual {v13}, Lp0/D;->f()I

    move-result v13

    invoke-virtual {v0, v13}, Lp0/E;->L(I)V

    .line 121
    new-instance v13, Lm0/s;

    invoke-direct {v13}, Lm0/s;-><init>()V

    .line 122
    iput-object v2, v13, Lm0/s;->a:Ljava/lang/String;

    .line 123
    invoke-static {v12}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lm0/s;->n:Ljava/lang/String;

    .line 124
    iput v3, v13, Lm0/s;->F:I

    .line 125
    iput v7, v13, Lm0/s;->G:I

    .line 126
    iput-object v8, v13, Lm0/s;->r:Lm0/n;

    .line 127
    iput-object v4, v13, Lm0/s;->d:Ljava/lang/String;

    .line 128
    iput v10, v13, Lm0/s;->i:I

    .line 129
    new-instance v2, Lm0/t;

    invoke-direct {v2, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 130
    iput-object v2, v6, Lc/g;->K:Ljava/lang/Object;

    move-object v10, v0

    move v0, v1

    move-object/from16 v36, v5

    move-object v1, v6

    move-object v6, v8

    move/from16 v38, v9

    move/from16 v40, v11

    move/from16 v3, v35

    const/16 v7, 0x20

    const/16 v8, 0xd

    const/4 v11, 0x3

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/16 v14, 0x1f

    move-object v9, v4

    move/from16 v4, v34

    goto/16 :goto_50

    :cond_3e
    move/from16 v34, v10

    move/from16 v35, v12

    const v7, 0x64616334

    if-ne v2, v7, :cond_7c

    const/16 v7, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 131
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 132
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    new-instance v7, Lp0/D;

    invoke-direct {v7}, Lp0/D;-><init>()V

    .line 134
    invoke-virtual {v7, v0}, Lp0/D;->q(Lp0/E;)V

    .line 135
    invoke-virtual {v7}, Lp0/D;->b()I

    move-result v10

    const/4 v12, 0x3

    .line 136
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    move-result v13

    const/4 v12, 0x1

    if-gt v13, v12, :cond_7b

    const/4 v14, 0x7

    .line 137
    invoke-virtual {v7, v14}, Lp0/D;->i(I)I

    move-result v3

    .line 138
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v14

    if-eqz v14, :cond_3f

    const v14, 0xbb80

    :goto_19
    const/4 v12, 0x4

    goto :goto_1a

    :cond_3f
    const v14, 0xac44

    goto :goto_19

    .line 139
    :goto_1a
    invoke-virtual {v7, v12}, Lp0/D;->u(I)V

    move-object/from16 v36, v5

    const/16 v12, 0x9

    .line 140
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    move-result v5

    const/4 v12, 0x1

    if-le v3, v12, :cond_42

    if-eqz v13, :cond_41

    .line 141
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v12

    if-eqz v12, :cond_40

    const/16 v12, 0x10

    .line 142
    invoke-virtual {v7, v12}, Lp0/D;->u(I)V

    .line 143
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v12

    if-eqz v12, :cond_40

    const/16 v12, 0x80

    .line 144
    invoke-virtual {v7, v12}, Lp0/D;->u(I)V

    :cond_40
    const/4 v12, 0x1

    goto :goto_1b

    .line 145
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_42
    :goto_1b
    if-ne v13, v12, :cond_44

    .line 146
    invoke-virtual {v7}, Lp0/D;->b()I

    move-result v12

    move/from16 v37, v1

    const/16 v1, 0x42

    if-lt v12, v1, :cond_43

    .line 147
    invoke-virtual {v7, v1}, Lp0/D;->u(I)V

    .line 148
    invoke-virtual {v7}, Lp0/D;->c()V

    goto :goto_1c

    .line 149
    :cond_43
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_44
    move/from16 v37, v1

    .line 150
    :goto_1c
    new-instance v1, LW0/c;

    .line 151
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x1

    .line 152
    iput-boolean v12, v1, LW0/c;->a:Z

    const/4 v12, -0x1

    .line 153
    iput v12, v1, LW0/c;->b:I

    .line 154
    iput v12, v1, LW0/c;->c:I

    const/4 v12, 0x1

    .line 155
    iput-boolean v12, v1, LW0/c;->d:Z

    const/4 v0, 0x2

    .line 156
    iput v0, v1, LW0/c;->e:I

    .line 157
    iput v12, v1, LW0/c;->f:I

    const/4 v0, 0x0

    .line 158
    iput v0, v1, LW0/c;->g:I

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v5, :cond_6a

    if-nez v13, :cond_45

    .line 159
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v5

    const/4 v12, 0x5

    .line 160
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    move-result v38

    .line 161
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    move-result v39

    move/from16 v40, v11

    move/from16 v41, v15

    move/from16 v11, v38

    move/from16 v15, v39

    const/4 v12, 0x0

    const/16 v39, 0x0

    move/from16 v38, v9

    const/4 v9, 0x0

    goto :goto_21

    :cond_45
    move/from16 v25, v5

    const/16 v12, 0x8

    .line 162
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    move-result v5

    move/from16 v38, v9

    .line 163
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    move-result v9

    const/16 v12, 0xff

    if-ne v9, v12, :cond_46

    const/16 v12, 0x10

    .line 164
    invoke-virtual {v7, v12}, Lp0/D;->i(I)I

    move-result v40

    add-int v40, v40, v9

    :goto_1e
    const/4 v9, 0x2

    goto :goto_1f

    :cond_46
    move/from16 v40, v9

    goto :goto_1e

    :goto_1f
    if-le v5, v9, :cond_47

    const/16 v9, 0x8

    mul-int/lit8 v5, v40, 0x8

    .line 165
    invoke-virtual {v7, v5}, Lp0/D;->u(I)V

    const/4 v5, 0x1

    add-int/2addr v0, v5

    move/from16 v5, v25

    move/from16 v9, v38

    goto :goto_1d

    :cond_47
    const/16 v9, 0x8

    .line 166
    invoke-virtual {v7}, Lp0/D;->b()I

    move-result v12

    sub-int v12, v10, v12

    div-int/2addr v12, v9

    move/from16 v39, v5

    const/4 v9, 0x5

    .line 167
    invoke-virtual {v7, v9}, Lp0/D;->i(I)I

    move-result v5

    const/16 v9, 0x1f

    if-ne v5, v9, :cond_48

    const/4 v9, 0x1

    goto :goto_20

    :cond_48
    const/4 v9, 0x0

    :goto_20
    move/from16 v41, v15

    move/from16 v15, v39

    move/from16 v39, v12

    move/from16 v12, v40

    move/from16 v40, v11

    move v11, v5

    const/4 v5, 0x0

    .line 168
    :goto_21
    iput v15, v1, LW0/c;->f:I

    if-nez v5, :cond_49

    if-nez v9, :cond_49

    const/4 v6, 0x6

    if-ne v11, v6, :cond_49

    move-object/from16 v43, v8

    :goto_22
    const/4 v4, 0x7

    goto/16 :goto_36

    :cond_49
    const/4 v6, 0x3

    .line 169
    invoke-virtual {v7, v6}, Lp0/D;->i(I)I

    move-result v4

    iput v4, v1, LW0/c;->g:I

    .line 170
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x5

    .line 171
    invoke-virtual {v7, v4}, Lp0/D;->u(I)V

    :cond_4a
    const/4 v4, 0x2

    .line 172
    invoke-virtual {v7, v4}, Lp0/D;->u(I)V

    const/4 v6, 0x1

    if-ne v13, v6, :cond_4b

    if-eq v15, v6, :cond_4c

    if-ne v15, v4, :cond_4b

    goto :goto_24

    :cond_4b
    :goto_23
    const/4 v4, 0x5

    goto :goto_25

    .line 173
    :cond_4c
    :goto_24
    invoke-virtual {v7, v4}, Lp0/D;->u(I)V

    goto :goto_23

    .line 174
    :goto_25
    invoke-virtual {v7, v4}, Lp0/D;->u(I)V

    const/16 v4, 0xa

    .line 175
    invoke-virtual {v7, v4}, Lp0/D;->u(I)V

    if-ne v13, v6, :cond_53

    if-lez v15, :cond_4d

    .line 176
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v4

    iput-boolean v4, v1, LW0/c;->a:Z

    .line 177
    :cond_4d
    iget-boolean v4, v1, LW0/c;->a:Z

    if-eqz v4, :cond_52

    if-eq v15, v6, :cond_4e

    const/4 v4, 0x2

    if-ne v15, v4, :cond_4f

    :cond_4e
    const/4 v4, 0x5

    goto :goto_27

    :cond_4f
    :goto_26
    const/16 v6, 0x18

    goto :goto_28

    .line 178
    :goto_27
    invoke-virtual {v7, v4}, Lp0/D;->i(I)I

    move-result v6

    if-ltz v6, :cond_50

    const/16 v4, 0xf

    if-gt v6, v4, :cond_50

    .line 179
    iput v6, v1, LW0/c;->b:I

    :cond_50
    const/16 v4, 0xb

    if-lt v6, v4, :cond_51

    const/16 v4, 0xe

    if-gt v6, v4, :cond_51

    .line 180
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v4

    iput-boolean v4, v1, LW0/c;->d:Z

    const/4 v4, 0x2

    .line 181
    invoke-virtual {v7, v4}, Lp0/D;->i(I)I

    move-result v6

    iput v6, v1, LW0/c;->e:I

    goto :goto_26

    :cond_51
    const/4 v4, 0x2

    goto :goto_26

    .line 182
    :goto_28
    invoke-virtual {v7, v6}, Lp0/D;->u(I)V

    :goto_29
    const/4 v6, 0x1

    goto :goto_2a

    :cond_52
    const/4 v4, 0x2

    goto :goto_29

    :goto_2a
    if-eq v15, v6, :cond_55

    if-ne v15, v4, :cond_53

    goto :goto_2b

    :cond_53
    move-object/from16 v43, v8

    :cond_54
    const/4 v4, 0x1

    goto :goto_2d

    .line 183
    :cond_55
    :goto_2b
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 184
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 185
    invoke-virtual {v7, v4}, Lp0/D;->u(I)V

    .line 186
    :cond_56
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 187
    invoke-virtual {v7}, Lp0/D;->t()V

    const/16 v4, 0x8

    .line 188
    invoke-virtual {v7, v4}, Lp0/D;->i(I)I

    move-result v6

    move-object/from16 v43, v8

    const/4 v8, 0x0

    :goto_2c
    if-ge v8, v6, :cond_54

    .line 189
    invoke-virtual {v7, v4}, Lp0/D;->u(I)V

    const/4 v4, 0x1

    add-int/2addr v8, v4

    const/16 v4, 0x8

    goto :goto_2c

    :goto_2d
    if-nez v5, :cond_5e

    if-eqz v9, :cond_57

    goto/16 :goto_34

    .line 190
    :cond_57
    invoke-virtual {v7}, Lp0/D;->t()V

    if-eqz v11, :cond_5c

    if-eq v11, v4, :cond_5c

    const/4 v5, 0x2

    if-eq v11, v5, :cond_5c

    const/4 v5, 0x3

    if-eq v11, v5, :cond_5a

    const/4 v5, 0x4

    if-eq v11, v5, :cond_5a

    const/4 v5, 0x5

    if-eq v11, v5, :cond_58

    const/4 v5, 0x7

    .line 191
    invoke-virtual {v7, v5}, Lp0/D;->i(I)I

    move-result v6

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v6, :cond_60

    const/16 v8, 0x8

    .line 192
    invoke-virtual {v7, v8}, Lp0/D;->u(I)V

    add-int/2addr v5, v4

    goto :goto_2e

    :cond_58
    if-nez v15, :cond_59

    .line 193
    invoke-static {v7, v1}, LW0/a;->h(Lp0/D;LW0/c;)V

    goto :goto_35

    :cond_59
    const/4 v5, 0x3

    .line 194
    invoke-virtual {v7, v5}, Lp0/D;->i(I)I

    move-result v6

    const/4 v5, 0x0

    :goto_2f
    const/4 v8, 0x2

    add-int/lit8 v9, v6, 0x2

    if-ge v5, v9, :cond_60

    .line 195
    invoke-static {v7, v1}, LW0/a;->i(Lp0/D;LW0/c;)V

    add-int/2addr v5, v4

    goto :goto_2f

    :cond_5a
    if-nez v15, :cond_5b

    const/4 v5, 0x0

    const/4 v6, 0x3

    :goto_30
    if-ge v5, v6, :cond_60

    .line 196
    invoke-static {v7, v1}, LW0/a;->h(Lp0/D;LW0/c;)V

    add-int/2addr v5, v4

    goto :goto_30

    :cond_5b
    const/4 v6, 0x3

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v6, :cond_60

    .line 197
    invoke-static {v7, v1}, LW0/a;->i(Lp0/D;LW0/c;)V

    add-int/2addr v5, v4

    const/4 v6, 0x3

    goto :goto_31

    :cond_5c
    if-nez v15, :cond_5d

    const/4 v5, 0x0

    const/4 v6, 0x2

    :goto_32
    if-ge v5, v6, :cond_60

    .line 198
    invoke-static {v7, v1}, LW0/a;->h(Lp0/D;LW0/c;)V

    add-int/2addr v5, v4

    goto :goto_32

    :cond_5d
    const/4 v6, 0x2

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v6, :cond_60

    .line 199
    invoke-static {v7, v1}, LW0/a;->i(Lp0/D;LW0/c;)V

    add-int/2addr v5, v4

    const/4 v6, 0x2

    goto :goto_33

    :cond_5e
    :goto_34
    if-nez v15, :cond_5f

    .line 200
    invoke-static {v7, v1}, LW0/a;->h(Lp0/D;LW0/c;)V

    goto :goto_35

    .line 201
    :cond_5f
    invoke-static {v7, v1}, LW0/a;->i(Lp0/D;LW0/c;)V

    .line 202
    :cond_60
    :goto_35
    invoke-virtual {v7}, Lp0/D;->t()V

    .line 203
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v4

    if-eqz v4, :cond_61

    goto/16 :goto_22

    .line 204
    :goto_36
    invoke-virtual {v7, v4}, Lp0/D;->i(I)I

    move-result v5

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v5, :cond_61

    const/16 v6, 0xf

    .line 205
    invoke-virtual {v7, v6}, Lp0/D;->u(I)V

    const/4 v8, 0x1

    add-int/2addr v4, v8

    goto :goto_37

    :cond_61
    if-lez v15, :cond_66

    .line 206
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 207
    invoke-virtual {v7}, Lp0/D;->b()I

    move-result v4

    const/16 v5, 0x42

    if-lt v4, v5, :cond_62

    .line 208
    invoke-virtual {v7, v5}, Lp0/D;->u(I)V

    goto :goto_38

    .line 209
    :cond_62
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_63
    const/16 v5, 0x42

    .line 210
    :goto_38
    invoke-virtual {v7}, Lp0/D;->h()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 211
    invoke-virtual {v7}, Lp0/D;->c()V

    const/16 v4, 0x10

    .line 212
    invoke-virtual {v7, v4}, Lp0/D;->i(I)I

    move-result v6

    .line 213
    invoke-virtual {v7, v6}, Lp0/D;->v(I)V

    const/4 v6, 0x5

    .line 214
    invoke-virtual {v7, v6}, Lp0/D;->i(I)I

    move-result v8

    const/4 v6, 0x0

    :goto_39
    if-ge v6, v8, :cond_64

    const/4 v9, 0x3

    .line 215
    invoke-virtual {v7, v9}, Lp0/D;->u(I)V

    const/16 v9, 0x8

    .line 216
    invoke-virtual {v7, v9}, Lp0/D;->u(I)V

    const/4 v11, 0x1

    add-int/2addr v6, v11

    goto :goto_39

    :cond_64
    :goto_3a
    const/16 v9, 0x8

    const/4 v11, 0x1

    goto :goto_3b

    :cond_65
    const/16 v4, 0x10

    goto :goto_3a

    :cond_66
    const/16 v4, 0x10

    const/16 v5, 0x42

    goto :goto_3a

    .line 217
    :goto_3b
    invoke-virtual {v7}, Lp0/D;->c()V

    if-ne v13, v11, :cond_68

    .line 218
    invoke-virtual {v7}, Lp0/D;->b()I

    move-result v6

    sub-int/2addr v10, v6

    div-int/2addr v10, v9

    sub-int v10, v10, v39

    if-lt v12, v10, :cond_67

    sub-int/2addr v12, v10

    .line 219
    invoke-virtual {v7, v12}, Lp0/D;->v(I)V

    goto :goto_3c

    .line 220
    :cond_67
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    .line 221
    :cond_68
    :goto_3c
    iget-boolean v6, v1, LW0/c;->a:Z

    if-eqz v6, :cond_6b

    iget v6, v1, LW0/c;->b:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_69

    goto :goto_3d

    .line 222
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t determine channel mode of presentation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_6a
    move-object/from16 v43, v8

    move/from16 v38, v9

    move/from16 v40, v11

    move/from16 v41, v15

    const/16 v4, 0x10

    const/16 v5, 0x42

    .line 223
    :cond_6b
    :goto_3d
    iget-boolean v0, v1, LW0/c;->a:Z

    if-eqz v0, :cond_72

    .line 224
    iget v0, v1, LW0/c;->b:I

    iget-boolean v6, v1, LW0/c;->d:Z

    iget v7, v1, LW0/c;->e:I

    packed-switch v0, :pswitch_data_0

    const/16 v8, 0xb

    const/16 v33, -0x1

    goto :goto_3e

    :pswitch_0
    const/16 v8, 0xb

    const/16 v33, 0x18

    goto :goto_3e

    :pswitch_1
    const/16 v8, 0xb

    const/16 v33, 0xe

    goto :goto_3e

    :pswitch_2
    const/16 v8, 0xb

    const/16 v33, 0xd

    goto :goto_3e

    :pswitch_3
    const/16 v8, 0xb

    const/16 v33, 0xc

    goto :goto_3e

    :pswitch_4
    const/16 v8, 0xb

    const/16 v33, 0xb

    goto :goto_3e

    :pswitch_5
    const/16 v8, 0xb

    const/16 v33, 0x8

    goto :goto_3e

    :pswitch_6
    const/16 v8, 0xb

    const/16 v33, 0x7

    goto :goto_3e

    :pswitch_7
    const/16 v8, 0xb

    const/16 v33, 0x6

    goto :goto_3e

    :pswitch_8
    const/16 v8, 0xb

    const/16 v33, 0x5

    goto :goto_3e

    :pswitch_9
    const/16 v8, 0xb

    const/16 v33, 0x3

    goto :goto_3e

    :pswitch_a
    const/16 v8, 0xb

    const/16 v33, 0x2

    goto :goto_3e

    :pswitch_b
    const/16 v8, 0xb

    const/16 v33, 0x1

    :goto_3e
    if-eq v0, v8, :cond_6d

    const/16 v8, 0xc

    if-eq v0, v8, :cond_6d

    const/16 v8, 0xd

    if-eq v0, v8, :cond_6e

    const/16 v9, 0xe

    if-ne v0, v9, :cond_6c

    goto :goto_3f

    :cond_6c
    const/4 v0, 0x1

    goto :goto_40

    :cond_6d
    const/16 v8, 0xd

    :cond_6e
    :goto_3f
    if-nez v6, :cond_6f

    add-int/lit8 v33, v33, -0x2

    :cond_6f
    if-eqz v7, :cond_71

    const/4 v0, 0x1

    if-eq v7, v0, :cond_70

    goto :goto_40

    :cond_70
    add-int/lit8 v33, v33, -0x2

    goto :goto_40

    :cond_71
    const/4 v0, 0x1

    add-int/lit8 v33, v33, -0x4

    :goto_40
    move/from16 v6, v33

    goto :goto_41

    :cond_72
    const/4 v0, 0x1

    const/16 v8, 0xd

    .line 225
    iget v6, v1, LW0/c;->c:I

    if-lez v6, :cond_73

    add-int/2addr v6, v0

    .line 226
    iget v0, v1, LW0/c;->g:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_79

    const/16 v0, 0x11

    if-ne v6, v0, :cond_79

    const/16 v6, 0x15

    goto :goto_41

    .line 227
    :cond_73
    iget v0, v1, LW0/c;->g:I

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    if-eq v0, v6, :cond_78

    const/4 v6, 0x2

    if-eq v0, v6, :cond_77

    const/4 v6, 0x3

    if-eq v0, v6, :cond_76

    const/4 v6, 0x4

    if-eq v0, v6, :cond_75

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "AC-4 level "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, LW0/c;->g:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has not been defined."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Ac4Util"

    invoke-static {v6, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const/4 v6, 0x2

    goto :goto_41

    :cond_75
    const/16 v6, 0xc

    goto :goto_41

    :cond_76
    const/16 v6, 0xa

    goto :goto_41

    :cond_77
    const/16 v6, 0x8

    goto :goto_41

    :cond_78
    const/4 v6, 0x6

    :cond_79
    :goto_41
    if-lez v6, :cond_7a

    .line 229
    iget v0, v1, LW0/c;->f:I

    iget v1, v1, LW0/c;->g:I

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v9, v7

    const/4 v3, 0x1

    aput-object v0, v9, v3

    const/4 v0, 0x2

    aput-object v1, v9, v0

    .line 231
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 232
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ac-4.%02d.%02d.%02d"

    invoke-static {v0, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Lm0/s;

    invoke-direct {v1}, Lm0/s;-><init>()V

    .line 234
    iput-object v2, v1, Lm0/s;->a:Ljava/lang/String;

    .line 235
    invoke-static/range {v27 .. v27}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lm0/s;->n:Ljava/lang/String;

    .line 236
    iput v6, v1, Lm0/s;->F:I

    .line 237
    iput v14, v1, Lm0/s;->G:I

    move-object/from16 v6, v43

    .line 238
    iput-object v6, v1, Lm0/s;->r:Lm0/n;

    move-object/from16 v9, p5

    .line 239
    iput-object v9, v1, Lm0/s;->d:Ljava/lang/String;

    .line 240
    iput-object v0, v1, Lm0/s;->j:Ljava/lang/String;

    .line 241
    new-instance v0, Lm0/t;

    invoke-direct {v0, v1}, Lm0/t;-><init>(Lm0/s;)V

    move-object/from16 v1, p8

    .line 242
    iput-object v0, v1, Lc/g;->K:Ljava/lang/Object;

    move/from16 v4, v34

    move/from16 v3, v35

    move/from16 v0, v37

    move/from16 v15, v41

    const/16 v7, 0x20

    const/4 v11, 0x3

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/16 v14, 0x1f

    move-object/from16 v10, p0

    goto/16 :goto_50

    .line 243
    :cond_7a
    const-string v0, "Cannot determine channel count of presentation."

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    .line 244
    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_7c
    move/from16 v37, v1

    move-object/from16 v36, v5

    move-object v1, v6

    move-object v6, v8

    move/from16 v38, v9

    move/from16 v40, v11

    move/from16 v41, v15

    const/16 v5, 0x42

    const/16 v8, 0xd

    move-object v9, v4

    const/16 v4, 0x10

    const v0, 0x646d6c70

    if-ne v2, v0, :cond_7e

    if-lez v41, :cond_7d

    move-object/from16 v10, p0

    move-object/from16 v14, p9

    move-object/from16 v13, v26

    move-object/from16 v5, v36

    move/from16 v8, v38

    move/from16 v12, v40

    move/from16 v15, v41

    move/from16 v34, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v35, 0x2

    goto/16 :goto_5d

    .line 245
    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v15, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_7e
    move/from16 v15, v41

    const v0, 0x64647473

    if-eq v2, v0, :cond_7f

    const v0, 0x75647473

    if-ne v2, v0, :cond_80

    :cond_7f
    move/from16 v0, v37

    const/4 v4, 0x2

    const/16 v7, 0x20

    const/4 v11, 0x3

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/16 v14, 0x1f

    move-object/from16 v10, p0

    goto/16 :goto_4f

    :cond_80
    const v0, 0x644f7073

    if-ne v2, v0, :cond_82

    const/16 v0, 0x8

    add-int/lit8 v11, v40, -0x8

    .line 246
    sget-object v2, Lo1/e;->a:[B

    array-length v3, v2

    add-int/2addr v3, v11

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    add-int/lit8 v7, v38, 0x8

    move-object/from16 v10, p0

    .line 247
    invoke-virtual {v10, v7}, Lp0/E;->L(I)V

    .line 248
    array-length v2, v2

    invoke-virtual {v10, v2, v3, v11}, Lp0/E;->j(I[BI)V

    .line 249
    invoke-static {v3}, LZ3/H;->c([B)Ljava/util/ArrayList;

    move-result-object v14

    :goto_42
    move-object/from16 v13, v26

    :cond_81
    :goto_43
    move-object/from16 v5, v36

    :goto_44
    move/from16 v8, v38

    move/from16 v12, v40

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_5d

    :cond_82
    const/16 v0, 0x8

    move-object/from16 v10, p0

    const v3, 0x64664c61

    if-ne v2, v3, :cond_83

    const/16 v3, 0xc

    add-int/lit8 v11, v40, -0xc

    add-int/lit8 v2, v40, -0x8

    .line 250
    new-array v2, v2, [B

    const/16 v7, 0x66

    const/4 v12, 0x0

    .line 251
    aput-byte v7, v2, v12

    const/16 v7, 0x4c

    const/4 v12, 0x1

    .line 252
    aput-byte v7, v2, v12

    const/16 v7, 0x61

    const/4 v12, 0x2

    .line 253
    aput-byte v7, v2, v12

    const/16 v7, 0x43

    const/4 v12, 0x3

    .line 254
    aput-byte v7, v2, v12

    add-int/lit8 v7, v38, 0xc

    .line 255
    invoke-virtual {v10, v7}, Lp0/E;->L(I)V

    const/4 v7, 0x4

    .line 256
    invoke-virtual {v10, v7, v2, v11}, Lp0/E;->j(I[BI)V

    .line 257
    invoke-static {v2}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v14

    goto :goto_42

    :cond_83
    const/16 v3, 0xc

    const v11, 0x616c6163

    if-ne v2, v11, :cond_84

    add-int/lit8 v2, v40, -0xc

    .line 258
    new-array v7, v2, [B

    add-int/lit8 v12, v38, 0xc

    .line 259
    invoke-virtual {v10, v12}, Lp0/E;->L(I)V

    const/4 v3, 0x0

    .line 260
    invoke-virtual {v10, v3, v7, v2}, Lp0/E;->j(I[BI)V

    .line 261
    sget-object v2, Lp0/g;->a:[B

    .line 262
    new-instance v2, Lp0/E;

    invoke-direct {v2, v7}, Lp0/E;-><init>([B)V

    const/16 v3, 0x9

    .line 263
    invoke-virtual {v2, v3}, Lp0/E;->L(I)V

    .line 264
    invoke-virtual {v2}, Lp0/E;->z()I

    move-result v3

    const/16 v12, 0x14

    .line 265
    invoke-virtual {v2, v12}, Lp0/E;->L(I)V

    .line 266
    invoke-virtual {v2}, Lp0/E;->D()I

    move-result v2

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 268
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 269
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 270
    invoke-static {v7}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v14

    move/from16 v35, v2

    move/from16 v34, v3

    goto/16 :goto_42

    :cond_84
    const v3, 0x69616362

    if-ne v2, v3, :cond_8e

    const/16 v12, 0x9

    add-int/lit8 v2, v38, 0x9

    .line 271
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    const-wide/16 v2, 0x0

    move-wide v13, v2

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v12, :cond_87

    .line 272
    iget v0, v10, Lp0/E;->b:I

    iget v4, v10, Lp0/E;->c:I

    if-eq v0, v4, :cond_86

    .line 273
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    move-result v0

    int-to-long v11, v0

    const-wide/16 v41, 0x7f

    and-long v41, v11, v41

    const/4 v0, 0x7

    mul-int/lit8 v4, v7, 0x7

    shl-long v41, v41, v4

    or-long v13, v13, v41

    const-wide/16 v41, 0x80

    and-long v11, v11, v41

    cmp-long v4, v11, v2

    if-nez v4, :cond_85

    goto :goto_46

    :cond_85
    const/4 v4, 0x1

    add-int/2addr v7, v4

    const/16 v0, 0x8

    const/16 v4, 0x10

    const v11, 0x616c6163

    const/16 v12, 0x9

    goto :goto_45

    .line 274
    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to read a byte over the limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    const/4 v0, 0x7

    .line 275
    :goto_46
    invoke-static {v13, v14}, Ly4/k;->y(J)I

    move-result v2

    .line 276
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 277
    invoke-virtual {v10, v4, v3, v2}, Lp0/E;->j(I[BI)V

    .line 278
    sget-object v2, Lp0/g;->a:[B

    .line 279
    new-instance v2, Lp0/E;

    invoke-direct {v2, v3}, Lp0/E;-><init>([B)V

    .line 280
    :goto_47
    invoke-virtual {v2}, Lp0/E;->z()I

    move-result v4

    const/16 v7, 0x80

    and-int/2addr v4, v7

    if-eqz v4, :cond_88

    goto :goto_47

    :cond_88
    const/4 v4, 0x4

    .line 281
    invoke-virtual {v2, v4}, Lp0/E;->M(I)V

    .line 282
    invoke-virtual {v2}, Lp0/E;->z()I

    move-result v4

    .line 283
    invoke-virtual {v2}, Lp0/E;->z()I

    move-result v11

    const/4 v12, 0x1

    .line 284
    invoke-virtual {v2, v12}, Lp0/E;->M(I)V

    .line 285
    :goto_48
    invoke-virtual {v2}, Lp0/E;->z()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_89

    goto :goto_48

    .line 286
    :cond_89
    :goto_49
    invoke-virtual {v2}, Lp0/E;->z()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_8a

    goto :goto_49

    .line 287
    :cond_8a
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x4

    invoke-virtual {v2, v13, v12}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    .line 288
    const-string v14, "mp4a"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8d

    .line 289
    :goto_4a
    invoke-virtual {v2}, Lp0/E;->z()I

    move-result v14

    and-int/2addr v14, v7

    if-eqz v14, :cond_8b

    goto :goto_4a

    :cond_8b
    const/4 v14, 0x2

    .line 290
    invoke-virtual {v2, v14}, Lp0/E;->M(I)V

    .line 291
    new-instance v7, Lp0/D;

    invoke-direct {v7}, Lp0/D;-><init>()V

    .line 292
    invoke-virtual {v7, v2}, Lp0/D;->q(Lp0/E;)V

    const/4 v2, 0x5

    .line 293
    invoke-virtual {v7, v2}, Lp0/D;->i(I)I

    move-result v2

    const/16 v14, 0x1f

    const/4 v0, 0x6

    if-ne v2, v14, :cond_8c

    .line 294
    invoke-virtual {v7, v0}, Lp0/D;->i(I)I

    move-result v2

    const/16 v7, 0x20

    add-int/2addr v2, v7

    .line 295
    :cond_8c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".40."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4b

    :cond_8d
    const/4 v0, 0x6

    const/16 v14, 0x1f

    .line 296
    :goto_4b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x3

    new-array v7, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v7, v16

    const/4 v2, 0x1

    aput-object v4, v7, v2

    const/4 v4, 0x2

    aput-object v12, v7, v4

    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 297
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "iamf.%03X.%03X.%s"

    invoke-static {v2, v12, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v3

    move-object v13, v2

    move-object v14, v3

    goto/16 :goto_43

    :cond_8e
    const/4 v0, 0x6

    const/4 v4, 0x2

    const/4 v11, 0x3

    const/4 v13, 0x4

    const/16 v14, 0x1f

    const v3, 0x70636d43

    if-ne v2, v3, :cond_93

    const/16 v12, 0xc

    add-int/lit8 v2, v38, 0xc

    .line 299
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_8f

    .line 301
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4c

    :cond_8f
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 302
    :goto_4c
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    move-result v3

    const v7, 0x6970636d

    move/from16 v0, v37

    if-ne v0, v7, :cond_90

    .line 303
    invoke-static {v3, v2}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v7, 0x20

    goto :goto_4e

    :cond_90
    const v7, 0x6670636d

    if-ne v0, v7, :cond_91

    const/16 v7, 0x20

    if-ne v3, v7, :cond_92

    .line 304
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    const/4 v2, 0x4

    :goto_4d
    const/4 v3, -0x1

    goto :goto_4e

    :cond_91
    const/16 v7, 0x20

    :cond_92
    move/from16 v2, v21

    goto :goto_4d

    :goto_4e
    move-object/from16 v14, p9

    move/from16 v37, v0

    move/from16 v21, v2

    move-object/from16 v13, v26

    if-eq v2, v3, :cond_81

    move-object/from16 v5, v30

    goto/16 :goto_44

    :cond_93
    move/from16 v0, v37

    const/16 v7, 0x20

    const/16 v12, 0xc

    move/from16 v4, v34

    move/from16 v3, v35

    goto :goto_50

    .line 306
    :goto_4f
    new-instance v2, Lm0/s;

    invoke-direct {v2}, Lm0/s;-><init>()V

    .line 307
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lm0/s;->a:Ljava/lang/String;

    .line 308
    invoke-static/range {v36 .. v36}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lm0/s;->n:Ljava/lang/String;

    move/from16 v3, v35

    .line 309
    iput v3, v2, Lm0/s;->F:I

    move/from16 v4, v34

    .line 310
    iput v4, v2, Lm0/s;->G:I

    .line 311
    iput-object v6, v2, Lm0/s;->r:Lm0/n;

    .line 312
    iput-object v9, v2, Lm0/s;->d:Ljava/lang/String;

    .line 313
    new-instance v5, Lm0/t;

    invoke-direct {v5, v2}, Lm0/t;-><init>(Lm0/s;)V

    .line 314
    iput-object v5, v1, Lc/g;->K:Ljava/lang/Object;

    :goto_50
    move-object/from16 v14, p9

    move/from16 v37, v0

    move/from16 v35, v3

    move/from16 v34, v4

    goto/16 :goto_42

    :goto_51
    if-ne v2, v7, :cond_94

    move/from16 v2, v38

    move v8, v2

    move/from16 v12, v40

    :goto_52
    const/4 v3, -0x1

    goto :goto_57

    .line 315
    :cond_94
    iget v2, v10, Lp0/E;->b:I

    move/from16 v8, v38

    if-lt v2, v8, :cond_95

    const/4 v11, 0x1

    :goto_53
    const/4 v12, 0x0

    goto :goto_54

    :cond_95
    const/4 v11, 0x0

    goto :goto_53

    .line 316
    :goto_54
    invoke-static {v12, v11}, LE3/f;->c(Ljava/lang/String;Z)V

    :goto_55
    sub-int v11, v2, v8

    move/from16 v12, v40

    if-ge v11, v12, :cond_98

    .line 317
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    move-result v11

    if-lez v11, :cond_96

    const/4 v13, 0x1

    goto :goto_56

    :cond_96
    const/4 v13, 0x0

    .line 319
    :goto_56
    invoke-static {v3, v13}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    move-result v13

    if-ne v13, v7, :cond_97

    goto :goto_52

    :cond_97
    add-int/2addr v2, v11

    move/from16 v40, v12

    const/4 v13, 0x4

    goto :goto_55

    :cond_98
    const/4 v2, -0x1

    goto :goto_52

    :goto_57
    if-eq v2, v3, :cond_a0

    .line 321
    invoke-static {v2, v10}, Lo1/e;->c(ILp0/E;)Lo1/c;

    move-result-object v2

    .line 322
    iget-object v7, v2, Lo1/c;->a:Ljava/lang/String;

    iget-object v11, v2, Lo1/c;->b:[B

    if-eqz v11, :cond_9f

    .line 323
    const-string v13, "audio/vorbis"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 324
    new-instance v13, Lp0/E;

    invoke-direct {v13, v11}, Lp0/E;-><init>([B)V

    const/4 v3, 0x1

    .line 325
    invoke-virtual {v13, v3}, Lp0/E;->M(I)V

    const/4 v14, 0x0

    .line 326
    :goto_58
    invoke-virtual {v13}, Lp0/E;->a()I

    move-result v24

    if-lez v24, :cond_99

    .line 327
    iget-object v3, v13, Lp0/E;->a:[B

    move/from16 v37, v0

    iget v0, v13, Lp0/E;->b:I

    aget-byte v0, v3, v0

    const/16 v3, 0xff

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9a

    add-int/2addr v14, v3

    const/4 v0, 0x1

    .line 328
    invoke-virtual {v13, v0}, Lp0/E;->M(I)V

    move/from16 v0, v37

    const/4 v3, 0x1

    goto :goto_58

    :cond_99
    move/from16 v37, v0

    .line 329
    :cond_9a
    invoke-virtual {v13}, Lp0/E;->z()I

    move-result v0

    add-int/2addr v0, v14

    const/4 v3, 0x0

    .line 330
    :goto_59
    invoke-virtual {v13}, Lp0/E;->a()I

    move-result v14

    if-lez v14, :cond_9c

    .line 331
    iget-object v14, v13, Lp0/E;->a:[B

    move-object/from16 v31, v2

    iget v2, v13, Lp0/E;->b:I

    aget-byte v2, v14, v2

    const/16 v14, 0xff

    and-int/2addr v2, v14

    if-ne v2, v14, :cond_9b

    add-int/2addr v3, v14

    const/4 v2, 0x1

    .line 332
    invoke-virtual {v13, v2}, Lp0/E;->M(I)V

    move-object/from16 v2, v31

    goto :goto_59

    :cond_9b
    const/4 v2, 0x1

    goto :goto_5a

    :cond_9c
    move-object/from16 v31, v2

    const/4 v2, 0x1

    const/16 v14, 0xff

    .line 333
    :goto_5a
    invoke-virtual {v13}, Lp0/E;->z()I

    move-result v17

    add-int v17, v17, v3

    .line 334
    new-array v3, v0, [B

    .line 335
    iget v13, v13, Lp0/E;->b:I

    const/4 v2, 0x0

    .line 336
    invoke-static {v11, v13, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v0

    add-int v13, v13, v17

    .line 337
    array-length v0, v11

    sub-int/2addr v0, v13

    .line 338
    new-array v14, v0, [B

    .line 339
    invoke-static {v11, v13, v14, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-static {v3, v14}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    move-result-object v14

    move v0, v5

    move-object v5, v7

    move-object/from16 v13, v26

    const/4 v3, 0x0

    goto :goto_5c

    :cond_9d
    move/from16 v37, v0

    move-object/from16 v31, v2

    const/4 v2, 0x0

    .line 341
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 342
    new-instance v0, Lp0/D;

    const/4 v3, 0x0

    invoke-direct {v0, v11, v2, v3}, Lp0/D;-><init>([BILjava/lang/Object;)V

    invoke-static {v0, v2}, LW0/a;->g(Lp0/D;Z)LW0/r;

    move-result-object v0

    .line 343
    iget v4, v0, LW0/r;->b:I

    iget v5, v0, LW0/r;->c:I

    iget-object v13, v0, LW0/r;->a:Ljava/lang/String;

    goto :goto_5b

    :cond_9e
    const/4 v3, 0x0

    move-object/from16 v13, v26

    .line 344
    :goto_5b
    invoke-static {v11}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    move-result-object v14

    move v0, v5

    move-object v5, v7

    goto :goto_5c

    :cond_9f
    move/from16 v37, v0

    move-object/from16 v31, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v14, p9

    move v0, v5

    move-object v5, v7

    move-object/from16 v13, v26

    goto :goto_5c

    :cond_a0
    move/from16 v37, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v14, p9

    move v0, v5

    move-object/from16 v13, v26

    move-object/from16 v5, v36

    :goto_5c
    move/from16 v35, v0

    move/from16 v34, v4

    :goto_5d
    add-int v0, v8, v12

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, p7

    move-object v8, v6

    move-object v4, v9

    move/from16 v12, v35

    move v9, v0

    move-object v6, v1

    move-object v0, v10

    move/from16 v10, v34

    move/from16 v1, v37

    goto/16 :goto_11

    :cond_a1
    move-object v9, v4

    move-object/from16 v36, v5

    move-object v1, v6

    move-object v6, v8

    move v4, v10

    move v5, v12

    move-object/from16 v26, v13

    move-object/from16 p9, v14

    .line 345
    iget-object v0, v1, Lc/g;->K:Ljava/lang/Object;

    check-cast v0, Lm0/t;

    if-nez v0, :cond_a4

    if-eqz v36, :cond_a4

    .line 346
    new-instance v0, Lm0/s;

    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 347
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lm0/s;->a:Ljava/lang/String;

    .line 348
    invoke-static/range {v36 .. v36}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lm0/s;->n:Ljava/lang/String;

    move-object/from16 v13, v26

    .line 349
    iput-object v13, v0, Lm0/s;->j:Ljava/lang/String;

    .line 350
    iput v5, v0, Lm0/s;->F:I

    .line 351
    iput v4, v0, Lm0/s;->G:I

    move/from16 v2, v21

    .line 352
    iput v2, v0, Lm0/s;->H:I

    move-object/from16 v14, p9

    .line 353
    iput-object v14, v0, Lm0/s;->q:Ljava/util/List;

    .line 354
    iput-object v6, v0, Lm0/s;->r:Lm0/n;

    .line 355
    iput-object v9, v0, Lm0/s;->d:Ljava/lang/String;

    move-object/from16 v2, v31

    if-eqz v2, :cond_a2

    .line 356
    iget-wide v3, v2, Lo1/c;->c:J

    invoke-static {v3, v4}, Ly4/k;->d0(J)I

    move-result v3

    .line 357
    iput v3, v0, Lm0/s;->h:I

    .line 358
    iget-wide v2, v2, Lo1/c;->d:J

    invoke-static {v2, v3}, Ly4/k;->d0(J)I

    move-result v2

    .line 359
    iput v2, v0, Lm0/s;->i:I

    goto :goto_5e

    :cond_a2
    move-object/from16 v2, v32

    if-eqz v2, :cond_a3

    .line 360
    iget-wide v3, v2, LU0/C;->a:J

    .line 361
    invoke-static {v3, v4}, Ly4/k;->d0(J)I

    move-result v3

    .line 362
    iput v3, v0, Lm0/s;->h:I

    .line 363
    iget-wide v2, v2, LU0/C;->b:J

    .line 364
    invoke-static {v2, v3}, Ly4/k;->d0(J)I

    move-result v2

    .line 365
    iput v2, v0, Lm0/s;->i:I

    .line 366
    :cond_a3
    :goto_5e
    new-instance v2, Lm0/t;

    invoke-direct {v2, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 367
    iput-object v2, v1, Lc/g;->K:Ljava/lang/Object;

    :cond_a4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(ILp0/E;)Lo1/c;
    .locals 12

    .line 1
    add-int/lit8 p0, p0, 0xc

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lp0/E;->L(I)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Lp0/E;->M(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lo1/e;->d(Lp0/E;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Lp0/E;->M(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lp0/E;->M(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v2}, Lp0/E;->M(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lp0/E;->M(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, p0}, Lp0/E;->M(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lo1/e;->d(Lp0/E;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lm0/O;->f(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p1, v0}, Lp0/E;->M(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lp0/E;->B()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Lp0/E;->B()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p1, p0}, Lp0/E;->M(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lo1/e;->d(Lp0/E;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    new-array v5, p0, [B

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p1, v6, v5, p0}, Lp0/E;->j(I[BI)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Lo1/c;

    .line 111
    .line 112
    const-wide/16 v6, -0x1

    .line 113
    .line 114
    const-wide/16 v8, 0x0

    .line 115
    .line 116
    cmp-long p1, v3, v8

    .line 117
    .line 118
    if-lez p1, :cond_4

    .line 119
    .line 120
    move-wide v10, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move-wide v10, v6

    .line 123
    :goto_0
    cmp-long p1, v0, v8

    .line 124
    .line 125
    if-lez p1, :cond_5

    .line 126
    .line 127
    move-wide v6, v0

    .line 128
    :cond_5
    move-object v1, p0

    .line 129
    move-object v3, v5

    .line 130
    move-wide v4, v10

    .line 131
    invoke-direct/range {v1 .. v7}, Lo1/c;-><init>(Ljava/lang/String;[BJJ)V

    .line 132
    .line 133
    .line 134
    return-object p0

    .line 135
    :cond_6
    :goto_1
    new-instance p0, Lo1/c;

    .line 136
    .line 137
    const-wide/16 v4, -0x1

    .line 138
    .line 139
    const-wide/16 v6, -0x1

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    move-object v1, p0

    .line 143
    invoke-direct/range {v1 .. v7}, Lo1/c;-><init>(Ljava/lang/String;[BJJ)V

    .line 144
    .line 145
    .line 146
    return-object p0
.end method

.method public static d(Lp0/E;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp0/E;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lp0/E;->z()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method public static e(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static f(Lq0/c;)Lm0/N;
    .locals 14

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq0/c;->f(I)Lq0/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lq0/c;->f(I)Lq0/d;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lq0/c;->f(I)Lq0/d;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    if-eqz p0, :cond_8

    .line 28
    .line 29
    iget-object v0, v0, Lq0/d;->c:Lp0/E;

    .line 30
    .line 31
    const/16 v3, 0x10

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lp0/E;->L(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const v3, 0x6d647461

    .line 41
    .line 42
    .line 43
    if-eq v0, v3, :cond_0

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    iget-object v0, v1, Lq0/d;->c:Lp0/E;

    .line 48
    .line 49
    const/16 v1, 0xc

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lp0/E;->L(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-array v3, v1, [Ljava/lang/String;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    :goto_0
    const/16 v6, 0x8

    .line 63
    .line 64
    if-ge v5, v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/4 v8, 0x4

    .line 71
    invoke-virtual {v0, v8}, Lp0/E;->M(I)V

    .line 72
    .line 73
    .line 74
    sub-int/2addr v7, v6

    .line 75
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {v0, v7, v6}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    aput-object v6, v3, v5

    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object p0, p0, Lq0/d;->c:Lp0/E;

    .line 87
    .line 88
    invoke-virtual {p0, v6}, Lp0/E;->L(I)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-le v5, v6, :cond_6

    .line 101
    .line 102
    iget v5, p0, Lp0/E;->b:I

    .line 103
    .line 104
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    add-int/lit8 v8, v8, -0x1

    .line 113
    .line 114
    if-ltz v8, :cond_4

    .line 115
    .line 116
    if-ge v8, v1, :cond_4

    .line 117
    .line 118
    aget-object v8, v3, v8

    .line 119
    .line 120
    add-int v9, v5, v7

    .line 121
    .line 122
    :goto_2
    iget v10, p0, Lp0/E;->b:I

    .line 123
    .line 124
    if-ge v10, v9, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    const v13, 0x64617461

    .line 135
    .line 136
    .line 137
    if-ne v12, v13, :cond_2

    .line 138
    .line 139
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    add-int/lit8 v11, v11, -0x10

    .line 148
    .line 149
    new-array v12, v11, [B

    .line 150
    .line 151
    invoke-virtual {p0, v4, v12, v11}, Lp0/E;->j(I[BI)V

    .line 152
    .line 153
    .line 154
    new-instance v11, Lq0/a;

    .line 155
    .line 156
    invoke-direct {v11, v8, v12, v10, v9}, Lq0/a;-><init>(Ljava/lang/String;[BII)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_2
    add-int/2addr v10, v11

    .line 161
    invoke-virtual {p0, v10}, Lp0/E;->L(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_3
    move-object v11, v2

    .line 166
    :goto_3
    if-eqz v11, :cond_5

    .line 167
    .line 168
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_4
    const-string v9, "Skipped metadata with unknown key index: "

    .line 173
    .line 174
    const-string v10, "BoxParsers"

    .line 175
    .line 176
    invoke-static {v9, v8, v10}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    :goto_4
    add-int/2addr v5, v7

    .line 180
    invoke-virtual {p0, v5}, Lp0/E;->L(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-eqz p0, :cond_7

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    new-instance v2, Lm0/N;

    .line 192
    .line 193
    invoke-direct {v2, v0}, Lm0/N;-><init>(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    :goto_5
    return-object v2
.end method

.method public static g(Lp0/E;)Lq0/g;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lp0/E;->L(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lo1/e;->e(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lp0/E;->B()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lp0/E;->B()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lp0/E;->t()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Lp0/E;->t()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lp0/E;->B()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance p0, Lq0/g;

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v4 .. v10}, Lq0/g;-><init>(JJJ)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public static h(IILp0/E;)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    iget v1, v0, Lp0/E;->b:I

    .line 4
    .line 5
    :goto_0
    sub-int v2, v1, p0

    .line 6
    .line 7
    move/from16 v4, p1

    .line 8
    .line 9
    if-ge v2, v4, :cond_10

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lp0/E;->L(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v7, 0x0

    .line 25
    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 26
    .line 27
    invoke-static {v8, v7}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const v8, 0x73696e66

    .line 35
    .line 36
    .line 37
    if-ne v7, v8, :cond_f

    .line 38
    .line 39
    add-int/lit8 v7, v1, 0x8

    .line 40
    .line 41
    const/4 v8, -0x1

    .line 42
    const/4 v9, -0x1

    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v15, 0x0

    .line 46
    :goto_2
    sub-int v12, v7, v1

    .line 47
    .line 48
    const/4 v13, 0x4

    .line 49
    if-ge v12, v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v7}, Lp0/E;->L(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const v3, 0x66726d61

    .line 63
    .line 64
    .line 65
    if-ne v14, v3, :cond_1

    .line 66
    .line 67
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    goto :goto_3

    .line 76
    :cond_1
    const v3, 0x7363686d

    .line 77
    .line 78
    .line 79
    if-ne v14, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0, v13}, Lp0/E;->M(I)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    invoke-virtual {v0, v13, v3}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    const v3, 0x73636869

    .line 92
    .line 93
    .line 94
    if-ne v14, v3, :cond_3

    .line 95
    .line 96
    move v9, v7

    .line 97
    move v10, v12

    .line 98
    :cond_3
    :goto_3
    add-int/2addr v7, v12

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const-string v3, "cenc"

    .line 101
    .line 102
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    const-string v3, "cbc1"

    .line 109
    .line 110
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    const-string v3, "cens"

    .line 117
    .line 118
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_6

    .line 123
    .line 124
    const-string v3, "cbcs"

    .line 125
    .line 126
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    const/4 v3, 0x0

    .line 134
    goto/16 :goto_c

    .line 135
    .line 136
    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    .line 137
    .line 138
    const/4 v3, 0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_7
    const/4 v3, 0x0

    .line 141
    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 142
    .line 143
    invoke-static {v7, v3}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    if-eq v9, v8, :cond_8

    .line 147
    .line 148
    const/4 v3, 0x1

    .line 149
    goto :goto_6

    .line 150
    :cond_8
    const/4 v3, 0x0

    .line 151
    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 152
    .line 153
    invoke-static {v7, v3}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v3, v9, 0x8

    .line 157
    .line 158
    :goto_7
    sub-int v7, v3, v9

    .line 159
    .line 160
    if-ge v7, v10, :cond_d

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Lp0/E;->L(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    const v12, 0x74656e63

    .line 174
    .line 175
    .line 176
    if-ne v8, v12, :cond_c

    .line 177
    .line 178
    invoke-virtual/range {p2 .. p2}, Lp0/E;->l()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-static {v3}, Lo1/e;->e(I)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v0, v6}, Lp0/E;->M(I)V

    .line 187
    .line 188
    .line 189
    if-nez v3, :cond_9

    .line 190
    .line 191
    invoke-virtual {v0, v6}, Lp0/E;->M(I)V

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    const/4 v14, 0x0

    .line 196
    goto :goto_8

    .line 197
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lp0/E;->z()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    and-int/lit16 v7, v3, 0xf0

    .line 202
    .line 203
    shr-int/2addr v7, v13

    .line 204
    and-int/lit8 v3, v3, 0xf

    .line 205
    .line 206
    move v14, v7

    .line 207
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lp0/E;->z()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-ne v7, v6, :cond_a

    .line 212
    .line 213
    const/4 v10, 0x1

    .line 214
    goto :goto_9

    .line 215
    :cond_a
    const/4 v10, 0x0

    .line 216
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lp0/E;->z()I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    const/16 v7, 0x10

    .line 221
    .line 222
    new-array v13, v7, [B

    .line 223
    .line 224
    invoke-virtual {v0, v5, v13, v7}, Lp0/E;->j(I[BI)V

    .line 225
    .line 226
    .line 227
    if-eqz v10, :cond_b

    .line 228
    .line 229
    if-nez v12, :cond_b

    .line 230
    .line 231
    invoke-virtual/range {p2 .. p2}, Lp0/E;->z()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    new-array v8, v7, [B

    .line 236
    .line 237
    invoke-virtual {v0, v5, v8, v7}, Lp0/E;->j(I[BI)V

    .line 238
    .line 239
    .line 240
    move-object/from16 v16, v8

    .line 241
    .line 242
    goto :goto_a

    .line 243
    :cond_b
    const/16 v16, 0x0

    .line 244
    .line 245
    :goto_a
    new-instance v7, Lo1/q;

    .line 246
    .line 247
    move-object v9, v7

    .line 248
    move-object v8, v15

    .line 249
    move v15, v3

    .line 250
    invoke-direct/range {v9 .. v16}, Lo1/q;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 251
    .line 252
    .line 253
    move-object v3, v7

    .line 254
    goto :goto_b

    .line 255
    :cond_c
    move-object v8, v15

    .line 256
    add-int/2addr v3, v7

    .line 257
    goto :goto_7

    .line 258
    :cond_d
    move-object v8, v15

    .line 259
    const/4 v3, 0x0

    .line 260
    :goto_b
    if-eqz v3, :cond_e

    .line 261
    .line 262
    const/4 v5, 0x1

    .line 263
    :cond_e
    const-string v6, "tenc atom is mandatory"

    .line 264
    .line 265
    invoke-static {v6, v5}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 266
    .line 267
    .line 268
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    :goto_c
    if-eqz v3, :cond_f

    .line 275
    .line 276
    return-object v3

    .line 277
    :cond_f
    add-int/2addr v1, v2

    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_10
    const/4 v1, 0x0

    .line 281
    return-object v1
.end method

.method public static i(Lp0/E;Lcom/google/android/gms/internal/ads/f2;Ljava/lang/String;Lm0/n;Z)Lc/g;
    .locals 62

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move-object/from16 v13, p3

    .line 8
    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    invoke-virtual {v10, v1}, Lp0/E;->L(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v14, Lc/g;

    .line 19
    .line 20
    const/4 v15, 0x7

    .line 21
    invoke-direct {v14, v0, v15}, Lc/g;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v0, :cond_88

    .line 26
    .line 27
    iget v6, v10, Lp0/E;->b:I

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-lez v7, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 39
    .line 40
    invoke-static {v8, v1}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget v9, v11, Lcom/google/android/gms/internal/ads/f2;->a:I

    .line 48
    .line 49
    const v5, 0x61766331

    .line 50
    .line 51
    .line 52
    const v15, 0x48323633

    .line 53
    .line 54
    .line 55
    const v4, 0x6d317620

    .line 56
    .line 57
    .line 58
    const v2, 0x656e6376

    .line 59
    .line 60
    .line 61
    if-eq v1, v5, :cond_1

    .line 62
    .line 63
    const v5, 0x61766333

    .line 64
    .line 65
    .line 66
    if-eq v1, v5, :cond_1

    .line 67
    .line 68
    if-eq v1, v2, :cond_1

    .line 69
    .line 70
    if-eq v1, v4, :cond_1

    .line 71
    .line 72
    const v5, 0x6d703476

    .line 73
    .line 74
    .line 75
    if-eq v1, v5, :cond_1

    .line 76
    .line 77
    const v5, 0x68766331

    .line 78
    .line 79
    .line 80
    if-eq v1, v5, :cond_1

    .line 81
    .line 82
    const v5, 0x68657631

    .line 83
    .line 84
    .line 85
    if-eq v1, v5, :cond_1

    .line 86
    .line 87
    const v5, 0x73323633

    .line 88
    .line 89
    .line 90
    if-eq v1, v5, :cond_1

    .line 91
    .line 92
    if-eq v1, v15, :cond_1

    .line 93
    .line 94
    const v5, 0x68323633

    .line 95
    .line 96
    .line 97
    if-eq v1, v5, :cond_1

    .line 98
    .line 99
    const v5, 0x76703038

    .line 100
    .line 101
    .line 102
    if-eq v1, v5, :cond_1

    .line 103
    .line 104
    const v5, 0x76703039

    .line 105
    .line 106
    .line 107
    if-eq v1, v5, :cond_1

    .line 108
    .line 109
    const v5, 0x61763031

    .line 110
    .line 111
    .line 112
    if-eq v1, v5, :cond_1

    .line 113
    .line 114
    const v5, 0x64766176

    .line 115
    .line 116
    .line 117
    if-eq v1, v5, :cond_1

    .line 118
    .line 119
    const v5, 0x64766131

    .line 120
    .line 121
    .line 122
    if-eq v1, v5, :cond_1

    .line 123
    .line 124
    const v5, 0x64766865

    .line 125
    .line 126
    .line 127
    if-eq v1, v5, :cond_1

    .line 128
    .line 129
    const v5, 0x64766831

    .line 130
    .line 131
    .line 132
    if-eq v1, v5, :cond_1

    .line 133
    .line 134
    const v5, 0x61707631

    .line 135
    .line 136
    .line 137
    if-ne v1, v5, :cond_2

    .line 138
    .line 139
    :cond_1
    move/from16 v21, v0

    .line 140
    .line 141
    move/from16 v19, v3

    .line 142
    .line 143
    move v15, v6

    .line 144
    move v12, v7

    .line 145
    const v0, 0x48323633

    .line 146
    .line 147
    .line 148
    const/16 v3, 0x10

    .line 149
    .line 150
    const/4 v11, 0x1

    .line 151
    goto/16 :goto_d

    .line 152
    .line 153
    :cond_2
    const v2, 0x6d703461

    .line 154
    .line 155
    .line 156
    if-eq v1, v2, :cond_3

    .line 157
    .line 158
    const v2, 0x656e6361

    .line 159
    .line 160
    .line 161
    if-eq v1, v2, :cond_3

    .line 162
    .line 163
    const v2, 0x61632d33

    .line 164
    .line 165
    .line 166
    if-eq v1, v2, :cond_3

    .line 167
    .line 168
    const v2, 0x65632d33

    .line 169
    .line 170
    .line 171
    if-eq v1, v2, :cond_3

    .line 172
    .line 173
    const v2, 0x61632d34

    .line 174
    .line 175
    .line 176
    if-eq v1, v2, :cond_3

    .line 177
    .line 178
    const v2, 0x6d6c7061

    .line 179
    .line 180
    .line 181
    if-eq v1, v2, :cond_3

    .line 182
    .line 183
    const v2, 0x64747363

    .line 184
    .line 185
    .line 186
    if-eq v1, v2, :cond_3

    .line 187
    .line 188
    const v2, 0x64747365

    .line 189
    .line 190
    .line 191
    if-eq v1, v2, :cond_3

    .line 192
    .line 193
    const v2, 0x64747368

    .line 194
    .line 195
    .line 196
    if-eq v1, v2, :cond_3

    .line 197
    .line 198
    const v2, 0x6474736c

    .line 199
    .line 200
    .line 201
    if-eq v1, v2, :cond_3

    .line 202
    .line 203
    const v2, 0x64747378

    .line 204
    .line 205
    .line 206
    if-eq v1, v2, :cond_3

    .line 207
    .line 208
    const v2, 0x73616d72

    .line 209
    .line 210
    .line 211
    if-eq v1, v2, :cond_3

    .line 212
    .line 213
    const v2, 0x73617762

    .line 214
    .line 215
    .line 216
    if-eq v1, v2, :cond_3

    .line 217
    .line 218
    const v2, 0x6c70636d

    .line 219
    .line 220
    .line 221
    if-eq v1, v2, :cond_3

    .line 222
    .line 223
    const v2, 0x736f7774

    .line 224
    .line 225
    .line 226
    if-eq v1, v2, :cond_3

    .line 227
    .line 228
    const v2, 0x74776f73

    .line 229
    .line 230
    .line 231
    if-eq v1, v2, :cond_3

    .line 232
    .line 233
    const v2, 0x2e6d7032

    .line 234
    .line 235
    .line 236
    if-eq v1, v2, :cond_3

    .line 237
    .line 238
    const v2, 0x2e6d7033

    .line 239
    .line 240
    .line 241
    if-eq v1, v2, :cond_3

    .line 242
    .line 243
    const v2, 0x6d686131

    .line 244
    .line 245
    .line 246
    if-eq v1, v2, :cond_3

    .line 247
    .line 248
    const v2, 0x6d686d31

    .line 249
    .line 250
    .line 251
    if-eq v1, v2, :cond_3

    .line 252
    .line 253
    const v2, 0x616c6163

    .line 254
    .line 255
    .line 256
    if-eq v1, v2, :cond_3

    .line 257
    .line 258
    const v2, 0x616c6177

    .line 259
    .line 260
    .line 261
    if-eq v1, v2, :cond_3

    .line 262
    .line 263
    const v2, 0x756c6177

    .line 264
    .line 265
    .line 266
    if-eq v1, v2, :cond_3

    .line 267
    .line 268
    const v2, 0x4f707573

    .line 269
    .line 270
    .line 271
    if-eq v1, v2, :cond_3

    .line 272
    .line 273
    const v2, 0x664c6143

    .line 274
    .line 275
    .line 276
    if-eq v1, v2, :cond_3

    .line 277
    .line 278
    const v2, 0x69616d66

    .line 279
    .line 280
    .line 281
    if-eq v1, v2, :cond_3

    .line 282
    .line 283
    const v2, 0x6970636d

    .line 284
    .line 285
    .line 286
    if-eq v1, v2, :cond_3

    .line 287
    .line 288
    const v2, 0x6670636d

    .line 289
    .line 290
    .line 291
    if-ne v1, v2, :cond_4

    .line 292
    .line 293
    :cond_3
    move/from16 v24, v0

    .line 294
    .line 295
    move/from16 v27, v3

    .line 296
    .line 297
    const/4 v5, 0x4

    .line 298
    const/16 v15, 0x10

    .line 299
    .line 300
    const/16 v19, 0x8

    .line 301
    .line 302
    const/16 v20, 0x2

    .line 303
    .line 304
    goto/16 :goto_c

    .line 305
    .line 306
    :cond_4
    const v4, 0x63363038

    .line 307
    .line 308
    .line 309
    const v5, 0x73747070

    .line 310
    .line 311
    .line 312
    const v8, 0x77767474

    .line 313
    .line 314
    .line 315
    const v15, 0x74783367

    .line 316
    .line 317
    .line 318
    const v2, 0x54544d4c

    .line 319
    .line 320
    .line 321
    if-eq v1, v2, :cond_5

    .line 322
    .line 323
    if-eq v1, v15, :cond_5

    .line 324
    .line 325
    if-eq v1, v8, :cond_5

    .line 326
    .line 327
    if-eq v1, v5, :cond_5

    .line 328
    .line 329
    if-eq v1, v4, :cond_5

    .line 330
    .line 331
    const v4, 0x6d703473

    .line 332
    .line 333
    .line 334
    if-ne v1, v4, :cond_6

    .line 335
    .line 336
    :cond_5
    const/16 v4, 0x10

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_6
    const v2, 0x6d657474

    .line 340
    .line 341
    .line 342
    if-ne v1, v2, :cond_8

    .line 343
    .line 344
    const/16 v4, 0x10

    .line 345
    .line 346
    add-int/lit8 v5, v6, 0x10

    .line 347
    .line 348
    invoke-virtual {v10, v5}, Lp0/E;->L(I)V

    .line 349
    .line 350
    .line 351
    if-ne v1, v2, :cond_7

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Lp0/E;->u()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, Lp0/E;->u()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    if-eqz v1, :cond_7

    .line 361
    .line 362
    new-instance v2, Lm0/s;

    .line 363
    .line 364
    invoke-direct {v2}, Lm0/s;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    iput-object v4, v2, Lm0/s;->a:Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    iput-object v1, v2, Lm0/s;->n:Ljava/lang/String;

    .line 378
    .line 379
    new-instance v1, Lm0/t;

    .line 380
    .line 381
    invoke-direct {v1, v2}, Lm0/t;-><init>(Lm0/s;)V

    .line 382
    .line 383
    .line 384
    iput-object v1, v14, Lc/g;->K:Ljava/lang/Object;

    .line 385
    .line 386
    :cond_7
    :goto_2
    move/from16 v21, v0

    .line 387
    .line 388
    move/from16 v19, v3

    .line 389
    .line 390
    move/from16 v47, v6

    .line 391
    .line 392
    move/from16 v46, v7

    .line 393
    .line 394
    move-object v0, v11

    .line 395
    move-object v4, v12

    .line 396
    move-object v1, v14

    .line 397
    :goto_3
    const/4 v2, 0x5

    .line 398
    const/4 v5, 0x3

    .line 399
    const/4 v9, 0x2

    .line 400
    const/16 v12, 0x8

    .line 401
    .line 402
    const/4 v13, 0x0

    .line 403
    const/16 v16, 0xb

    .line 404
    .line 405
    const/16 v17, 0xa

    .line 406
    .line 407
    const/16 v18, 0x7

    .line 408
    .line 409
    goto/16 :goto_61

    .line 410
    .line 411
    :cond_8
    const v2, 0x63616d6d

    .line 412
    .line 413
    .line 414
    if-ne v1, v2, :cond_7

    .line 415
    .line 416
    new-instance v1, Lm0/s;

    .line 417
    .line 418
    invoke-direct {v1}, Lm0/s;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    iput-object v2, v1, Lm0/s;->a:Ljava/lang/String;

    .line 426
    .line 427
    const-string v2, "application/x-camera-motion"

    .line 428
    .line 429
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    iput-object v2, v1, Lm0/s;->n:Ljava/lang/String;

    .line 434
    .line 435
    new-instance v2, Lm0/t;

    .line 436
    .line 437
    invoke-direct {v2, v1}, Lm0/t;-><init>(Lm0/s;)V

    .line 438
    .line 439
    .line 440
    iput-object v2, v14, Lc/g;->K:Ljava/lang/Object;

    .line 441
    .line 442
    goto :goto_2

    .line 443
    :goto_4
    add-int/lit8 v5, v6, 0x10

    .line 444
    .line 445
    invoke-virtual {v10, v5}, Lp0/E;->L(I)V

    .line 446
    .line 447
    .line 448
    const-string v5, "application/ttml+xml"

    .line 449
    .line 450
    const-wide v29, 0x7fffffffffffffffL

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    if-ne v1, v2, :cond_9

    .line 456
    .line 457
    :goto_5
    move/from16 v24, v0

    .line 458
    .line 459
    move/from16 v27, v3

    .line 460
    .line 461
    move-object v1, v5

    .line 462
    move-wide/from16 v3, v29

    .line 463
    .line 464
    const/4 v0, 0x0

    .line 465
    :goto_6
    const/4 v5, 0x4

    .line 466
    const/16 v15, 0x10

    .line 467
    .line 468
    const/16 v19, 0x8

    .line 469
    .line 470
    const/16 v20, 0x2

    .line 471
    .line 472
    goto/16 :goto_a

    .line 473
    .line 474
    :cond_9
    if-ne v1, v15, :cond_a

    .line 475
    .line 476
    add-int/lit8 v1, v7, -0x10

    .line 477
    .line 478
    new-array v2, v1, [B

    .line 479
    .line 480
    const/4 v4, 0x0

    .line 481
    invoke-virtual {v10, v4, v2, v1}, Lp0/E;->j(I[BI)V

    .line 482
    .line 483
    .line 484
    invoke-static {v2}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    const-string v5, "application/x-quicktime-tx3g"

    .line 489
    .line 490
    move/from16 v24, v0

    .line 491
    .line 492
    move-object v0, v1

    .line 493
    move/from16 v27, v3

    .line 494
    .line 495
    move-object v1, v5

    .line 496
    move-wide/from16 v3, v29

    .line 497
    .line 498
    goto :goto_6

    .line 499
    :cond_a
    if-ne v1, v8, :cond_b

    .line 500
    .line 501
    const-string v5, "application/x-mp4-vtt"

    .line 502
    .line 503
    goto :goto_5

    .line 504
    :cond_b
    const v2, 0x73747070

    .line 505
    .line 506
    .line 507
    if-ne v1, v2, :cond_c

    .line 508
    .line 509
    const-wide/16 v29, 0x0

    .line 510
    .line 511
    goto :goto_5

    .line 512
    :cond_c
    const v2, 0x63363038

    .line 513
    .line 514
    .line 515
    if-ne v1, v2, :cond_d

    .line 516
    .line 517
    const/4 v2, 0x1

    .line 518
    iput v2, v14, Lc/g;->I:I

    .line 519
    .line 520
    const-string v5, "application/x-mp4-cea-608"

    .line 521
    .line 522
    goto :goto_5

    .line 523
    :cond_d
    const v2, 0x6d703473

    .line 524
    .line 525
    .line 526
    if-ne v1, v2, :cond_14

    .line 527
    .line 528
    iget v1, v10, Lp0/E;->b:I

    .line 529
    .line 530
    const/4 v2, 0x4

    .line 531
    invoke-virtual {v10, v2}, Lp0/E;->M(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    const v4, 0x65736473

    .line 539
    .line 540
    .line 541
    if-ne v2, v4, :cond_12

    .line 542
    .line 543
    invoke-static {v1, v10}, Lo1/e;->c(ILp0/E;)Lo1/c;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    iget-object v1, v1, Lo1/c;->b:[B

    .line 548
    .line 549
    if-eqz v1, :cond_e

    .line 550
    .line 551
    array-length v2, v1

    .line 552
    const/16 v4, 0x40

    .line 553
    .line 554
    if-eq v2, v4, :cond_f

    .line 555
    .line 556
    :cond_e
    move/from16 v24, v0

    .line 557
    .line 558
    move/from16 v27, v3

    .line 559
    .line 560
    const/4 v3, 0x1

    .line 561
    const/4 v5, 0x4

    .line 562
    const/16 v15, 0x10

    .line 563
    .line 564
    const/16 v19, 0x8

    .line 565
    .line 566
    const/16 v20, 0x2

    .line 567
    .line 568
    goto/16 :goto_b

    .line 569
    .line 570
    :cond_f
    array-length v2, v1

    .line 571
    if-ne v2, v4, :cond_10

    .line 572
    .line 573
    const/4 v2, 0x1

    .line 574
    goto :goto_7

    .line 575
    :cond_10
    const/4 v2, 0x0

    .line 576
    :goto_7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 577
    .line 578
    .line 579
    new-instance v2, Ljava/util/ArrayList;

    .line 580
    .line 581
    const/16 v4, 0x10

    .line 582
    .line 583
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    .line 585
    .line 586
    const/4 v4, 0x0

    .line 587
    :goto_8
    array-length v5, v1

    .line 588
    const/4 v8, 0x3

    .line 589
    sub-int/2addr v5, v8

    .line 590
    if-ge v4, v5, :cond_11

    .line 591
    .line 592
    aget-byte v5, v1, v4

    .line 593
    .line 594
    const/4 v15, 0x1

    .line 595
    add-int/lit8 v21, v4, 0x1

    .line 596
    .line 597
    aget-byte v15, v1, v21

    .line 598
    .line 599
    const/16 v20, 0x2

    .line 600
    .line 601
    add-int/lit8 v21, v4, 0x2

    .line 602
    .line 603
    move/from16 v24, v0

    .line 604
    .line 605
    aget-byte v0, v1, v21

    .line 606
    .line 607
    add-int/lit8 v21, v4, 0x3

    .line 608
    .line 609
    aget-byte v8, v1, v21

    .line 610
    .line 611
    invoke-static {v5, v15, v0, v8}, Ly4/k;->C(BBBB)I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    const/16 v5, 0x10

    .line 616
    .line 617
    shr-int/lit8 v8, v0, 0x10

    .line 618
    .line 619
    const/16 v5, 0xff

    .line 620
    .line 621
    and-int/2addr v8, v5

    .line 622
    move-object/from16 v21, v1

    .line 623
    .line 624
    const/16 v15, 0x8

    .line 625
    .line 626
    shr-int/lit8 v1, v0, 0x8

    .line 627
    .line 628
    and-int/2addr v1, v5

    .line 629
    and-int/2addr v0, v5

    .line 630
    add-int/lit8 v1, v1, -0x80

    .line 631
    .line 632
    const/16 v15, 0x36fb

    .line 633
    .line 634
    const/16 v5, 0x2710

    .line 635
    .line 636
    invoke-static {v1, v15, v5, v8}, LA0/O;->v(IIII)I

    .line 637
    .line 638
    .line 639
    move-result v15

    .line 640
    add-int/lit8 v0, v0, -0x80

    .line 641
    .line 642
    move/from16 v27, v3

    .line 643
    .line 644
    mul-int/lit16 v3, v0, 0xd7f

    .line 645
    .line 646
    div-int/2addr v3, v5

    .line 647
    sub-int v3, v8, v3

    .line 648
    .line 649
    mul-int/lit16 v1, v1, 0x1c01

    .line 650
    .line 651
    div-int/2addr v1, v5

    .line 652
    sub-int/2addr v3, v1

    .line 653
    const/16 v1, 0x457e

    .line 654
    .line 655
    invoke-static {v0, v1, v5, v8}, LA0/O;->v(IIII)I

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    const/4 v1, 0x0

    .line 660
    const/16 v5, 0xff

    .line 661
    .line 662
    invoke-static {v15, v1, v5}, Lp0/M;->i(III)I

    .line 663
    .line 664
    .line 665
    move-result v8

    .line 666
    const/16 v15, 0x10

    .line 667
    .line 668
    shl-int/2addr v8, v15

    .line 669
    invoke-static {v3, v1, v5}, Lp0/M;->i(III)I

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    const/16 v19, 0x8

    .line 674
    .line 675
    shl-int/lit8 v3, v3, 0x8

    .line 676
    .line 677
    or-int/2addr v3, v8

    .line 678
    invoke-static {v0, v1, v5}, Lp0/M;->i(III)I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    or-int/2addr v0, v3

    .line 683
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    const/4 v3, 0x1

    .line 688
    new-array v5, v3, [Ljava/lang/Object;

    .line 689
    .line 690
    aput-object v0, v5, v1

    .line 691
    .line 692
    const-string v0, "%06x"

    .line 693
    .line 694
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    const/4 v5, 0x4

    .line 702
    add-int/2addr v4, v5

    .line 703
    move-object/from16 v1, v21

    .line 704
    .line 705
    move/from16 v0, v24

    .line 706
    .line 707
    move/from16 v3, v27

    .line 708
    .line 709
    goto :goto_8

    .line 710
    :cond_11
    move/from16 v24, v0

    .line 711
    .line 712
    move/from16 v27, v3

    .line 713
    .line 714
    const/4 v3, 0x1

    .line 715
    const/4 v5, 0x4

    .line 716
    const/16 v15, 0x10

    .line 717
    .line 718
    const/16 v19, 0x8

    .line 719
    .line 720
    const/16 v20, 0x2

    .line 721
    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    .line 723
    .line 724
    const-string v1, "size: "

    .line 725
    .line 726
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    iget v1, v11, Lcom/google/android/gms/internal/ads/f2;->d:I

    .line 730
    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const-string v1, "x"

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    iget v1, v11, Lcom/google/android/gms/internal/ads/f2;->e:I

    .line 740
    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string v1, "\npalette: "

    .line 745
    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    new-instance v1, Lp3/e;

    .line 750
    .line 751
    const-string v4, ", "

    .line 752
    .line 753
    invoke-direct {v1, v4}, Lp3/e;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1, v4, v2}, Lp3/e;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    const-string v1, "\n"

    .line 776
    .line 777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 785
    .line 786
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 787
    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-static {v0}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    const-string v1, "application/vobsub"

    .line 797
    .line 798
    goto :goto_9

    .line 799
    :cond_12
    move/from16 v24, v0

    .line 800
    .line 801
    move/from16 v27, v3

    .line 802
    .line 803
    const/4 v3, 0x1

    .line 804
    const/4 v5, 0x4

    .line 805
    const/16 v15, 0x10

    .line 806
    .line 807
    const/16 v19, 0x8

    .line 808
    .line 809
    const/16 v20, 0x2

    .line 810
    .line 811
    const/4 v0, 0x0

    .line 812
    const/4 v1, 0x0

    .line 813
    :goto_9
    move-wide/from16 v3, v29

    .line 814
    .line 815
    :goto_a
    if-eqz v1, :cond_13

    .line 816
    .line 817
    new-instance v2, Lm0/s;

    .line 818
    .line 819
    invoke-direct {v2}, Lm0/s;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v8

    .line 826
    iput-object v8, v2, Lm0/s;->a:Ljava/lang/String;

    .line 827
    .line 828
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    iput-object v1, v2, Lm0/s;->n:Ljava/lang/String;

    .line 833
    .line 834
    iput-object v12, v2, Lm0/s;->d:Ljava/lang/String;

    .line 835
    .line 836
    iput-wide v3, v2, Lm0/s;->s:J

    .line 837
    .line 838
    iput-object v0, v2, Lm0/s;->q:Ljava/util/List;

    .line 839
    .line 840
    new-instance v0, Lm0/t;

    .line 841
    .line 842
    invoke-direct {v0, v2}, Lm0/t;-><init>(Lm0/s;)V

    .line 843
    .line 844
    .line 845
    iput-object v0, v14, Lc/g;->K:Ljava/lang/Object;

    .line 846
    .line 847
    :cond_13
    :goto_b
    move/from16 v47, v6

    .line 848
    .line 849
    move/from16 v46, v7

    .line 850
    .line 851
    move-object v0, v11

    .line 852
    move-object v4, v12

    .line 853
    move-object v1, v14

    .line 854
    move/from16 v21, v24

    .line 855
    .line 856
    move/from16 v19, v27

    .line 857
    .line 858
    goto/16 :goto_3

    .line 859
    .line 860
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 861
    .line 862
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 863
    .line 864
    .line 865
    throw v0

    .line 866
    :goto_c
    iget v4, v11, Lcom/google/android/gms/internal/ads/f2;->a:I

    .line 867
    .line 868
    move/from16 v21, v24

    .line 869
    .line 870
    move-object/from16 v0, p0

    .line 871
    .line 872
    const/16 v9, 0xc

    .line 873
    .line 874
    const/4 v8, 0x1

    .line 875
    move v2, v6

    .line 876
    move/from16 v19, v27

    .line 877
    .line 878
    move v3, v7

    .line 879
    move-object/from16 v5, p2

    .line 880
    .line 881
    move v15, v6

    .line 882
    move/from16 v6, p4

    .line 883
    .line 884
    move v12, v7

    .line 885
    move-object/from16 v7, p3

    .line 886
    .line 887
    const/4 v11, 0x1

    .line 888
    move-object v8, v14

    .line 889
    move/from16 v9, v19

    .line 890
    .line 891
    invoke-static/range {v0 .. v9}, Lo1/e;->b(Lp0/E;IIIILjava/lang/String;ZLm0/n;Lc/g;I)V

    .line 892
    .line 893
    .line 894
    move-object/from16 v0, p1

    .line 895
    .line 896
    move-object/from16 v4, p2

    .line 897
    .line 898
    move/from16 v46, v12

    .line 899
    .line 900
    move-object v1, v14

    .line 901
    move/from16 v47, v15

    .line 902
    .line 903
    goto/16 :goto_3

    .line 904
    .line 905
    :goto_d
    add-int/lit8 v6, v15, 0x10

    .line 906
    .line 907
    invoke-virtual {v10, v6}, Lp0/E;->L(I)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v10, v3}, Lp0/E;->M(I)V

    .line 911
    .line 912
    .line 913
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    .line 914
    .line 915
    .line 916
    move-result v5

    .line 917
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    .line 918
    .line 919
    .line 920
    move-result v6

    .line 921
    const/16 v7, 0x32

    .line 922
    .line 923
    invoke-virtual {v10, v7}, Lp0/E;->M(I)V

    .line 924
    .line 925
    .line 926
    iget v7, v10, Lp0/E;->b:I

    .line 927
    .line 928
    if-ne v1, v2, :cond_17

    .line 929
    .line 930
    invoke-static {v15, v12, v10}, Lo1/e;->h(IILp0/E;)Landroid/util/Pair;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    if-eqz v2, :cond_16

    .line 935
    .line 936
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 937
    .line 938
    check-cast v1, Ljava/lang/Integer;

    .line 939
    .line 940
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 941
    .line 942
    .line 943
    move-result v1

    .line 944
    if-nez v13, :cond_15

    .line 945
    .line 946
    const/4 v3, 0x0

    .line 947
    goto :goto_e

    .line 948
    :cond_15
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 949
    .line 950
    check-cast v3, Lo1/q;

    .line 951
    .line 952
    iget-object v3, v3, Lo1/q;->b:Ljava/lang/String;

    .line 953
    .line 954
    invoke-virtual {v13, v3}, Lm0/n;->a(Ljava/lang/String;)Lm0/n;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    :goto_e
    iget-object v11, v14, Lc/g;->J:Ljava/lang/Object;

    .line 959
    .line 960
    check-cast v11, [Lo1/q;

    .line 961
    .line 962
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 963
    .line 964
    check-cast v2, Lo1/q;

    .line 965
    .line 966
    aput-object v2, v11, v19

    .line 967
    .line 968
    goto :goto_f

    .line 969
    :cond_16
    move-object v3, v13

    .line 970
    :goto_f
    invoke-virtual {v10, v7}, Lp0/E;->L(I)V

    .line 971
    .line 972
    .line 973
    goto :goto_10

    .line 974
    :cond_17
    move-object v3, v13

    .line 975
    :goto_10
    const-string v2, "video/3gpp"

    .line 976
    .line 977
    if-ne v1, v4, :cond_18

    .line 978
    .line 979
    const-string v0, "video/mpeg"

    .line 980
    .line 981
    goto :goto_11

    .line 982
    :cond_18
    if-ne v1, v0, :cond_19

    .line 983
    .line 984
    move-object v0, v2

    .line 985
    goto :goto_11

    .line 986
    :cond_19
    const/4 v0, 0x0

    .line 987
    :goto_11
    const/high16 v11, 0x3f800000    # 1.0f

    .line 988
    .line 989
    move/from16 v32, v1

    .line 990
    .line 991
    move-object/from16 v23, v2

    .line 992
    .line 993
    move-object/from16 v25, v3

    .line 994
    .line 995
    move/from16 v29, v5

    .line 996
    .line 997
    move/from16 v28, v6

    .line 998
    .line 999
    move v4, v7

    .line 1000
    move/from16 v31, v9

    .line 1001
    .line 1002
    const/4 v1, 0x0

    .line 1003
    const/4 v3, -0x1

    .line 1004
    const/16 v5, 0x8

    .line 1005
    .line 1006
    const/4 v6, -0x1

    .line 1007
    const/4 v7, 0x0

    .line 1008
    const/4 v9, 0x0

    .line 1009
    const/16 v11, 0x8

    .line 1010
    .line 1011
    const/4 v13, -0x1

    .line 1012
    const/high16 v27, 0x3f800000    # 1.0f

    .line 1013
    .line 1014
    const/16 v30, 0x0

    .line 1015
    .line 1016
    const/16 v33, -0x1

    .line 1017
    .line 1018
    const/16 v38, 0x0

    .line 1019
    .line 1020
    const/16 v39, 0x0

    .line 1021
    .line 1022
    const/16 v40, -0x1

    .line 1023
    .line 1024
    const/16 v41, -0x1

    .line 1025
    .line 1026
    const/16 v42, -0x1

    .line 1027
    .line 1028
    const/16 v43, -0x1

    .line 1029
    .line 1030
    const/16 v44, 0x0

    .line 1031
    .line 1032
    const/16 v45, 0x0

    .line 1033
    .line 1034
    :goto_12
    sub-int v2, v4, v15

    .line 1035
    .line 1036
    if-ge v2, v12, :cond_83

    .line 1037
    .line 1038
    invoke-virtual {v10, v4}, Lp0/E;->L(I)V

    .line 1039
    .line 1040
    .line 1041
    iget v2, v10, Lp0/E;->b:I

    .line 1042
    .line 1043
    move/from16 v34, v4

    .line 1044
    .line 1045
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 1046
    .line 1047
    .line 1048
    move-result v4

    .line 1049
    move-object/from16 v35, v9

    .line 1050
    .line 1051
    if-nez v4, :cond_1a

    .line 1052
    .line 1053
    iget v9, v10, Lp0/E;->b:I

    .line 1054
    .line 1055
    sub-int/2addr v9, v15

    .line 1056
    if-ne v9, v12, :cond_1a

    .line 1057
    .line 1058
    move/from16 v37, v5

    .line 1059
    .line 1060
    move/from16 v50, v11

    .line 1061
    .line 1062
    move/from16 v46, v12

    .line 1063
    .line 1064
    move/from16 v51, v13

    .line 1065
    .line 1066
    move-object/from16 v48, v14

    .line 1067
    .line 1068
    move/from16 v47, v15

    .line 1069
    .line 1070
    move/from16 v36, v33

    .line 1071
    .line 1072
    move-object/from16 v15, v35

    .line 1073
    .line 1074
    const/4 v7, 0x3

    .line 1075
    const/4 v8, 0x0

    .line 1076
    const/4 v9, 0x2

    .line 1077
    const/16 v12, 0x8

    .line 1078
    .line 1079
    const/4 v13, 0x0

    .line 1080
    const/16 v16, 0xb

    .line 1081
    .line 1082
    const/16 v17, 0xa

    .line 1083
    .line 1084
    const/16 v18, 0x7

    .line 1085
    .line 1086
    goto/16 :goto_5e

    .line 1087
    .line 1088
    :cond_1a
    if-lez v4, :cond_1b

    .line 1089
    .line 1090
    const/4 v9, 0x1

    .line 1091
    goto :goto_13

    .line 1092
    :cond_1b
    const/4 v9, 0x0

    .line 1093
    :goto_13
    invoke-static {v8, v9}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 1097
    .line 1098
    .line 1099
    move-result v9

    .line 1100
    move/from16 v46, v12

    .line 1101
    .line 1102
    const v12, 0x61766343

    .line 1103
    .line 1104
    .line 1105
    if-ne v9, v12, :cond_1e

    .line 1106
    .line 1107
    if-nez v0, :cond_1c

    .line 1108
    .line 1109
    const/4 v0, 0x1

    .line 1110
    :goto_14
    const/4 v3, 0x0

    .line 1111
    goto :goto_15

    .line 1112
    :cond_1c
    const/4 v0, 0x0

    .line 1113
    goto :goto_14

    .line 1114
    :goto_15
    invoke-static {v3, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1115
    .line 1116
    .line 1117
    const/16 v12, 0x8

    .line 1118
    .line 1119
    add-int/2addr v2, v12

    .line 1120
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-static/range {p0 .. p0}, LW0/e;->a(Lp0/E;)LW0/e;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    iget v2, v0, LW0/e;->b:I

    .line 1128
    .line 1129
    iput v2, v14, Lc/g;->H:I

    .line 1130
    .line 1131
    if-nez v7, :cond_1d

    .line 1132
    .line 1133
    iget v13, v0, LW0/e;->k:F

    .line 1134
    .line 1135
    goto :goto_16

    .line 1136
    :cond_1d
    move/from16 v13, v27

    .line 1137
    .line 1138
    :goto_16
    const-string v2, "video/avc"

    .line 1139
    .line 1140
    iget-object v9, v0, LW0/e;->a:Ljava/util/List;

    .line 1141
    .line 1142
    iget-object v3, v0, LW0/e;->l:Ljava/lang/String;

    .line 1143
    .line 1144
    iget v5, v0, LW0/e;->j:I

    .line 1145
    .line 1146
    iget v6, v0, LW0/e;->g:I

    .line 1147
    .line 1148
    iget v11, v0, LW0/e;->h:I

    .line 1149
    .line 1150
    iget v12, v0, LW0/e;->i:I

    .line 1151
    .line 1152
    move-object/from16 v27, v2

    .line 1153
    .line 1154
    iget v2, v0, LW0/e;->e:I

    .line 1155
    .line 1156
    iget v0, v0, LW0/e;->f:I

    .line 1157
    .line 1158
    move/from16 v37, v0

    .line 1159
    .line 1160
    move-object/from16 v38, v3

    .line 1161
    .line 1162
    move/from16 v40, v5

    .line 1163
    .line 1164
    move v3, v6

    .line 1165
    move/from16 v35, v7

    .line 1166
    .line 1167
    move-object/from16 v49, v8

    .line 1168
    .line 1169
    move/from16 v51, v11

    .line 1170
    .line 1171
    move v6, v12

    .line 1172
    move-object/from16 v48, v14

    .line 1173
    .line 1174
    move/from16 v47, v15

    .line 1175
    .line 1176
    move-object/from16 v0, v27

    .line 1177
    .line 1178
    move/from16 v36, v33

    .line 1179
    .line 1180
    const v5, 0x65736473

    .line 1181
    .line 1182
    .line 1183
    const/4 v7, 0x3

    .line 1184
    const/4 v8, 0x0

    .line 1185
    const/16 v12, 0x8

    .line 1186
    .line 1187
    const/16 v16, 0xb

    .line 1188
    .line 1189
    const/16 v17, 0xa

    .line 1190
    .line 1191
    const/16 v18, 0x7

    .line 1192
    .line 1193
    move v11, v2

    .line 1194
    move-object v15, v9

    .line 1195
    move/from16 v27, v13

    .line 1196
    .line 1197
    move/from16 v33, v32

    .line 1198
    .line 1199
    const/4 v9, 0x2

    .line 1200
    const/4 v13, 0x0

    .line 1201
    :goto_17
    move-object/from16 v32, v1

    .line 1202
    .line 1203
    const/4 v1, -0x1

    .line 1204
    goto/16 :goto_5d

    .line 1205
    .line 1206
    :cond_1e
    const v12, 0x68766343

    .line 1207
    .line 1208
    .line 1209
    move/from16 v47, v15

    .line 1210
    .line 1211
    const-string v15, "video/hevc"

    .line 1212
    .line 1213
    if-ne v9, v12, :cond_22

    .line 1214
    .line 1215
    if-nez v0, :cond_1f

    .line 1216
    .line 1217
    const/4 v0, 0x1

    .line 1218
    :goto_18
    const/4 v1, 0x0

    .line 1219
    goto :goto_19

    .line 1220
    :cond_1f
    const/4 v0, 0x0

    .line 1221
    goto :goto_18

    .line 1222
    :goto_19
    invoke-static {v1, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1223
    .line 1224
    .line 1225
    const/16 v0, 0x8

    .line 1226
    .line 1227
    add-int/2addr v2, v0

    .line 1228
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 1229
    .line 1230
    .line 1231
    const/4 v0, 0x0

    .line 1232
    invoke-static {v10, v0, v1}, LW0/B;->a(Lp0/E;ZLq0/m;)LW0/B;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    iget v0, v2, LW0/B;->b:I

    .line 1237
    .line 1238
    iput v0, v14, Lc/g;->H:I

    .line 1239
    .line 1240
    if-nez v7, :cond_20

    .line 1241
    .line 1242
    iget v13, v2, LW0/B;->l:F

    .line 1243
    .line 1244
    goto :goto_1a

    .line 1245
    :cond_20
    move/from16 v13, v27

    .line 1246
    .line 1247
    :goto_1a
    iget v0, v2, LW0/B;->k:I

    .line 1248
    .line 1249
    const/4 v1, -0x1

    .line 1250
    if-eq v0, v1, :cond_21

    .line 1251
    .line 1252
    move/from16 v33, v0

    .line 1253
    .line 1254
    :cond_21
    iget-object v9, v2, LW0/B;->a:Ljava/util/List;

    .line 1255
    .line 1256
    iget v0, v2, LW0/B;->m:I

    .line 1257
    .line 1258
    iget v1, v2, LW0/B;->c:I

    .line 1259
    .line 1260
    iget-object v3, v2, LW0/B;->n:Ljava/lang/String;

    .line 1261
    .line 1262
    iget v5, v2, LW0/B;->d:I

    .line 1263
    .line 1264
    iget v6, v2, LW0/B;->e:I

    .line 1265
    .line 1266
    iget v11, v2, LW0/B;->h:I

    .line 1267
    .line 1268
    iget v12, v2, LW0/B;->i:I

    .line 1269
    .line 1270
    move/from16 v27, v0

    .line 1271
    .line 1272
    iget v0, v2, LW0/B;->j:I

    .line 1273
    .line 1274
    move/from16 v35, v0

    .line 1275
    .line 1276
    iget v0, v2, LW0/B;->f:I

    .line 1277
    .line 1278
    move/from16 v36, v0

    .line 1279
    .line 1280
    iget v0, v2, LW0/B;->g:I

    .line 1281
    .line 1282
    iget-object v2, v2, LW0/B;->o:Lq0/m;

    .line 1283
    .line 1284
    move/from16 v37, v0

    .line 1285
    .line 1286
    move/from16 v41, v1

    .line 1287
    .line 1288
    move-object/from16 v38, v3

    .line 1289
    .line 1290
    move/from16 v42, v5

    .line 1291
    .line 1292
    move/from16 v43, v6

    .line 1293
    .line 1294
    move-object/from16 v49, v8

    .line 1295
    .line 1296
    move v3, v11

    .line 1297
    move/from16 v51, v12

    .line 1298
    .line 1299
    move-object/from16 v48, v14

    .line 1300
    .line 1301
    move-object v0, v15

    .line 1302
    move/from16 v40, v27

    .line 1303
    .line 1304
    move/from16 v6, v35

    .line 1305
    .line 1306
    move/from16 v11, v36

    .line 1307
    .line 1308
    const/4 v1, -0x1

    .line 1309
    const v5, 0x65736473

    .line 1310
    .line 1311
    .line 1312
    const/4 v8, 0x0

    .line 1313
    const/16 v12, 0x8

    .line 1314
    .line 1315
    const/16 v16, 0xb

    .line 1316
    .line 1317
    const/16 v17, 0xa

    .line 1318
    .line 1319
    const/16 v18, 0x7

    .line 1320
    .line 1321
    move/from16 v35, v7

    .line 1322
    .line 1323
    move-object v15, v9

    .line 1324
    move/from16 v27, v13

    .line 1325
    .line 1326
    move/from16 v36, v33

    .line 1327
    .line 1328
    const/4 v7, 0x3

    .line 1329
    const/4 v9, 0x2

    .line 1330
    const/4 v13, 0x0

    .line 1331
    move/from16 v33, v32

    .line 1332
    .line 1333
    move-object/from16 v32, v2

    .line 1334
    .line 1335
    goto/16 :goto_5d

    .line 1336
    .line 1337
    :cond_22
    const v12, 0x6c687643

    .line 1338
    .line 1339
    .line 1340
    if-ne v9, v12, :cond_2f

    .line 1341
    .line 1342
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    move-result v0

    .line 1346
    const-string v9, "lhvC must follow hvcC atom"

    .line 1347
    .line 1348
    invoke-static {v9, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1349
    .line 1350
    .line 1351
    if-eqz v1, :cond_23

    .line 1352
    .line 1353
    iget-object v0, v1, Lq0/m;->a:Lz4/H;

    .line 1354
    .line 1355
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 1356
    .line 1357
    .line 1358
    move-result v0

    .line 1359
    const/4 v12, 0x2

    .line 1360
    if-lt v0, v12, :cond_24

    .line 1361
    .line 1362
    const/4 v0, 0x1

    .line 1363
    goto :goto_1b

    .line 1364
    :cond_23
    const/4 v12, 0x2

    .line 1365
    :cond_24
    const/4 v0, 0x0

    .line 1366
    :goto_1b
    const-string v9, "must have at least two layers"

    .line 1367
    .line 1368
    invoke-static {v9, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1369
    .line 1370
    .line 1371
    const/16 v0, 0x8

    .line 1372
    .line 1373
    add-int/2addr v2, v0

    .line 1374
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1378
    .line 1379
    .line 1380
    const/4 v0, 0x1

    .line 1381
    invoke-static {v10, v0, v1}, LW0/B;->a(Lp0/E;ZLq0/m;)LW0/B;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v2

    .line 1385
    iget v0, v14, Lc/g;->H:I

    .line 1386
    .line 1387
    iget v9, v2, LW0/B;->b:I

    .line 1388
    .line 1389
    if-ne v0, v9, :cond_25

    .line 1390
    .line 1391
    const/4 v0, 0x1

    .line 1392
    goto :goto_1c

    .line 1393
    :cond_25
    const/4 v0, 0x0

    .line 1394
    :goto_1c
    const-string v9, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 1395
    .line 1396
    invoke-static {v9, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1397
    .line 1398
    .line 1399
    iget v0, v2, LW0/B;->h:I

    .line 1400
    .line 1401
    const/4 v9, -0x1

    .line 1402
    if-eq v0, v9, :cond_27

    .line 1403
    .line 1404
    if-ne v3, v0, :cond_26

    .line 1405
    .line 1406
    const/4 v0, 0x1

    .line 1407
    goto :goto_1d

    .line 1408
    :cond_26
    const/4 v0, 0x0

    .line 1409
    :goto_1d
    const-string v15, "colorSpace must be the same for both views"

    .line 1410
    .line 1411
    invoke-static {v15, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1412
    .line 1413
    .line 1414
    :cond_27
    iget v0, v2, LW0/B;->i:I

    .line 1415
    .line 1416
    if-eq v0, v9, :cond_29

    .line 1417
    .line 1418
    if-ne v13, v0, :cond_28

    .line 1419
    .line 1420
    const/4 v0, 0x1

    .line 1421
    goto :goto_1e

    .line 1422
    :cond_28
    const/4 v0, 0x0

    .line 1423
    :goto_1e
    const-string v15, "colorRange must be the same for both views"

    .line 1424
    .line 1425
    invoke-static {v15, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1426
    .line 1427
    .line 1428
    :cond_29
    iget v0, v2, LW0/B;->j:I

    .line 1429
    .line 1430
    if-eq v0, v9, :cond_2b

    .line 1431
    .line 1432
    if-ne v6, v0, :cond_2a

    .line 1433
    .line 1434
    const/4 v0, 0x1

    .line 1435
    goto :goto_1f

    .line 1436
    :cond_2a
    const/4 v0, 0x0

    .line 1437
    :goto_1f
    const-string v9, "colorTransfer must be the same for both views"

    .line 1438
    .line 1439
    invoke-static {v9, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1440
    .line 1441
    .line 1442
    :cond_2b
    iget v0, v2, LW0/B;->f:I

    .line 1443
    .line 1444
    if-ne v11, v0, :cond_2c

    .line 1445
    .line 1446
    const/4 v0, 0x1

    .line 1447
    goto :goto_20

    .line 1448
    :cond_2c
    const/4 v0, 0x0

    .line 1449
    :goto_20
    const-string v9, "bitdepthLuma must be the same for both views"

    .line 1450
    .line 1451
    invoke-static {v9, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1452
    .line 1453
    .line 1454
    iget v0, v2, LW0/B;->g:I

    .line 1455
    .line 1456
    if-ne v5, v0, :cond_2d

    .line 1457
    .line 1458
    const/4 v0, 0x1

    .line 1459
    goto :goto_21

    .line 1460
    :cond_2d
    const/4 v0, 0x0

    .line 1461
    :goto_21
    const-string v9, "bitdepthChroma must be the same for both views"

    .line 1462
    .line 1463
    invoke-static {v9, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1464
    .line 1465
    .line 1466
    if-eqz v35, :cond_2e

    .line 1467
    .line 1468
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    move-object/from16 v15, v35

    .line 1473
    .line 1474
    invoke-virtual {v0, v15}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 1475
    .line 1476
    .line 1477
    iget-object v9, v2, LW0/B;->a:Ljava/util/List;

    .line 1478
    .line 1479
    invoke-virtual {v0, v9}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v9

    .line 1486
    goto :goto_22

    .line 1487
    :cond_2e
    move-object/from16 v15, v35

    .line 1488
    .line 1489
    const-string v0, "initializationData must be already set from hvcC atom"

    .line 1490
    .line 1491
    const/4 v9, 0x0

    .line 1492
    invoke-static {v0, v9}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1493
    .line 1494
    .line 1495
    move-object v9, v15

    .line 1496
    :goto_22
    const-string v0, "video/mv-hevc"

    .line 1497
    .line 1498
    iget-object v2, v2, LW0/B;->n:Ljava/lang/String;

    .line 1499
    .line 1500
    move-object/from16 v38, v2

    .line 1501
    .line 1502
    move/from16 v37, v5

    .line 1503
    .line 1504
    move/from16 v35, v7

    .line 1505
    .line 1506
    move-object/from16 v49, v8

    .line 1507
    .line 1508
    move-object v15, v9

    .line 1509
    move/from16 v51, v13

    .line 1510
    .line 1511
    move-object/from16 v48, v14

    .line 1512
    .line 1513
    move/from16 v36, v33

    .line 1514
    .line 1515
    const v5, 0x65736473

    .line 1516
    .line 1517
    .line 1518
    const/4 v7, 0x3

    .line 1519
    const/4 v8, 0x0

    .line 1520
    const/4 v9, 0x2

    .line 1521
    const/16 v12, 0x8

    .line 1522
    .line 1523
    const/4 v13, 0x0

    .line 1524
    const/16 v16, 0xb

    .line 1525
    .line 1526
    const/16 v17, 0xa

    .line 1527
    .line 1528
    const/16 v18, 0x7

    .line 1529
    .line 1530
    move/from16 v33, v32

    .line 1531
    .line 1532
    goto/16 :goto_17

    .line 1533
    .line 1534
    :cond_2f
    move-object/from16 v15, v35

    .line 1535
    .line 1536
    const v12, 0x76657875

    .line 1537
    .line 1538
    .line 1539
    move/from16 v35, v7

    .line 1540
    .line 1541
    if-ne v9, v12, :cond_3f

    .line 1542
    .line 1543
    const/16 v12, 0x8

    .line 1544
    .line 1545
    add-int/lit8 v9, v2, 0x8

    .line 1546
    .line 1547
    invoke-virtual {v10, v9}, Lp0/E;->L(I)V

    .line 1548
    .line 1549
    .line 1550
    iget v9, v10, Lp0/E;->b:I

    .line 1551
    .line 1552
    const/4 v12, 0x0

    .line 1553
    :goto_23
    sub-int v7, v9, v2

    .line 1554
    .line 1555
    if-ge v7, v4, :cond_38

    .line 1556
    .line 1557
    invoke-virtual {v10, v9}, Lp0/E;->L(I)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 1561
    .line 1562
    .line 1563
    move-result v7

    .line 1564
    move-object/from16 v48, v14

    .line 1565
    .line 1566
    if-lez v7, :cond_30

    .line 1567
    .line 1568
    const/4 v14, 0x1

    .line 1569
    goto :goto_24

    .line 1570
    :cond_30
    const/4 v14, 0x0

    .line 1571
    :goto_24
    invoke-static {v8, v14}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 1575
    .line 1576
    .line 1577
    move-result v14

    .line 1578
    move/from16 v37, v5

    .line 1579
    .line 1580
    const v5, 0x65796573

    .line 1581
    .line 1582
    .line 1583
    if-ne v14, v5, :cond_37

    .line 1584
    .line 1585
    const/16 v5, 0x8

    .line 1586
    .line 1587
    add-int/lit8 v12, v9, 0x8

    .line 1588
    .line 1589
    invoke-virtual {v10, v12}, Lp0/E;->L(I)V

    .line 1590
    .line 1591
    .line 1592
    iget v5, v10, Lp0/E;->b:I

    .line 1593
    .line 1594
    :goto_25
    sub-int v12, v5, v9

    .line 1595
    .line 1596
    if-ge v12, v7, :cond_36

    .line 1597
    .line 1598
    invoke-virtual {v10, v5}, Lp0/E;->L(I)V

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 1602
    .line 1603
    .line 1604
    move-result v12

    .line 1605
    if-lez v12, :cond_31

    .line 1606
    .line 1607
    const/4 v14, 0x1

    .line 1608
    goto :goto_26

    .line 1609
    :cond_31
    const/4 v14, 0x0

    .line 1610
    :goto_26
    invoke-static {v8, v14}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 1614
    .line 1615
    .line 1616
    move-result v14

    .line 1617
    move-object/from16 v49, v8

    .line 1618
    .line 1619
    const v8, 0x73747269

    .line 1620
    .line 1621
    .line 1622
    if-ne v14, v8, :cond_35

    .line 1623
    .line 1624
    const/4 v8, 0x4

    .line 1625
    invoke-virtual {v10, v8}, Lp0/E;->M(I)V

    .line 1626
    .line 1627
    .line 1628
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 1629
    .line 1630
    .line 1631
    move-result v5

    .line 1632
    new-instance v12, LD0/U;

    .line 1633
    .line 1634
    new-instance v14, LD0/g;

    .line 1635
    .line 1636
    move/from16 v50, v11

    .line 1637
    .line 1638
    const/4 v8, 0x1

    .line 1639
    and-int/lit8 v11, v5, 0x1

    .line 1640
    .line 1641
    move/from16 v51, v13

    .line 1642
    .line 1643
    if-ne v11, v8, :cond_32

    .line 1644
    .line 1645
    const/4 v8, 0x1

    .line 1646
    :goto_27
    const/4 v11, 0x2

    .line 1647
    goto :goto_28

    .line 1648
    :cond_32
    const/4 v8, 0x0

    .line 1649
    goto :goto_27

    .line 1650
    :goto_28
    and-int/lit8 v13, v5, 0x2

    .line 1651
    .line 1652
    if-ne v13, v11, :cond_33

    .line 1653
    .line 1654
    const/4 v11, 0x1

    .line 1655
    :goto_29
    const/16 v13, 0x8

    .line 1656
    .line 1657
    goto :goto_2a

    .line 1658
    :cond_33
    const/4 v11, 0x0

    .line 1659
    goto :goto_29

    .line 1660
    :goto_2a
    and-int/2addr v5, v13

    .line 1661
    if-ne v5, v13, :cond_34

    .line 1662
    .line 1663
    const/4 v5, 0x1

    .line 1664
    goto :goto_2b

    .line 1665
    :cond_34
    const/4 v5, 0x0

    .line 1666
    :goto_2b
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 1667
    .line 1668
    .line 1669
    iput-boolean v8, v14, LD0/g;->a:Z

    .line 1670
    .line 1671
    iput-boolean v11, v14, LD0/g;->b:Z

    .line 1672
    .line 1673
    iput-boolean v5, v14, LD0/g;->c:Z

    .line 1674
    .line 1675
    const/16 v8, 0xc

    .line 1676
    .line 1677
    invoke-direct {v12, v14, v8}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 1678
    .line 1679
    .line 1680
    goto :goto_2c

    .line 1681
    :cond_35
    move/from16 v50, v11

    .line 1682
    .line 1683
    move/from16 v51, v13

    .line 1684
    .line 1685
    const/16 v8, 0xc

    .line 1686
    .line 1687
    add-int/2addr v5, v12

    .line 1688
    move-object/from16 v8, v49

    .line 1689
    .line 1690
    goto :goto_25

    .line 1691
    :cond_36
    move-object/from16 v49, v8

    .line 1692
    .line 1693
    move/from16 v50, v11

    .line 1694
    .line 1695
    move/from16 v51, v13

    .line 1696
    .line 1697
    const/16 v8, 0xc

    .line 1698
    .line 1699
    const/4 v12, 0x0

    .line 1700
    goto :goto_2c

    .line 1701
    :cond_37
    move-object/from16 v49, v8

    .line 1702
    .line 1703
    move/from16 v50, v11

    .line 1704
    .line 1705
    move/from16 v51, v13

    .line 1706
    .line 1707
    const/16 v8, 0xc

    .line 1708
    .line 1709
    :goto_2c
    add-int/2addr v9, v7

    .line 1710
    move/from16 v5, v37

    .line 1711
    .line 1712
    move-object/from16 v14, v48

    .line 1713
    .line 1714
    move-object/from16 v8, v49

    .line 1715
    .line 1716
    move/from16 v11, v50

    .line 1717
    .line 1718
    move/from16 v13, v51

    .line 1719
    .line 1720
    goto/16 :goto_23

    .line 1721
    .line 1722
    :cond_38
    move/from16 v37, v5

    .line 1723
    .line 1724
    move-object/from16 v49, v8

    .line 1725
    .line 1726
    move/from16 v50, v11

    .line 1727
    .line 1728
    move/from16 v51, v13

    .line 1729
    .line 1730
    move-object/from16 v48, v14

    .line 1731
    .line 1732
    const/16 v8, 0xc

    .line 1733
    .line 1734
    if-nez v12, :cond_39

    .line 1735
    .line 1736
    const/4 v2, 0x0

    .line 1737
    goto :goto_2d

    .line 1738
    :cond_39
    new-instance v2, LD0/U;

    .line 1739
    .line 1740
    const/16 v5, 0xd

    .line 1741
    .line 1742
    invoke-direct {v2, v12, v5}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 1743
    .line 1744
    .line 1745
    :goto_2d
    if-eqz v2, :cond_3b

    .line 1746
    .line 1747
    iget-object v5, v2, LD0/U;->H:Ljava/lang/Object;

    .line 1748
    .line 1749
    check-cast v5, LD0/U;

    .line 1750
    .line 1751
    if-eqz v5, :cond_3b

    .line 1752
    .line 1753
    if-eqz v1, :cond_3c

    .line 1754
    .line 1755
    iget-object v5, v1, Lq0/m;->a:Lz4/H;

    .line 1756
    .line 1757
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 1758
    .line 1759
    .line 1760
    move-result v5

    .line 1761
    const/4 v7, 0x2

    .line 1762
    if-lt v5, v7, :cond_3c

    .line 1763
    .line 1764
    iget-object v5, v2, LD0/U;->H:Ljava/lang/Object;

    .line 1765
    .line 1766
    check-cast v5, LD0/U;

    .line 1767
    .line 1768
    if-eqz v5, :cond_3a

    .line 1769
    .line 1770
    iget-object v5, v5, LD0/U;->H:Ljava/lang/Object;

    .line 1771
    .line 1772
    check-cast v5, LD0/g;

    .line 1773
    .line 1774
    iget-boolean v7, v5, LD0/g;->a:Z

    .line 1775
    .line 1776
    if-eqz v7, :cond_3a

    .line 1777
    .line 1778
    iget-boolean v5, v5, LD0/g;->b:Z

    .line 1779
    .line 1780
    if-eqz v5, :cond_3a

    .line 1781
    .line 1782
    const/4 v5, 0x1

    .line 1783
    goto :goto_2e

    .line 1784
    :cond_3a
    const/4 v5, 0x0

    .line 1785
    :goto_2e
    const-string v7, "both eye views must be marked as available"

    .line 1786
    .line 1787
    invoke-static {v7, v5}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1788
    .line 1789
    .line 1790
    iget-object v2, v2, LD0/U;->H:Ljava/lang/Object;

    .line 1791
    .line 1792
    check-cast v2, LD0/U;

    .line 1793
    .line 1794
    iget-object v2, v2, LD0/U;->H:Ljava/lang/Object;

    .line 1795
    .line 1796
    check-cast v2, LD0/g;

    .line 1797
    .line 1798
    iget-boolean v2, v2, LD0/g;->c:Z

    .line 1799
    .line 1800
    const/4 v5, 0x1

    .line 1801
    xor-int/2addr v2, v5

    .line 1802
    const-string v5, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 1803
    .line 1804
    invoke-static {v5, v2}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1805
    .line 1806
    .line 1807
    :cond_3b
    move/from16 v7, v33

    .line 1808
    .line 1809
    goto :goto_2f

    .line 1810
    :cond_3c
    move/from16 v7, v33

    .line 1811
    .line 1812
    const/4 v5, -0x1

    .line 1813
    if-ne v7, v5, :cond_3e

    .line 1814
    .line 1815
    iget-object v2, v2, LD0/U;->H:Ljava/lang/Object;

    .line 1816
    .line 1817
    check-cast v2, LD0/U;

    .line 1818
    .line 1819
    iget-object v2, v2, LD0/U;->H:Ljava/lang/Object;

    .line 1820
    .line 1821
    check-cast v2, LD0/g;

    .line 1822
    .line 1823
    iget-boolean v2, v2, LD0/g;->c:Z

    .line 1824
    .line 1825
    if-eqz v2, :cond_3d

    .line 1826
    .line 1827
    const/4 v2, 0x5

    .line 1828
    goto :goto_30

    .line 1829
    :cond_3d
    const/4 v2, 0x4

    .line 1830
    goto :goto_30

    .line 1831
    :cond_3e
    :goto_2f
    move v2, v7

    .line 1832
    :goto_30
    move/from16 v36, v2

    .line 1833
    .line 1834
    move/from16 v33, v32

    .line 1835
    .line 1836
    move/from16 v11, v50

    .line 1837
    .line 1838
    const v5, 0x65736473

    .line 1839
    .line 1840
    .line 1841
    const/4 v7, 0x3

    .line 1842
    const/4 v8, 0x0

    .line 1843
    const/4 v9, 0x2

    .line 1844
    const/16 v12, 0x8

    .line 1845
    .line 1846
    const/4 v13, 0x0

    .line 1847
    const/16 v16, 0xb

    .line 1848
    .line 1849
    const/16 v17, 0xa

    .line 1850
    .line 1851
    const/16 v18, 0x7

    .line 1852
    .line 1853
    goto/16 :goto_17

    .line 1854
    .line 1855
    :cond_3f
    move/from16 v37, v5

    .line 1856
    .line 1857
    move-object/from16 v49, v8

    .line 1858
    .line 1859
    move/from16 v50, v11

    .line 1860
    .line 1861
    move/from16 v51, v13

    .line 1862
    .line 1863
    move-object/from16 v48, v14

    .line 1864
    .line 1865
    move/from16 v7, v33

    .line 1866
    .line 1867
    const/16 v8, 0xc

    .line 1868
    .line 1869
    const v5, 0x64766343

    .line 1870
    .line 1871
    .line 1872
    if-eq v9, v5, :cond_80

    .line 1873
    .line 1874
    const v5, 0x64767643

    .line 1875
    .line 1876
    .line 1877
    if-eq v9, v5, :cond_80

    .line 1878
    .line 1879
    const v5, 0x64767743

    .line 1880
    .line 1881
    .line 1882
    if-ne v9, v5, :cond_40

    .line 1883
    .line 1884
    move/from16 v36, v7

    .line 1885
    .line 1886
    move/from16 v33, v32

    .line 1887
    .line 1888
    const v5, 0x65736473

    .line 1889
    .line 1890
    .line 1891
    const/4 v7, 0x3

    .line 1892
    const/4 v8, 0x0

    .line 1893
    const/4 v9, 0x2

    .line 1894
    const/16 v11, 0x8

    .line 1895
    .line 1896
    const/16 v16, 0xb

    .line 1897
    .line 1898
    const/16 v17, 0xa

    .line 1899
    .line 1900
    const/16 v18, 0x7

    .line 1901
    .line 1902
    move-object/from16 v32, v1

    .line 1903
    .line 1904
    const/4 v1, -0x1

    .line 1905
    goto/16 :goto_5a

    .line 1906
    .line 1907
    :cond_40
    const v5, 0x76706343

    .line 1908
    .line 1909
    .line 1910
    if-ne v9, v5, :cond_46

    .line 1911
    .line 1912
    if-nez v0, :cond_41

    .line 1913
    .line 1914
    const/4 v0, 0x1

    .line 1915
    :goto_31
    const/4 v3, 0x0

    .line 1916
    goto :goto_32

    .line 1917
    :cond_41
    const/4 v0, 0x0

    .line 1918
    goto :goto_31

    .line 1919
    :goto_32
    invoke-static {v3, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 1920
    .line 1921
    .line 1922
    const-string v0, "video/x-vnd.on2.vp9"

    .line 1923
    .line 1924
    move/from16 v11, v32

    .line 1925
    .line 1926
    const v5, 0x76703038

    .line 1927
    .line 1928
    .line 1929
    if-ne v11, v5, :cond_42

    .line 1930
    .line 1931
    const-string v3, "video/x-vnd.on2.vp8"

    .line 1932
    .line 1933
    goto :goto_33

    .line 1934
    :cond_42
    move-object v3, v0

    .line 1935
    :goto_33
    add-int/2addr v2, v8

    .line 1936
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 1937
    .line 1938
    .line 1939
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 1940
    .line 1941
    .line 1942
    move-result v2

    .line 1943
    int-to-byte v2, v2

    .line 1944
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 1945
    .line 1946
    .line 1947
    move-result v6

    .line 1948
    int-to-byte v6, v6

    .line 1949
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 1950
    .line 1951
    .line 1952
    move-result v9

    .line 1953
    const/4 v12, 0x4

    .line 1954
    shr-int/lit8 v13, v9, 0x4

    .line 1955
    .line 1956
    const/4 v12, 0x1

    .line 1957
    shr-int/lit8 v14, v9, 0x1

    .line 1958
    .line 1959
    const/16 v18, 0x7

    .line 1960
    .line 1961
    and-int/lit8 v14, v14, 0x7

    .line 1962
    .line 1963
    int-to-byte v14, v14

    .line 1964
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1965
    .line 1966
    .line 1967
    move-result v0

    .line 1968
    if-eqz v0, :cond_43

    .line 1969
    .line 1970
    int-to-byte v0, v13

    .line 1971
    sget-object v15, Lp0/g;->a:[B

    .line 1972
    .line 1973
    new-array v15, v8, [B

    .line 1974
    .line 1975
    const/16 v26, 0x0

    .line 1976
    .line 1977
    aput-byte v12, v15, v26

    .line 1978
    .line 1979
    aput-byte v12, v15, v12

    .line 1980
    .line 1981
    const/16 v26, 0x2

    .line 1982
    .line 1983
    aput-byte v2, v15, v26

    .line 1984
    .line 1985
    const/4 v2, 0x3

    .line 1986
    aput-byte v26, v15, v2

    .line 1987
    .line 1988
    const/16 v26, 0x4

    .line 1989
    .line 1990
    aput-byte v12, v15, v26

    .line 1991
    .line 1992
    const/16 v20, 0x5

    .line 1993
    .line 1994
    aput-byte v6, v15, v20

    .line 1995
    .line 1996
    const/4 v6, 0x6

    .line 1997
    aput-byte v2, v15, v6

    .line 1998
    .line 1999
    const/4 v2, 0x7

    .line 2000
    aput-byte v12, v15, v2

    .line 2001
    .line 2002
    const/16 v2, 0x8

    .line 2003
    .line 2004
    aput-byte v0, v15, v2

    .line 2005
    .line 2006
    const/16 v0, 0x9

    .line 2007
    .line 2008
    aput-byte v26, v15, v0

    .line 2009
    .line 2010
    const/16 v17, 0xa

    .line 2011
    .line 2012
    aput-byte v12, v15, v17

    .line 2013
    .line 2014
    const/16 v0, 0xb

    .line 2015
    .line 2016
    aput-byte v14, v15, v0

    .line 2017
    .line 2018
    invoke-static {v15}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v0

    .line 2022
    move-object v15, v0

    .line 2023
    goto :goto_34

    .line 2024
    :cond_43
    const/4 v6, 0x6

    .line 2025
    const/16 v17, 0xa

    .line 2026
    .line 2027
    :goto_34
    and-int/lit8 v0, v9, 0x1

    .line 2028
    .line 2029
    if-eqz v0, :cond_44

    .line 2030
    .line 2031
    const/4 v2, 0x1

    .line 2032
    goto :goto_35

    .line 2033
    :cond_44
    const/4 v2, 0x0

    .line 2034
    :goto_35
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 2035
    .line 2036
    .line 2037
    move-result v0

    .line 2038
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 2039
    .line 2040
    .line 2041
    move-result v9

    .line 2042
    invoke-static {v0}, Lm0/i;->h(I)I

    .line 2043
    .line 2044
    .line 2045
    move-result v0

    .line 2046
    if-eqz v2, :cond_45

    .line 2047
    .line 2048
    const/4 v2, 0x1

    .line 2049
    goto :goto_36

    .line 2050
    :cond_45
    const/4 v2, 0x2

    .line 2051
    :goto_36
    invoke-static {v9}, Lm0/i;->i(I)I

    .line 2052
    .line 2053
    .line 2054
    move-result v9

    .line 2055
    move-object/from16 v32, v1

    .line 2056
    .line 2057
    move/from16 v51, v2

    .line 2058
    .line 2059
    move/from16 v36, v7

    .line 2060
    .line 2061
    move v6, v9

    .line 2062
    move/from16 v33, v11

    .line 2063
    .line 2064
    move v11, v13

    .line 2065
    move/from16 v37, v11

    .line 2066
    .line 2067
    const/4 v1, -0x1

    .line 2068
    const v5, 0x65736473

    .line 2069
    .line 2070
    .line 2071
    const/4 v7, 0x3

    .line 2072
    const/4 v8, 0x0

    .line 2073
    const/4 v9, 0x2

    .line 2074
    const/16 v12, 0x8

    .line 2075
    .line 2076
    const/4 v13, 0x0

    .line 2077
    const/16 v16, 0xb

    .line 2078
    .line 2079
    const/16 v18, 0x7

    .line 2080
    .line 2081
    move-object/from16 v61, v3

    .line 2082
    .line 2083
    move v3, v0

    .line 2084
    move-object/from16 v0, v61

    .line 2085
    .line 2086
    goto/16 :goto_5d

    .line 2087
    .line 2088
    :cond_46
    move/from16 v11, v32

    .line 2089
    .line 2090
    const v5, 0x76703038

    .line 2091
    .line 2092
    .line 2093
    const/4 v12, 0x6

    .line 2094
    const/16 v17, 0xa

    .line 2095
    .line 2096
    const v13, 0x61763143

    .line 2097
    .line 2098
    .line 2099
    const-string v14, "BoxParsers"

    .line 2100
    .line 2101
    if-ne v9, v13, :cond_60

    .line 2102
    .line 2103
    const/16 v13, 0x8

    .line 2104
    .line 2105
    add-int/lit8 v0, v4, -0x8

    .line 2106
    .line 2107
    new-array v3, v0, [B

    .line 2108
    .line 2109
    const/4 v6, 0x0

    .line 2110
    invoke-virtual {v10, v6, v3, v0}, Lp0/E;->j(I[BI)V

    .line 2111
    .line 2112
    .line 2113
    invoke-static {v3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v9

    .line 2117
    add-int/2addr v2, v13

    .line 2118
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 2119
    .line 2120
    .line 2121
    new-instance v0, Lp0/D;

    .line 2122
    .line 2123
    iget-object v2, v10, Lp0/E;->a:[B

    .line 2124
    .line 2125
    const/4 v3, 0x0

    .line 2126
    invoke-direct {v0, v2, v6, v3}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 2127
    .line 2128
    .line 2129
    iget v2, v10, Lp0/E;->b:I

    .line 2130
    .line 2131
    mul-int/lit8 v2, v2, 0x8

    .line 2132
    .line 2133
    invoke-virtual {v0, v2}, Lp0/D;->r(I)V

    .line 2134
    .line 2135
    .line 2136
    const/4 v2, 0x1

    .line 2137
    invoke-virtual {v0, v2}, Lp0/D;->v(I)V

    .line 2138
    .line 2139
    .line 2140
    const/4 v2, 0x3

    .line 2141
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 2142
    .line 2143
    .line 2144
    move-result v3

    .line 2145
    invoke-virtual {v0, v12}, Lp0/D;->u(I)V

    .line 2146
    .line 2147
    .line 2148
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2149
    .line 2150
    .line 2151
    move-result v2

    .line 2152
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2153
    .line 2154
    .line 2155
    move-result v6

    .line 2156
    const/16 v53, -0x1

    .line 2157
    .line 2158
    const/4 v13, 0x2

    .line 2159
    if-ne v3, v13, :cond_49

    .line 2160
    .line 2161
    if-eqz v2, :cond_49

    .line 2162
    .line 2163
    if-eqz v6, :cond_47

    .line 2164
    .line 2165
    const/16 v2, 0xc

    .line 2166
    .line 2167
    goto :goto_37

    .line 2168
    :cond_47
    const/16 v2, 0xa

    .line 2169
    .line 2170
    :goto_37
    if-eqz v6, :cond_48

    .line 2171
    .line 2172
    const/16 v3, 0xc

    .line 2173
    .line 2174
    goto :goto_38

    .line 2175
    :cond_48
    const/16 v3, 0xa

    .line 2176
    .line 2177
    :goto_38
    move/from16 v59, v2

    .line 2178
    .line 2179
    move/from16 v60, v3

    .line 2180
    .line 2181
    :goto_39
    const/16 v2, 0xd

    .line 2182
    .line 2183
    goto :goto_3c

    .line 2184
    :cond_49
    if-gt v3, v13, :cond_4c

    .line 2185
    .line 2186
    if-eqz v2, :cond_4a

    .line 2187
    .line 2188
    const/16 v3, 0xa

    .line 2189
    .line 2190
    goto :goto_3a

    .line 2191
    :cond_4a
    const/16 v3, 0x8

    .line 2192
    .line 2193
    :goto_3a
    if-eqz v2, :cond_4b

    .line 2194
    .line 2195
    const/16 v2, 0xa

    .line 2196
    .line 2197
    goto :goto_3b

    .line 2198
    :cond_4b
    const/16 v2, 0x8

    .line 2199
    .line 2200
    :goto_3b
    move/from16 v60, v2

    .line 2201
    .line 2202
    move/from16 v59, v3

    .line 2203
    .line 2204
    goto :goto_39

    .line 2205
    :cond_4c
    const/16 v2, 0xd

    .line 2206
    .line 2207
    const/16 v59, -0x1

    .line 2208
    .line 2209
    const/16 v60, -0x1

    .line 2210
    .line 2211
    :goto_3c
    invoke-virtual {v0, v2}, Lp0/D;->u(I)V

    .line 2212
    .line 2213
    .line 2214
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 2215
    .line 2216
    .line 2217
    const/4 v2, 0x4

    .line 2218
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 2219
    .line 2220
    .line 2221
    move-result v3

    .line 2222
    const/16 v58, 0x0

    .line 2223
    .line 2224
    const/4 v2, 0x1

    .line 2225
    if-eq v3, v2, :cond_4d

    .line 2226
    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2228
    .line 2229
    const-string v2, "Unsupported obu_type: "

    .line 2230
    .line 2231
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2232
    .line 2233
    .line 2234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    .line 2237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v0

    .line 2241
    invoke-static {v14, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    .line 2243
    .line 2244
    new-instance v0, Lm0/i;

    .line 2245
    .line 2246
    move-object/from16 v50, v0

    .line 2247
    .line 2248
    move/from16 v51, v53

    .line 2249
    .line 2250
    move/from16 v52, v53

    .line 2251
    .line 2252
    move-object/from16 v54, v58

    .line 2253
    .line 2254
    move/from16 v55, v59

    .line 2255
    .line 2256
    move/from16 v56, v60

    .line 2257
    .line 2258
    invoke-direct/range {v50 .. v56}, Lm0/i;-><init>(III[BII)V

    .line 2259
    .line 2260
    .line 2261
    :goto_3d
    const/4 v2, 0x7

    .line 2262
    const/4 v13, 0x5

    .line 2263
    goto/16 :goto_46

    .line 2264
    .line 2265
    :cond_4d
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2266
    .line 2267
    .line 2268
    move-result v2

    .line 2269
    if-eqz v2, :cond_4e

    .line 2270
    .line 2271
    const-string v0, "Unsupported obu_extension_flag"

    .line 2272
    .line 2273
    invoke-static {v14, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    .line 2275
    .line 2276
    new-instance v0, Lm0/i;

    .line 2277
    .line 2278
    move-object/from16 v50, v0

    .line 2279
    .line 2280
    move/from16 v51, v53

    .line 2281
    .line 2282
    move/from16 v52, v53

    .line 2283
    .line 2284
    move-object/from16 v54, v58

    .line 2285
    .line 2286
    move/from16 v55, v59

    .line 2287
    .line 2288
    move/from16 v56, v60

    .line 2289
    .line 2290
    invoke-direct/range {v50 .. v56}, Lm0/i;-><init>(III[BII)V

    .line 2291
    .line 2292
    .line 2293
    goto :goto_3d

    .line 2294
    :cond_4e
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2295
    .line 2296
    .line 2297
    move-result v2

    .line 2298
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 2299
    .line 2300
    .line 2301
    if-eqz v2, :cond_4f

    .line 2302
    .line 2303
    const/16 v2, 0x8

    .line 2304
    .line 2305
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 2306
    .line 2307
    .line 2308
    move-result v3

    .line 2309
    const/16 v2, 0x7f

    .line 2310
    .line 2311
    if-le v3, v2, :cond_4f

    .line 2312
    .line 2313
    const-string v0, "Excessive obu_size"

    .line 2314
    .line 2315
    invoke-static {v14, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    .line 2317
    .line 2318
    new-instance v0, Lm0/i;

    .line 2319
    .line 2320
    move-object/from16 v50, v0

    .line 2321
    .line 2322
    move/from16 v51, v53

    .line 2323
    .line 2324
    move/from16 v52, v53

    .line 2325
    .line 2326
    move-object/from16 v54, v58

    .line 2327
    .line 2328
    move/from16 v55, v59

    .line 2329
    .line 2330
    move/from16 v56, v60

    .line 2331
    .line 2332
    invoke-direct/range {v50 .. v56}, Lm0/i;-><init>(III[BII)V

    .line 2333
    .line 2334
    .line 2335
    goto :goto_3d

    .line 2336
    :cond_4f
    const/4 v2, 0x3

    .line 2337
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 2338
    .line 2339
    .line 2340
    move-result v3

    .line 2341
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 2342
    .line 2343
    .line 2344
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2345
    .line 2346
    .line 2347
    move-result v2

    .line 2348
    if-eqz v2, :cond_50

    .line 2349
    .line 2350
    const-string v0, "Unsupported reduced_still_picture_header"

    .line 2351
    .line 2352
    invoke-static {v14, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    .line 2354
    .line 2355
    new-instance v0, Lm0/i;

    .line 2356
    .line 2357
    move-object/from16 v50, v0

    .line 2358
    .line 2359
    move/from16 v51, v53

    .line 2360
    .line 2361
    move/from16 v52, v53

    .line 2362
    .line 2363
    move-object/from16 v54, v58

    .line 2364
    .line 2365
    move/from16 v55, v59

    .line 2366
    .line 2367
    move/from16 v56, v60

    .line 2368
    .line 2369
    invoke-direct/range {v50 .. v56}, Lm0/i;-><init>(III[BII)V

    .line 2370
    .line 2371
    .line 2372
    goto :goto_3d

    .line 2373
    :cond_50
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2374
    .line 2375
    .line 2376
    move-result v2

    .line 2377
    if-eqz v2, :cond_51

    .line 2378
    .line 2379
    const-string v0, "Unsupported timing_info_present_flag"

    .line 2380
    .line 2381
    invoke-static {v14, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    .line 2383
    .line 2384
    new-instance v0, Lm0/i;

    .line 2385
    .line 2386
    move-object/from16 v50, v0

    .line 2387
    .line 2388
    move/from16 v51, v53

    .line 2389
    .line 2390
    move/from16 v52, v53

    .line 2391
    .line 2392
    move-object/from16 v54, v58

    .line 2393
    .line 2394
    move/from16 v55, v59

    .line 2395
    .line 2396
    move/from16 v56, v60

    .line 2397
    .line 2398
    invoke-direct/range {v50 .. v56}, Lm0/i;-><init>(III[BII)V

    .line 2399
    .line 2400
    .line 2401
    goto/16 :goto_3d

    .line 2402
    .line 2403
    :cond_51
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2404
    .line 2405
    .line 2406
    move-result v2

    .line 2407
    if-eqz v2, :cond_52

    .line 2408
    .line 2409
    const-string v0, "Unsupported initial_display_delay_present_flag"

    .line 2410
    .line 2411
    invoke-static {v14, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    .line 2413
    .line 2414
    new-instance v0, Lm0/i;

    .line 2415
    .line 2416
    move-object/from16 v50, v0

    .line 2417
    .line 2418
    move/from16 v51, v53

    .line 2419
    .line 2420
    move/from16 v52, v53

    .line 2421
    .line 2422
    move-object/from16 v54, v58

    .line 2423
    .line 2424
    move/from16 v55, v59

    .line 2425
    .line 2426
    move/from16 v56, v60

    .line 2427
    .line 2428
    invoke-direct/range {v50 .. v56}, Lm0/i;-><init>(III[BII)V

    .line 2429
    .line 2430
    .line 2431
    goto/16 :goto_3d

    .line 2432
    .line 2433
    :cond_52
    const/4 v13, 0x5

    .line 2434
    invoke-virtual {v0, v13}, Lp0/D;->i(I)I

    .line 2435
    .line 2436
    .line 2437
    move-result v2

    .line 2438
    const/4 v6, 0x0

    .line 2439
    :goto_3e
    if-gt v6, v2, :cond_54

    .line 2440
    .line 2441
    invoke-virtual {v0, v8}, Lp0/D;->u(I)V

    .line 2442
    .line 2443
    .line 2444
    invoke-virtual {v0, v13}, Lp0/D;->i(I)I

    .line 2445
    .line 2446
    .line 2447
    move-result v14

    .line 2448
    const/4 v15, 0x7

    .line 2449
    if-le v14, v15, :cond_53

    .line 2450
    .line 2451
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 2452
    .line 2453
    .line 2454
    :cond_53
    const/4 v14, 0x1

    .line 2455
    add-int/2addr v6, v14

    .line 2456
    goto :goto_3e

    .line 2457
    :cond_54
    const/4 v6, 0x4

    .line 2458
    const/4 v14, 0x1

    .line 2459
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 2460
    .line 2461
    .line 2462
    move-result v2

    .line 2463
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 2464
    .line 2465
    .line 2466
    move-result v15

    .line 2467
    add-int/2addr v2, v14

    .line 2468
    invoke-virtual {v0, v2}, Lp0/D;->u(I)V

    .line 2469
    .line 2470
    .line 2471
    add-int/2addr v15, v14

    .line 2472
    invoke-virtual {v0, v15}, Lp0/D;->u(I)V

    .line 2473
    .line 2474
    .line 2475
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2476
    .line 2477
    .line 2478
    move-result v2

    .line 2479
    if-eqz v2, :cond_55

    .line 2480
    .line 2481
    const/4 v2, 0x7

    .line 2482
    invoke-virtual {v0, v2}, Lp0/D;->u(I)V

    .line 2483
    .line 2484
    .line 2485
    goto :goto_3f

    .line 2486
    :cond_55
    const/4 v2, 0x7

    .line 2487
    :goto_3f
    invoke-virtual {v0, v2}, Lp0/D;->u(I)V

    .line 2488
    .line 2489
    .line 2490
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2491
    .line 2492
    .line 2493
    move-result v6

    .line 2494
    if-eqz v6, :cond_56

    .line 2495
    .line 2496
    const/4 v14, 0x2

    .line 2497
    invoke-virtual {v0, v14}, Lp0/D;->u(I)V

    .line 2498
    .line 2499
    .line 2500
    :cond_56
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2501
    .line 2502
    .line 2503
    move-result v14

    .line 2504
    if-eqz v14, :cond_57

    .line 2505
    .line 2506
    const/4 v14, 0x1

    .line 2507
    goto :goto_40

    .line 2508
    :cond_57
    const/4 v14, 0x1

    .line 2509
    invoke-virtual {v0, v14}, Lp0/D;->i(I)I

    .line 2510
    .line 2511
    .line 2512
    move-result v15

    .line 2513
    if-lez v15, :cond_58

    .line 2514
    .line 2515
    :goto_40
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2516
    .line 2517
    .line 2518
    move-result v15

    .line 2519
    if-nez v15, :cond_58

    .line 2520
    .line 2521
    invoke-virtual {v0, v14}, Lp0/D;->u(I)V

    .line 2522
    .line 2523
    .line 2524
    :cond_58
    if-eqz v6, :cond_59

    .line 2525
    .line 2526
    const/4 v6, 0x3

    .line 2527
    invoke-virtual {v0, v6}, Lp0/D;->u(I)V

    .line 2528
    .line 2529
    .line 2530
    goto :goto_41

    .line 2531
    :cond_59
    const/4 v6, 0x3

    .line 2532
    :goto_41
    invoke-virtual {v0, v6}, Lp0/D;->u(I)V

    .line 2533
    .line 2534
    .line 2535
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2536
    .line 2537
    .line 2538
    move-result v6

    .line 2539
    const/4 v14, 0x2

    .line 2540
    if-ne v3, v14, :cond_5a

    .line 2541
    .line 2542
    if-eqz v6, :cond_5a

    .line 2543
    .line 2544
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 2545
    .line 2546
    .line 2547
    :cond_5a
    const/4 v6, 0x1

    .line 2548
    if-eq v3, v6, :cond_5b

    .line 2549
    .line 2550
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2551
    .line 2552
    .line 2553
    move-result v3

    .line 2554
    if-eqz v3, :cond_5b

    .line 2555
    .line 2556
    const/4 v3, 0x1

    .line 2557
    goto :goto_42

    .line 2558
    :cond_5b
    const/4 v3, 0x0

    .line 2559
    :goto_42
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 2560
    .line 2561
    .line 2562
    move-result v6

    .line 2563
    if-eqz v6, :cond_5f

    .line 2564
    .line 2565
    const/16 v6, 0x8

    .line 2566
    .line 2567
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 2568
    .line 2569
    .line 2570
    move-result v14

    .line 2571
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 2572
    .line 2573
    .line 2574
    move-result v15

    .line 2575
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 2576
    .line 2577
    .line 2578
    move-result v18

    .line 2579
    if-nez v3, :cond_5c

    .line 2580
    .line 2581
    const/4 v3, 0x1

    .line 2582
    if-ne v14, v3, :cond_5d

    .line 2583
    .line 2584
    const/16 v6, 0xd

    .line 2585
    .line 2586
    if-ne v15, v6, :cond_5d

    .line 2587
    .line 2588
    if-nez v18, :cond_5d

    .line 2589
    .line 2590
    const/4 v0, 0x1

    .line 2591
    goto :goto_43

    .line 2592
    :cond_5c
    const/4 v3, 0x1

    .line 2593
    :cond_5d
    invoke-virtual {v0, v3}, Lp0/D;->i(I)I

    .line 2594
    .line 2595
    .line 2596
    move-result v0

    .line 2597
    :goto_43
    invoke-static {v14}, Lm0/i;->h(I)I

    .line 2598
    .line 2599
    .line 2600
    move-result v53

    .line 2601
    if-ne v0, v3, :cond_5e

    .line 2602
    .line 2603
    const/4 v6, 0x1

    .line 2604
    goto :goto_44

    .line 2605
    :cond_5e
    const/4 v6, 0x2

    .line 2606
    :goto_44
    invoke-static {v15}, Lm0/i;->i(I)I

    .line 2607
    .line 2608
    .line 2609
    move-result v0

    .line 2610
    move/from16 v57, v0

    .line 2611
    .line 2612
    move/from16 v56, v6

    .line 2613
    .line 2614
    move/from16 v55, v53

    .line 2615
    .line 2616
    goto :goto_45

    .line 2617
    :cond_5f
    const/16 v55, -0x1

    .line 2618
    .line 2619
    const/16 v56, -0x1

    .line 2620
    .line 2621
    const/16 v57, -0x1

    .line 2622
    .line 2623
    :goto_45
    new-instance v0, Lm0/i;

    .line 2624
    .line 2625
    move-object/from16 v54, v0

    .line 2626
    .line 2627
    invoke-direct/range {v54 .. v60}, Lm0/i;-><init>(III[BII)V

    .line 2628
    .line 2629
    .line 2630
    :goto_46
    const-string v3, "video/av01"

    .line 2631
    .line 2632
    iget v6, v0, Lm0/i;->e:I

    .line 2633
    .line 2634
    iget v14, v0, Lm0/i;->f:I

    .line 2635
    .line 2636
    iget v15, v0, Lm0/i;->a:I

    .line 2637
    .line 2638
    iget v2, v0, Lm0/i;->b:I

    .line 2639
    .line 2640
    iget v0, v0, Lm0/i;->c:I

    .line 2641
    .line 2642
    move-object/from16 v32, v1

    .line 2643
    .line 2644
    move/from16 v51, v2

    .line 2645
    .line 2646
    move/from16 v36, v7

    .line 2647
    .line 2648
    move/from16 v33, v11

    .line 2649
    .line 2650
    move/from16 v37, v14

    .line 2651
    .line 2652
    const/4 v1, -0x1

    .line 2653
    const v5, 0x65736473

    .line 2654
    .line 2655
    .line 2656
    const/4 v7, 0x3

    .line 2657
    const/4 v8, 0x0

    .line 2658
    const/16 v12, 0x8

    .line 2659
    .line 2660
    const/4 v13, 0x0

    .line 2661
    const/16 v16, 0xb

    .line 2662
    .line 2663
    const/16 v18, 0x7

    .line 2664
    .line 2665
    move v11, v6

    .line 2666
    move v6, v0

    .line 2667
    move-object v0, v3

    .line 2668
    move v3, v15

    .line 2669
    :goto_47
    move-object v15, v9

    .line 2670
    const/4 v9, 0x2

    .line 2671
    goto/16 :goto_5d

    .line 2672
    .line 2673
    :cond_60
    const/4 v13, 0x5

    .line 2674
    const/16 v18, 0x7

    .line 2675
    .line 2676
    const v5, 0x636c6c69

    .line 2677
    .line 2678
    .line 2679
    const/16 v22, 0x19

    .line 2680
    .line 2681
    if-ne v9, v5, :cond_62

    .line 2682
    .line 2683
    if-nez v30, :cond_61

    .line 2684
    .line 2685
    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2686
    .line 2687
    .line 2688
    move-result-object v2

    .line 2689
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2690
    .line 2691
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2692
    .line 2693
    .line 2694
    move-result-object v30

    .line 2695
    :cond_61
    move-object/from16 v2, v30

    .line 2696
    .line 2697
    const/16 v5, 0x15

    .line 2698
    .line 2699
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2700
    .line 2701
    .line 2702
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2703
    .line 2704
    .line 2705
    move-result v5

    .line 2706
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2707
    .line 2708
    .line 2709
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2710
    .line 2711
    .line 2712
    move-result v5

    .line 2713
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2714
    .line 2715
    .line 2716
    move-object/from16 v32, v1

    .line 2717
    .line 2718
    move-object/from16 v30, v2

    .line 2719
    .line 2720
    move/from16 v36, v7

    .line 2721
    .line 2722
    move/from16 v33, v11

    .line 2723
    .line 2724
    :goto_48
    move/from16 v11, v50

    .line 2725
    .line 2726
    const/4 v1, -0x1

    .line 2727
    const v5, 0x65736473

    .line 2728
    .line 2729
    .line 2730
    :goto_49
    const/4 v7, 0x3

    .line 2731
    :goto_4a
    const/4 v8, 0x0

    .line 2732
    :goto_4b
    const/4 v9, 0x2

    .line 2733
    const/16 v12, 0x8

    .line 2734
    .line 2735
    const/4 v13, 0x0

    .line 2736
    const/16 v16, 0xb

    .line 2737
    .line 2738
    goto/16 :goto_5d

    .line 2739
    .line 2740
    :cond_62
    const v5, 0x6d646376

    .line 2741
    .line 2742
    .line 2743
    if-ne v9, v5, :cond_64

    .line 2744
    .line 2745
    if-nez v30, :cond_63

    .line 2746
    .line 2747
    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2748
    .line 2749
    .line 2750
    move-result-object v2

    .line 2751
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2752
    .line 2753
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2754
    .line 2755
    .line 2756
    move-result-object v30

    .line 2757
    :cond_63
    move-object/from16 v2, v30

    .line 2758
    .line 2759
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2760
    .line 2761
    .line 2762
    move-result v5

    .line 2763
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2764
    .line 2765
    .line 2766
    move-result v9

    .line 2767
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2768
    .line 2769
    .line 2770
    move-result v14

    .line 2771
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2772
    .line 2773
    .line 2774
    move-result v13

    .line 2775
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2776
    .line 2777
    .line 2778
    move-result v12

    .line 2779
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2780
    .line 2781
    .line 2782
    move-result v8

    .line 2783
    move-object/from16 v32, v1

    .line 2784
    .line 2785
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2786
    .line 2787
    .line 2788
    move-result v1

    .line 2789
    move/from16 v33, v11

    .line 2790
    .line 2791
    invoke-virtual/range {p0 .. p0}, Lp0/E;->w()S

    .line 2792
    .line 2793
    .line 2794
    move-result v11

    .line 2795
    invoke-virtual/range {p0 .. p0}, Lp0/E;->B()J

    .line 2796
    .line 2797
    .line 2798
    move-result-wide v52

    .line 2799
    invoke-virtual/range {p0 .. p0}, Lp0/E;->B()J

    .line 2800
    .line 2801
    .line 2802
    move-result-wide v54

    .line 2803
    move/from16 v36, v7

    .line 2804
    .line 2805
    const/4 v7, 0x1

    .line 2806
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2807
    .line 2808
    .line 2809
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2810
    .line 2811
    .line 2812
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2813
    .line 2814
    .line 2815
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2816
    .line 2817
    .line 2818
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2819
    .line 2820
    .line 2821
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2822
    .line 2823
    .line 2824
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2825
    .line 2826
    .line 2827
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2828
    .line 2829
    .line 2830
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2831
    .line 2832
    .line 2833
    const-wide/16 v7, 0x2710

    .line 2834
    .line 2835
    div-long v11, v52, v7

    .line 2836
    .line 2837
    long-to-int v1, v11

    .line 2838
    int-to-short v1, v1

    .line 2839
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2840
    .line 2841
    .line 2842
    div-long v7, v54, v7

    .line 2843
    .line 2844
    long-to-int v1, v7

    .line 2845
    int-to-short v1, v1

    .line 2846
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2847
    .line 2848
    .line 2849
    move-object/from16 v30, v2

    .line 2850
    .line 2851
    goto :goto_48

    .line 2852
    :cond_64
    move-object/from16 v32, v1

    .line 2853
    .line 2854
    move/from16 v36, v7

    .line 2855
    .line 2856
    move/from16 v33, v11

    .line 2857
    .line 2858
    const v1, 0x64323633

    .line 2859
    .line 2860
    .line 2861
    if-ne v9, v1, :cond_66

    .line 2862
    .line 2863
    const/4 v1, 0x0

    .line 2864
    if-nez v0, :cond_65

    .line 2865
    .line 2866
    const/4 v2, 0x1

    .line 2867
    goto :goto_4c

    .line 2868
    :cond_65
    const/4 v2, 0x0

    .line 2869
    :goto_4c
    invoke-static {v1, v2}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 2870
    .line 2871
    .line 2872
    move-object v8, v1

    .line 2873
    move-object/from16 v0, v23

    .line 2874
    .line 2875
    move/from16 v11, v50

    .line 2876
    .line 2877
    const/4 v1, -0x1

    .line 2878
    const v5, 0x65736473

    .line 2879
    .line 2880
    .line 2881
    const/4 v7, 0x3

    .line 2882
    goto/16 :goto_4b

    .line 2883
    .line 2884
    :cond_66
    const/4 v1, 0x0

    .line 2885
    const v5, 0x65736473

    .line 2886
    .line 2887
    .line 2888
    if-ne v9, v5, :cond_69

    .line 2889
    .line 2890
    if-nez v0, :cond_67

    .line 2891
    .line 2892
    const/4 v0, 0x1

    .line 2893
    goto :goto_4d

    .line 2894
    :cond_67
    const/4 v0, 0x0

    .line 2895
    :goto_4d
    invoke-static {v1, v0}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 2896
    .line 2897
    .line 2898
    invoke-static {v2, v10}, Lo1/e;->c(ILp0/E;)Lo1/c;

    .line 2899
    .line 2900
    .line 2901
    move-result-object v0

    .line 2902
    iget-object v1, v0, Lo1/c;->b:[B

    .line 2903
    .line 2904
    if-eqz v1, :cond_68

    .line 2905
    .line 2906
    invoke-static {v1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2907
    .line 2908
    .line 2909
    move-result-object v9

    .line 2910
    goto :goto_4e

    .line 2911
    :cond_68
    move-object v9, v15

    .line 2912
    :goto_4e
    iget-object v1, v0, Lo1/c;->a:Ljava/lang/String;

    .line 2913
    .line 2914
    move-object/from16 v45, v0

    .line 2915
    .line 2916
    move-object v0, v1

    .line 2917
    move-object v15, v9

    .line 2918
    :goto_4f
    move/from16 v11, v50

    .line 2919
    .line 2920
    const/4 v1, -0x1

    .line 2921
    goto/16 :goto_49

    .line 2922
    .line 2923
    :cond_69
    const v1, 0x62747274

    .line 2924
    .line 2925
    .line 2926
    if-ne v9, v1, :cond_6a

    .line 2927
    .line 2928
    const/16 v1, 0x8

    .line 2929
    .line 2930
    add-int/2addr v2, v1

    .line 2931
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 2932
    .line 2933
    .line 2934
    const/4 v1, 0x4

    .line 2935
    invoke-virtual {v10, v1}, Lp0/E;->M(I)V

    .line 2936
    .line 2937
    .line 2938
    invoke-virtual/range {p0 .. p0}, Lp0/E;->B()J

    .line 2939
    .line 2940
    .line 2941
    move-result-wide v1

    .line 2942
    invoke-virtual/range {p0 .. p0}, Lp0/E;->B()J

    .line 2943
    .line 2944
    .line 2945
    move-result-wide v7

    .line 2946
    new-instance v9, LU0/C;

    .line 2947
    .line 2948
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 2949
    .line 2950
    .line 2951
    iput-wide v7, v9, LU0/C;->a:J

    .line 2952
    .line 2953
    iput-wide v1, v9, LU0/C;->b:J

    .line 2954
    .line 2955
    move-object/from16 v44, v9

    .line 2956
    .line 2957
    goto :goto_4f

    .line 2958
    :cond_6a
    const v1, 0x70617370

    .line 2959
    .line 2960
    .line 2961
    if-ne v9, v1, :cond_6b

    .line 2962
    .line 2963
    const/16 v1, 0x8

    .line 2964
    .line 2965
    add-int/2addr v2, v1

    .line 2966
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 2967
    .line 2968
    .line 2969
    invoke-virtual/range {p0 .. p0}, Lp0/E;->D()I

    .line 2970
    .line 2971
    .line 2972
    move-result v2

    .line 2973
    invoke-virtual/range {p0 .. p0}, Lp0/E;->D()I

    .line 2974
    .line 2975
    .line 2976
    move-result v7

    .line 2977
    int-to-float v2, v2

    .line 2978
    int-to-float v7, v7

    .line 2979
    div-float/2addr v2, v7

    .line 2980
    move/from16 v27, v2

    .line 2981
    .line 2982
    move/from16 v11, v50

    .line 2983
    .line 2984
    const/4 v1, -0x1

    .line 2985
    const/4 v7, 0x3

    .line 2986
    const/4 v8, 0x0

    .line 2987
    const/4 v9, 0x2

    .line 2988
    const/16 v12, 0x8

    .line 2989
    .line 2990
    const/4 v13, 0x0

    .line 2991
    const/16 v16, 0xb

    .line 2992
    .line 2993
    const/16 v35, 0x1

    .line 2994
    .line 2995
    goto/16 :goto_5d

    .line 2996
    .line 2997
    :cond_6b
    const/16 v1, 0x8

    .line 2998
    .line 2999
    const v7, 0x73763364

    .line 3000
    .line 3001
    .line 3002
    if-ne v9, v7, :cond_6e

    .line 3003
    .line 3004
    add-int/lit8 v7, v2, 0x8

    .line 3005
    .line 3006
    :goto_50
    sub-int v1, v7, v2

    .line 3007
    .line 3008
    if-ge v1, v4, :cond_6d

    .line 3009
    .line 3010
    invoke-virtual {v10, v7}, Lp0/E;->L(I)V

    .line 3011
    .line 3012
    .line 3013
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 3014
    .line 3015
    .line 3016
    move-result v1

    .line 3017
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 3018
    .line 3019
    .line 3020
    move-result v8

    .line 3021
    const v9, 0x70726f6a

    .line 3022
    .line 3023
    .line 3024
    if-ne v8, v9, :cond_6c

    .line 3025
    .line 3026
    iget-object v2, v10, Lp0/E;->a:[B

    .line 3027
    .line 3028
    add-int/2addr v1, v7

    .line 3029
    invoke-static {v2, v7, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 3030
    .line 3031
    .line 3032
    move-result-object v1

    .line 3033
    move-object/from16 v39, v1

    .line 3034
    .line 3035
    goto :goto_4f

    .line 3036
    :cond_6c
    add-int/2addr v7, v1

    .line 3037
    goto :goto_50

    .line 3038
    :cond_6d
    const/16 v39, 0x0

    .line 3039
    .line 3040
    goto :goto_4f

    .line 3041
    :cond_6e
    const v1, 0x73743364

    .line 3042
    .line 3043
    .line 3044
    if-ne v9, v1, :cond_74

    .line 3045
    .line 3046
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 3047
    .line 3048
    .line 3049
    move-result v1

    .line 3050
    const/4 v7, 0x3

    .line 3051
    invoke-virtual {v10, v7}, Lp0/E;->M(I)V

    .line 3052
    .line 3053
    .line 3054
    if-nez v1, :cond_73

    .line 3055
    .line 3056
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 3057
    .line 3058
    .line 3059
    move-result v1

    .line 3060
    if-eqz v1, :cond_72

    .line 3061
    .line 3062
    const/4 v2, 0x1

    .line 3063
    if-eq v1, v2, :cond_71

    .line 3064
    .line 3065
    const/4 v2, 0x2

    .line 3066
    if-eq v1, v2, :cond_70

    .line 3067
    .line 3068
    if-eq v1, v7, :cond_6f

    .line 3069
    .line 3070
    goto :goto_51

    .line 3071
    :cond_6f
    const/16 v36, 0x3

    .line 3072
    .line 3073
    goto :goto_51

    .line 3074
    :cond_70
    const/16 v36, 0x2

    .line 3075
    .line 3076
    goto :goto_51

    .line 3077
    :cond_71
    const/16 v36, 0x1

    .line 3078
    .line 3079
    goto :goto_51

    .line 3080
    :cond_72
    const/16 v36, 0x0

    .line 3081
    .line 3082
    :cond_73
    :goto_51
    move/from16 v11, v50

    .line 3083
    .line 3084
    const/4 v1, -0x1

    .line 3085
    goto/16 :goto_4a

    .line 3086
    .line 3087
    :cond_74
    const/4 v7, 0x3

    .line 3088
    const v1, 0x61707643

    .line 3089
    .line 3090
    .line 3091
    if-ne v9, v1, :cond_79

    .line 3092
    .line 3093
    const/16 v1, 0xc

    .line 3094
    .line 3095
    add-int/lit8 v0, v4, -0xc

    .line 3096
    .line 3097
    new-array v3, v0, [B

    .line 3098
    .line 3099
    add-int/2addr v2, v1

    .line 3100
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 3101
    .line 3102
    .line 3103
    const/4 v2, 0x0

    .line 3104
    invoke-virtual {v10, v2, v3, v0}, Lp0/E;->j(I[BI)V

    .line 3105
    .line 3106
    .line 3107
    invoke-static {v3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 3108
    .line 3109
    .line 3110
    move-result-object v9

    .line 3111
    new-instance v0, Lp0/E;

    .line 3112
    .line 3113
    invoke-direct {v0, v3}, Lp0/E;-><init>([B)V

    .line 3114
    .line 3115
    .line 3116
    new-instance v6, Lp0/D;

    .line 3117
    .line 3118
    const/4 v8, 0x0

    .line 3119
    invoke-direct {v6, v3, v2, v8}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 3120
    .line 3121
    .line 3122
    iget v0, v0, Lp0/E;->b:I

    .line 3123
    .line 3124
    const/16 v2, 0x8

    .line 3125
    .line 3126
    mul-int/lit8 v0, v0, 0x8

    .line 3127
    .line 3128
    invoke-virtual {v6, v0}, Lp0/D;->r(I)V

    .line 3129
    .line 3130
    .line 3131
    const/4 v0, 0x1

    .line 3132
    invoke-virtual {v6, v0}, Lp0/D;->v(I)V

    .line 3133
    .line 3134
    .line 3135
    invoke-virtual {v6, v2}, Lp0/D;->i(I)I

    .line 3136
    .line 3137
    .line 3138
    move-result v3

    .line 3139
    const/4 v11, -0x1

    .line 3140
    const/4 v12, -0x1

    .line 3141
    const/4 v13, -0x1

    .line 3142
    const/4 v14, 0x0

    .line 3143
    const/4 v15, -0x1

    .line 3144
    const/16 v20, -0x1

    .line 3145
    .line 3146
    :goto_52
    if-ge v14, v3, :cond_78

    .line 3147
    .line 3148
    invoke-virtual {v6, v0}, Lp0/D;->v(I)V

    .line 3149
    .line 3150
    .line 3151
    invoke-virtual {v6, v2}, Lp0/D;->i(I)I

    .line 3152
    .line 3153
    .line 3154
    move-result v0

    .line 3155
    move/from16 v24, v20

    .line 3156
    .line 3157
    move/from16 v20, v15

    .line 3158
    .line 3159
    move v15, v13

    .line 3160
    move v13, v12

    .line 3161
    move v12, v11

    .line 3162
    const/4 v11, 0x0

    .line 3163
    :goto_53
    if-ge v11, v0, :cond_77

    .line 3164
    .line 3165
    const/4 v1, 0x6

    .line 3166
    invoke-virtual {v6, v1}, Lp0/D;->u(I)V

    .line 3167
    .line 3168
    .line 3169
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 3170
    .line 3171
    .line 3172
    move-result v12

    .line 3173
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 3174
    .line 3175
    .line 3176
    const/16 v13, 0xb

    .line 3177
    .line 3178
    invoke-virtual {v6, v13}, Lp0/D;->v(I)V

    .line 3179
    .line 3180
    .line 3181
    const/4 v1, 0x4

    .line 3182
    invoke-virtual {v6, v1}, Lp0/D;->u(I)V

    .line 3183
    .line 3184
    .line 3185
    invoke-virtual {v6, v1}, Lp0/D;->i(I)I

    .line 3186
    .line 3187
    .line 3188
    move-result v16

    .line 3189
    add-int/lit8 v16, v16, 0x8

    .line 3190
    .line 3191
    const/4 v1, 0x1

    .line 3192
    invoke-virtual {v6, v1}, Lp0/D;->v(I)V

    .line 3193
    .line 3194
    .line 3195
    if-eqz v12, :cond_76

    .line 3196
    .line 3197
    invoke-virtual {v6, v2}, Lp0/D;->i(I)I

    .line 3198
    .line 3199
    .line 3200
    move-result v12

    .line 3201
    invoke-virtual {v6, v2}, Lp0/D;->i(I)I

    .line 3202
    .line 3203
    .line 3204
    move-result v15

    .line 3205
    invoke-virtual {v6, v1}, Lp0/D;->v(I)V

    .line 3206
    .line 3207
    .line 3208
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 3209
    .line 3210
    .line 3211
    move-result v2

    .line 3212
    invoke-static {v12}, Lm0/i;->h(I)I

    .line 3213
    .line 3214
    .line 3215
    move-result v12

    .line 3216
    if-eqz v2, :cond_75

    .line 3217
    .line 3218
    const/4 v2, 0x1

    .line 3219
    goto :goto_54

    .line 3220
    :cond_75
    const/4 v2, 0x2

    .line 3221
    :goto_54
    invoke-static {v15}, Lm0/i;->i(I)I

    .line 3222
    .line 3223
    .line 3224
    move-result v15

    .line 3225
    move/from16 v24, v2

    .line 3226
    .line 3227
    move/from16 v20, v15

    .line 3228
    .line 3229
    move v15, v12

    .line 3230
    :cond_76
    add-int/2addr v11, v1

    .line 3231
    move/from16 v12, v16

    .line 3232
    .line 3233
    move v13, v12

    .line 3234
    const/16 v1, 0xc

    .line 3235
    .line 3236
    const/16 v2, 0x8

    .line 3237
    .line 3238
    goto :goto_53

    .line 3239
    :cond_77
    const/4 v1, 0x1

    .line 3240
    const/16 v16, 0xb

    .line 3241
    .line 3242
    add-int/2addr v14, v1

    .line 3243
    move v11, v12

    .line 3244
    move v12, v13

    .line 3245
    move v13, v15

    .line 3246
    move/from16 v15, v20

    .line 3247
    .line 3248
    move/from16 v20, v24

    .line 3249
    .line 3250
    const/4 v0, 0x1

    .line 3251
    const/16 v1, 0xc

    .line 3252
    .line 3253
    const/16 v2, 0x8

    .line 3254
    .line 3255
    goto :goto_52

    .line 3256
    :cond_78
    const/16 v16, 0xb

    .line 3257
    .line 3258
    new-instance v0, Lm0/i;

    .line 3259
    .line 3260
    const-string v0, "video/apv"

    .line 3261
    .line 3262
    move/from16 v37, v12

    .line 3263
    .line 3264
    move v3, v13

    .line 3265
    move v6, v15

    .line 3266
    move/from16 v51, v20

    .line 3267
    .line 3268
    const/4 v1, -0x1

    .line 3269
    const/16 v12, 0x8

    .line 3270
    .line 3271
    const/4 v13, 0x0

    .line 3272
    goto/16 :goto_47

    .line 3273
    .line 3274
    :cond_79
    const/4 v8, 0x0

    .line 3275
    const/16 v16, 0xb

    .line 3276
    .line 3277
    const v1, 0x636f6c72

    .line 3278
    .line 3279
    .line 3280
    if-ne v9, v1, :cond_7f

    .line 3281
    .line 3282
    const/4 v1, -0x1

    .line 3283
    if-ne v3, v1, :cond_7b

    .line 3284
    .line 3285
    if-ne v6, v1, :cond_7b

    .line 3286
    .line 3287
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 3288
    .line 3289
    .line 3290
    move-result v2

    .line 3291
    const v9, 0x6e636c78

    .line 3292
    .line 3293
    .line 3294
    if-eq v2, v9, :cond_7c

    .line 3295
    .line 3296
    const v9, 0x6e636c63

    .line 3297
    .line 3298
    .line 3299
    if-ne v2, v9, :cond_7a

    .line 3300
    .line 3301
    goto :goto_56

    .line 3302
    :cond_7a
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3303
    .line 3304
    const-string v11, "Unsupported color type: "

    .line 3305
    .line 3306
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3307
    .line 3308
    .line 3309
    invoke-static {v2}, Lq0/e;->a(I)Ljava/lang/String;

    .line 3310
    .line 3311
    .line 3312
    move-result-object v2

    .line 3313
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    .line 3315
    .line 3316
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3317
    .line 3318
    .line 3319
    move-result-object v2

    .line 3320
    invoke-static {v14, v2}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    .line 3322
    .line 3323
    :cond_7b
    :goto_55
    const/4 v9, 0x2

    .line 3324
    goto :goto_59

    .line 3325
    :cond_7c
    :goto_56
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    .line 3326
    .line 3327
    .line 3328
    move-result v2

    .line 3329
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    .line 3330
    .line 3331
    .line 3332
    move-result v3

    .line 3333
    const/4 v9, 0x2

    .line 3334
    invoke-virtual {v10, v9}, Lp0/E;->M(I)V

    .line 3335
    .line 3336
    .line 3337
    const/16 v6, 0x13

    .line 3338
    .line 3339
    if-ne v4, v6, :cond_7d

    .line 3340
    .line 3341
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 3342
    .line 3343
    .line 3344
    move-result v6

    .line 3345
    and-int/lit16 v6, v6, 0x80

    .line 3346
    .line 3347
    if-eqz v6, :cond_7d

    .line 3348
    .line 3349
    const/4 v6, 0x1

    .line 3350
    goto :goto_57

    .line 3351
    :cond_7d
    const/4 v6, 0x0

    .line 3352
    :goto_57
    invoke-static {v2}, Lm0/i;->h(I)I

    .line 3353
    .line 3354
    .line 3355
    move-result v2

    .line 3356
    if-eqz v6, :cond_7e

    .line 3357
    .line 3358
    const/4 v6, 0x1

    .line 3359
    goto :goto_58

    .line 3360
    :cond_7e
    const/4 v6, 0x2

    .line 3361
    :goto_58
    invoke-static {v3}, Lm0/i;->i(I)I

    .line 3362
    .line 3363
    .line 3364
    move-result v3

    .line 3365
    move/from16 v51, v6

    .line 3366
    .line 3367
    move/from16 v11, v50

    .line 3368
    .line 3369
    const/16 v12, 0x8

    .line 3370
    .line 3371
    const/4 v13, 0x0

    .line 3372
    move v6, v3

    .line 3373
    move v3, v2

    .line 3374
    goto :goto_5d

    .line 3375
    :cond_7f
    const/4 v1, -0x1

    .line 3376
    goto :goto_55

    .line 3377
    :goto_59
    move/from16 v11, v50

    .line 3378
    .line 3379
    const/16 v12, 0x8

    .line 3380
    .line 3381
    const/4 v13, 0x0

    .line 3382
    goto :goto_5d

    .line 3383
    :cond_80
    move/from16 v36, v7

    .line 3384
    .line 3385
    move/from16 v33, v32

    .line 3386
    .line 3387
    const v5, 0x65736473

    .line 3388
    .line 3389
    .line 3390
    const/4 v7, 0x3

    .line 3391
    const/4 v8, 0x0

    .line 3392
    const/4 v9, 0x2

    .line 3393
    const/16 v16, 0xb

    .line 3394
    .line 3395
    const/16 v17, 0xa

    .line 3396
    .line 3397
    const/16 v18, 0x7

    .line 3398
    .line 3399
    move-object/from16 v32, v1

    .line 3400
    .line 3401
    const/4 v1, -0x1

    .line 3402
    const/16 v11, 0x8

    .line 3403
    .line 3404
    :goto_5a
    add-int/lit8 v12, v4, -0x8

    .line 3405
    .line 3406
    new-array v11, v12, [B

    .line 3407
    .line 3408
    const/4 v13, 0x0

    .line 3409
    invoke-virtual {v10, v13, v11, v12}, Lp0/E;->j(I[BI)V

    .line 3410
    .line 3411
    .line 3412
    if-eqz v15, :cond_81

    .line 3413
    .line 3414
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 3415
    .line 3416
    .line 3417
    move-result-object v12

    .line 3418
    invoke-virtual {v12, v15}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 3419
    .line 3420
    .line 3421
    invoke-virtual {v12, v11}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 3422
    .line 3423
    .line 3424
    invoke-virtual {v12}, Lz4/E;->m0()Lz4/d0;

    .line 3425
    .line 3426
    .line 3427
    move-result-object v11

    .line 3428
    :goto_5b
    const/16 v12, 0x8

    .line 3429
    .line 3430
    goto :goto_5c

    .line 3431
    :cond_81
    const-string v11, "initializationData must already be set from hvcC or avcC atom"

    .line 3432
    .line 3433
    invoke-static {v11, v13}, LE3/f;->c(Ljava/lang/String;Z)V

    .line 3434
    .line 3435
    .line 3436
    move-object v11, v15

    .line 3437
    goto :goto_5b

    .line 3438
    :goto_5c
    add-int/2addr v2, v12

    .line 3439
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 3440
    .line 3441
    .line 3442
    invoke-static/range {p0 .. p0}, LW0/r;->a(Lp0/E;)LW0/r;

    .line 3443
    .line 3444
    .line 3445
    move-result-object v2

    .line 3446
    if-eqz v2, :cond_82

    .line 3447
    .line 3448
    iget-object v0, v2, LW0/r;->a:Ljava/lang/String;

    .line 3449
    .line 3450
    const-string v2, "video/dolby-vision"

    .line 3451
    .line 3452
    move-object/from16 v38, v0

    .line 3453
    .line 3454
    move-object v0, v2

    .line 3455
    :cond_82
    move-object v15, v11

    .line 3456
    move/from16 v11, v50

    .line 3457
    .line 3458
    :goto_5d
    add-int v4, v34, v4

    .line 3459
    .line 3460
    move-object v9, v15

    .line 3461
    move-object/from16 v1, v32

    .line 3462
    .line 3463
    move/from16 v32, v33

    .line 3464
    .line 3465
    move/from16 v7, v35

    .line 3466
    .line 3467
    move/from16 v33, v36

    .line 3468
    .line 3469
    move/from16 v5, v37

    .line 3470
    .line 3471
    move/from16 v12, v46

    .line 3472
    .line 3473
    move/from16 v15, v47

    .line 3474
    .line 3475
    move-object/from16 v14, v48

    .line 3476
    .line 3477
    move-object/from16 v8, v49

    .line 3478
    .line 3479
    move/from16 v13, v51

    .line 3480
    .line 3481
    goto/16 :goto_12

    .line 3482
    .line 3483
    :cond_83
    move/from16 v37, v5

    .line 3484
    .line 3485
    move/from16 v50, v11

    .line 3486
    .line 3487
    move/from16 v46, v12

    .line 3488
    .line 3489
    move/from16 v51, v13

    .line 3490
    .line 3491
    move-object/from16 v48, v14

    .line 3492
    .line 3493
    move/from16 v47, v15

    .line 3494
    .line 3495
    move/from16 v36, v33

    .line 3496
    .line 3497
    const/4 v7, 0x3

    .line 3498
    const/4 v8, 0x0

    .line 3499
    const/16 v12, 0x8

    .line 3500
    .line 3501
    const/4 v13, 0x0

    .line 3502
    const/16 v16, 0xb

    .line 3503
    .line 3504
    const/16 v17, 0xa

    .line 3505
    .line 3506
    const/16 v18, 0x7

    .line 3507
    .line 3508
    move-object v15, v9

    .line 3509
    const/4 v9, 0x2

    .line 3510
    :goto_5e
    if-nez v0, :cond_84

    .line 3511
    .line 3512
    move-object/from16 v0, p1

    .line 3513
    .line 3514
    move-object/from16 v4, p2

    .line 3515
    .line 3516
    move-object/from16 v1, v48

    .line 3517
    .line 3518
    const/4 v2, 0x5

    .line 3519
    const/4 v5, 0x3

    .line 3520
    goto/16 :goto_61

    .line 3521
    .line 3522
    :cond_84
    new-instance v1, Lm0/s;

    .line 3523
    .line 3524
    invoke-direct {v1}, Lm0/s;-><init>()V

    .line 3525
    .line 3526
    .line 3527
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 3528
    .line 3529
    .line 3530
    move-result-object v2

    .line 3531
    iput-object v2, v1, Lm0/s;->a:Ljava/lang/String;

    .line 3532
    .line 3533
    invoke-static {v0}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 3534
    .line 3535
    .line 3536
    move-result-object v0

    .line 3537
    iput-object v0, v1, Lm0/s;->n:Ljava/lang/String;

    .line 3538
    .line 3539
    move-object/from16 v0, v38

    .line 3540
    .line 3541
    iput-object v0, v1, Lm0/s;->j:Ljava/lang/String;

    .line 3542
    .line 3543
    move/from16 v0, v29

    .line 3544
    .line 3545
    iput v0, v1, Lm0/s;->u:I

    .line 3546
    .line 3547
    move/from16 v0, v28

    .line 3548
    .line 3549
    iput v0, v1, Lm0/s;->v:I

    .line 3550
    .line 3551
    move/from16 v4, v42

    .line 3552
    .line 3553
    iput v4, v1, Lm0/s;->w:I

    .line 3554
    .line 3555
    move/from16 v4, v43

    .line 3556
    .line 3557
    iput v4, v1, Lm0/s;->x:I

    .line 3558
    .line 3559
    move/from16 v11, v27

    .line 3560
    .line 3561
    iput v11, v1, Lm0/s;->A:F

    .line 3562
    .line 3563
    move-object/from16 v0, p1

    .line 3564
    .line 3565
    const/4 v2, 0x5

    .line 3566
    iget v4, v0, Lcom/google/android/gms/internal/ads/f2;->c:I

    .line 3567
    .line 3568
    iput v4, v1, Lm0/s;->z:I

    .line 3569
    .line 3570
    move-object/from16 v4, v39

    .line 3571
    .line 3572
    iput-object v4, v1, Lm0/s;->B:[B

    .line 3573
    .line 3574
    move/from16 v4, v36

    .line 3575
    .line 3576
    iput v4, v1, Lm0/s;->C:I

    .line 3577
    .line 3578
    iput-object v15, v1, Lm0/s;->q:Ljava/util/List;

    .line 3579
    .line 3580
    move/from16 v4, v40

    .line 3581
    .line 3582
    iput v4, v1, Lm0/s;->p:I

    .line 3583
    .line 3584
    move/from16 v4, v41

    .line 3585
    .line 3586
    iput v4, v1, Lm0/s;->E:I

    .line 3587
    .line 3588
    move-object/from16 v4, v25

    .line 3589
    .line 3590
    iput-object v4, v1, Lm0/s;->r:Lm0/n;

    .line 3591
    .line 3592
    move-object/from16 v4, p2

    .line 3593
    .line 3594
    const/4 v5, 0x3

    .line 3595
    iput-object v4, v1, Lm0/s;->d:Ljava/lang/String;

    .line 3596
    .line 3597
    if-eqz v30, :cond_85

    .line 3598
    .line 3599
    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->array()[B

    .line 3600
    .line 3601
    .line 3602
    move-result-object v7

    .line 3603
    move-object/from16 v35, v7

    .line 3604
    .line 3605
    goto :goto_5f

    .line 3606
    :cond_85
    move-object/from16 v35, v8

    .line 3607
    .line 3608
    :goto_5f
    new-instance v7, Lm0/i;

    .line 3609
    .line 3610
    move-object/from16 v31, v7

    .line 3611
    .line 3612
    move/from16 v32, v3

    .line 3613
    .line 3614
    move/from16 v33, v51

    .line 3615
    .line 3616
    move/from16 v34, v6

    .line 3617
    .line 3618
    move/from16 v36, v50

    .line 3619
    .line 3620
    invoke-direct/range {v31 .. v37}, Lm0/i;-><init>(III[BII)V

    .line 3621
    .line 3622
    .line 3623
    iput-object v7, v1, Lm0/s;->D:Lm0/i;

    .line 3624
    .line 3625
    move-object/from16 v3, v44

    .line 3626
    .line 3627
    if-eqz v3, :cond_86

    .line 3628
    .line 3629
    iget-wide v6, v3, LU0/C;->a:J

    .line 3630
    .line 3631
    invoke-static {v6, v7}, Ly4/k;->d0(J)I

    .line 3632
    .line 3633
    .line 3634
    move-result v6

    .line 3635
    iput v6, v1, Lm0/s;->h:I

    .line 3636
    .line 3637
    iget-wide v6, v3, LU0/C;->b:J

    .line 3638
    .line 3639
    invoke-static {v6, v7}, Ly4/k;->d0(J)I

    .line 3640
    .line 3641
    .line 3642
    move-result v3

    .line 3643
    iput v3, v1, Lm0/s;->i:I

    .line 3644
    .line 3645
    goto :goto_60

    .line 3646
    :cond_86
    move-object/from16 v3, v45

    .line 3647
    .line 3648
    if-eqz v3, :cond_87

    .line 3649
    .line 3650
    iget-wide v6, v3, Lo1/c;->c:J

    .line 3651
    .line 3652
    invoke-static {v6, v7}, Ly4/k;->d0(J)I

    .line 3653
    .line 3654
    .line 3655
    move-result v6

    .line 3656
    iput v6, v1, Lm0/s;->h:I

    .line 3657
    .line 3658
    iget-wide v6, v3, Lo1/c;->d:J

    .line 3659
    .line 3660
    invoke-static {v6, v7}, Ly4/k;->d0(J)I

    .line 3661
    .line 3662
    .line 3663
    move-result v3

    .line 3664
    iput v3, v1, Lm0/s;->i:I

    .line 3665
    .line 3666
    :cond_87
    :goto_60
    new-instance v3, Lm0/t;

    .line 3667
    .line 3668
    invoke-direct {v3, v1}, Lm0/t;-><init>(Lm0/s;)V

    .line 3669
    .line 3670
    .line 3671
    move-object/from16 v1, v48

    .line 3672
    .line 3673
    iput-object v3, v1, Lc/g;->K:Ljava/lang/Object;

    .line 3674
    .line 3675
    :goto_61
    add-int v6, v47, v46

    .line 3676
    .line 3677
    invoke-virtual {v10, v6}, Lp0/E;->L(I)V

    .line 3678
    .line 3679
    .line 3680
    const/4 v3, 0x1

    .line 3681
    add-int/lit8 v6, v19, 0x1

    .line 3682
    .line 3683
    move-object/from16 v13, p3

    .line 3684
    .line 3685
    move-object v11, v0

    .line 3686
    move-object v14, v1

    .line 3687
    move-object v12, v4

    .line 3688
    move v3, v6

    .line 3689
    move/from16 v0, v21

    .line 3690
    .line 3691
    const/16 v1, 0xc

    .line 3692
    .line 3693
    goto/16 :goto_0

    .line 3694
    .line 3695
    :cond_88
    move-object v1, v14

    .line 3696
    return-object v1
.end method

.method public static j(Lq0/c;LW0/A;JLm0/n;ZZLy4/h;)Ljava/util/ArrayList;
    .locals 48

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xa

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 3
    :goto_0
    iget-object v11, v0, Lq0/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_65

    .line 4
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq0/c;

    .line 5
    iget v12, v11, Lq0/e;->b:I

    const v13, 0x7472616b

    if-eq v12, v13, :cond_0

    move-object v0, v8

    move/from16 v19, v10

    :goto_1
    const/4 v1, 0x1

    const/16 v17, 0x0

    goto/16 :goto_52

    :cond_0
    const v12, 0x6d766864

    .line 6
    invoke-virtual {v0, v12}, Lq0/c;->f(I)Lq0/d;

    move-result-object v12

    .line 7
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v13, 0x6d646961

    .line 8
    invoke-virtual {v11, v13}, Lq0/c;->e(I)Lq0/c;

    move-result-object v14

    .line 9
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v15, 0x68646c72    # 4.3148E24f

    .line 10
    invoke-virtual {v14, v15}, Lq0/c;->f(I)Lq0/d;

    move-result-object v15

    .line 11
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v15, v15, Lq0/d;->c:Lp0/E;

    const/16 v13, 0x10

    invoke-virtual {v15, v13}, Lp0/E;->L(I)V

    .line 13
    invoke-virtual {v15}, Lp0/E;->l()I

    move-result v15

    const v9, 0x736f756e

    if-ne v15, v9, :cond_1

    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    const v9, 0x76696465

    if-ne v15, v9, :cond_2

    const/4 v9, 0x2

    goto :goto_3

    :cond_2
    const v9, 0x74657874

    if-eq v15, v9, :cond_5

    const v9, 0x7362746c

    if-eq v15, v9, :cond_5

    const v9, 0x73756274

    if-eq v15, v9, :cond_5

    const v9, 0x636c6370

    if-eq v15, v9, :cond_5

    const v9, 0x73756270

    if-ne v15, v9, :cond_3

    goto :goto_2

    :cond_3
    const v9, 0x6d657461

    if-ne v15, v9, :cond_4

    const/4 v9, 0x5

    goto :goto_3

    :cond_4
    const/4 v9, -0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v9, 0x3

    :goto_3
    const-wide/16 v35, 0x0

    const/4 v3, 0x4

    if-ne v9, v6, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v37, v8

    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_20

    :cond_6
    const v15, 0x746b6864

    .line 14
    invoke-virtual {v11, v15}, Lq0/c;->f(I)Lq0/d;

    move-result-object v15

    .line 15
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object v15, v15, Lq0/d;->c:Lp0/E;

    const/16 v4, 0x8

    invoke-virtual {v15, v4}, Lp0/E;->L(I)V

    .line 17
    invoke-virtual {v15}, Lp0/E;->l()I

    move-result v18

    .line 18
    invoke-static/range {v18 .. v18}, Lo1/e;->e(I)I

    move-result v18

    if-nez v18, :cond_7

    goto :goto_5

    :cond_7
    const/16 v4, 0x10

    .line 19
    :goto_5
    invoke-virtual {v15, v4}, Lp0/E;->M(I)V

    .line 20
    invoke-virtual {v15}, Lp0/E;->l()I

    move-result v21

    .line 21
    invoke-virtual {v15, v3}, Lp0/E;->M(I)V

    .line 22
    iget v4, v15, Lp0/E;->b:I

    if-nez v18, :cond_8

    const/4 v5, 0x4

    goto :goto_6

    :cond_8
    const/16 v5, 0x8

    :goto_6
    const/4 v13, 0x0

    :goto_7
    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v13, v5, :cond_b

    .line 23
    iget-object v3, v15, Lp0/E;->a:[B

    add-int v20, v4, v13

    .line 24
    aget-byte v3, v3, v20

    if-eq v3, v6, :cond_a

    if-nez v18, :cond_9

    .line 25
    invoke-virtual {v15}, Lp0/E;->B()J

    move-result-wide v3

    goto :goto_8

    :cond_9
    invoke-virtual {v15}, Lp0/E;->E()J

    move-result-wide v3

    :goto_8
    cmp-long v5, v3, v35

    if-nez v5, :cond_c

    :goto_9
    move-wide/from16 v3, v29

    goto :goto_a

    :cond_a
    add-int/2addr v13, v7

    const/4 v3, 0x4

    goto :goto_7

    .line 26
    :cond_b
    invoke-virtual {v15, v5}, Lp0/E;->M(I)V

    goto :goto_9

    .line 27
    :cond_c
    :goto_a
    invoke-virtual {v15, v2}, Lp0/E;->M(I)V

    .line 28
    invoke-virtual {v15}, Lp0/E;->F()I

    move-result v24

    const/4 v5, 0x4

    .line 29
    invoke-virtual {v15, v5}, Lp0/E;->M(I)V

    .line 30
    invoke-virtual {v15}, Lp0/E;->l()I

    move-result v13

    .line 31
    invoke-virtual {v15}, Lp0/E;->l()I

    move-result v2

    .line 32
    invoke-virtual {v15, v5}, Lp0/E;->M(I)V

    .line 33
    invoke-virtual {v15}, Lp0/E;->l()I

    move-result v5

    .line 34
    invoke-virtual {v15}, Lp0/E;->l()I

    move-result v7

    const/high16 v6, 0x10000

    if-nez v13, :cond_e

    if-ne v2, v6, :cond_e

    const/high16 v0, -0x10000

    if-eq v5, v0, :cond_d

    if-ne v5, v6, :cond_e

    :cond_d
    if-nez v7, :cond_e

    const/16 v0, 0x5a

    const/16 v0, 0x10

    const/16 v25, 0x5a

    goto :goto_b

    :cond_e
    const/high16 v0, -0x10000

    if-nez v13, :cond_10

    if-ne v2, v0, :cond_10

    if-eq v5, v6, :cond_f

    if-ne v5, v0, :cond_10

    :cond_f
    if-nez v7, :cond_10

    const/16 v0, 0x10e

    const/16 v0, 0x10

    const/16 v25, 0x10e

    goto :goto_b

    :cond_10
    if-eq v13, v0, :cond_11

    if-ne v13, v6, :cond_12

    :cond_11
    if-nez v2, :cond_12

    if-nez v5, :cond_12

    if-ne v7, v0, :cond_12

    const/16 v0, 0xb4

    const/16 v0, 0x10

    const/16 v25, 0xb4

    goto :goto_b

    :cond_12
    const/16 v0, 0x10

    const/16 v25, 0x0

    .line 35
    :goto_b
    invoke-virtual {v15, v0}, Lp0/E;->M(I)V

    .line 36
    invoke-virtual {v15}, Lp0/E;->w()S

    move-result v26

    const/4 v2, 0x2

    .line 37
    invoke-virtual {v15, v2}, Lp0/E;->M(I)V

    .line 38
    invoke-virtual {v15}, Lp0/E;->w()S

    move-result v27

    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/f2;

    move-object/from16 v20, v2

    move-wide/from16 v22, v3

    invoke-direct/range {v20 .. v27}, Lcom/google/android/gms/internal/ads/f2;-><init>(IJIIII)V

    cmp-long v5, p2, v29

    if-nez v5, :cond_13

    move-wide/from16 v20, v3

    goto :goto_c

    :cond_13
    move-wide/from16 v20, p2

    .line 40
    :goto_c
    iget-object v3, v12, Lq0/d;->c:Lp0/E;

    invoke-static {v3}, Lo1/e;->g(Lp0/E;)Lq0/g;

    move-result-object v3

    .line 41
    iget-wide v3, v3, Lq0/g;->c:J

    cmp-long v5, v20, v29

    if-nez v5, :cond_14

    move-wide/from16 v25, v29

    :goto_d
    const v5, 0x6d696e66

    goto :goto_e

    .line 42
    :cond_14
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    .line 43
    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v22, 0xf4240

    move-wide/from16 v24, v3

    invoke-static/range {v20 .. v26}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    move-wide/from16 v25, v5

    goto :goto_d

    .line 44
    :goto_e
    invoke-virtual {v14, v5}, Lq0/c;->e(I)Lq0/c;

    move-result-object v6

    .line 45
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7374626c

    .line 46
    invoke-virtual {v6, v5}, Lq0/c;->e(I)Lq0/c;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d646864

    .line 48
    invoke-virtual {v14, v5}, Lq0/c;->f(I)Lq0/d;

    move-result-object v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iget-object v5, v5, Lq0/d;->c:Lp0/E;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lp0/E;->L(I)V

    .line 51
    invoke-virtual {v5}, Lp0/E;->l()I

    move-result v7

    .line 52
    invoke-static {v7}, Lo1/e;->e(I)I

    move-result v7

    if-nez v7, :cond_15

    const/16 v13, 0x8

    goto :goto_f

    :cond_15
    const/16 v13, 0x10

    .line 53
    :goto_f
    invoke-virtual {v5, v13}, Lp0/E;->M(I)V

    .line 54
    invoke-virtual {v5}, Lp0/E;->B()J

    move-result-wide v21

    .line 55
    iget v0, v5, Lp0/E;->b:I

    if-nez v7, :cond_16

    const/4 v12, 0x4

    goto :goto_10

    :cond_16
    const/16 v12, 0x8

    :goto_10
    const/4 v13, 0x0

    :goto_11
    if-ge v13, v12, :cond_1a

    .line 56
    iget-object v14, v5, Lp0/E;->a:[B

    add-int v15, v0, v13

    .line 57
    aget-byte v14, v14, v15

    const/4 v15, -0x1

    if-eq v14, v15, :cond_19

    if-nez v7, :cond_17

    .line 58
    invoke-virtual {v5}, Lp0/E;->B()J

    move-result-wide v12

    :goto_12
    move-wide/from16 v37, v12

    goto :goto_13

    :cond_17
    invoke-virtual {v5}, Lp0/E;->E()J

    move-result-wide v12

    goto :goto_12

    :goto_13
    cmp-long v0, v37, v35

    if-nez v0, :cond_18

    :goto_14
    move-wide/from16 v27, v29

    goto :goto_15

    .line 59
    :cond_18
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 60
    sget-object v43, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v39, 0xf4240

    move-wide/from16 v41, v21

    invoke-static/range {v37 .. v43}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    move-wide/from16 v27, v12

    goto :goto_15

    :cond_19
    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_11

    .line 61
    :cond_1a
    invoke-virtual {v5, v12}, Lp0/E;->M(I)V

    goto :goto_14

    .line 62
    :goto_15
    invoke-virtual {v5}, Lp0/E;->F()I

    move-result v0

    const/16 v5, 0xa

    shr-int/lit8 v7, v0, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    const/4 v12, 0x5

    shr-int/lit8 v13, v0, 0x5

    and-int/lit8 v13, v13, 0x1f

    add-int/lit8 v13, v13, 0x60

    int-to-char v13, v13

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    const/4 v14, 0x3

    .line 63
    new-array v15, v14, [C

    const/16 v17, 0x0

    aput-char v7, v15, v17

    const/4 v7, 0x1

    aput-char v13, v15, v7

    const/4 v13, 0x2

    aput-char v0, v15, v13

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v14, :cond_1d

    .line 64
    aget-char v13, v15, v0

    const/16 v5, 0x61

    if-lt v13, v5, :cond_1c

    const/16 v5, 0x7a

    if-le v13, v5, :cond_1b

    goto :goto_17

    :cond_1b
    add-int/2addr v0, v7

    const/16 v5, 0xa

    goto :goto_16

    :cond_1c
    :goto_17
    const/4 v0, 0x0

    goto :goto_18

    .line 65
    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([C)V

    :goto_18
    const v5, 0x73747364

    .line 66
    invoke-virtual {v6, v5}, Lq0/c;->f(I)Lq0/d;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 67
    iget-object v5, v5, Lq0/d;->c:Lp0/E;

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-static {v5, v2, v0, v6, v7}, Lo1/e;->i(Lp0/E;Lcom/google/android/gms/internal/ads/f2;Ljava/lang/String;Lm0/n;Z)Lc/g;

    move-result-object v0

    if-nez p5, :cond_23

    const v5, 0x65647473

    .line 68
    invoke-virtual {v11, v5}, Lq0/c;->e(I)Lq0/c;

    move-result-object v5

    if-eqz v5, :cond_23

    const v13, 0x656c7374

    .line 69
    invoke-virtual {v5, v13}, Lq0/c;->f(I)Lq0/d;

    move-result-object v5

    if-nez v5, :cond_1e

    move-object/from16 v37, v8

    const/4 v5, 0x0

    goto :goto_1c

    .line 70
    :cond_1e
    iget-object v5, v5, Lq0/d;->c:Lp0/E;

    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Lp0/E;->L(I)V

    .line 71
    invoke-virtual {v5}, Lp0/E;->l()I

    move-result v13

    .line 72
    invoke-static {v13}, Lo1/e;->e(I)I

    move-result v13

    .line 73
    invoke-virtual {v5}, Lp0/E;->D()I

    move-result v15

    .line 74
    new-array v12, v15, [J

    .line 75
    new-array v14, v15, [J

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v15, :cond_22

    const/4 v7, 0x1

    if-ne v13, v7, :cond_1f

    .line 76
    invoke-virtual {v5}, Lp0/E;->E()J

    move-result-wide v18

    goto :goto_1a

    :cond_1f
    invoke-virtual {v5}, Lp0/E;->B()J

    move-result-wide v18

    :goto_1a
    aput-wide v18, v12, v6

    if-ne v13, v7, :cond_20

    .line 77
    invoke-virtual {v5}, Lp0/E;->t()J

    move-result-wide v18

    move-object/from16 v37, v8

    goto :goto_1b

    :cond_20
    invoke-virtual {v5}, Lp0/E;->l()I

    move-result v7

    move-object/from16 v37, v8

    int-to-long v7, v7

    move-wide/from16 v18, v7

    :goto_1b
    aput-wide v18, v14, v6

    .line 78
    invoke-virtual {v5}, Lp0/E;->w()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    const/4 v7, 0x2

    .line 79
    invoke-virtual {v5, v7}, Lp0/E;->M(I)V

    add-int/2addr v6, v8

    move/from16 v7, p6

    move-object/from16 v8, v37

    goto :goto_19

    .line 80
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-object/from16 v37, v8

    .line 81
    invoke-static {v12, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    :goto_1c
    if-eqz v5, :cond_24

    .line 82
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 83
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [J

    move-object/from16 v34, v5

    move-object/from16 v33, v6

    goto :goto_1d

    :cond_23
    move-object/from16 v37, v8

    :cond_24
    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 84
    :goto_1d
    iget-object v5, v0, Lc/g;->K:Ljava/lang/Object;

    check-cast v5, Lm0/t;

    if-nez v5, :cond_25

    move-object/from16 v0, p7

    goto/16 :goto_4

    .line 85
    :cond_25
    iget v6, v2, Lcom/google/android/gms/internal/ads/f2;->b:I

    if-eqz v6, :cond_27

    .line 86
    new-instance v7, Lq0/b;

    .line 87
    invoke-direct {v7, v6}, Lq0/b;-><init>(I)V

    .line 88
    invoke-virtual {v5}, Lm0/t;->a()Lm0/s;

    move-result-object v5

    .line 89
    iget-object v6, v0, Lc/g;->K:Ljava/lang/Object;

    check-cast v6, Lm0/t;

    iget-object v6, v6, Lm0/t;->l:Lm0/N;

    if-eqz v6, :cond_26

    const/4 v8, 0x1

    .line 90
    new-array v12, v8, [Lm0/M;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v6, v12}, Lm0/N;->a([Lm0/M;)Lm0/N;

    move-result-object v6

    goto :goto_1e

    :cond_26
    const/4 v8, 0x1

    const/4 v13, 0x0

    .line 91
    new-instance v6, Lm0/N;

    new-array v12, v8, [Lm0/M;

    aput-object v7, v12, v13

    invoke-direct {v6, v12}, Lm0/N;-><init>([Lm0/M;)V

    .line 92
    :goto_1e
    iput-object v6, v5, Lm0/s;->k:Lm0/N;

    .line 93
    new-instance v6, Lm0/t;

    invoke-direct {v6, v5}, Lm0/t;-><init>(Lm0/s;)V

    move-object/from16 v29, v6

    goto :goto_1f

    :cond_27
    move-object/from16 v29, v5

    .line 94
    :goto_1f
    new-instance v5, Lo1/p;

    .line 95
    iget v6, v0, Lc/g;->I:I

    move/from16 v30, v6

    iget-object v6, v0, Lc/g;->J:Ljava/lang/Object;

    move-object/from16 v31, v6

    check-cast v31, [Lo1/q;

    iget v0, v0, Lc/g;->H:I

    move/from16 v32, v0

    iget v0, v2, Lcom/google/android/gms/internal/ads/f2;->a:I

    move/from16 v19, v0

    move-object/from16 v18, v5

    move/from16 v20, v9

    move-wide/from16 v23, v3

    invoke-direct/range {v18 .. v34}, Lo1/p;-><init>(IIJJJJLm0/t;I[Lo1/q;I[J[J)V

    move-object/from16 v0, p7

    .line 96
    :goto_20
    invoke-interface {v0, v5}, Ly4/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo1/p;

    if-nez v2, :cond_28

    move/from16 v19, v10

    move-object/from16 v0, v37

    goto/16 :goto_1

    :cond_28
    const v3, 0x6d646961

    .line 97
    invoke-virtual {v11, v3}, Lq0/c;->e(I)Lq0/c;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x6d696e66

    .line 99
    invoke-virtual {v3, v4}, Lq0/c;->e(I)Lq0/c;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374626c

    .line 101
    invoke-virtual {v3, v4}, Lq0/c;->e(I)Lq0/c;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374737a

    .line 103
    invoke-virtual {v3, v4}, Lq0/c;->f(I)Lq0/d;

    move-result-object v4

    .line 104
    iget-object v5, v2, Lo1/p;->g:Lm0/t;

    const/16 v6, 0xc

    if-eqz v4, :cond_29

    .line 105
    new-instance v7, LV/b;

    invoke-direct {v7, v4, v5}, LV/b;-><init>(Lq0/d;Lm0/t;)V

    goto :goto_21

    :cond_29
    const v4, 0x73747a32

    .line 106
    invoke-virtual {v3, v4}, Lq0/c;->f(I)Lq0/d;

    move-result-object v4

    if-eqz v4, :cond_63

    .line 107
    new-instance v7, Lp0/z;

    .line 108
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 109
    iget-object v4, v4, Lq0/d;->c:Lp0/E;

    iput-object v4, v7, Lp0/z;->e:Ljava/lang/Object;

    .line 110
    invoke-virtual {v4, v6}, Lp0/E;->L(I)V

    .line 111
    iget-object v4, v7, Lp0/z;->e:Ljava/lang/Object;

    check-cast v4, Lp0/E;

    invoke-virtual {v4}, Lp0/E;->D()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v7, Lp0/z;->b:I

    .line 112
    iget-object v4, v7, Lp0/z;->e:Ljava/lang/Object;

    check-cast v4, Lp0/E;

    invoke-virtual {v4}, Lp0/E;->D()I

    move-result v4

    iput v4, v7, Lp0/z;->a:I

    .line 113
    :goto_21
    invoke-interface {v7}, Lo1/d;->b()I

    move-result v4

    if-nez v4, :cond_2a

    .line 114
    new-instance v3, Lo1/s;

    const/4 v4, 0x0

    new-array v5, v4, [J

    new-array v6, v4, [I

    new-array v7, v4, [J

    new-array v8, v4, [I

    const-wide/16 v25, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    invoke-direct/range {v18 .. v26}, Lo1/s;-><init>(Lo1/p;[J[II[J[IJ)V

    move/from16 v19, v10

    :goto_22
    move-object/from16 v0, v37

    const/16 v17, 0x0

    goto/16 :goto_51

    .line 115
    :cond_2a
    iget v8, v2, Lo1/p;->b:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2b

    iget-wide v8, v2, Lo1/p;->f:J

    cmp-long v11, v8, v35

    if-lez v11, :cond_2b

    int-to-float v11, v4

    long-to-float v8, v8

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v8, v9

    div-float/2addr v11, v8

    .line 116
    invoke-virtual {v5}, Lm0/t;->a()Lm0/s;

    move-result-object v5

    .line 117
    iput v11, v5, Lm0/s;->y:F

    .line 118
    new-instance v8, Lm0/t;

    invoke-direct {v8, v5}, Lm0/t;-><init>(Lm0/s;)V

    .line 119
    invoke-virtual {v2, v8}, Lo1/p;->a(Lm0/t;)Lo1/p;

    move-result-object v2

    :cond_2b
    const v5, 0x7374636f

    .line 120
    invoke-virtual {v3, v5}, Lq0/c;->f(I)Lq0/d;

    move-result-object v5

    if-nez v5, :cond_2c

    const v5, 0x636f3634

    .line 121
    invoke-virtual {v3, v5}, Lq0/c;->f(I)Lq0/d;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    goto :goto_23

    :cond_2c
    const/4 v8, 0x0

    :goto_23
    const v9, 0x73747363

    .line 123
    invoke-virtual {v3, v9}, Lq0/c;->f(I)Lq0/d;

    move-result-object v9

    .line 124
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v11, 0x73747473

    .line 125
    invoke-virtual {v3, v11}, Lq0/c;->f(I)Lq0/d;

    move-result-object v11

    .line 126
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v12, 0x73747373

    .line 127
    invoke-virtual {v3, v12}, Lq0/c;->f(I)Lq0/d;

    move-result-object v12

    if-eqz v12, :cond_2d

    .line 128
    iget-object v12, v12, Lq0/d;->c:Lp0/E;

    goto :goto_24

    :cond_2d
    const/4 v12, 0x0

    :goto_24
    const v13, 0x63747473

    .line 129
    invoke-virtual {v3, v13}, Lq0/c;->f(I)Lq0/d;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 130
    iget-object v3, v3, Lq0/d;->c:Lp0/E;

    goto :goto_25

    :cond_2e
    const/4 v3, 0x0

    .line 131
    :goto_25
    new-instance v13, Lo1/b;

    iget-object v9, v9, Lq0/d;->c:Lp0/E;

    iget-object v5, v5, Lq0/d;->c:Lp0/E;

    invoke-direct {v13, v9, v5, v8}, Lo1/b;-><init>(Lp0/E;Lp0/E;Z)V

    .line 132
    iget-object v5, v11, Lq0/d;->c:Lp0/E;

    invoke-virtual {v5, v6}, Lp0/E;->L(I)V

    .line 133
    invoke-virtual {v5}, Lp0/E;->D()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 134
    invoke-virtual {v5}, Lp0/E;->D()I

    move-result v9

    .line 135
    invoke-virtual {v5}, Lp0/E;->D()I

    move-result v11

    if-eqz v3, :cond_2f

    .line 136
    invoke-virtual {v3, v6}, Lp0/E;->L(I)V

    .line 137
    invoke-virtual {v3}, Lp0/E;->D()I

    move-result v14

    goto :goto_26

    :cond_2f
    const/4 v14, 0x0

    :goto_26
    if-eqz v12, :cond_31

    .line 138
    invoke-virtual {v12, v6}, Lp0/E;->L(I)V

    .line 139
    invoke-virtual {v12}, Lp0/E;->D()I

    move-result v6

    if-lez v6, :cond_30

    .line 140
    invoke-virtual {v12}, Lp0/E;->D()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v46, v15

    move-object v15, v12

    move/from16 v12, v46

    goto :goto_27

    :cond_30
    const/4 v12, -0x1

    const/4 v15, 0x0

    goto :goto_27

    :cond_31
    move-object v15, v12

    const/4 v6, 0x0

    const/4 v12, -0x1

    .line 141
    :goto_27
    invoke-interface {v7}, Lo1/d;->a()I

    move-result v0

    move/from16 v16, v9

    .line 142
    iget-object v9, v2, Lo1/p;->g:Lm0/t;

    move/from16 v18, v12

    iget-object v12, v9, Lm0/t;->o:Ljava/lang/String;

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v0, v10, :cond_32

    .line 143
    const-string v10, "audio/raw"

    .line 144
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_33

    const-string v10, "audio/g711-mlaw"

    .line 145
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_33

    const-string v10, "audio/g711-alaw"

    .line 146
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    goto :goto_28

    :cond_32
    move-object/from16 v20, v9

    goto/16 :goto_2d

    :cond_33
    :goto_28
    if-nez v8, :cond_32

    if-nez v14, :cond_32

    if-nez v6, :cond_32

    .line 147
    iget v3, v13, Lo1/b;->a:I

    new-array v5, v3, [J

    .line 148
    new-array v6, v3, [I

    .line 149
    :goto_29
    invoke-virtual {v13}, Lo1/b;->a()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 150
    iget v7, v13, Lo1/b;->b:I

    iget-wide v14, v13, Lo1/b;->d:J

    aput-wide v14, v5, v7

    .line 151
    iget v8, v13, Lo1/b;->c:I

    aput v8, v6, v7

    goto :goto_29

    :cond_34
    int-to-long v7, v11

    const/16 v10, 0x2000

    .line 152
    div-int/2addr v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2a
    if-ge v11, v3, :cond_35

    .line 153
    aget v13, v6, v11

    .line 154
    invoke-static {v13, v10}, Lp0/M;->f(II)I

    move-result v13

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/2addr v11, v13

    goto :goto_2a

    .line 155
    :cond_35
    new-array v11, v12, [J

    .line 156
    new-array v13, v12, [I

    .line 157
    new-array v14, v12, [J

    .line 158
    new-array v12, v12, [I

    move-object/from16 v20, v9

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_2b
    if-ge v15, v3, :cond_37

    .line 159
    aget v21, v6, v15

    .line 160
    aget-wide v22, v5, v15

    move/from16 v46, v18

    move/from16 v18, v3

    move/from16 v3, v16

    move/from16 v16, v46

    move/from16 v47, v21

    move-object/from16 v21, v5

    move/from16 v5, v47

    :goto_2c
    if-lez v5, :cond_36

    .line 161
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 162
    aput-wide v22, v11, v16

    move-object/from16 v25, v6

    mul-int v6, v0, v24

    .line 163
    aput v6, v13, v16

    add-int/2addr v9, v6

    .line 164
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v26, v9

    move v6, v10

    int-to-long v9, v1

    mul-long v9, v9, v7

    .line 165
    aput-wide v9, v14, v16

    const/4 v10, 0x1

    .line 166
    aput v10, v12, v16

    .line 167
    aget v9, v13, v16

    move-object/from16 v27, v11

    int-to-long v10, v9

    add-long v22, v22, v10

    add-int v1, v1, v24

    sub-int v5, v5, v24

    const/4 v10, 0x1

    add-int/lit8 v16, v16, 0x1

    move v10, v6

    move-object/from16 v6, v25

    move/from16 v9, v26

    move-object/from16 v11, v27

    goto :goto_2c

    :cond_36
    move-object/from16 v25, v6

    move v6, v10

    move-object/from16 v27, v11

    const/4 v10, 0x1

    add-int/2addr v15, v10

    move v10, v6

    move-object/from16 v5, v21

    move-object/from16 v6, v25

    move/from16 v46, v16

    move/from16 v16, v3

    move/from16 v3, v18

    move/from16 v18, v46

    goto :goto_2b

    :cond_37
    move-object/from16 v27, v11

    int-to-long v0, v1

    mul-long v7, v7, v0

    int-to-long v0, v9

    move-object v10, v12

    move-object v9, v14

    move/from16 v14, v16

    move-wide v11, v0

    move-object v1, v2

    move-object/from16 v0, v27

    goto/16 :goto_3b

    .line 168
    :goto_2d
    new-array v0, v4, [J

    .line 169
    new-array v1, v4, [I

    .line 170
    new-array v9, v4, [J

    .line 171
    new-array v10, v4, [I

    move/from16 v22, v8

    move/from16 v29, v11

    move/from16 v21, v14

    move/from16 v24, v16

    move-wide/from16 v11, v35

    move-wide/from16 v25, v11

    move-wide/from16 v27, v25

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v23, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v16, v2

    move/from16 v46, v18

    move-object/from16 v18, v5

    move/from16 v5, v46

    .line 172
    :goto_2e
    const-string v2, "BoxParsers"

    if-ge v8, v4, :cond_41

    const/16 v30, 0x1

    :goto_2f
    if-nez v23, :cond_38

    .line 173
    invoke-virtual {v13}, Lo1/b;->a()Z

    move-result v30

    if-eqz v30, :cond_38

    move/from16 v31, v4

    move/from16 v32, v5

    .line 174
    iget-wide v4, v13, Lo1/b;->d:J

    move-wide/from16 v27, v4

    .line 175
    iget v4, v13, Lo1/b;->c:I

    move/from16 v23, v4

    move/from16 v4, v31

    move/from16 v5, v32

    goto :goto_2f

    :cond_38
    move/from16 v31, v4

    move/from16 v32, v5

    if-nez v30, :cond_39

    .line 176
    const-string v4, "Unexpected end of chunk data"

    invoke-static {v2, v4}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 178
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 179
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 180
    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object/from16 v29, v0

    move-object v13, v1

    move-object v9, v4

    move-object v10, v5

    move v4, v8

    move/from16 v0, v23

    :goto_30
    move/from16 v1, v44

    goto/16 :goto_35

    :cond_39
    if-eqz v3, :cond_3b

    :goto_31
    if-nez v45, :cond_3a

    if-lez v21, :cond_3a

    .line 181
    invoke-virtual {v3}, Lp0/E;->D()I

    move-result v45

    .line 182
    invoke-virtual {v3}, Lp0/E;->l()I

    move-result v44

    const/4 v2, -0x1

    add-int/lit8 v21, v21, -0x1

    goto :goto_31

    :cond_3a
    const/4 v2, -0x1

    add-int/lit8 v45, v45, -0x1

    :cond_3b
    move/from16 v2, v44

    .line 183
    aput-wide v27, v0, v8

    .line 184
    invoke-interface {v7}, Lo1/d;->c()I

    move-result v4

    aput v4, v1, v8

    move-object v5, v0

    move-object/from16 v30, v1

    int-to-long v0, v4

    add-long/2addr v11, v0

    if-le v4, v14, :cond_3c

    move v14, v4

    :cond_3c
    int-to-long v0, v2

    add-long v0, v25, v0

    .line 185
    aput-wide v0, v9, v8

    if-nez v15, :cond_3d

    const/4 v0, 0x1

    goto :goto_32

    :cond_3d
    const/4 v0, 0x0

    .line 186
    :goto_32
    aput v0, v10, v8

    move/from16 v0, v32

    if-ne v8, v0, :cond_3f

    const/4 v1, 0x1

    .line 187
    aput v1, v10, v8

    const/4 v4, -0x1

    add-int/2addr v6, v4

    if-lez v6, :cond_3e

    .line 188
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-virtual {v15}, Lp0/E;->D()I

    move-result v0

    sub-int/2addr v0, v1

    :cond_3e
    :goto_33
    move/from16 v32, v6

    move/from16 v1, v29

    move-object/from16 v29, v5

    goto :goto_34

    :cond_3f
    const/4 v4, -0x1

    goto :goto_33

    :goto_34
    int-to-long v5, v1

    add-long v25, v25, v5

    add-int/lit8 v24, v24, -0x1

    if-nez v24, :cond_40

    if-lez v22, :cond_40

    .line 190
    invoke-virtual/range {v18 .. v18}, Lp0/E;->D()I

    move-result v1

    .line 191
    invoke-virtual/range {v18 .. v18}, Lp0/E;->l()I

    move-result v5

    add-int/lit8 v22, v22, -0x1

    move/from16 v24, v1

    move v1, v5

    .line 192
    :cond_40
    aget v5, v30, v8

    int-to-long v5, v5

    add-long v27, v27, v5

    add-int/lit8 v23, v23, -0x1

    const/4 v4, 0x1

    add-int/2addr v8, v4

    move v5, v0

    move/from16 v44, v2

    move-object/from16 v0, v29

    move/from16 v4, v31

    move/from16 v6, v32

    move/from16 v29, v1

    move-object/from16 v1, v30

    goto/16 :goto_2e

    :cond_41
    move-object/from16 v29, v0

    move-object/from16 v30, v1

    move/from16 v31, v4

    move/from16 v0, v23

    move-object/from16 v13, v30

    goto/16 :goto_30

    :goto_35
    int-to-long v7, v1

    add-long v7, v25, v7

    if-eqz v3, :cond_43

    :goto_36
    if-lez v21, :cond_43

    .line 193
    invoke-virtual {v3}, Lp0/E;->D()I

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, -0x1

    const/4 v3, 0x0

    goto :goto_37

    .line 194
    :cond_42
    invoke-virtual {v3}, Lp0/E;->l()I

    const/4 v1, -0x1

    add-int/lit8 v21, v21, -0x1

    goto :goto_36

    :cond_43
    const/4 v1, -0x1

    const/4 v3, 0x1

    :goto_37
    if-nez v6, :cond_45

    if-nez v24, :cond_45

    if-nez v0, :cond_45

    if-nez v22, :cond_45

    move/from16 v5, v45

    if-nez v5, :cond_46

    if-nez v3, :cond_44

    goto :goto_38

    :cond_44
    move-wide/from16 v25, v7

    move-object/from16 v1, v16

    move/from16 v16, v4

    goto :goto_3a

    :cond_45
    move/from16 v5, v45

    .line 195
    :cond_46
    :goto_38
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent stbl box for track "

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, v16

    move/from16 v16, v4

    iget v4, v1, Lo1/p;->a:I

    move-wide/from16 v25, v7

    const-string v7, ": remainingSynchronizationSamples "

    const-string v8, ", remainingSamplesAtTimestampDelta "

    .line 196
    invoke-static {v15, v4, v7, v6, v8}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 197
    const-string v4, ", remainingSamplesInChunk "

    const-string v6, ", remainingTimestampDeltaChanges "

    move/from16 v7, v24

    .line 198
    invoke-static {v15, v7, v4, v0, v6}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v8, v22

    .line 199
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v3, :cond_47

    .line 200
    const-string v0, ", ctts invalid"

    goto :goto_39

    :cond_47
    const-string v0, ""

    :goto_39
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v2, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    move/from16 v4, v16

    move-wide/from16 v7, v25

    move-object/from16 v0, v29

    :goto_3b
    const-wide/32 v2, 0x7fffffff

    .line 202
    iget-wide v5, v1, Lo1/p;->f:J

    cmp-long v15, v5, v35

    if-lez v15, :cond_48

    const-wide/16 v15, 0x8

    mul-long v21, v11, v15

    const-wide/32 v23, 0xf4240

    .line 203
    sget-object v27, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v25, v5

    .line 204
    invoke-static/range {v21 .. v27}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    cmp-long v11, v5, v35

    if-lez v11, :cond_48

    cmp-long v11, v5, v2

    if-gez v11, :cond_48

    .line 205
    invoke-virtual/range {v20 .. v20}, Lm0/t;->a()Lm0/s;

    move-result-object v11

    long-to-int v6, v5

    .line 206
    iput v6, v11, Lm0/s;->h:I

    .line 207
    new-instance v5, Lm0/t;

    invoke-direct {v5, v11}, Lm0/t;-><init>(Lm0/s;)V

    .line 208
    invoke-virtual {v1, v5}, Lo1/p;->a(Lm0/t;)Lo1/p;

    move-result-object v1

    .line 209
    :cond_48
    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v23, 0xf4240

    iget-wide v11, v1, Lo1/p;->c:J

    move-wide/from16 v21, v7

    move-wide/from16 v25, v11

    move-object/from16 v27, v5

    invoke-static/range {v21 .. v27}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v28

    .line 210
    iget-wide v11, v1, Lo1/p;->c:J

    iget-object v6, v1, Lo1/p;->i:[J

    if-nez v6, :cond_49

    .line 211
    invoke-static {v11, v12, v9}, Lp0/M;->Y(J[J)V

    .line 212
    new-instance v3, Lo1/s;

    move-object/from16 v21, v3

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    invoke-direct/range {v21 .. v29}, Lo1/s;-><init>(Lo1/p;[J[II[J[IJ)V

    goto/16 :goto_22

    .line 213
    :cond_49
    array-length v15, v6

    iget-object v2, v1, Lo1/p;->g:Lm0/t;

    iget v3, v1, Lo1/p;->b:I

    move/from16 v16, v4

    iget-object v4, v1, Lo1/p;->j:[J

    move-object/from16 v18, v10

    const/4 v10, 0x1

    if-ne v15, v10, :cond_4d

    if-ne v3, v10, :cond_4d

    array-length v10, v9

    const/4 v15, 0x2

    if-lt v10, v15, :cond_4d

    .line 214
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    .line 215
    aget-wide v29, v4, v10

    .line 216
    aget-wide v20, v6, v10

    move v10, v3

    move-object v15, v4

    .line 217
    iget-wide v3, v1, Lo1/p;->c:J

    move/from16 v31, v14

    move-object/from16 v32, v15

    iget-wide v14, v1, Lo1/p;->d:J

    move-wide/from16 v22, v3

    move-wide/from16 v24, v14

    move-object/from16 v26, v5

    invoke-static/range {v20 .. v26}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    add-long v3, v29, v3

    .line 218
    array-length v14, v9

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move/from16 v33, v10

    const/4 v10, 0x4

    const/4 v15, 0x0

    .line 219
    invoke-static {v10, v15, v14}, Lp0/M;->i(III)I

    move-result v20

    move-object/from16 v34, v13

    .line 220
    array-length v13, v9

    sub-int/2addr v13, v10

    .line 221
    invoke-static {v13, v15, v14}, Lp0/M;->i(III)I

    move-result v10

    .line 222
    aget-wide v13, v9, v15

    cmp-long v15, v13, v29

    if-gtz v15, :cond_4c

    aget-wide v20, v9, v20

    cmp-long v15, v29, v20

    if-gez v15, :cond_4c

    aget-wide v20, v9, v10

    cmp-long v10, v20, v3

    if-gez v10, :cond_4c

    cmp-long v10, v3, v7

    if-gtz v10, :cond_4c

    sub-long v3, v7, v3

    sub-long v20, v29, v13

    .line 223
    iget v10, v2, Lm0/t;->H:I

    int-to-long v13, v10

    move-wide/from16 v29, v7

    .line 224
    iget-wide v7, v1, Lo1/p;->c:J

    move-wide/from16 v22, v13

    move-wide/from16 v24, v7

    move-object/from16 v26, v5

    invoke-static/range {v20 .. v26}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    .line 225
    iget v10, v2, Lm0/t;->H:I

    int-to-long v13, v10

    move-object v15, v9

    .line 226
    iget-wide v9, v1, Lo1/p;->c:J

    move-wide/from16 v20, v3

    move-wide/from16 v22, v13

    move-wide/from16 v24, v9

    move-object/from16 v26, v5

    invoke-static/range {v20 .. v26}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    cmp-long v9, v7, v35

    if-nez v9, :cond_4a

    cmp-long v9, v3, v35

    if-eqz v9, :cond_4b

    :cond_4a
    const-wide/32 v9, 0x7fffffff

    goto :goto_3c

    :cond_4b
    move-object/from16 v7, p1

    move-object v9, v15

    goto :goto_3e

    :goto_3c
    cmp-long v13, v7, v9

    if-gtz v13, :cond_4b

    cmp-long v13, v3, v9

    if-gtz v13, :cond_4b

    long-to-int v2, v7

    move-object/from16 v7, p1

    .line 227
    iput v2, v7, LW0/A;->a:I

    long-to-int v2, v3

    .line 228
    iput v2, v7, LW0/A;->b:I

    move-object v9, v15

    .line 229
    invoke-static {v11, v12, v9}, Lp0/M;->Y(J[J)V

    const/4 v2, 0x0

    .line 230
    aget-wide v20, v6, v2

    const-wide/32 v22, 0xf4240

    .line 231
    iget-wide v2, v1, Lo1/p;->d:J

    move-wide/from16 v24, v2

    move-object/from16 v26, v5

    invoke-static/range {v20 .. v26}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v28

    .line 232
    new-instance v3, Lo1/s;

    move-object/from16 v21, v3

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move-object/from16 v24, v34

    move/from16 v25, v31

    move-object/from16 v26, v9

    move-object/from16 v27, v18

    invoke-direct/range {v21 .. v29}, Lo1/s;-><init>(Lo1/p;[J[II[J[IJ)V

    goto/16 :goto_22

    :cond_4c
    move-wide/from16 v29, v7

    goto :goto_3d

    :cond_4d
    move/from16 v33, v3

    move-object/from16 v32, v4

    move-wide/from16 v29, v7

    move-object/from16 v34, v13

    move/from16 v31, v14

    :goto_3d
    move-object/from16 v7, p1

    .line 233
    :goto_3e
    array-length v3, v6

    const/4 v4, 0x1

    const/16 v17, 0x0

    if-ne v3, v4, :cond_50

    aget-wide v3, v6, v17

    cmp-long v5, v3, v35

    if-nez v5, :cond_4f

    .line 234
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    aget-wide v2, v32, v17

    const/4 v4, 0x0

    .line 236
    :goto_3f
    array-length v5, v9

    if-ge v4, v5, :cond_4e

    .line 237
    aget-wide v5, v9, v4

    sub-long v10, v5, v2

    .line 238
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v12, 0xf4240

    iget-wide v14, v1, Lo1/p;->c:J

    invoke-static/range {v10 .. v16}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    .line 239
    aput-wide v5, v9, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_3f

    :cond_4e
    sub-long v10, v29, v2

    .line 240
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v12, 0xf4240

    iget-wide v14, v1, Lo1/p;->c:J

    invoke-static/range {v10 .. v16}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v28

    .line 241
    new-instance v3, Lo1/s;

    move-object/from16 v21, v3

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move-object/from16 v24, v34

    move/from16 v25, v31

    move-object/from16 v26, v9

    move-object/from16 v27, v18

    invoke-direct/range {v21 .. v29}, Lo1/s;-><init>(Lo1/p;[J[II[J[IJ)V

    :goto_40
    move-object/from16 v0, v37

    goto/16 :goto_51

    :cond_4f
    move/from16 v3, v33

    const/4 v4, 0x1

    goto :goto_41

    :cond_50
    move/from16 v3, v33

    :goto_41
    if-ne v3, v4, :cond_51

    const/4 v4, 0x1

    goto :goto_42

    :cond_51
    const/4 v4, 0x0

    .line 242
    :goto_42
    array-length v5, v6

    new-array v5, v5, [I

    .line 243
    array-length v8, v6

    new-array v8, v8, [I

    .line 244
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 245
    :goto_43
    array-length v14, v6

    if-ge v10, v14, :cond_57

    .line 246
    aget-wide v14, v32, v10

    const-wide/16 v20, -0x1

    cmp-long v22, v14, v20

    if-eqz v22, :cond_56

    .line 247
    aget-wide v23, v6, v10

    .line 248
    sget-object v29, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v20, v6

    iget-wide v6, v1, Lo1/p;->c:J

    move/from16 v21, v11

    move/from16 v22, v12

    iget-wide v11, v1, Lo1/p;->d:J

    move-wide/from16 v25, v6

    move-wide/from16 v27, v11

    invoke-static/range {v23 .. v29}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    const/4 v11, 0x1

    .line 249
    invoke-static {v9, v14, v15, v11}, Lp0/M;->e([JJZ)I

    move-result v12

    aput v12, v5, v10

    add-long/2addr v14, v6

    .line 250
    invoke-static {v9, v14, v15, v4}, Lp0/M;->a([JJZ)I

    move-result v6

    aput v6, v8, v10

    .line 251
    aget v6, v5, v10

    .line 252
    :goto_44
    aget v7, v5, v10

    if-ltz v7, :cond_52

    aget v12, v18, v7

    and-int/2addr v12, v11

    if-nez v12, :cond_52

    sub-int/2addr v7, v11

    .line 253
    aput v7, v5, v10

    const/4 v11, 0x1

    goto :goto_44

    :cond_52
    if-gez v7, :cond_53

    .line 254
    aput v6, v5, v10

    .line 255
    :goto_45
    aget v6, v5, v10

    aget v7, v8, v10

    if-ge v6, v7, :cond_53

    aget v7, v18, v6

    const/4 v11, 0x1

    and-int/2addr v7, v11

    if-nez v7, :cond_53

    add-int/2addr v6, v11

    .line 256
    aput v6, v5, v10

    goto :goto_45

    :cond_53
    const/4 v6, 0x2

    if-ne v3, v6, :cond_54

    .line 257
    aget v7, v5, v10

    aget v11, v8, v10

    if-eq v7, v11, :cond_54

    .line 258
    :goto_46
    aget v7, v8, v10

    array-length v11, v9

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v7, v11, :cond_54

    add-int/2addr v7, v12

    aget-wide v11, v9, v7

    cmp-long v23, v11, v14

    if-gtz v23, :cond_54

    .line 259
    aput v7, v8, v10

    goto :goto_46

    .line 260
    :cond_54
    aget v7, v8, v10

    aget v11, v5, v10

    sub-int v12, v7, v11

    add-int v12, v12, v22

    if-eq v13, v11, :cond_55

    const/4 v11, 0x1

    goto :goto_47

    :cond_55
    const/4 v11, 0x0

    :goto_47
    or-int v11, v21, v11

    move v13, v7

    :goto_48
    const/4 v7, 0x1

    goto :goto_49

    :cond_56
    move-object/from16 v20, v6

    move/from16 v21, v11

    move/from16 v22, v12

    const/4 v6, 0x2

    goto :goto_48

    :goto_49
    add-int/2addr v10, v7

    move-object/from16 v7, p1

    move-object/from16 v6, v20

    goto/16 :goto_43

    :cond_57
    move-object/from16 v20, v6

    move/from16 v21, v11

    move/from16 v7, v16

    const/4 v6, 0x2

    if-eq v12, v7, :cond_58

    const/4 v3, 0x1

    goto :goto_4a

    :cond_58
    const/4 v3, 0x0

    :goto_4a
    or-int v3, v21, v3

    if-eqz v3, :cond_59

    .line 261
    new-array v4, v12, [J

    goto :goto_4b

    :cond_59
    move-object v4, v0

    :goto_4b
    if-eqz v3, :cond_5a

    .line 262
    new-array v7, v12, [I

    goto :goto_4c

    :cond_5a
    move-object/from16 v7, v34

    :goto_4c
    if-eqz v3, :cond_5b

    const/16 v31, 0x0

    :cond_5b
    if-eqz v3, :cond_5c

    .line 263
    new-array v10, v12, [I

    goto :goto_4d

    :cond_5c
    move-object/from16 v10, v18

    .line 264
    :goto_4d
    new-array v11, v12, [J

    move-object/from16 v15, v20

    move/from16 v25, v31

    move-wide/from16 v20, v35

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 265
    :goto_4e
    array-length v6, v15

    if-ge v12, v6, :cond_61

    .line 266
    aget-wide v22, v32, v12

    .line 267
    aget v6, v5, v12

    move-object/from16 v16, v5

    .line 268
    aget v5, v8, v12

    if-eqz v3, :cond_5d

    move-object/from16 v24, v8

    sub-int v8, v5, v6

    .line 269
    invoke-static {v0, v6, v4, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v26, v0

    move-object/from16 v0, v34

    .line 270
    invoke-static {v0, v6, v7, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v27, v4

    move-object/from16 v4, v18

    .line 271
    invoke-static {v4, v6, v10, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4f

    :cond_5d
    move-object/from16 v26, v0

    move-object/from16 v27, v4

    move-object/from16 v24, v8

    move-object/from16 v4, v18

    move-object/from16 v0, v34

    :goto_4f
    move/from16 v8, v25

    :goto_50
    if-ge v6, v5, :cond_60

    .line 272
    sget-object v18, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v40, 0xf4240

    move-object/from16 v29, v4

    move/from16 v28, v5

    iget-wide v4, v1, Lo1/p;->d:J

    move-wide/from16 v38, v20

    move-wide/from16 v42, v4

    move-object/from16 v44, v18

    invoke-static/range {v38 .. v44}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    .line 273
    aget-wide v30, v9, v6

    sub-long v38, v30, v22

    const-wide/32 v40, 0xf4240

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    .line 274
    iget-wide v9, v1, Lo1/p;->c:J

    move-wide/from16 v42, v9

    move-object/from16 v44, v18

    invoke-static/range {v38 .. v44}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    cmp-long v18, v9, v35

    if-gez v18, :cond_5e

    const/4 v13, 0x1

    :cond_5e
    add-long/2addr v4, v9

    .line 275
    aput-wide v4, v11, v14

    if-eqz v3, :cond_5f

    .line 276
    aget v4, v7, v14

    if-le v4, v8, :cond_5f

    .line 277
    aget v4, v0, v6

    move v8, v4

    :cond_5f
    const/4 v4, 0x1

    add-int/2addr v14, v4

    add-int/2addr v6, v4

    move/from16 v5, v28

    move-object/from16 v4, v29

    move-object/from16 v9, v30

    move-object/from16 v10, v31

    goto :goto_50

    :cond_60
    move-object/from16 v29, v4

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    const/4 v4, 0x1

    .line 278
    aget-wide v5, v15, v12

    add-long v20, v20, v5

    add-int/2addr v12, v4

    move-object/from16 v34, v0

    move/from16 v25, v8

    move-object/from16 v5, v16

    move-object/from16 v8, v24

    move-object/from16 v0, v26

    move-object/from16 v4, v27

    move-object/from16 v18, v29

    goto/16 :goto_4e

    :cond_61
    move-object/from16 v27, v4

    move-object/from16 v31, v10

    .line 279
    sget-object v44, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v40, 0xf4240

    iget-wide v3, v1, Lo1/p;->d:J

    move-wide/from16 v38, v20

    move-wide/from16 v42, v3

    invoke-static/range {v38 .. v44}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v28

    if-eqz v13, :cond_62

    .line 280
    invoke-virtual {v2}, Lm0/t;->a()Lm0/s;

    move-result-object v0

    const/4 v2, 0x1

    .line 281
    iput-boolean v2, v0, Lm0/s;->t:Z

    .line 282
    new-instance v2, Lm0/t;

    invoke-direct {v2, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 283
    invoke-virtual {v1, v2}, Lo1/p;->a(Lm0/t;)Lo1/p;

    move-result-object v1

    :cond_62
    move-object/from16 v22, v1

    .line 284
    new-instance v3, Lo1/s;

    move-object/from16 v21, v3

    move-object/from16 v23, v27

    move-object/from16 v24, v7

    move-object/from16 v26, v11

    move-object/from16 v27, v31

    invoke-direct/range {v21 .. v29}, Lo1/s;-><init>(Lo1/p;[J[II[J[IJ)V

    goto/16 :goto_40

    .line 285
    :goto_51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_52
    add-int/lit8 v10, v19, 0x1

    move-object/from16 v1, p1

    move-object v8, v0

    const/16 v2, 0xa

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 286
    :cond_63
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_64
    const/4 v1, 0x0

    .line 287
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    move-result-object v0

    throw v0

    :cond_65
    move-object v0, v8

    return-object v0
.end method

.method public static k(Lq0/d;)Lm0/N;
    .locals 16

    .line 1
    const/4 v1, 0x1

    .line 2
    move-object/from16 v3, p0

    .line 3
    .line 4
    iget-object v3, v3, Lq0/d;->c:Lp0/E;

    .line 5
    .line 6
    const/16 v4, 0x8

    .line 7
    .line 8
    invoke-virtual {v3, v4}, Lp0/E;->L(I)V

    .line 9
    .line 10
    .line 11
    new-instance v5, Lm0/N;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    new-array v7, v6, [Lm0/M;

    .line 15
    .line 16
    invoke-direct {v5, v7}, Lm0/N;-><init>([Lm0/M;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-lt v7, v4, :cond_3c

    .line 24
    .line 25
    iget v7, v3, Lp0/E;->b:I

    .line 26
    .line 27
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    const v10, 0x6d657461

    .line 36
    .line 37
    .line 38
    const/4 v13, 0x0

    .line 39
    if-ne v9, v10, :cond_2b

    .line 40
    .line 41
    invoke-virtual {v3, v7}, Lp0/E;->L(I)V

    .line 42
    .line 43
    .line 44
    add-int v9, v7, v8

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lp0/E;->M(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lo1/e;->a(Lp0/E;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iget v10, v3, Lp0/E;->b:I

    .line 53
    .line 54
    if-ge v10, v9, :cond_2a

    .line 55
    .line 56
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    const v0, 0x696c7374

    .line 65
    .line 66
    .line 67
    if-ne v15, v0, :cond_29

    .line 68
    .line 69
    invoke-virtual {v3, v10}, Lp0/E;->L(I)V

    .line 70
    .line 71
    .line 72
    add-int/2addr v10, v14

    .line 73
    invoke-virtual {v3, v4}, Lp0/E;->M(I)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    :goto_2
    iget v9, v3, Lp0/E;->b:I

    .line 82
    .line 83
    if-ge v9, v10, :cond_27

    .line 84
    .line 85
    const-string v14, "Skipped unknown metadata entry: "

    .line 86
    .line 87
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    add-int/2addr v15, v9

    .line 92
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    shr-int/lit8 v4, v9, 0x18

    .line 97
    .line 98
    and-int/lit16 v4, v4, 0xff

    .line 99
    .line 100
    const/16 v12, 0xa9

    .line 101
    .line 102
    const-string v2, "MetadataUtil"

    .line 103
    .line 104
    const-string v11, "TCON"

    .line 105
    .line 106
    if-eq v4, v12, :cond_0

    .line 107
    .line 108
    const/16 v12, 0xfd

    .line 109
    .line 110
    if-ne v4, v12, :cond_1

    .line 111
    .line 112
    :cond_0
    const/4 v1, -0x1

    .line 113
    goto/16 :goto_8

    .line 114
    .line 115
    :cond_1
    const v4, 0x676e7265

    .line 116
    .line 117
    .line 118
    if-ne v9, v4, :cond_3

    .line 119
    .line 120
    :try_start_0
    invoke-static {v3}, LZ3/H;->r(Lp0/E;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    sub-int/2addr v4, v1

    .line 125
    invoke-static {v4}, Li1/k;->a(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_2

    .line 130
    .line 131
    new-instance v2, Li1/o;

    .line 132
    .line 133
    invoke-static {v4}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-direct {v2, v11, v13, v4}, Li1/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lz4/d0;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_2
    const-string v4, "Failed to parse standard genre code"

    .line 142
    .line 143
    invoke-static {v2, v4}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    move-object v2, v13

    .line 147
    :goto_3
    invoke-virtual {v3, v15}, Lp0/E;->L(I)V

    .line 148
    .line 149
    .line 150
    const/4 v1, -0x1

    .line 151
    goto/16 :goto_c

    .line 152
    .line 153
    :cond_3
    const v4, 0x6469736b

    .line 154
    .line 155
    .line 156
    if-ne v9, v4, :cond_4

    .line 157
    .line 158
    :try_start_1
    const-string v2, "TPOS"

    .line 159
    .line 160
    invoke-static {v9, v3, v2}, LZ3/H;->q(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    goto :goto_3

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    goto/16 :goto_d

    .line 167
    .line 168
    :cond_4
    const v4, 0x74726b6e

    .line 169
    .line 170
    .line 171
    if-ne v9, v4, :cond_5

    .line 172
    .line 173
    const-string v2, "TRCK"

    .line 174
    .line 175
    invoke-static {v9, v3, v2}, LZ3/H;->q(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    goto :goto_3

    .line 180
    :cond_5
    const v4, 0x746d706f

    .line 181
    .line 182
    .line 183
    if-ne v9, v4, :cond_6

    .line 184
    .line 185
    const-string v2, "TBPM"

    .line 186
    .line 187
    invoke-static {v9, v2, v3, v1, v6}, LZ3/H;->s(ILjava/lang/String;Lp0/E;ZZ)Li1/j;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    goto :goto_3

    .line 192
    :cond_6
    const v4, 0x6370696c

    .line 193
    .line 194
    .line 195
    if-ne v9, v4, :cond_7

    .line 196
    .line 197
    const-string v2, "TCMP"

    .line 198
    .line 199
    invoke-static {v9, v2, v3, v1, v1}, LZ3/H;->s(ILjava/lang/String;Lp0/E;ZZ)Li1/j;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    goto :goto_3

    .line 204
    :cond_7
    const v4, 0x636f7672

    .line 205
    .line 206
    .line 207
    if-ne v9, v4, :cond_8

    .line 208
    .line 209
    invoke-static {v3}, LZ3/H;->p(Lp0/E;)Li1/a;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    goto :goto_3

    .line 214
    :cond_8
    const v4, 0x61415254

    .line 215
    .line 216
    .line 217
    if-ne v9, v4, :cond_9

    .line 218
    .line 219
    const-string v2, "TPE2"

    .line 220
    .line 221
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    goto :goto_3

    .line 226
    :cond_9
    const v4, 0x736f6e6d

    .line 227
    .line 228
    .line 229
    if-ne v9, v4, :cond_a

    .line 230
    .line 231
    const-string v2, "TSOT"

    .line 232
    .line 233
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    goto :goto_3

    .line 238
    :cond_a
    const v4, 0x736f616c

    .line 239
    .line 240
    .line 241
    if-ne v9, v4, :cond_b

    .line 242
    .line 243
    const-string v2, "TSOA"

    .line 244
    .line 245
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    goto :goto_3

    .line 250
    :cond_b
    const v4, 0x736f6172

    .line 251
    .line 252
    .line 253
    if-ne v9, v4, :cond_c

    .line 254
    .line 255
    const-string v2, "TSOP"

    .line 256
    .line 257
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    goto :goto_3

    .line 262
    :cond_c
    const v4, 0x736f6161

    .line 263
    .line 264
    .line 265
    if-ne v9, v4, :cond_d

    .line 266
    .line 267
    const-string v2, "TSO2"

    .line 268
    .line 269
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    goto :goto_3

    .line 274
    :cond_d
    const v4, 0x736f636f

    .line 275
    .line 276
    .line 277
    if-ne v9, v4, :cond_e

    .line 278
    .line 279
    const-string v2, "TSOC"

    .line 280
    .line 281
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    :cond_e
    const v4, 0x72746e67

    .line 288
    .line 289
    .line 290
    if-ne v9, v4, :cond_f

    .line 291
    .line 292
    const-string v2, "ITUNESADVISORY"

    .line 293
    .line 294
    invoke-static {v9, v2, v3, v6, v6}, LZ3/H;->s(ILjava/lang/String;Lp0/E;ZZ)Li1/j;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    goto/16 :goto_3

    .line 299
    .line 300
    :cond_f
    const v4, 0x70676170

    .line 301
    .line 302
    .line 303
    if-ne v9, v4, :cond_10

    .line 304
    .line 305
    const-string v2, "ITUNESGAPLESS"

    .line 306
    .line 307
    invoke-static {v9, v2, v3, v6, v1}, LZ3/H;->s(ILjava/lang/String;Lp0/E;ZZ)Li1/j;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :cond_10
    const v4, 0x736f736e

    .line 314
    .line 315
    .line 316
    if-ne v9, v4, :cond_11

    .line 317
    .line 318
    const-string v2, "TVSHOWSORT"

    .line 319
    .line 320
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    goto/16 :goto_3

    .line 325
    .line 326
    :cond_11
    const v4, 0x74767368

    .line 327
    .line 328
    .line 329
    if-ne v9, v4, :cond_12

    .line 330
    .line 331
    const-string v2, "TVSHOW"

    .line 332
    .line 333
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    goto/16 :goto_3

    .line 338
    .line 339
    :cond_12
    const v4, 0x2d2d2d2d

    .line 340
    .line 341
    .line 342
    if-ne v9, v4, :cond_19

    .line 343
    .line 344
    move-object v2, v13

    .line 345
    move-object v4, v2

    .line 346
    const/4 v9, -0x1

    .line 347
    const/4 v11, -0x1

    .line 348
    :goto_4
    iget v12, v3, Lp0/E;->b:I

    .line 349
    .line 350
    if-ge v12, v15, :cond_16

    .line 351
    .line 352
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 353
    .line 354
    .line 355
    move-result v14

    .line 356
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 357
    .line 358
    .line 359
    move-result v13

    .line 360
    const/4 v6, 0x4

    .line 361
    invoke-virtual {v3, v6}, Lp0/E;->M(I)V

    .line 362
    .line 363
    .line 364
    const v6, 0x6d65616e

    .line 365
    .line 366
    .line 367
    if-ne v13, v6, :cond_13

    .line 368
    .line 369
    const/16 v6, 0xc

    .line 370
    .line 371
    sub-int/2addr v14, v6

    .line 372
    invoke-virtual {v3, v14}, Lp0/E;->v(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    goto :goto_5

    .line 377
    :cond_13
    const/16 v6, 0xc

    .line 378
    .line 379
    const v1, 0x6e616d65

    .line 380
    .line 381
    .line 382
    if-ne v13, v1, :cond_14

    .line 383
    .line 384
    sub-int/2addr v14, v6

    .line 385
    invoke-virtual {v3, v14}, Lp0/E;->v(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    goto :goto_5

    .line 390
    :cond_14
    const v1, 0x64617461

    .line 391
    .line 392
    .line 393
    if-ne v13, v1, :cond_15

    .line 394
    .line 395
    move v9, v12

    .line 396
    move v11, v14

    .line 397
    :cond_15
    sub-int/2addr v14, v6

    .line 398
    invoke-virtual {v3, v14}, Lp0/E;->M(I)V

    .line 399
    .line 400
    .line 401
    :goto_5
    const/4 v1, 0x1

    .line 402
    const/4 v6, 0x0

    .line 403
    const/4 v13, 0x0

    .line 404
    goto :goto_4

    .line 405
    :cond_16
    if-eqz v2, :cond_18

    .line 406
    .line 407
    if-eqz v4, :cond_18

    .line 408
    .line 409
    const/4 v1, -0x1

    .line 410
    if-ne v9, v1, :cond_17

    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_17
    invoke-virtual {v3, v9}, Lp0/E;->L(I)V

    .line 414
    .line 415
    .line 416
    const/16 v6, 0x10

    .line 417
    .line 418
    invoke-virtual {v3, v6}, Lp0/E;->M(I)V

    .line 419
    .line 420
    .line 421
    sub-int/2addr v11, v6

    .line 422
    invoke-virtual {v3, v11}, Lp0/E;->v(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    new-instance v9, Li1/l;

    .line 427
    .line 428
    invoke-direct {v9, v2, v4, v6}, Li1/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    .line 430
    .line 431
    move-object v2, v9

    .line 432
    goto :goto_7

    .line 433
    :cond_18
    const/4 v1, -0x1

    .line 434
    :goto_6
    const/4 v2, 0x0

    .line 435
    :goto_7
    invoke-virtual {v3, v15}, Lp0/E;->L(I)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_c

    .line 439
    .line 440
    :cond_19
    const/4 v1, -0x1

    .line 441
    goto/16 :goto_9

    .line 442
    .line 443
    :goto_8
    const v4, 0xffffff

    .line 444
    .line 445
    .line 446
    and-int/2addr v4, v9

    .line 447
    const v6, 0x636d74

    .line 448
    .line 449
    .line 450
    if-ne v4, v6, :cond_1a

    .line 451
    .line 452
    :try_start_2
    invoke-static {v9, v3}, LZ3/H;->o(ILp0/E;)Li1/e;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    goto :goto_7

    .line 457
    :cond_1a
    const v6, 0x6e616d

    .line 458
    .line 459
    .line 460
    if-eq v4, v6, :cond_25

    .line 461
    .line 462
    const v6, 0x74726b

    .line 463
    .line 464
    .line 465
    if-ne v4, v6, :cond_1b

    .line 466
    .line 467
    goto/16 :goto_b

    .line 468
    .line 469
    :cond_1b
    const v6, 0x636f6d

    .line 470
    .line 471
    .line 472
    if-eq v4, v6, :cond_24

    .line 473
    .line 474
    const v6, 0x777274

    .line 475
    .line 476
    .line 477
    if-ne v4, v6, :cond_1c

    .line 478
    .line 479
    goto/16 :goto_a

    .line 480
    .line 481
    :cond_1c
    const v6, 0x646179

    .line 482
    .line 483
    .line 484
    if-ne v4, v6, :cond_1d

    .line 485
    .line 486
    const-string v2, "TDRC"

    .line 487
    .line 488
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    goto :goto_7

    .line 493
    :cond_1d
    const v6, 0x415254

    .line 494
    .line 495
    .line 496
    if-ne v4, v6, :cond_1e

    .line 497
    .line 498
    const-string v2, "TPE1"

    .line 499
    .line 500
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    goto :goto_7

    .line 505
    :cond_1e
    const v6, 0x746f6f

    .line 506
    .line 507
    .line 508
    if-ne v4, v6, :cond_1f

    .line 509
    .line 510
    const-string v2, "TSSE"

    .line 511
    .line 512
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    goto :goto_7

    .line 517
    :cond_1f
    const v6, 0x616c62

    .line 518
    .line 519
    .line 520
    if-ne v4, v6, :cond_20

    .line 521
    .line 522
    const-string v2, "TALB"

    .line 523
    .line 524
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    goto :goto_7

    .line 529
    :cond_20
    const v6, 0x6c7972

    .line 530
    .line 531
    .line 532
    if-ne v4, v6, :cond_21

    .line 533
    .line 534
    const-string v2, "USLT"

    .line 535
    .line 536
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    goto :goto_7

    .line 541
    :cond_21
    const v6, 0x67656e

    .line 542
    .line 543
    .line 544
    if-ne v4, v6, :cond_22

    .line 545
    .line 546
    invoke-static {v9, v3, v11}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    goto :goto_7

    .line 551
    :cond_22
    const v6, 0x677270

    .line 552
    .line 553
    .line 554
    if-ne v4, v6, :cond_23

    .line 555
    .line 556
    const-string v2, "TIT1"

    .line 557
    .line 558
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    goto :goto_7

    .line 563
    :cond_23
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-static {v9}, Lq0/e;->a(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v6

    .line 572
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-static {v2, v4}, Lp0/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3, v15}, Lp0/E;->L(I)V

    .line 583
    .line 584
    .line 585
    const/4 v2, 0x0

    .line 586
    goto :goto_c

    .line 587
    :cond_24
    :goto_a
    :try_start_3
    const-string v2, "TCOM"

    .line 588
    .line 589
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    goto/16 :goto_7

    .line 594
    .line 595
    :cond_25
    :goto_b
    const-string v2, "TIT2"

    .line 596
    .line 597
    invoke-static {v9, v3, v2}, LZ3/H;->t(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 598
    .line 599
    .line 600
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    goto/16 :goto_7

    .line 602
    .line 603
    :goto_c
    if-eqz v2, :cond_26

    .line 604
    .line 605
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    :cond_26
    const/4 v1, 0x1

    .line 609
    const/16 v4, 0x8

    .line 610
    .line 611
    const/4 v6, 0x0

    .line 612
    const/4 v13, 0x0

    .line 613
    goto/16 :goto_2

    .line 614
    .line 615
    :goto_d
    invoke-virtual {v3, v15}, Lp0/E;->L(I)V

    .line 616
    .line 617
    .line 618
    throw v0

    .line 619
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-eqz v1, :cond_28

    .line 624
    .line 625
    goto :goto_e

    .line 626
    :cond_28
    new-instance v13, Lm0/N;

    .line 627
    .line 628
    invoke-direct {v13, v0}, Lm0/N;-><init>(Ljava/util/List;)V

    .line 629
    .line 630
    .line 631
    goto :goto_f

    .line 632
    :cond_29
    const/4 v1, -0x1

    .line 633
    add-int/2addr v10, v14

    .line 634
    invoke-virtual {v3, v10}, Lp0/E;->L(I)V

    .line 635
    .line 636
    .line 637
    const/4 v1, 0x1

    .line 638
    const/16 v4, 0x8

    .line 639
    .line 640
    const/4 v6, 0x0

    .line 641
    const/4 v13, 0x0

    .line 642
    goto/16 :goto_1

    .line 643
    .line 644
    :cond_2a
    :goto_e
    const/4 v13, 0x0

    .line 645
    :goto_f
    invoke-virtual {v5, v13}, Lm0/N;->b(Lm0/N;)Lm0/N;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    move-object v5, v0

    .line 650
    const/4 v0, 0x0

    .line 651
    const/4 v6, 0x1

    .line 652
    const/16 v10, 0x10

    .line 653
    .line 654
    const/16 v11, 0x8

    .line 655
    .line 656
    const/16 v12, 0xc

    .line 657
    .line 658
    goto/16 :goto_1b

    .line 659
    .line 660
    :cond_2b
    const/4 v1, -0x1

    .line 661
    const v0, 0x736d7461

    .line 662
    .line 663
    .line 664
    const/4 v2, 0x2

    .line 665
    if-ne v9, v0, :cond_3b

    .line 666
    .line 667
    invoke-virtual {v3, v7}, Lp0/E;->L(I)V

    .line 668
    .line 669
    .line 670
    add-int v0, v7, v8

    .line 671
    .line 672
    const/16 v4, 0xc

    .line 673
    .line 674
    invoke-virtual {v3, v4}, Lp0/E;->M(I)V

    .line 675
    .line 676
    .line 677
    :goto_10
    iget v4, v3, Lp0/E;->b:I

    .line 678
    .line 679
    if-ge v4, v0, :cond_39

    .line 680
    .line 681
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 686
    .line 687
    .line 688
    move-result v9

    .line 689
    const v10, 0x73617574

    .line 690
    .line 691
    .line 692
    if-ne v9, v10, :cond_38

    .line 693
    .line 694
    const/16 v10, 0x10

    .line 695
    .line 696
    if-ge v6, v10, :cond_2c

    .line 697
    .line 698
    :goto_11
    const/16 v11, 0x8

    .line 699
    .line 700
    const/16 v12, 0xc

    .line 701
    .line 702
    :goto_12
    const/4 v13, 0x0

    .line 703
    goto/16 :goto_18

    .line 704
    .line 705
    :cond_2c
    const/4 v9, 0x4

    .line 706
    invoke-virtual {v3, v9}, Lp0/E;->M(I)V

    .line 707
    .line 708
    .line 709
    const/4 v1, 0x0

    .line 710
    const/4 v4, 0x0

    .line 711
    const/4 v12, -0x1

    .line 712
    :goto_13
    if-ge v1, v2, :cond_2f

    .line 713
    .line 714
    invoke-virtual {v3}, Lp0/E;->z()I

    .line 715
    .line 716
    .line 717
    move-result v6

    .line 718
    invoke-virtual {v3}, Lp0/E;->z()I

    .line 719
    .line 720
    .line 721
    move-result v9

    .line 722
    if-nez v6, :cond_2d

    .line 723
    .line 724
    move v12, v9

    .line 725
    const/4 v11, 0x1

    .line 726
    goto :goto_14

    .line 727
    :cond_2d
    const/4 v11, 0x1

    .line 728
    if-ne v6, v11, :cond_2e

    .line 729
    .line 730
    move v4, v9

    .line 731
    :cond_2e
    :goto_14
    add-int/2addr v1, v11

    .line 732
    goto :goto_13

    .line 733
    :cond_2f
    const v1, -0x7fffffff

    .line 734
    .line 735
    .line 736
    const/16 v2, 0xc

    .line 737
    .line 738
    if-ne v12, v2, :cond_30

    .line 739
    .line 740
    const/16 v0, 0xf0

    .line 741
    .line 742
    :goto_15
    const/16 v11, 0x8

    .line 743
    .line 744
    const/16 v12, 0xc

    .line 745
    .line 746
    goto :goto_17

    .line 747
    :cond_30
    const/16 v2, 0xd

    .line 748
    .line 749
    if-ne v12, v2, :cond_31

    .line 750
    .line 751
    const/16 v0, 0x78

    .line 752
    .line 753
    goto :goto_15

    .line 754
    :cond_31
    const/16 v2, 0x15

    .line 755
    .line 756
    if-eq v12, v2, :cond_32

    .line 757
    .line 758
    const v0, -0x7fffffff

    .line 759
    .line 760
    .line 761
    goto :goto_15

    .line 762
    :cond_32
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    const/16 v11, 0x8

    .line 767
    .line 768
    if-lt v2, v11, :cond_33

    .line 769
    .line 770
    iget v2, v3, Lp0/E;->b:I

    .line 771
    .line 772
    add-int/2addr v2, v11

    .line 773
    if-le v2, v0, :cond_34

    .line 774
    .line 775
    :cond_33
    const/16 v12, 0xc

    .line 776
    .line 777
    goto :goto_16

    .line 778
    :cond_34
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    const/16 v12, 0xc

    .line 787
    .line 788
    if-lt v0, v12, :cond_36

    .line 789
    .line 790
    const v0, 0x73726672

    .line 791
    .line 792
    .line 793
    if-eq v2, v0, :cond_35

    .line 794
    .line 795
    goto :goto_16

    .line 796
    :cond_35
    invoke-virtual {v3}, Lp0/E;->A()I

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    goto :goto_17

    .line 801
    :cond_36
    :goto_16
    const v0, -0x7fffffff

    .line 802
    .line 803
    .line 804
    :goto_17
    if-ne v0, v1, :cond_37

    .line 805
    .line 806
    goto :goto_12

    .line 807
    :cond_37
    new-instance v13, Lm0/N;

    .line 808
    .line 809
    new-instance v1, Lj1/d;

    .line 810
    .line 811
    int-to-float v0, v0

    .line 812
    invoke-direct {v1, v4, v0}, Lj1/d;-><init>(IF)V

    .line 813
    .line 814
    .line 815
    const/4 v0, 0x1

    .line 816
    new-array v2, v0, [Lm0/M;

    .line 817
    .line 818
    const/4 v0, 0x0

    .line 819
    aput-object v1, v2, v0

    .line 820
    .line 821
    invoke-direct {v13, v2}, Lm0/N;-><init>([Lm0/M;)V

    .line 822
    .line 823
    .line 824
    goto :goto_18

    .line 825
    :cond_38
    const/4 v9, 0x4

    .line 826
    const/16 v10, 0x10

    .line 827
    .line 828
    const/16 v11, 0x8

    .line 829
    .line 830
    const/16 v12, 0xc

    .line 831
    .line 832
    add-int/2addr v4, v6

    .line 833
    invoke-virtual {v3, v4}, Lp0/E;->L(I)V

    .line 834
    .line 835
    .line 836
    goto/16 :goto_10

    .line 837
    .line 838
    :cond_39
    const/16 v10, 0x10

    .line 839
    .line 840
    goto/16 :goto_11

    .line 841
    .line 842
    :goto_18
    invoke-virtual {v5, v13}, Lm0/N;->b(Lm0/N;)Lm0/N;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    move-object v5, v0

    .line 847
    :cond_3a
    const/4 v0, 0x0

    .line 848
    const/4 v6, 0x1

    .line 849
    goto :goto_1b

    .line 850
    :cond_3b
    const/16 v10, 0x10

    .line 851
    .line 852
    const/16 v11, 0x8

    .line 853
    .line 854
    const/16 v12, 0xc

    .line 855
    .line 856
    const v0, -0x56878686

    .line 857
    .line 858
    .line 859
    if-ne v9, v0, :cond_3a

    .line 860
    .line 861
    invoke-virtual {v3}, Lp0/E;->w()S

    .line 862
    .line 863
    .line 864
    move-result v0

    .line 865
    invoke-virtual {v3, v2}, Lp0/E;->M(I)V

    .line 866
    .line 867
    .line 868
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 869
    .line 870
    invoke-virtual {v3, v0, v1}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    const/16 v1, 0x2b

    .line 875
    .line 876
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 877
    .line 878
    .line 879
    move-result v1

    .line 880
    const/16 v2, 0x2d

    .line 881
    .line 882
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 887
    .line 888
    .line 889
    move-result v1

    .line 890
    const/4 v2, 0x0

    .line 891
    :try_start_4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v4

    .line 895
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 900
    .line 901
    .line 902
    move-result v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 903
    const/4 v6, 0x1

    .line 904
    sub-int/2addr v4, v6

    .line 905
    :try_start_5
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    new-instance v1, Lm0/N;

    .line 914
    .line 915
    new-array v4, v6, [Lm0/M;

    .line 916
    .line 917
    new-instance v9, Lq0/f;

    .line 918
    .line 919
    invoke-direct {v9, v2, v0}, Lq0/f;-><init>(FF)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    .line 920
    .line 921
    .line 922
    const/4 v0, 0x0

    .line 923
    :try_start_6
    aput-object v9, v4, v0

    .line 924
    .line 925
    invoke-direct {v1, v4}, Lm0/N;-><init>([Lm0/M;)V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    .line 926
    .line 927
    .line 928
    move-object v13, v1

    .line 929
    goto :goto_1a

    .line 930
    :catch_0
    const/4 v0, 0x0

    .line 931
    goto :goto_19

    .line 932
    :catch_1
    const/4 v0, 0x0

    .line 933
    const/4 v6, 0x1

    .line 934
    :catch_2
    :goto_19
    const/4 v13, 0x0

    .line 935
    :goto_1a
    invoke-virtual {v5, v13}, Lm0/N;->b(Lm0/N;)Lm0/N;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    move-object v5, v1

    .line 940
    :goto_1b
    add-int/2addr v7, v8

    .line 941
    invoke-virtual {v3, v7}, Lp0/E;->L(I)V

    .line 942
    .line 943
    .line 944
    const/4 v1, 0x1

    .line 945
    const/16 v4, 0x8

    .line 946
    .line 947
    const/4 v6, 0x0

    .line 948
    goto/16 :goto_0

    .line 949
    .line 950
    :cond_3c
    return-object v5
.end method
