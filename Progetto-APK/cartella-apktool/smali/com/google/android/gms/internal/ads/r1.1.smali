.class public abstract Lcom/google/android/gms/internal/ads/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const-string v0, "OpusHead"

    .line 4
    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/r1;->a:[B

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/wv;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lq0/e;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->E()J

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance p0, Lcom/google/android/gms/internal/ads/wv;

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/wv;-><init>(JJJ)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/o1;Lcom/google/android/gms/internal/ads/T;JLcom/google/android/gms/internal/ads/mO;ZZLcom/google/android/gms/internal/ads/u1;)Ljava/util/ArrayList;
    .locals 71

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    .line 1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_9e

    .line 3
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/android/gms/internal/ads/o1;

    .line 4
    iget v1, v15, Lq0/e;->b:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object v2, v12

    move/from16 v32, v14

    goto/16 :goto_6e

    :cond_0
    const v1, 0x6d766864

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x6d646961

    .line 7
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    const/16 v9, 0x10

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v3

    const v4, 0x736f756e

    const/4 v6, -0x1

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const v4, 0x76696465

    if-ne v3, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const v4, 0x74657874

    if-eq v3, v4, :cond_3

    const v4, 0x7362746c

    if-eq v3, v4, :cond_3

    const v4, 0x73756274

    if-eq v3, v4, :cond_3

    const v4, 0x636c6370

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    :cond_4
    const v4, 0x6d657461

    if-ne v3, v4, :cond_5

    const/4 v4, 0x5

    goto :goto_1

    :cond_5
    const/4 v4, -0x1

    :goto_1
    if-ne v4, v6, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v33, v12

    move/from16 v32, v14

    move-object v1, v15

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_6d

    :cond_6
    const v3, 0x746b6864

    .line 13
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lq0/e;->c(I)I

    move-result v19

    if-nez v19, :cond_7

    const/16 v5, 0x8

    goto :goto_3

    :cond_7
    const/16 v5, 0x10

    .line 17
    :goto_3
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v5

    const/4 v13, 0x4

    .line 19
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 20
    iget v7, v3, Lcom/google/android/gms/internal/ads/jr;->b:I

    const/4 v8, 0x0

    :goto_4
    if-nez v19, :cond_8

    const/4 v10, 0x4

    goto :goto_5

    :cond_8
    const/16 v10, 0x8

    :goto_5
    const-wide/16 v25, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v8, v10, :cond_b

    .line 21
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    add-int v29, v7, v8

    .line 22
    aget-byte v10, v10, v29

    if-eq v10, v6, :cond_a

    if-nez v19, :cond_9

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->E()J

    move-result-wide v7

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->F()J

    move-result-wide v7

    :goto_6
    cmp-long v10, v7, v25

    if-nez v10, :cond_c

    :goto_7
    move-wide/from16 v7, v27

    goto :goto_8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const v10, 0x6d646961

    goto :goto_4

    .line 24
    :cond_b
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    goto :goto_7

    .line 25
    :cond_c
    :goto_8
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v10

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v6

    .line 28
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v9

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v3

    const/high16 v13, 0x10000

    const/high16 v0, -0x10000

    if-nez v10, :cond_10

    if-ne v6, v13, :cond_e

    if-ne v9, v0, :cond_f

    if-nez v3, :cond_d

    const/16 v0, 0x5a

    goto :goto_e

    :cond_d
    const/high16 v6, 0x10000

    const/high16 v9, -0x10000

    :cond_e
    :goto_9
    const/4 v10, 0x0

    goto :goto_a

    :cond_f
    const/high16 v6, 0x10000

    goto :goto_9

    :cond_10
    :goto_a
    if-nez v10, :cond_14

    if-ne v6, v0, :cond_13

    if-ne v9, v13, :cond_12

    if-nez v3, :cond_11

    const/16 v0, 0x10e

    goto :goto_e

    :cond_11
    :goto_b
    const/high16 v6, -0x10000

    :goto_c
    const/4 v10, 0x0

    goto :goto_d

    :cond_12
    move v13, v9

    goto :goto_b

    :cond_13
    move v13, v9

    goto :goto_c

    :cond_14
    move v13, v9

    :goto_d
    if-ne v10, v0, :cond_15

    if-nez v6, :cond_15

    if-nez v13, :cond_15

    if-ne v3, v0, :cond_15

    const/16 v0, 0xb4

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    cmp-long v3, p2, v27

    if-nez v3, :cond_16

    move-wide/from16 v32, v7

    goto :goto_f

    :cond_16
    move-wide/from16 v32, p2

    :goto_f
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/r1;->a(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/wv;

    move-result-object v1

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/wv;->I:J

    cmp-long v1, v32, v27

    if-nez v1, :cond_17

    :goto_10
    const v1, 0x6d696e66

    goto :goto_11

    :cond_17
    const-wide/32 v34, 0xf4240

    .line 32
    sget-object v38, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v36, v9

    .line 33
    invoke-static/range {v32 .. v38}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    move-wide/from16 v27, v6

    goto :goto_10

    .line 34
    :goto_11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7374626c

    .line 36
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x6d646864

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v3

    invoke-static {v3}, Lq0/e;->c(I)I

    move-result v3

    if-nez v3, :cond_18

    const/16 v7, 0x8

    goto :goto_12

    :cond_18
    const/16 v7, 0x10

    .line 42
    :goto_12
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    if-nez v3, :cond_19

    const/4 v3, 0x4

    goto :goto_13

    :cond_19
    const/16 v3, 0x8

    .line 43
    :goto_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->E()J

    move-result-wide v7

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->A()I

    move-result v2

    shr-int/lit8 v3, v2, 0xa

    shr-int/lit8 v13, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v13, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const v2, 0x73747364

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 49
    iget-object v2, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 50
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v3

    new-instance v2, Lc/g;

    const/16 v1, 0x9

    .line 52
    invoke-direct {v2, v3, v1}, Lc/g;-><init>(II)V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_93

    move/from16 v32, v14

    .line 53
    iget v14, v7, Lcom/google/android/gms/internal/ads/jr;->b:I

    move-object/from16 v33, v12

    .line 54
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v12

    if-lez v12, :cond_1a

    move/from16 v34, v1

    const/4 v6, 0x1

    goto :goto_15

    :cond_1a
    move/from16 v34, v1

    const/4 v6, 0x0

    .line 55
    :goto_15
    const-string v1, "childAtomSize must be positive"

    invoke-static {v1, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v6

    move/from16 v35, v3

    const v3, 0x61766331

    move/from16 v39, v4

    const v4, 0x656e6376

    if-eq v6, v3, :cond_1b

    const v3, 0x61766333

    if-eq v6, v3, :cond_1b

    if-eq v6, v4, :cond_1b

    const v3, 0x6d317620

    if-eq v6, v3, :cond_1b

    const v3, 0x6d703476

    if-eq v6, v3, :cond_1b

    const v3, 0x68766331

    if-eq v6, v3, :cond_1b

    const v3, 0x68657631

    if-eq v6, v3, :cond_1b

    const v3, 0x73323633

    if-eq v6, v3, :cond_1b

    const v3, 0x48323633

    if-eq v6, v3, :cond_1b

    const v3, 0x76703038

    if-eq v6, v3, :cond_1b

    const v3, 0x76703039

    if-eq v6, v3, :cond_1b

    const v3, 0x61763031

    if-eq v6, v3, :cond_1b

    const v3, 0x64766176

    if-eq v6, v3, :cond_1b

    const v3, 0x64766131

    if-eq v6, v3, :cond_1b

    const v3, 0x64766865

    if-eq v6, v3, :cond_1b

    const v3, 0x64766831

    if-ne v6, v3, :cond_1c

    :cond_1b
    move-object/from16 v20, v2

    move/from16 v16, v5

    move-object/from16 v23, v8

    move-wide/from16 v42, v9

    move-object/from16 v41, v15

    move/from16 v17, v35

    move/from16 v35, v39

    const/16 v15, 0x10

    move-object/from16 v39, v13

    move-object v13, v7

    goto/16 :goto_1d

    :cond_1c
    const v1, 0x6d703461

    if-eq v6, v1, :cond_1d

    const v1, 0x656e6361

    if-eq v6, v1, :cond_1d

    const v1, 0x61632d33

    if-eq v6, v1, :cond_1d

    const v1, 0x65632d33

    if-eq v6, v1, :cond_1d

    const v1, 0x61632d34

    if-eq v6, v1, :cond_1d

    const v1, 0x6d6c7061

    if-eq v6, v1, :cond_1d

    const v1, 0x64747363

    if-eq v6, v1, :cond_1d

    const v1, 0x64747365

    if-eq v6, v1, :cond_1d

    const v1, 0x64747368

    if-eq v6, v1, :cond_1d

    const v1, 0x6474736c

    if-eq v6, v1, :cond_1d

    const v1, 0x64747378

    if-eq v6, v1, :cond_1d

    const v1, 0x73616d72

    if-eq v6, v1, :cond_1d

    const v1, 0x73617762

    if-eq v6, v1, :cond_1d

    const v1, 0x6c70636d

    if-eq v6, v1, :cond_1d

    const v1, 0x736f7774

    if-eq v6, v1, :cond_1d

    const v1, 0x74776f73

    if-eq v6, v1, :cond_1d

    const v1, 0x2e6d7032

    if-eq v6, v1, :cond_1d

    const v1, 0x2e6d7033

    if-eq v6, v1, :cond_1d

    const v1, 0x6d686131

    if-eq v6, v1, :cond_1d

    const v1, 0x6d686d31

    if-eq v6, v1, :cond_1d

    const v1, 0x616c6163

    if-eq v6, v1, :cond_1d

    const v1, 0x616c6177

    if-eq v6, v1, :cond_1d

    const v1, 0x756c6177

    if-eq v6, v1, :cond_1d

    const v1, 0x4f707573

    if-eq v6, v1, :cond_1d

    const v1, 0x664c6143

    if-eq v6, v1, :cond_1d

    const v1, 0x69616d66

    if-ne v6, v1, :cond_1e

    :cond_1d
    move/from16 v16, v5

    goto/16 :goto_1c

    :cond_1e
    const v1, 0x74783367

    const v3, 0x54544d4c

    if-eq v6, v3, :cond_22

    if-eq v6, v1, :cond_22

    const v4, 0x77767474

    if-eq v6, v4, :cond_22

    const v4, 0x73747070

    if-eq v6, v4, :cond_22

    const v4, 0x63363038

    if-ne v6, v4, :cond_1f

    goto :goto_18

    :cond_1f
    const v1, 0x6d657474

    if-ne v6, v1, :cond_21

    add-int/lit8 v1, v14, 0x10

    .line 57
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    .line 59
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    new-instance v3, Lcom/google/android/gms/internal/ads/K;

    .line 60
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 62
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 63
    iput-object v1, v2, Lc/g;->K:Ljava/lang/Object;

    :cond_20
    :goto_16
    move v6, v0

    move-object v3, v2

    move-object/from16 v23, v8

    move-wide/from16 v42, v9

    move/from16 v54, v12

    move/from16 v55, v14

    move-object/from16 v41, v15

    :goto_17
    move/from16 v17, v35

    move/from16 v35, v39

    const/4 v1, -0x1

    const/4 v2, 0x3

    move-object/from16 v39, v13

    move-object v13, v7

    goto/16 :goto_66

    :cond_21
    const v1, 0x63616d6d

    if-ne v6, v1, :cond_20

    new-instance v1, Lcom/google/android/gms/internal/ads/K;

    .line 64
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 65
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    const-string v3, "application/x-camera-motion"

    .line 66
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 67
    new-instance v3, Lcom/google/android/gms/internal/ads/p0;

    .line 68
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 69
    iput-object v3, v2, Lc/g;->K:Ljava/lang/Object;

    goto :goto_16

    :cond_22
    :goto_18
    add-int/lit8 v4, v14, 0x10

    .line 70
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    const-wide v36, 0x7fffffffffffffffL

    if-ne v6, v3, :cond_23

    const-string v1, "application/ttml+xml"

    :goto_19
    move-wide/from16 v40, v36

    :goto_1a
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1b

    :cond_23
    if-ne v6, v1, :cond_24

    add-int/lit8 v1, v12, -0x10

    .line 71
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 72
    invoke-virtual {v7, v4, v3, v1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 73
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    move-result-object v1

    const-string v3, "application/x-quicktime-tx3g"

    move-wide/from16 v40, v36

    const/4 v4, 0x1

    move-object/from16 v70, v3

    move-object v3, v1

    move-object/from16 v1, v70

    goto :goto_1b

    :cond_24
    const v1, 0x77767474

    if-ne v6, v1, :cond_25

    const-string v1, "application/x-mp4-vtt"

    goto :goto_19

    :cond_25
    const v1, 0x73747070

    if-ne v6, v1, :cond_26

    const-string v1, "application/ttml+xml"

    move-wide/from16 v40, v25

    goto :goto_1a

    :cond_26
    const/4 v4, 0x1

    iput v4, v2, Lc/g;->I:I

    const-string v1, "application/x-mp4-cea-608"

    move-wide/from16 v40, v36

    const/4 v3, 0x0

    .line 74
    :goto_1b
    new-instance v6, Lcom/google/android/gms/internal/ads/K;

    .line 75
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 76
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    .line 77
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 78
    iput-object v8, v6, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    move/from16 v16, v5

    move-wide/from16 v4, v40

    .line 79
    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/K;->q:J

    .line 80
    iput-object v3, v6, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 81
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 82
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 83
    iput-object v1, v2, Lc/g;->K:Ljava/lang/Object;

    move v6, v0

    move-object v3, v2

    move-object/from16 v23, v8

    move-wide/from16 v42, v9

    move/from16 v54, v12

    move/from16 v55, v14

    move-object/from16 v41, v15

    move/from16 v5, v16

    goto/16 :goto_17

    :goto_1c
    move-object v1, v7

    move-object v5, v2

    move v2, v6

    move/from16 v17, v35

    const v4, 0x7374626c

    const/4 v6, 0x0

    move v3, v14

    move/from16 v35, v39

    const/16 v18, 0x1

    move v4, v12

    move-object/from16 v20, v5

    move-object/from16 v39, v13

    const/4 v13, 0x3

    move/from16 v5, v16

    move-object v13, v6

    move-object v6, v8

    move-object v13, v7

    move/from16 v7, p6

    move-object/from16 v23, v8

    move-object/from16 v41, v15

    const/4 v15, 0x2

    move-object/from16 v8, p4

    move-wide/from16 v42, v9

    const/16 v10, 0x10

    move-object/from16 v9, v20

    const/16 v15, 0x10

    move/from16 v10, v34

    .line 84
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/r1;->g(Lcom/google/android/gms/internal/ads/jr;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/mO;Lc/g;I)V

    move v6, v0

    move/from16 v54, v12

    move/from16 v55, v14

    move-object/from16 v3, v20

    const/4 v1, -0x1

    const/4 v2, 0x3

    goto/16 :goto_66

    :goto_1d
    add-int/lit8 v2, v14, 0x10

    .line 85
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 86
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 87
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->A()I

    move-result v2

    .line 88
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->A()I

    move-result v3

    const/16 v5, 0x32

    .line 89
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 90
    iget v5, v13, Lcom/google/android/gms/internal/ads/jr;->b:I

    if-ne v6, v4, :cond_29

    .line 91
    invoke-static {v13, v14, v12}, Lcom/google/android/gms/internal/ads/r1;->d(Lcom/google/android/gms/internal/ads/jr;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 92
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v11, :cond_27

    move-object/from16 v8, v20

    const/4 v7, 0x0

    goto :goto_1e

    .line 93
    :cond_27
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/E1;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/E1;->b:Ljava/lang/String;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/mO;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mO;

    move-result-object v7

    move-object/from16 v8, v20

    .line 94
    :goto_1e
    iget-object v9, v8, Lc/g;->J:Ljava/lang/Object;

    check-cast v9, [Lcom/google/android/gms/internal/ads/E1;

    .line 95
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/E1;

    aput-object v6, v9, v34

    move v6, v4

    goto :goto_1f

    :cond_28
    move-object/from16 v8, v20

    move-object v7, v11

    const v6, 0x656e6376

    .line 96
    :goto_1f
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    :goto_20
    const v4, 0x6d317620

    goto :goto_21

    :cond_29
    move-object/from16 v8, v20

    move-object v7, v11

    goto :goto_20

    :goto_21
    if-ne v6, v4, :cond_2a

    const-string v4, "video/mpeg"

    goto :goto_22

    :cond_2a
    const v4, 0x48323633

    if-ne v6, v4, :cond_2b

    .line 97
    const-string v6, "video/3gpp"

    move-object v4, v6

    const v6, 0x48323633

    goto :goto_22

    :cond_2b
    const/4 v4, 0x0

    :goto_22
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v52, v0

    move/from16 v45, v2

    move/from16 v44, v3

    move v10, v5

    move/from16 v48, v6

    move-object/from16 v31, v7

    const/4 v0, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/16 v15, 0x8

    const/16 v20, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v51, -0x1

    const/high16 v53, 0x3f800000    # 1.0f

    move-object v7, v4

    const/16 v4, 0x8

    :goto_23
    sub-int v6, v10, v14

    if-ge v6, v12, :cond_2c

    .line 98
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 99
    iget v6, v13, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 100
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v49

    move/from16 v50, v10

    if-nez v49, :cond_2e

    .line 101
    iget v10, v13, Lcom/google/android/gms/internal/ads/jr;->b:I

    sub-int/2addr v10, v14

    if-ne v10, v12, :cond_2d

    :cond_2c
    move/from16 v59, v2

    move/from16 v57, v4

    move-object/from16 v65, v5

    move-object/from16 v56, v8

    move/from16 v54, v12

    move/from16 v55, v14

    move/from16 v49, v15

    const/4 v1, -0x1

    const/4 v2, 0x3

    goto/16 :goto_64

    :cond_2d
    const/4 v10, 0x0

    goto :goto_24

    :cond_2e
    move/from16 v10, v49

    :goto_24
    if-lez v10, :cond_2f

    move/from16 v54, v12

    const/4 v12, 0x1

    goto :goto_25

    :cond_2f
    move/from16 v54, v12

    const/4 v12, 0x0

    .line 102
    :goto_25
    invoke-static {v1, v12}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v12

    move/from16 v55, v14

    const v14, 0x61766343

    if-ne v12, v14, :cond_32

    add-int/lit8 v6, v6, 0x8

    if-nez v7, :cond_30

    const/4 v2, 0x1

    :goto_26
    const/4 v3, 0x0

    goto :goto_27

    :cond_30
    const/4 v2, 0x0

    goto :goto_26

    .line 104
    :goto_27
    invoke-static {v3, v2}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 106
    invoke-static {v13}, LW0/e;->b(Lcom/google/android/gms/internal/ads/jr;)LW0/e;

    move-result-object v2

    iget v3, v2, LW0/e;->b:I

    iput v3, v8, Lc/g;->H:I

    if-nez v38, :cond_31

    iget v3, v2, LW0/e;->k:F

    move/from16 v53, v3

    const/4 v6, 0x0

    goto :goto_28

    :cond_31
    const/4 v6, 0x1

    :goto_28
    iget-object v3, v2, LW0/e;->a:Ljava/util/List;

    iget-object v4, v2, LW0/e;->l:Ljava/lang/String;

    iget v5, v2, LW0/e;->j:I

    iget v7, v2, LW0/e;->g:I

    iget v9, v2, LW0/e;->h:I

    iget v12, v2, LW0/e;->i:I

    iget v14, v2, LW0/e;->e:I

    iget v2, v2, LW0/e;->f:I

    const-string v15, "video/avc"

    move-object/from16 v58, v1

    move-object/from16 v46, v4

    move/from16 v51, v5

    move/from16 v38, v6

    move-object/from16 v56, v8

    move/from16 v59, v9

    move v9, v12

    move/from16 v60, v48

    const/4 v1, -0x1

    move v4, v2

    move-object v5, v3

    move v3, v7

    move-object v7, v15

    const/4 v2, 0x3

    move v15, v14

    goto/16 :goto_63

    :cond_32
    const v14, 0x68766343

    if-ne v12, v14, :cond_36

    add-int/lit8 v6, v6, 0x8

    if-nez v7, :cond_33

    const/4 v2, 0x1

    :goto_29
    const/4 v3, 0x0

    goto :goto_2a

    :cond_33
    const/4 v2, 0x0

    goto :goto_29

    .line 107
    :goto_2a
    invoke-static {v3, v2}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    const/4 v2, 0x0

    .line 109
    invoke-static {v13, v2, v3}, Lcom/google/android/gms/internal/ads/U;->a(Lcom/google/android/gms/internal/ads/jr;ZLcom/google/android/gms/internal/ads/Ex;)Lcom/google/android/gms/internal/ads/U;

    move-result-object v4

    .line 110
    iget v2, v4, Lcom/google/android/gms/internal/ads/U;->b:I

    iput v2, v8, Lc/g;->H:I

    if-nez v38, :cond_34

    iget v2, v4, Lcom/google/android/gms/internal/ads/U;->i:F

    move/from16 v53, v2

    const/4 v6, 0x0

    goto :goto_2b

    :cond_34
    const/4 v6, 0x1

    :goto_2b
    iget v2, v4, Lcom/google/android/gms/internal/ads/U;->h:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    move v0, v2

    :cond_35
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/U;->a:Ljava/util/List;

    iget v3, v4, Lcom/google/android/gms/internal/ads/U;->j:I

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/U;->k:Ljava/lang/String;

    iget v7, v4, Lcom/google/android/gms/internal/ads/U;->e:I

    iget v9, v4, Lcom/google/android/gms/internal/ads/U;->f:I

    iget v11, v4, Lcom/google/android/gms/internal/ads/U;->g:I

    iget v12, v4, Lcom/google/android/gms/internal/ads/U;->c:I

    iget v14, v4, Lcom/google/android/gms/internal/ads/U;->d:I

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/U;->l:Lcom/google/android/gms/internal/ads/Ex;

    const-string v15, "video/hevc"

    move-object/from16 v58, v1

    move/from16 v51, v3

    move-object/from16 v46, v5

    move/from16 v38, v6

    move v3, v7

    move-object/from16 v56, v8

    move/from16 v59, v9

    move v9, v11

    move-object v7, v15

    move/from16 v60, v48

    const/4 v1, -0x1

    move-object v5, v2

    move-object v11, v4

    move v15, v12

    move v4, v14

    :goto_2c
    const/4 v2, 0x3

    goto/16 :goto_63

    :cond_36
    const v14, 0x6c687643

    if-ne v12, v14, :cond_43

    add-int/lit8 v6, v6, 0x8

    const-string v12, "video/hevc"

    .line 111
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v12, "lhvC must follow hvcC atom"

    .line 112
    invoke-static {v12, v7}, Lf/b;->t0(Ljava/lang/String;Z)V

    if-eqz v11, :cond_38

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/Ex;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 113
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    const/4 v12, 0x2

    if-lt v7, v12, :cond_37

    const/4 v7, 0x1

    goto :goto_2d

    :cond_37
    const/4 v7, 0x0

    goto :goto_2d

    :cond_38
    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_2d
    const-string v12, "must have at least two layers"

    .line 114
    invoke-static {v12, v7}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 115
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 116
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    .line 117
    invoke-static {v13, v6, v11}, Lcom/google/android/gms/internal/ads/U;->a(Lcom/google/android/gms/internal/ads/jr;ZLcom/google/android/gms/internal/ads/Ex;)Lcom/google/android/gms/internal/ads/U;

    move-result-object v7

    .line 118
    iget v6, v8, Lc/g;->H:I

    iget v12, v7, Lcom/google/android/gms/internal/ads/U;->b:I

    if-ne v6, v12, :cond_39

    const/4 v6, 0x1

    goto :goto_2e

    :cond_39
    const/4 v6, 0x0

    :goto_2e
    const-string v12, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 119
    invoke-static {v12, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    iget v6, v7, Lcom/google/android/gms/internal/ads/U;->e:I

    const/4 v12, -0x1

    if-eq v6, v12, :cond_3b

    if-ne v3, v6, :cond_3a

    const/4 v6, 0x1

    goto :goto_2f

    :cond_3a
    const/4 v6, 0x0

    :goto_2f
    const-string v14, "colorSpace must be the same for both views"

    .line 120
    invoke-static {v14, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    :cond_3b
    iget v6, v7, Lcom/google/android/gms/internal/ads/U;->f:I

    if-eq v6, v12, :cond_3d

    if-ne v2, v6, :cond_3c

    const/4 v6, 0x1

    goto :goto_30

    :cond_3c
    const/4 v6, 0x0

    :goto_30
    const-string v14, "colorRange must be the same for both views"

    .line 121
    invoke-static {v14, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    :cond_3d
    iget v6, v7, Lcom/google/android/gms/internal/ads/U;->g:I

    if-eq v6, v12, :cond_3f

    if-ne v9, v6, :cond_3e

    const/4 v6, 0x1

    goto :goto_31

    :cond_3e
    const/4 v6, 0x0

    :goto_31
    const-string v12, "colorTransfer must be the same for both views"

    .line 122
    invoke-static {v12, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    :cond_3f
    iget v6, v7, Lcom/google/android/gms/internal/ads/U;->c:I

    if-ne v15, v6, :cond_40

    const/4 v6, 0x1

    goto :goto_32

    :cond_40
    const/4 v6, 0x0

    :goto_32
    const-string v12, "bitdepthLuma must be the same for both views"

    .line 123
    invoke-static {v12, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    iget v6, v7, Lcom/google/android/gms/internal/ads/U;->d:I

    if-ne v4, v6, :cond_41

    const/4 v6, 0x1

    goto :goto_33

    :cond_41
    const/4 v6, 0x0

    :goto_33
    const-string v12, "bitdepthChroma must be the same for both views"

    .line 124
    invoke-static {v12, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    if-eqz v5, :cond_42

    .line 125
    new-instance v6, Lcom/google/android/gms/internal/ads/rA;

    .line 126
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 127
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/oA;->d(Ljava/lang/Iterable;)V

    .line 128
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/U;->a:Ljava/util/List;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/oA;->d(Ljava/lang/Iterable;)V

    .line 129
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    move-result-object v5

    goto :goto_34

    :cond_42
    const-string v6, "initializationData must be already set from hvcC atom"

    const/4 v12, 0x0

    .line 130
    invoke-static {v6, v12}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 131
    :goto_34
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/U;->k:Ljava/lang/String;

    const-string v7, "video/mv-hevc"

    move-object/from16 v58, v1

    move/from16 v59, v2

    move-object/from16 v46, v6

    move-object/from16 v56, v8

    move/from16 v60, v48

    :goto_35
    const/4 v1, -0x1

    goto/16 :goto_2c

    :cond_43
    const v14, 0x76657875

    if-ne v12, v14, :cond_53

    add-int/lit8 v12, v6, 0x8

    .line 132
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 133
    iget v12, v13, Lcom/google/android/gms/internal/ads/jr;->b:I

    move-object/from16 v56, v8

    move v14, v12

    const/4 v12, 0x0

    :goto_36
    sub-int v8, v14, v6

    if-ge v8, v10, :cond_4c

    .line 134
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 135
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v8

    if-lez v8, :cond_44

    move/from16 v57, v4

    const/4 v4, 0x1

    goto :goto_37

    :cond_44
    move/from16 v57, v4

    const/4 v4, 0x0

    .line 136
    :goto_37
    invoke-static {v1, v4}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 137
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v4

    move/from16 v49, v15

    const v15, 0x65796573

    if-ne v4, v15, :cond_4b

    add-int/lit8 v4, v14, 0x8

    .line 138
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 139
    iget v4, v13, Lcom/google/android/gms/internal/ads/jr;->b:I

    :goto_38
    sub-int v12, v4, v14

    if-ge v12, v8, :cond_4a

    .line 140
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 141
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v12

    if-lez v12, :cond_45

    const/4 v15, 0x1

    goto :goto_39

    :cond_45
    const/4 v15, 0x0

    .line 142
    :goto_39
    invoke-static {v1, v15}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 143
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v15

    move-object/from16 v58, v1

    const v1, 0x73747269

    if-ne v15, v1, :cond_49

    const/4 v1, 0x4

    .line 144
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 145
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    move-result v1

    and-int/lit8 v4, v1, 0x1

    and-int/lit8 v12, v1, 0x2

    const/4 v15, 0x2

    if-ne v12, v15, :cond_46

    const/4 v12, 0x1

    goto :goto_3a

    :cond_46
    const/4 v12, 0x0

    :goto_3a
    and-int/lit8 v1, v1, 0x8

    const/16 v15, 0x8

    if-ne v1, v15, :cond_47

    const/4 v1, 0x1

    :goto_3b
    const/4 v15, 0x1

    goto :goto_3c

    :cond_47
    const/4 v1, 0x0

    goto :goto_3b

    :goto_3c
    if-eq v15, v4, :cond_48

    const/4 v4, 0x0

    goto :goto_3d

    :cond_48
    const/4 v4, 0x1

    :goto_3d
    new-instance v15, Lcom/google/android/gms/internal/ads/K4;

    move/from16 v59, v2

    new-instance v2, LD0/g;

    .line 146
    invoke-direct {v2, v4, v12, v1}, LD0/g;-><init>(ZZZ)V

    const/4 v1, 0x4

    invoke-direct {v15, v2, v1}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    move-object v12, v15

    goto :goto_3e

    :cond_49
    move/from16 v59, v2

    add-int/2addr v4, v12

    move-object/from16 v1, v58

    goto :goto_38

    :cond_4a
    move-object/from16 v58, v1

    move/from16 v59, v2

    const/4 v12, 0x0

    goto :goto_3e

    :cond_4b
    move-object/from16 v58, v1

    move/from16 v59, v2

    :goto_3e
    add-int/2addr v14, v8

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v1, v58

    move/from16 v2, v59

    goto/16 :goto_36

    :cond_4c
    move-object/from16 v58, v1

    move/from16 v59, v2

    move/from16 v57, v4

    move/from16 v49, v15

    if-nez v12, :cond_4d

    const/4 v1, 0x0

    const/4 v2, 0x5

    goto :goto_3f

    .line 147
    :cond_4d
    new-instance v1, Lcom/google/android/gms/internal/ads/K4;

    const/4 v2, 0x5

    invoke-direct {v1, v12, v2}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    :goto_3f
    if-eqz v1, :cond_4e

    if-eqz v11, :cond_50

    .line 148
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/Ex;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 149
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_4f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/K4;->g()Z

    move-result v4

    const-string v6, "both eye views must be marked as available"

    .line 150
    invoke-static {v6, v4}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 151
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/K4;

    .line 152
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v1, LD0/g;

    .line 153
    iget-boolean v1, v1, LD0/g;->c:Z

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    .line 154
    const-string v4, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 155
    invoke-static {v4, v1}, Lf/b;->t0(Ljava/lang/String;Z)V

    :cond_4e
    move-object/from16 v65, v5

    move/from16 v60, v48

    const/4 v1, -0x1

    const/4 v2, 0x3

    move-object/from16 v48, v11

    goto/16 :goto_61

    :cond_4f
    const/4 v4, -0x1

    goto :goto_40

    :cond_50
    const/4 v4, -0x1

    const/4 v11, 0x0

    :goto_40
    if-ne v0, v4, :cond_52

    .line 156
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/K4;

    .line 157
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v0, LD0/g;

    .line 158
    iget-boolean v0, v0, LD0/g;->c:Z

    const/4 v1, 0x1

    move/from16 v60, v48

    move/from16 v15, v49

    move/from16 v4, v57

    if-eq v1, v0, :cond_51

    const/4 v0, 0x4

    goto/16 :goto_35

    :cond_51
    const/4 v0, 0x5

    goto/16 :goto_35

    :cond_52
    move/from16 v60, v48

    :goto_41
    move/from16 v15, v49

    move/from16 v4, v57

    goto/16 :goto_35

    :cond_53
    move-object/from16 v58, v1

    move/from16 v59, v2

    move/from16 v57, v4

    move-object/from16 v56, v8

    move/from16 v49, v15

    const/4 v2, 0x5

    const v1, 0x64766343

    if-eq v12, v1, :cond_54

    const v1, 0x64767643

    if-ne v12, v1, :cond_55

    :cond_54
    move-object/from16 v65, v5

    move/from16 v60, v48

    const/4 v1, -0x1

    const/4 v2, 0x3

    move-object/from16 v48, v11

    goto/16 :goto_62

    :cond_55
    const v1, 0x76706343

    if-ne v12, v1, :cond_59

    if-nez v7, :cond_56

    const/4 v1, 0x1

    :goto_42
    const/4 v3, 0x0

    goto :goto_43

    :cond_56
    const/4 v1, 0x0

    goto :goto_42

    .line 159
    :goto_43
    invoke-static {v3, v1}, Lf/b;->t0(Ljava/lang/String;Z)V

    add-int/lit8 v6, v6, 0xc

    .line 160
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    const/4 v1, 0x2

    .line 161
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 162
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    move-result v1

    shr-int/lit8 v3, v1, 0x4

    const/4 v4, 0x1

    and-int/2addr v1, v4

    .line 163
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    move-result v6

    .line 164
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    move-result v7

    .line 165
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/rL;->a(I)I

    move-result v6

    if-eq v4, v1, :cond_57

    const/4 v8, 0x2

    goto :goto_44

    :cond_57
    const/4 v8, 0x1

    :goto_44
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/rL;->b(I)I

    move-result v1

    move/from16 v14, v48

    const v4, 0x76703038

    if-ne v14, v4, :cond_58

    const-string v7, "video/x-vnd.on2.vp8"

    goto :goto_45

    :cond_58
    const-string v7, "video/x-vnd.on2.vp9"

    :goto_45
    move v9, v1

    move v4, v3

    move v15, v4

    move v3, v6

    move/from16 v59, v8

    move/from16 v60, v14

    goto/16 :goto_35

    :cond_59
    move/from16 v14, v48

    const v4, 0x76703038

    const v1, 0x61763143

    const-string v8, "AtomParsers"

    if-ne v12, v1, :cond_75

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v1, v10, -0x8

    .line 166
    new-array v3, v1, [B

    const/4 v15, 0x0

    .line 167
    invoke-virtual {v13, v15, v3, v1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 168
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    move-result-object v1

    .line 169
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    new-instance v3, Lcom/google/android/gms/internal/ads/f0;

    .line 170
    iget-object v5, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 171
    array-length v6, v5

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 172
    iget v5, v13, Lcom/google/android/gms/internal/ads/jr;->b:I

    const/16 v6, 0x8

    mul-int/lit8 v5, v5, 0x8

    .line 173
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    const/4 v5, 0x1

    .line 174
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->w(I)V

    const/4 v6, 0x3

    .line 175
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v7

    const/4 v6, 0x6

    .line 176
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 177
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v6

    .line 178
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v9

    const/16 v12, 0xa

    const/16 v62, -0x1

    const/4 v4, 0x2

    if-ne v7, v4, :cond_5c

    if-eqz v6, :cond_5b

    if-eq v5, v9, :cond_5a

    const/16 v6, 0xa

    goto :goto_46

    :cond_5a
    const/16 v6, 0xc

    :goto_46
    move/from16 v68, v6

    :goto_47
    move/from16 v69, v68

    goto :goto_48

    :cond_5b
    const/4 v6, 0x0

    const/4 v7, 0x2

    :cond_5c
    if-gt v7, v4, :cond_5e

    if-eq v5, v6, :cond_5d

    const/16 v12, 0x8

    :cond_5d
    move/from16 v68, v12

    goto :goto_47

    :cond_5e
    const/16 v68, -0x1

    const/16 v69, -0x1

    :goto_48
    const/16 v4, 0xd

    .line 179
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 180
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->u()V

    const/4 v6, 0x4

    .line 181
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v7

    const/16 v67, 0x0

    if-eq v7, v5, :cond_5f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported obu_type: "

    .line 182
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v3, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v59, v3

    move/from16 v60, v62

    move/from16 v61, v62

    move-object/from16 v63, v67

    move/from16 v64, v68

    move/from16 v65, v69

    invoke-direct/range {v59 .. v65}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    :goto_49
    const/4 v7, 0x4

    const/16 v9, 0xc

    goto/16 :goto_54

    .line 184
    :cond_5f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_60

    const-string v3, "Unsupported obu_extension_flag"

    .line 185
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v3, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v59, v3

    move/from16 v60, v62

    move/from16 v61, v62

    move-object/from16 v63, v67

    move/from16 v64, v68

    move/from16 v65, v69

    invoke-direct/range {v59 .. v65}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    goto :goto_49

    .line 187
    :cond_60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    .line 188
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->u()V

    if-eqz v5, :cond_61

    const/16 v5, 0x8

    .line 189
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v6

    const/16 v5, 0x7f

    if-le v6, v5, :cond_61

    const-string v3, "Excessive obu_size"

    .line 190
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v3, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v59, v3

    move/from16 v60, v62

    move/from16 v61, v62

    move-object/from16 v63, v67

    move/from16 v64, v68

    move/from16 v65, v69

    invoke-direct/range {v59 .. v65}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    goto :goto_49

    :cond_61
    const/4 v5, 0x3

    .line 192
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v6

    .line 193
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 194
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_62

    const-string v3, "Unsupported reduced_still_picture_header"

    .line 195
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v3, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v59, v3

    move/from16 v60, v62

    move/from16 v61, v62

    move-object/from16 v63, v67

    move/from16 v64, v68

    move/from16 v65, v69

    invoke-direct/range {v59 .. v65}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    goto :goto_49

    .line 197
    :cond_62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_63

    const-string v3, "Unsupported timing_info_present_flag"

    .line 198
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v3, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v59, v3

    move/from16 v60, v62

    move/from16 v61, v62

    move-object/from16 v63, v67

    move/from16 v64, v68

    move/from16 v65, v69

    invoke-direct/range {v59 .. v65}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    goto/16 :goto_49

    .line 200
    :cond_63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_64

    const-string v3, "Unsupported initial_display_delay_present_flag"

    .line 201
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v3, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v59, v3

    move/from16 v60, v62

    move/from16 v61, v62

    move-object/from16 v63, v67

    move/from16 v64, v68

    move/from16 v65, v69

    invoke-direct/range {v59 .. v65}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    goto/16 :goto_49

    .line 203
    :cond_64
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v5

    const/4 v7, 0x0

    :goto_4a
    const/4 v8, 0x7

    if-gt v7, v5, :cond_66

    const/16 v9, 0xc

    .line 204
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 205
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v12

    if-le v12, v8, :cond_65

    .line 206
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->u()V

    :cond_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_66
    const/4 v7, 0x4

    const/16 v9, 0xc

    .line 207
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v5

    .line 208
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v12

    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 209
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    add-int/lit8 v12, v12, 0x1

    .line 210
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 211
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 212
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 213
    :cond_67
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_68

    const/4 v8, 0x2

    .line 215
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 216
    :cond_68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v8

    if-eqz v8, :cond_69

    const/4 v8, 0x1

    goto :goto_4b

    :cond_69
    const/4 v8, 0x1

    .line 217
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v12

    if-lez v12, :cond_6a

    .line 218
    :goto_4b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v12

    if-nez v12, :cond_6a

    .line 219
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    :cond_6a
    if-eqz v5, :cond_6b

    const/4 v5, 0x3

    .line 220
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    goto :goto_4c

    :cond_6b
    const/4 v5, 0x3

    .line 221
    :goto_4c
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6c

    if-eqz v5, :cond_6e

    .line 223
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->u()V

    goto :goto_4d

    :cond_6c
    const/4 v5, 0x1

    if-ne v6, v5, :cond_6e

    :cond_6d
    const/4 v6, 0x0

    goto :goto_4e

    .line 224
    :cond_6e
    :goto_4d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_6d

    const/4 v6, 0x1

    .line 225
    :goto_4e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    move-result v5

    if-eqz v5, :cond_74

    const/16 v5, 0x8

    .line 226
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v8

    .line 227
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v12

    .line 228
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v30

    if-nez v6, :cond_71

    const/4 v5, 0x1

    if-ne v8, v5, :cond_72

    if-ne v12, v4, :cond_70

    if-nez v30, :cond_6f

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_51

    :cond_6f
    :goto_4f
    const/4 v6, 0x1

    goto :goto_50

    :cond_70
    move v4, v12

    goto :goto_4f

    :cond_71
    const/4 v5, 0x1

    :cond_72
    move v6, v8

    move v4, v12

    .line 229
    :goto_50
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    move-result v3

    .line 230
    :goto_51
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/rL;->a(I)I

    move-result v62

    if-ne v3, v5, :cond_73

    const/4 v8, 0x1

    goto :goto_52

    :cond_73
    const/4 v8, 0x2

    .line 231
    :goto_52
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/rL;->b(I)I

    move-result v3

    move/from16 v66, v3

    move/from16 v65, v8

    move/from16 v64, v62

    goto :goto_53

    :cond_74
    const/16 v64, -0x1

    const/16 v65, -0x1

    const/16 v66, -0x1

    .line 232
    :goto_53
    new-instance v3, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v63, v3

    invoke-direct/range {v63 .. v69}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    .line 233
    :goto_54
    iget v4, v3, Lcom/google/android/gms/internal/ads/rL;->e:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/rL;->f:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/rL;->a:I

    iget v8, v3, Lcom/google/android/gms/internal/ads/rL;->b:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/rL;->c:I

    const-string v12, "video/av01"

    move v9, v3

    move v15, v4

    move v4, v5

    move v3, v6

    move/from16 v59, v8

    move-object v7, v12

    move/from16 v60, v14

    const/4 v2, 0x3

    move-object v5, v1

    :goto_55
    const/4 v1, -0x1

    goto/16 :goto_63

    :cond_75
    const/16 v4, 0xc

    const/4 v15, 0x0

    const v1, 0x636c6c69

    if-ne v12, v1, :cond_77

    if-nez v47, :cond_76

    const/16 v1, 0x19

    .line 234
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_56

    :cond_76
    move-object/from16 v1, v47

    :goto_56
    const/16 v6, 0x15

    .line 235
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v47, v1

    move/from16 v60, v14

    goto/16 :goto_41

    :cond_77
    const v1, 0x6d646376

    if-ne v12, v1, :cond_79

    if-nez v47, :cond_78

    const/16 v1, 0x19

    .line 238
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_57

    :cond_78
    move-object/from16 v1, v47

    .line 239
    :goto_57
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v6

    .line 240
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v8

    .line 241
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v12

    .line 242
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v2

    .line 243
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v4

    .line 244
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v15

    move-object/from16 v48, v11

    .line 245
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v11

    move/from16 v60, v14

    .line 246
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v14

    .line 247
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->E()J

    move-result-wide v61

    .line 248
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->E()J

    move-result-wide v63

    move-object/from16 v65, v5

    const/4 v5, 0x1

    .line 249
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 254
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    div-long v4, v61, v4

    long-to-int v2, v4

    int-to-short v2, v2

    .line 258
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    div-long v4, v63, v4

    long-to-int v2, v4

    int-to-short v2, v2

    .line 259
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v47, v1

    :goto_58
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    goto/16 :goto_35

    :cond_79
    move-object/from16 v65, v5

    move-object/from16 v48, v11

    move/from16 v60, v14

    const v1, 0x64323633

    if-ne v12, v1, :cond_7b

    if-nez v7, :cond_7a

    const/4 v1, 0x0

    const/4 v6, 0x1

    goto :goto_59

    :cond_7a
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 260
    :goto_59
    invoke-static {v1, v6}, Lf/b;->t0(Ljava/lang/String;Z)V

    const-string v2, "video/3gpp"

    :goto_5a
    move-object v7, v2

    goto :goto_58

    :cond_7b
    const/4 v1, 0x0

    const v2, 0x65736473

    if-ne v12, v2, :cond_7e

    if-nez v7, :cond_7c

    const/4 v2, 0x1

    goto :goto_5b

    :cond_7c
    const/4 v2, 0x0

    .line 261
    :goto_5b
    invoke-static {v1, v2}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 262
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/r1;->e(ILcom/google/android/gms/internal/ads/jr;)Lo1/c;

    move-result-object v1

    iget-object v2, v1, Lo1/c;->a:Ljava/lang/String;

    iget-object v4, v1, Lo1/c;->b:[B

    if-eqz v4, :cond_7d

    .line 263
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    move-result-object v4

    move-object/from16 v20, v1

    move-object v7, v2

    move-object v5, v4

    move-object/from16 v11, v48

    goto/16 :goto_41

    :cond_7d
    move-object/from16 v20, v1

    goto :goto_5a

    :cond_7e
    const v1, 0x70617370

    if-ne v12, v1, :cond_7f

    add-int/lit8 v6, v6, 0x8

    .line 264
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 265
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->z()I

    move-result v1

    .line 266
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->z()I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v53, v1

    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/16 v38, 0x1

    goto/16 :goto_63

    :cond_7f
    const v1, 0x73763364

    if-ne v12, v1, :cond_82

    add-int/lit8 v1, v6, 0x8

    :goto_5c
    sub-int v2, v1, v6

    if-ge v2, v10, :cond_81

    .line 267
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 268
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v2

    add-int/2addr v2, v1

    .line 269
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v4

    const v5, 0x70726f6a

    if-ne v4, v5, :cond_80

    .line 270
    iget-object v4, v13, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 271
    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v37, v1

    goto/16 :goto_58

    :cond_80
    move v1, v2

    goto :goto_5c

    :cond_81
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/16 v37, 0x0

    goto/16 :goto_63

    :cond_82
    const v1, 0x73743364

    if-ne v12, v1, :cond_88

    .line 272
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    move-result v1

    const/4 v2, 0x3

    .line 273
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    if-nez v1, :cond_83

    .line 274
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    move-result v1

    if-eqz v1, :cond_87

    const/4 v4, 0x1

    if-eq v1, v4, :cond_86

    const/4 v4, 0x2

    if-eq v1, v4, :cond_85

    if-eq v1, v2, :cond_84

    :cond_83
    const/4 v1, -0x1

    goto/16 :goto_61

    :cond_84
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v0, 0x3

    goto/16 :goto_55

    :cond_85
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v0, 0x2

    goto/16 :goto_55

    :cond_86
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v0, 0x1

    goto/16 :goto_55

    :cond_87
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v0, 0x0

    goto/16 :goto_55

    :cond_88
    const/4 v2, 0x3

    const v1, 0x636f6c72

    if-ne v12, v1, :cond_83

    const/4 v1, -0x1

    if-ne v3, v1, :cond_8e

    if-ne v9, v1, :cond_8f

    .line 275
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v3

    const v4, 0x6e636c78

    if-eq v3, v4, :cond_8a

    const v4, 0x6e636c63

    if-ne v3, v4, :cond_89

    goto :goto_5d

    .line 276
    :cond_89
    const-string v4, "Unsupported color type: "

    .line 277
    invoke-static {v3}, Lq0/e;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v3, -0x1

    const/4 v9, -0x1

    goto :goto_63

    .line 278
    :cond_8a
    :goto_5d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->A()I

    move-result v3

    .line 279
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->A()I

    move-result v4

    const/4 v5, 0x2

    .line 280
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    const/16 v5, 0x13

    if-ne v10, v5, :cond_8c

    .line 281
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_8b

    const/4 v6, 0x1

    :goto_5e
    const/16 v10, 0x13

    goto :goto_5f

    :cond_8b
    const/4 v6, 0x0

    goto :goto_5e

    :cond_8c
    const/4 v6, 0x0

    .line 282
    :goto_5f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/rL;->a(I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v5, v6, :cond_8d

    const/4 v8, 0x2

    goto :goto_60

    :cond_8d
    const/4 v8, 0x1

    :goto_60
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/rL;->b(I)I

    move-result v4

    move v9, v4

    move/from16 v59, v8

    :cond_8e
    :goto_61
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    goto :goto_63

    :cond_8f
    move-object/from16 v11, v48

    move/from16 v15, v49

    move/from16 v4, v57

    move-object/from16 v5, v65

    const/4 v3, -0x1

    goto :goto_63

    .line 283
    :goto_62
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/J;->a(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/J;

    move-result-object v4

    if-eqz v4, :cond_8e

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/J;->H:Ljava/lang/String;

    const-string v5, "video/dolby-vision"

    move-object/from16 v46, v4

    move-object v7, v5

    goto :goto_61

    :goto_63
    add-int v10, v50, v10

    move/from16 v12, v54

    move/from16 v14, v55

    move-object/from16 v8, v56

    move-object/from16 v1, v58

    move/from16 v2, v59

    move/from16 v48, v60

    goto/16 :goto_23

    :goto_64
    if-nez v7, :cond_90

    move/from16 v5, v16

    move/from16 v6, v52

    move-object/from16 v3, v56

    goto/16 :goto_66

    .line 284
    :cond_90
    new-instance v4, Lcom/google/android/gms/internal/ads/K;

    .line 285
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    move/from16 v5, v16

    .line 286
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    .line 287
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    move-object/from16 v6, v46

    .line 288
    iput-object v6, v4, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    move/from16 v6, v45

    .line 289
    iput v6, v4, Lcom/google/android/gms/internal/ads/K;->r:I

    move/from16 v6, v44

    .line 290
    iput v6, v4, Lcom/google/android/gms/internal/ads/K;->s:I

    move/from16 v6, v53

    .line 291
    iput v6, v4, Lcom/google/android/gms/internal/ads/K;->v:F

    move/from16 v6, v52

    .line 292
    iput v6, v4, Lcom/google/android/gms/internal/ads/K;->u:I

    move-object/from16 v7, v37

    .line 293
    iput-object v7, v4, Lcom/google/android/gms/internal/ads/K;->w:[B

    .line 294
    iput v0, v4, Lcom/google/android/gms/internal/ads/K;->x:I

    move-object/from16 v0, v65

    .line 295
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    move/from16 v0, v51

    .line 296
    iput v0, v4, Lcom/google/android/gms/internal/ads/K;->n:I

    move-object/from16 v11, v31

    .line 297
    iput-object v11, v4, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    if-eqz v47, :cond_91

    .line 298
    invoke-virtual/range {v47 .. v47}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move-object/from16 v48, v0

    goto :goto_65

    :cond_91
    const/16 v48, 0x0

    .line 299
    :goto_65
    new-instance v0, Lcom/google/android/gms/internal/ads/rL;

    move-object/from16 v44, v0

    move/from16 v45, v3

    move/from16 v46, v59

    move/from16 v47, v9

    move/from16 v50, v57

    invoke-direct/range {v44 .. v50}, Lcom/google/android/gms/internal/ads/rL;-><init>(III[BII)V

    .line 300
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/K;->y:Lcom/google/android/gms/internal/ads/rL;

    if-eqz v20, :cond_92

    move-object/from16 v0, v20

    .line 301
    iget-wide v7, v0, Lo1/c;->c:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/Cw;->u1(J)I

    move-result v3

    .line 302
    iput v3, v4, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 303
    iget-wide v7, v0, Lo1/c;->d:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/Cw;->u1(J)I

    move-result v0

    .line 304
    iput v0, v4, Lcom/google/android/gms/internal/ads/K;->h:I

    .line 305
    :cond_92
    new-instance v0, Lcom/google/android/gms/internal/ads/p0;

    .line 306
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    move-object/from16 v3, v56

    .line 307
    iput-object v0, v3, Lc/g;->K:Ljava/lang/Object;

    :goto_66
    add-int v14, v55, v54

    .line 308
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    add-int/lit8 v0, v34, 0x1

    move-object/from16 v11, p4

    move v1, v0

    move-object v2, v3

    move v0, v6

    move-object v7, v13

    move/from16 v3, v17

    move-object/from16 v8, v23

    move/from16 v14, v32

    move-object/from16 v12, v33

    move/from16 v4, v35

    move-object/from16 v13, v39

    move-object/from16 v15, v41

    move-wide/from16 v9, v42

    const/16 v6, 0xc

    goto/16 :goto_14

    :cond_93
    move-object v3, v2

    move/from16 v35, v4

    move-wide/from16 v42, v9

    move-object/from16 v33, v12

    move-object/from16 v39, v13

    move/from16 v32, v14

    move-object/from16 v41, v15

    if-nez p5, :cond_9a

    const v0, 0x65647473

    move-object/from16 v1, v41

    .line 309
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    move-result-object v0

    if-eqz v0, :cond_99

    const v2, 0x656c7374

    .line 310
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    move-result-object v0

    if-nez v0, :cond_94

    const/4 v0, 0x0

    goto :goto_6a

    .line 311
    :cond_94
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 312
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v2

    invoke-static {v2}, Lq0/e;->c(I)I

    move-result v2

    .line 313
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    move-result v4

    new-array v6, v4, [J

    new-array v7, v4, [J

    const/4 v8, 0x0

    :goto_67
    if-ge v8, v4, :cond_98

    const/4 v9, 0x1

    if-ne v2, v9, :cond_95

    .line 314
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->F()J

    move-result-wide v10

    goto :goto_68

    :cond_95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->E()J

    move-result-wide v10

    :goto_68
    aput-wide v10, v6, v8

    if-ne v2, v9, :cond_96

    .line 315
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->D()J

    move-result-wide v10

    goto :goto_69

    :cond_96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result v10

    int-to-long v10, v10

    :goto_69
    aput-wide v10, v7, v8

    .line 316
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->d()S

    move-result v10

    if-ne v10, v9, :cond_97

    const/4 v10, 0x2

    .line 317
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .line 318
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 319
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_98
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_6a
    if-eqz v0, :cond_99

    .line 321
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 322
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v31, v0

    move-object/from16 v30, v2

    goto :goto_6c

    :cond_99
    :goto_6b
    const/16 v30, 0x0

    const/16 v31, 0x0

    goto :goto_6c

    :cond_9a
    move-object/from16 v1, v41

    goto :goto_6b

    :goto_6c
    iget-object v0, v3, Lc/g;->K:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/p0;

    if-nez v0, :cond_9b

    move-object/from16 v0, p7

    goto/16 :goto_2

    :cond_9b
    new-instance v0, Lcom/google/android/gms/internal/ads/D1;

    move-object/from16 v2, v39

    .line 323
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 324
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    iget-object v2, v3, Lc/g;->K:Ljava/lang/Object;

    move-object/from16 v26, v2

    check-cast v26, Lcom/google/android/gms/internal/ads/p0;

    iget v2, v3, Lc/g;->I:I

    iget-object v4, v3, Lc/g;->J:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/gms/internal/ads/E1;

    iget v3, v3, Lc/g;->H:I

    move-object/from16 v17, v0

    move/from16 v18, v5

    move/from16 v19, v35

    move-wide/from16 v22, v42

    move-wide/from16 v24, v27

    move/from16 v27, v2

    move-object/from16 v28, v4

    move/from16 v29, v3

    invoke-direct/range {v17 .. v31}, Lcom/google/android/gms/internal/ads/D1;-><init>(IIJJJLcom/google/android/gms/internal/ads/p0;I[Lcom/google/android/gms/internal/ads/E1;I[J[J)V

    move-object v3, v0

    move-object/from16 v0, p7

    .line 325
    :goto_6d
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/u1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/D1;

    if-eqz v2, :cond_9c

    const v3, 0x6d646961

    .line 326
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x6d696e66

    .line 328
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7374626c

    .line 330
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p1

    .line 332
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/r1;->f(Lcom/google/android/gms/internal/ads/D1;Lcom/google/android/gms/internal/ads/o1;Lcom/google/android/gms/internal/ads/T;)Lcom/google/android/gms/internal/ads/G1;

    move-result-object v1

    move-object/from16 v2, v33

    .line 333
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_9c
    move-object/from16 v3, p1

    move-object/from16 v2, v33

    :goto_6e
    add-int/lit8 v14, v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move-object v12, v2

    goto/16 :goto_0

    .line 334
    :cond_9d
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v1, 0x0

    .line 335
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    move-result-object v0

    throw v0

    :cond_9e
    move-object v2, v12

    return-object v2
.end method

.method public static c(Lcom/google/android/gms/internal/ads/jr;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

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

.method public static d(Lcom/google/android/gms/internal/ads/jr;II)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 4
    .line 5
    :goto_0
    sub-int v2, v1, p1

    .line 6
    .line 7
    move/from16 v4, p2

    .line 8
    .line 9
    if-ge v2, v4, :cond_11

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

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
    invoke-static {v8, v7}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const v8, 0x73696e66

    .line 35
    .line 36
    .line 37
    if-ne v7, v8, :cond_10

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
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

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
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

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
    goto/16 :goto_d

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
    invoke-static {v7, v3}, Lf/b;->t0(Ljava/lang/String;Z)V

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
    invoke-static {v7, v3}, Lf/b;->t0(Ljava/lang/String;Z)V

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
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-static {v3}, Lq0/e;->c(I)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 187
    .line 188
    .line 189
    if-nez v3, :cond_9

    .line 190
    .line 191
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-ne v7, v5, :cond_a

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

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
    invoke-virtual {v0, v6, v13, v7}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 225
    .line 226
    .line 227
    if-eqz v10, :cond_b

    .line 228
    .line 229
    if-nez v12, :cond_b

    .line 230
    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    new-array v8, v7, [B

    .line 236
    .line 237
    invoke-virtual {v0, v6, v8, v7}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

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
    new-instance v7, Lcom/google/android/gms/internal/ads/E1;

    .line 246
    .line 247
    move-object v9, v7

    .line 248
    move-object v8, v15

    .line 249
    move v15, v3

    .line 250
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/E1;-><init>(ZLjava/lang/String;I[BII[B)V

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
    goto :goto_c

    .line 263
    :cond_e
    const/4 v5, 0x0

    .line 264
    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 265
    .line 266
    invoke-static {v6, v5}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 267
    .line 268
    .line 269
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 270
    .line 271
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    :goto_d
    if-nez v3, :cond_f

    .line 276
    .line 277
    goto :goto_e

    .line 278
    :cond_f
    return-object v3

    .line 279
    :cond_10
    :goto_e
    add-int/2addr v1, v2

    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_11
    const/4 v1, 0x0

    .line 283
    return-object v1
.end method

.method public static e(ILcom/google/android/gms/internal/ads/jr;)Lo1/c;
    .locals 10

    .line 1
    add-int/lit8 p0, p0, 0xc

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->c(Lcom/google/android/gms/internal/ads/jr;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->c(Lcom/google/android/gms/internal/ads/jr;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/va;->d(I)Ljava/lang/String;

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
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->c(Lcom/google/android/gms/internal/ads/jr;)I

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
    invoke-virtual {p1, v6, v5, p0}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 108
    .line 109
    .line 110
    const-wide/16 p0, -0x1

    .line 111
    .line 112
    const-wide/16 v6, 0x0

    .line 113
    .line 114
    cmp-long v8, v3, v6

    .line 115
    .line 116
    if-gtz v8, :cond_4

    .line 117
    .line 118
    move-wide v8, p0

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    move-wide v8, v3

    .line 121
    :goto_0
    cmp-long v3, v0, v6

    .line 122
    .line 123
    if-lez v3, :cond_5

    .line 124
    .line 125
    move-wide v6, v0

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move-wide v6, p0

    .line 128
    :goto_1
    new-instance p0, Lo1/c;

    .line 129
    .line 130
    move-object v1, p0

    .line 131
    move-object v3, v5

    .line 132
    move-wide v4, v8

    .line 133
    invoke-direct/range {v1 .. v7}, Lo1/c;-><init>(Ljava/lang/String;[BJJ)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_6
    :goto_2
    new-instance p0, Lo1/c;

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    const-wide/16 v6, -0x1

    .line 141
    .line 142
    move-object v1, p0

    .line 143
    move-wide v4, v6

    .line 144
    invoke-direct/range {v1 .. v7}, Lo1/c;-><init>(Ljava/lang/String;[BJJ)V

    .line 145
    .line 146
    .line 147
    return-object p0
.end method

.method public static f(Lcom/google/android/gms/internal/ads/D1;Lcom/google/android/gms/internal/ads/o1;Lcom/google/android/gms/internal/ads/T;)Lcom/google/android/gms/internal/ads/G1;
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const v3, 0x7374737a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 15
    .line 16
    const/16 v5, 0xc

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    new-instance v7, LV/b;

    .line 21
    .line 22
    invoke-direct {v7, v3, v4}, LV/b;-><init>(Lcom/google/android/gms/internal/ads/p1;Lcom/google/android/gms/internal/ads/p0;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v3, 0x73747a32

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_42

    .line 34
    .line 35
    new-instance v7, Lp0/z;

    .line 36
    .line 37
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 41
    .line 42
    iput-object v3, v7, Lp0/z;->e:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v7, Lp0/z;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Lcom/google/android/gms/internal/ads/jr;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    and-int/lit16 v3, v3, 0xff

    .line 56
    .line 57
    iput v3, v7, Lp0/z;->b:I

    .line 58
    .line 59
    iget-object v3, v7, Lp0/z;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Lcom/google/android/gms/internal/ads/jr;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iput v3, v7, Lp0/z;->a:I

    .line 68
    .line 69
    :goto_0
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/q1;->zzb()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/4 v8, 0x0

    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    new-instance v9, Lcom/google/android/gms/internal/ads/G1;

    .line 77
    .line 78
    new-array v2, v8, [J

    .line 79
    .line 80
    new-array v3, v8, [I

    .line 81
    .line 82
    new-array v5, v8, [J

    .line 83
    .line 84
    new-array v6, v8, [I

    .line 85
    .line 86
    const-wide/16 v7, 0x0

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    move-object v0, v9

    .line 90
    move-object/from16 v1, p0

    .line 91
    .line 92
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/G1;-><init>(Lcom/google/android/gms/internal/ads/D1;[J[II[J[IJ)V

    .line 93
    .line 94
    .line 95
    return-object v9

    .line 96
    :cond_1
    const v9, 0x7374636f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    if-nez v9, :cond_2

    .line 104
    .line 105
    const v9, 0x636f3634

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const/4 v11, 0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const/4 v11, 0x0

    .line 118
    :goto_1
    const v12, 0x73747363

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    const v13, 0x73747473

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    const v14, 0x73747373

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    if-eqz v14, :cond_3

    .line 146
    .line 147
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    const/4 v14, 0x0

    .line 151
    :goto_2
    const v15, 0x63747473

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    const/4 v0, 0x0

    .line 164
    :goto_3
    new-instance v15, Lo1/b;

    .line 165
    .line 166
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 167
    .line 168
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 169
    .line 170
    invoke-direct {v15, v12, v9, v11}, Lo1/b;-><init>(Lcom/google/android/gms/internal/ads/jr;Lcom/google/android/gms/internal/ads/jr;Z)V

    .line 171
    .line 172
    .line 173
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 174
    .line 175
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    const/4 v12, -0x1

    .line 183
    add-int/2addr v11, v12

    .line 184
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 198
    .line 199
    .line 200
    move-result v17

    .line 201
    goto :goto_4

    .line 202
    :cond_5
    const/16 v17, 0x0

    .line 203
    .line 204
    :goto_4
    if-eqz v14, :cond_7

    .line 205
    .line 206
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-lez v5, :cond_6

    .line 214
    .line 215
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 216
    .line 217
    .line 218
    move-result v16

    .line 219
    add-int/lit8 v16, v16, -0x1

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_6
    const/4 v14, 0x0

    .line 223
    :goto_5
    const/16 v16, -0x1

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_7
    const/4 v5, 0x0

    .line 227
    goto :goto_5

    .line 228
    :goto_6
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/q1;->zza()I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 233
    .line 234
    if-eq v8, v12, :cond_e

    .line 235
    .line 236
    const-string v1, "audio/raw"

    .line 237
    .line 238
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_8

    .line 243
    .line 244
    const-string v1, "audio/g711-mlaw"

    .line 245
    .line 246
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_8

    .line 251
    .line 252
    const-string v1, "audio/g711-alaw"

    .line 253
    .line 254
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_e

    .line 259
    .line 260
    :cond_8
    if-nez v11, :cond_e

    .line 261
    .line 262
    if-nez v17, :cond_d

    .line 263
    .line 264
    if-nez v5, :cond_d

    .line 265
    .line 266
    iget v0, v15, Lo1/b;->a:I

    .line 267
    .line 268
    new-array v1, v0, [J

    .line 269
    .line 270
    new-array v2, v0, [I

    .line 271
    .line 272
    :goto_7
    invoke-virtual {v15}, Lo1/b;->b()Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-eqz v5, :cond_9

    .line 277
    .line 278
    iget v5, v15, Lo1/b;->b:I

    .line 279
    .line 280
    iget-wide v9, v15, Lo1/b;->d:J

    .line 281
    .line 282
    aput-wide v9, v1, v5

    .line 283
    .line 284
    iget v7, v15, Lo1/b;->c:I

    .line 285
    .line 286
    aput v7, v2, v5

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_9
    int-to-long v5, v6

    .line 290
    const/16 v7, 0x2000

    .line 291
    .line 292
    div-int/2addr v7, v8

    .line 293
    const/4 v9, 0x0

    .line 294
    const/4 v10, 0x0

    .line 295
    :goto_8
    if-ge v9, v0, :cond_a

    .line 296
    .line 297
    aget v11, v2, v9

    .line 298
    .line 299
    sget v13, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 300
    .line 301
    add-int/2addr v11, v7

    .line 302
    add-int/2addr v11, v12

    .line 303
    div-int/2addr v11, v7

    .line 304
    add-int/2addr v10, v11

    .line 305
    add-int/lit8 v9, v9, 0x1

    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_a
    new-array v9, v10, [J

    .line 309
    .line 310
    new-array v11, v10, [I

    .line 311
    .line 312
    new-array v12, v10, [J

    .line 313
    .line 314
    new-array v10, v10, [I

    .line 315
    .line 316
    const/4 v13, 0x0

    .line 317
    const/4 v14, 0x0

    .line 318
    const/4 v15, 0x0

    .line 319
    const/16 v16, 0x0

    .line 320
    .line 321
    :goto_9
    if-ge v13, v0, :cond_c

    .line 322
    .line 323
    aget v17, v2, v13

    .line 324
    .line 325
    aget-wide v22, v1, v13

    .line 326
    .line 327
    move/from16 v37, v17

    .line 328
    .line 329
    move/from16 v17, v0

    .line 330
    .line 331
    move/from16 v0, v37

    .line 332
    .line 333
    :goto_a
    if-lez v0, :cond_b

    .line 334
    .line 335
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 336
    .line 337
    .line 338
    move-result v24

    .line 339
    aput-wide v22, v9, v16

    .line 340
    .line 341
    move-object/from16 p1, v1

    .line 342
    .line 343
    mul-int v1, v8, v24

    .line 344
    .line 345
    aput v1, v11, v16

    .line 346
    .line 347
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 348
    .line 349
    .line 350
    move-result v15

    .line 351
    move-object/from16 v25, v2

    .line 352
    .line 353
    int-to-long v1, v14

    .line 354
    mul-long v1, v1, v5

    .line 355
    .line 356
    aput-wide v1, v12, v16

    .line 357
    .line 358
    const/4 v1, 0x1

    .line 359
    aput v1, v10, v16

    .line 360
    .line 361
    aget v1, v11, v16

    .line 362
    .line 363
    int-to-long v1, v1

    .line 364
    add-long v22, v22, v1

    .line 365
    .line 366
    add-int v14, v14, v24

    .line 367
    .line 368
    sub-int v0, v0, v24

    .line 369
    .line 370
    add-int/lit8 v16, v16, 0x1

    .line 371
    .line 372
    move-object/from16 v1, p1

    .line 373
    .line 374
    move-object/from16 v2, v25

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_b
    move-object/from16 p1, v1

    .line 378
    .line 379
    move-object/from16 v25, v2

    .line 380
    .line 381
    add-int/lit8 v13, v13, 0x1

    .line 382
    .line 383
    move/from16 v0, v17

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_c
    int-to-long v0, v14

    .line 387
    mul-long v5, v5, v0

    .line 388
    .line 389
    move-object/from16 v1, p0

    .line 390
    .line 391
    move v0, v3

    .line 392
    move-object/from16 v22, v4

    .line 393
    .line 394
    move-object v2, v9

    .line 395
    move-object v3, v11

    .line 396
    move-object v14, v12

    .line 397
    move v4, v15

    .line 398
    move-wide v12, v5

    .line 399
    move-object v15, v10

    .line 400
    goto/16 :goto_1e

    .line 401
    .line 402
    :cond_d
    const/4 v11, 0x0

    .line 403
    :cond_e
    new-array v1, v3, [J

    .line 404
    .line 405
    new-array v2, v3, [I

    .line 406
    .line 407
    new-array v8, v3, [J

    .line 408
    .line 409
    new-array v10, v3, [I

    .line 410
    .line 411
    move-object/from16 v22, v4

    .line 412
    .line 413
    move-object/from16 v30, v9

    .line 414
    .line 415
    move/from16 v23, v11

    .line 416
    .line 417
    move/from16 v11, v16

    .line 418
    .line 419
    const/4 v4, 0x0

    .line 420
    const/4 v12, 0x0

    .line 421
    const/16 v16, 0x0

    .line 422
    .line 423
    const/16 v24, 0x0

    .line 424
    .line 425
    const/16 v25, 0x0

    .line 426
    .line 427
    const-wide/16 v26, 0x0

    .line 428
    .line 429
    const-wide/16 v28, 0x0

    .line 430
    .line 431
    :goto_b
    const-string v9, "AtomParsers"

    .line 432
    .line 433
    if-ge v12, v3, :cond_1b

    .line 434
    .line 435
    move-wide/from16 v31, v26

    .line 436
    .line 437
    const/16 v26, 0x1

    .line 438
    .line 439
    :goto_c
    if-nez v16, :cond_10

    .line 440
    .line 441
    invoke-virtual {v15}, Lo1/b;->b()Z

    .line 442
    .line 443
    .line 444
    move-result v26

    .line 445
    if-eqz v26, :cond_f

    .line 446
    .line 447
    move/from16 v27, v5

    .line 448
    .line 449
    move/from16 v33, v6

    .line 450
    .line 451
    iget-wide v5, v15, Lo1/b;->d:J

    .line 452
    .line 453
    move/from16 v34, v3

    .line 454
    .line 455
    iget v3, v15, Lo1/b;->c:I

    .line 456
    .line 457
    move/from16 v16, v3

    .line 458
    .line 459
    move-wide/from16 v31, v5

    .line 460
    .line 461
    move/from16 v5, v27

    .line 462
    .line 463
    move/from16 v6, v33

    .line 464
    .line 465
    move/from16 v3, v34

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_f
    move/from16 v34, v3

    .line 469
    .line 470
    move/from16 v27, v5

    .line 471
    .line 472
    move/from16 v33, v6

    .line 473
    .line 474
    const/4 v3, 0x0

    .line 475
    goto :goto_d

    .line 476
    :cond_10
    move/from16 v34, v3

    .line 477
    .line 478
    move/from16 v27, v5

    .line 479
    .line 480
    move/from16 v33, v6

    .line 481
    .line 482
    move/from16 v3, v16

    .line 483
    .line 484
    :goto_d
    if-nez v26, :cond_11

    .line 485
    .line 486
    const-string v3, "Unexpected end of chunk data"

    .line 487
    .line 488
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([II)[I

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([II)[I

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    move v3, v12

    .line 508
    :goto_e
    move/from16 v5, v24

    .line 509
    .line 510
    goto/16 :goto_17

    .line 511
    .line 512
    :cond_11
    if-nez v0, :cond_12

    .line 513
    .line 514
    :goto_f
    move/from16 v5, v24

    .line 515
    .line 516
    goto :goto_12

    .line 517
    :cond_12
    :goto_10
    if-nez v25, :cond_14

    .line 518
    .line 519
    if-lez v17, :cond_13

    .line 520
    .line 521
    add-int/lit8 v17, v17, -0x1

    .line 522
    .line 523
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 524
    .line 525
    .line 526
    move-result v25

    .line 527
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 528
    .line 529
    .line 530
    move-result v24

    .line 531
    goto :goto_10

    .line 532
    :cond_13
    const/4 v5, -0x1

    .line 533
    const/16 v25, 0x0

    .line 534
    .line 535
    goto :goto_11

    .line 536
    :cond_14
    const/4 v5, -0x1

    .line 537
    :goto_11
    add-int/lit8 v25, v25, -0x1

    .line 538
    .line 539
    goto :goto_f

    .line 540
    :goto_12
    aput-wide v31, v1, v12

    .line 541
    .line 542
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/q1;->zzc()I

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    aput v6, v2, v12

    .line 547
    .line 548
    if-le v6, v4, :cond_15

    .line 549
    .line 550
    move v4, v6

    .line 551
    :cond_15
    move-object/from16 v26, v7

    .line 552
    .line 553
    int-to-long v6, v5

    .line 554
    add-long v6, v28, v6

    .line 555
    .line 556
    aput-wide v6, v8, v12

    .line 557
    .line 558
    if-nez v14, :cond_16

    .line 559
    .line 560
    const/4 v6, 0x1

    .line 561
    goto :goto_13

    .line 562
    :cond_16
    const/4 v6, 0x0

    .line 563
    :goto_13
    aput v6, v10, v12

    .line 564
    .line 565
    if-ne v12, v11, :cond_18

    .line 566
    .line 567
    const/4 v6, 0x1

    .line 568
    aput v6, v10, v12

    .line 569
    .line 570
    add-int/lit8 v6, v27, -0x1

    .line 571
    .line 572
    if-lez v6, :cond_17

    .line 573
    .line 574
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    const/4 v9, -0x1

    .line 582
    add-int/2addr v7, v9

    .line 583
    move/from16 v16, v4

    .line 584
    .line 585
    move v9, v5

    .line 586
    move v11, v7

    .line 587
    :goto_14
    move/from16 v7, v33

    .line 588
    .line 589
    goto :goto_15

    .line 590
    :cond_17
    move/from16 v16, v4

    .line 591
    .line 592
    move v9, v5

    .line 593
    goto :goto_14

    .line 594
    :cond_18
    move/from16 v16, v4

    .line 595
    .line 596
    move v9, v5

    .line 597
    move/from16 v6, v27

    .line 598
    .line 599
    goto :goto_14

    .line 600
    :goto_15
    int-to-long v4, v7

    .line 601
    add-long v28, v28, v4

    .line 602
    .line 603
    add-int/lit8 v13, v13, -0x1

    .line 604
    .line 605
    if-nez v13, :cond_1a

    .line 606
    .line 607
    if-lez v23, :cond_19

    .line 608
    .line 609
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    add-int/lit8 v23, v23, -0x1

    .line 618
    .line 619
    move v13, v4

    .line 620
    move v7, v5

    .line 621
    goto :goto_16

    .line 622
    :cond_19
    const/4 v13, 0x0

    .line 623
    :cond_1a
    :goto_16
    aget v4, v2, v12

    .line 624
    .line 625
    int-to-long v4, v4

    .line 626
    add-long v4, v31, v4

    .line 627
    .line 628
    const/16 v31, -0x1

    .line 629
    .line 630
    add-int/lit8 v3, v3, -0x1

    .line 631
    .line 632
    add-int/lit8 v12, v12, 0x1

    .line 633
    .line 634
    move/from16 v24, v9

    .line 635
    .line 636
    move/from16 v37, v16

    .line 637
    .line 638
    move/from16 v16, v3

    .line 639
    .line 640
    move/from16 v3, v34

    .line 641
    .line 642
    move-wide/from16 v38, v4

    .line 643
    .line 644
    move v5, v6

    .line 645
    move v6, v7

    .line 646
    move/from16 v4, v37

    .line 647
    .line 648
    move-object/from16 v7, v26

    .line 649
    .line 650
    move-wide/from16 v26, v38

    .line 651
    .line 652
    goto/16 :goto_b

    .line 653
    .line 654
    :cond_1b
    move/from16 v34, v3

    .line 655
    .line 656
    move/from16 v27, v5

    .line 657
    .line 658
    goto/16 :goto_e

    .line 659
    .line 660
    :goto_17
    int-to-long v5, v5

    .line 661
    add-long v5, v28, v5

    .line 662
    .line 663
    if-eqz v0, :cond_1d

    .line 664
    .line 665
    :goto_18
    if-lez v17, :cond_1d

    .line 666
    .line 667
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 668
    .line 669
    .line 670
    move-result v7

    .line 671
    if-eqz v7, :cond_1c

    .line 672
    .line 673
    const/4 v0, 0x0

    .line 674
    goto :goto_19

    .line 675
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 676
    .line 677
    .line 678
    add-int/lit8 v17, v17, -0x1

    .line 679
    .line 680
    goto :goto_18

    .line 681
    :cond_1d
    const/4 v0, 0x1

    .line 682
    :goto_19
    if-nez v27, :cond_23

    .line 683
    .line 684
    if-nez v13, :cond_22

    .line 685
    .line 686
    if-nez v16, :cond_21

    .line 687
    .line 688
    if-nez v23, :cond_20

    .line 689
    .line 690
    if-nez v25, :cond_1f

    .line 691
    .line 692
    if-nez v0, :cond_1e

    .line 693
    .line 694
    const/4 v0, 0x0

    .line 695
    const/4 v7, 0x0

    .line 696
    const/4 v11, 0x0

    .line 697
    const/4 v12, 0x0

    .line 698
    const/4 v13, 0x0

    .line 699
    const/4 v14, 0x0

    .line 700
    goto :goto_1b

    .line 701
    :cond_1e
    move-object/from16 p1, v1

    .line 702
    .line 703
    move-object/from16 v16, v2

    .line 704
    .line 705
    move/from16 v17, v3

    .line 706
    .line 707
    move/from16 v23, v4

    .line 708
    .line 709
    move-object/from16 v1, p0

    .line 710
    .line 711
    goto/16 :goto_1d

    .line 712
    .line 713
    :cond_1f
    move v14, v0

    .line 714
    move/from16 v12, v25

    .line 715
    .line 716
    const/4 v0, 0x0

    .line 717
    const/4 v7, 0x0

    .line 718
    const/4 v11, 0x0

    .line 719
    :goto_1a
    const/4 v13, 0x0

    .line 720
    goto :goto_1b

    .line 721
    :cond_20
    move v14, v0

    .line 722
    move/from16 v11, v23

    .line 723
    .line 724
    move/from16 v12, v25

    .line 725
    .line 726
    const/4 v0, 0x0

    .line 727
    const/4 v7, 0x0

    .line 728
    goto :goto_1a

    .line 729
    :cond_21
    move v14, v0

    .line 730
    move/from16 v7, v16

    .line 731
    .line 732
    move/from16 v11, v23

    .line 733
    .line 734
    move/from16 v12, v25

    .line 735
    .line 736
    const/4 v0, 0x0

    .line 737
    goto :goto_1a

    .line 738
    :cond_22
    move v14, v0

    .line 739
    move/from16 v7, v16

    .line 740
    .line 741
    move/from16 v11, v23

    .line 742
    .line 743
    move/from16 v12, v25

    .line 744
    .line 745
    const/4 v0, 0x0

    .line 746
    goto :goto_1b

    .line 747
    :cond_23
    move v14, v0

    .line 748
    move/from16 v7, v16

    .line 749
    .line 750
    move/from16 v11, v23

    .line 751
    .line 752
    move/from16 v12, v25

    .line 753
    .line 754
    move/from16 v0, v27

    .line 755
    .line 756
    :goto_1b
    new-instance v15, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    move-object/from16 p1, v1

    .line 759
    .line 760
    const-string v1, "Inconsistent stbl box for track "

    .line 761
    .line 762
    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    move-object/from16 v1, p0

    .line 766
    .line 767
    move-object/from16 v16, v2

    .line 768
    .line 769
    iget v2, v1, Lcom/google/android/gms/internal/ads/D1;->a:I

    .line 770
    .line 771
    move/from16 v17, v3

    .line 772
    .line 773
    const-string v3, ": remainingSynchronizationSamples "

    .line 774
    .line 775
    move/from16 v23, v4

    .line 776
    .line 777
    const-string v4, ", remainingSamplesAtTimestampDelta "

    .line 778
    .line 779
    invoke-static {v15, v2, v3, v0, v4}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 780
    .line 781
    .line 782
    const-string v0, ", remainingSamplesInChunk "

    .line 783
    .line 784
    const-string v2, ", remainingTimestampDeltaChanges "

    .line 785
    .line 786
    invoke-static {v15, v13, v0, v7, v2}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v0, ", remainingSamplesAtTimestampOffset "

    .line 793
    .line 794
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    const/4 v0, 0x1

    .line 801
    if-eq v0, v14, :cond_24

    .line 802
    .line 803
    const-string v0, ", ctts invalid"

    .line 804
    .line 805
    goto :goto_1c

    .line 806
    :cond_24
    const-string v0, ""

    .line 807
    .line 808
    :goto_1c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    :goto_1d
    move-object/from16 v2, p1

    .line 819
    .line 820
    move-wide v12, v5

    .line 821
    move-object v14, v8

    .line 822
    move-object v15, v10

    .line 823
    move-object/from16 v3, v16

    .line 824
    .line 825
    move/from16 v0, v17

    .line 826
    .line 827
    move/from16 v4, v23

    .line 828
    .line 829
    :goto_1e
    sget-object v16, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 830
    .line 831
    const-wide/32 v7, 0xf4240

    .line 832
    .line 833
    .line 834
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 835
    .line 836
    move-wide v5, v12

    .line 837
    move-object/from16 v11, v16

    .line 838
    .line 839
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 840
    .line 841
    .line 842
    move-result-wide v7

    .line 843
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 844
    .line 845
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/D1;->h:[J

    .line 846
    .line 847
    if-nez v11, :cond_25

    .line 848
    .line 849
    invoke-static {v9, v10, v14}, Lcom/google/android/gms/internal/ads/Et;->b(J[J)V

    .line 850
    .line 851
    .line 852
    new-instance v9, Lcom/google/android/gms/internal/ads/G1;

    .line 853
    .line 854
    move-object v0, v9

    .line 855
    move-object/from16 v1, p0

    .line 856
    .line 857
    move-object v5, v14

    .line 858
    move-object v6, v15

    .line 859
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/G1;-><init>(Lcom/google/android/gms/internal/ads/D1;[J[II[J[IJ)V

    .line 860
    .line 861
    .line 862
    return-object v9

    .line 863
    :cond_25
    array-length v5, v11

    .line 864
    iget v7, v1, Lcom/google/android/gms/internal/ads/D1;->b:I

    .line 865
    .line 866
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/D1;->i:[J

    .line 867
    .line 868
    const/4 v6, 0x1

    .line 869
    if-ne v5, v6, :cond_29

    .line 870
    .line 871
    if-ne v7, v6, :cond_29

    .line 872
    .line 873
    array-length v5, v14

    .line 874
    const/4 v6, 0x2

    .line 875
    if-lt v5, v6, :cond_29

    .line 876
    .line 877
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    const/4 v6, 0x0

    .line 881
    aget-wide v23, v8, v6

    .line 882
    .line 883
    aget-wide v25, v11, v6

    .line 884
    .line 885
    move/from16 v17, v7

    .line 886
    .line 887
    move-object/from16 v27, v8

    .line 888
    .line 889
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 890
    .line 891
    move-wide/from16 v28, v9

    .line 892
    .line 893
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/D1;->d:J

    .line 894
    .line 895
    move/from16 v30, v5

    .line 896
    .line 897
    move-wide/from16 v5, v25

    .line 898
    .line 899
    move/from16 v25, v0

    .line 900
    .line 901
    move/from16 v0, v17

    .line 902
    .line 903
    move-object/from16 v17, v27

    .line 904
    .line 905
    move-object/from16 p1, v3

    .line 906
    .line 907
    move/from16 v26, v4

    .line 908
    .line 909
    move-wide/from16 v3, v28

    .line 910
    .line 911
    move/from16 v27, v0

    .line 912
    .line 913
    move-object v0, v11

    .line 914
    move-object/from16 v11, v16

    .line 915
    .line 916
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 917
    .line 918
    .line 919
    move-result-wide v5

    .line 920
    add-long v28, v23, v5

    .line 921
    .line 922
    add-int/lit8 v5, v30, -0x1

    .line 923
    .line 924
    const/4 v6, 0x4

    .line 925
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 926
    .line 927
    .line 928
    move-result v6

    .line 929
    const/4 v7, 0x0

    .line 930
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 931
    .line 932
    .line 933
    move-result v6

    .line 934
    add-int/lit8 v8, v30, -0x4

    .line 935
    .line 936
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    .line 937
    .line 938
    .line 939
    move-result v5

    .line 940
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 941
    .line 942
    .line 943
    move-result v5

    .line 944
    aget-wide v8, v14, v7

    .line 945
    .line 946
    cmp-long v7, v8, v23

    .line 947
    .line 948
    if-gtz v7, :cond_28

    .line 949
    .line 950
    aget-wide v6, v14, v6

    .line 951
    .line 952
    cmp-long v10, v23, v6

    .line 953
    .line 954
    if-gez v10, :cond_28

    .line 955
    .line 956
    aget-wide v5, v14, v5

    .line 957
    .line 958
    cmp-long v7, v5, v28

    .line 959
    .line 960
    if-gez v7, :cond_28

    .line 961
    .line 962
    cmp-long v5, v28, v12

    .line 963
    .line 964
    if-gtz v5, :cond_28

    .line 965
    .line 966
    sub-long v5, v23, v8

    .line 967
    .line 968
    move-object/from16 v11, v22

    .line 969
    .line 970
    iget v7, v11, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 971
    .line 972
    int-to-long v7, v7

    .line 973
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 974
    .line 975
    move-object/from16 v22, v15

    .line 976
    .line 977
    move-object v15, v11

    .line 978
    move-object/from16 v11, v16

    .line 979
    .line 980
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 981
    .line 982
    .line 983
    move-result-wide v23

    .line 984
    iget v5, v15, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 985
    .line 986
    int-to-long v7, v5

    .line 987
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 988
    .line 989
    sub-long v5, v12, v28

    .line 990
    .line 991
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 992
    .line 993
    .line 994
    move-result-wide v5

    .line 995
    const-wide/16 v7, 0x0

    .line 996
    .line 997
    cmp-long v9, v23, v7

    .line 998
    .line 999
    if-nez v9, :cond_26

    .line 1000
    .line 1001
    cmp-long v9, v5, v7

    .line 1002
    .line 1003
    if-eqz v9, :cond_2a

    .line 1004
    .line 1005
    const-wide/16 v7, 0x0

    .line 1006
    .line 1007
    goto :goto_1f

    .line 1008
    :cond_26
    move-wide/from16 v7, v23

    .line 1009
    .line 1010
    :goto_1f
    const-wide/32 v9, 0x7fffffff

    .line 1011
    .line 1012
    .line 1013
    cmp-long v11, v7, v9

    .line 1014
    .line 1015
    if-gtz v11, :cond_2a

    .line 1016
    .line 1017
    cmp-long v11, v5, v9

    .line 1018
    .line 1019
    if-lez v11, :cond_27

    .line 1020
    .line 1021
    goto :goto_21

    .line 1022
    :cond_27
    long-to-int v8, v7

    .line 1023
    move-object/from16 v7, p2

    .line 1024
    .line 1025
    iput v8, v7, Lcom/google/android/gms/internal/ads/T;->a:I

    .line 1026
    .line 1027
    long-to-int v6, v5

    .line 1028
    iput v6, v7, Lcom/google/android/gms/internal/ads/T;->b:I

    .line 1029
    .line 1030
    invoke-static {v3, v4, v14}, Lcom/google/android/gms/internal/ads/Et;->b(J[J)V

    .line 1031
    .line 1032
    .line 1033
    const/4 v3, 0x0

    .line 1034
    aget-wide v5, v0, v3

    .line 1035
    .line 1036
    const-wide/32 v7, 0xf4240

    .line 1037
    .line 1038
    .line 1039
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/D1;->d:J

    .line 1040
    .line 1041
    move-object/from16 v11, v16

    .line 1042
    .line 1043
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1044
    .line 1045
    .line 1046
    move-result-wide v7

    .line 1047
    new-instance v9, Lcom/google/android/gms/internal/ads/G1;

    .line 1048
    .line 1049
    move-object v0, v9

    .line 1050
    move-object/from16 v1, p0

    .line 1051
    .line 1052
    move-object/from16 v3, p1

    .line 1053
    .line 1054
    move/from16 v4, v26

    .line 1055
    .line 1056
    move-object v5, v14

    .line 1057
    move-object/from16 v6, v22

    .line 1058
    .line 1059
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/G1;-><init>(Lcom/google/android/gms/internal/ads/D1;[J[II[J[IJ)V

    .line 1060
    .line 1061
    .line 1062
    return-object v9

    .line 1063
    :cond_28
    :goto_20
    move-object/from16 v22, v15

    .line 1064
    .line 1065
    goto :goto_21

    .line 1066
    :cond_29
    move/from16 v25, v0

    .line 1067
    .line 1068
    move-object/from16 p1, v3

    .line 1069
    .line 1070
    move/from16 v26, v4

    .line 1071
    .line 1072
    move/from16 v27, v7

    .line 1073
    .line 1074
    move-object/from16 v17, v8

    .line 1075
    .line 1076
    move-object v0, v11

    .line 1077
    goto :goto_20

    .line 1078
    :cond_2a
    :goto_21
    array-length v3, v0

    .line 1079
    const/4 v4, 0x1

    .line 1080
    if-ne v3, v4, :cond_2d

    .line 1081
    .line 1082
    const/4 v6, 0x0

    .line 1083
    aget-wide v3, v0, v6

    .line 1084
    .line 1085
    const-wide/16 v7, 0x0

    .line 1086
    .line 1087
    cmp-long v5, v3, v7

    .line 1088
    .line 1089
    if-nez v5, :cond_2c

    .line 1090
    .line 1091
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    aget-wide v3, v17, v6

    .line 1095
    .line 1096
    const/4 v8, 0x0

    .line 1097
    :goto_22
    array-length v0, v14

    .line 1098
    if-ge v8, v0, :cond_2b

    .line 1099
    .line 1100
    aget-wide v5, v14, v8

    .line 1101
    .line 1102
    sub-long v15, v5, v3

    .line 1103
    .line 1104
    sget-object v21, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1105
    .line 1106
    const-wide/32 v17, 0xf4240

    .line 1107
    .line 1108
    .line 1109
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 1110
    .line 1111
    move-wide/from16 v19, v5

    .line 1112
    .line 1113
    invoke-static/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1114
    .line 1115
    .line 1116
    move-result-wide v5

    .line 1117
    aput-wide v5, v14, v8

    .line 1118
    .line 1119
    add-int/lit8 v8, v8, 0x1

    .line 1120
    .line 1121
    goto :goto_22

    .line 1122
    :cond_2b
    sub-long v15, v12, v3

    .line 1123
    .line 1124
    sget-object v21, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1125
    .line 1126
    const-wide/32 v17, 0xf4240

    .line 1127
    .line 1128
    .line 1129
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 1130
    .line 1131
    move-wide/from16 v19, v3

    .line 1132
    .line 1133
    invoke-static/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1134
    .line 1135
    .line 1136
    move-result-wide v7

    .line 1137
    new-instance v9, Lcom/google/android/gms/internal/ads/G1;

    .line 1138
    .line 1139
    move-object v0, v9

    .line 1140
    move-object/from16 v1, p0

    .line 1141
    .line 1142
    move-object/from16 v3, p1

    .line 1143
    .line 1144
    move/from16 v4, v26

    .line 1145
    .line 1146
    move-object v5, v14

    .line 1147
    move-object/from16 v6, v22

    .line 1148
    .line 1149
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/G1;-><init>(Lcom/google/android/gms/internal/ads/D1;[J[II[J[IJ)V

    .line 1150
    .line 1151
    .line 1152
    return-object v9

    .line 1153
    :cond_2c
    move/from16 v5, v27

    .line 1154
    .line 1155
    const/4 v3, 0x1

    .line 1156
    const/4 v4, 0x1

    .line 1157
    goto :goto_23

    .line 1158
    :cond_2d
    const/4 v6, 0x0

    .line 1159
    move/from16 v5, v27

    .line 1160
    .line 1161
    :goto_23
    if-ne v5, v4, :cond_2e

    .line 1162
    .line 1163
    const/4 v4, 0x1

    .line 1164
    goto :goto_24

    .line 1165
    :cond_2e
    const/4 v4, 0x0

    .line 1166
    :goto_24
    new-array v7, v3, [I

    .line 1167
    .line 1168
    new-array v3, v3, [I

    .line 1169
    .line 1170
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1171
    .line 1172
    .line 1173
    const/4 v8, 0x0

    .line 1174
    const/4 v9, 0x0

    .line 1175
    const/4 v10, 0x0

    .line 1176
    const/4 v11, 0x0

    .line 1177
    :goto_25
    array-length v12, v0

    .line 1178
    if-ge v8, v12, :cond_36

    .line 1179
    .line 1180
    aget-wide v12, v17, v8

    .line 1181
    .line 1182
    const-wide/16 v15, -0x1

    .line 1183
    .line 1184
    cmp-long v18, v12, v15

    .line 1185
    .line 1186
    if-eqz v18, :cond_35

    .line 1187
    .line 1188
    aget-wide v27, v0, v8

    .line 1189
    .line 1190
    sget-object v33, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1191
    .line 1192
    move-object v15, v7

    .line 1193
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 1194
    .line 1195
    move/from16 p2, v10

    .line 1196
    .line 1197
    move/from16 v16, v11

    .line 1198
    .line 1199
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/D1;->d:J

    .line 1200
    .line 1201
    move-wide/from16 v29, v6

    .line 1202
    .line 1203
    move-wide/from16 v31, v10

    .line 1204
    .line 1205
    invoke-static/range {v27 .. v33}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1206
    .line 1207
    .line 1208
    move-result-wide v6

    .line 1209
    const/4 v10, 0x1

    .line 1210
    invoke-static {v14, v12, v13, v10}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 1211
    .line 1212
    .line 1213
    move-result v11

    .line 1214
    aput v11, v15, v8

    .line 1215
    .line 1216
    add-long/2addr v12, v6

    .line 1217
    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 1218
    .line 1219
    .line 1220
    move-result v6

    .line 1221
    if-gez v6, :cond_2f

    .line 1222
    .line 1223
    not-int v6, v6

    .line 1224
    goto :goto_28

    .line 1225
    :cond_2f
    :goto_26
    add-int/lit8 v7, v6, 0x1

    .line 1226
    .line 1227
    array-length v10, v14

    .line 1228
    if-ge v7, v10, :cond_31

    .line 1229
    .line 1230
    aget-wide v10, v14, v7

    .line 1231
    .line 1232
    cmp-long v23, v10, v12

    .line 1233
    .line 1234
    if-eqz v23, :cond_30

    .line 1235
    .line 1236
    goto :goto_27

    .line 1237
    :cond_30
    move v6, v7

    .line 1238
    goto :goto_26

    .line 1239
    :cond_31
    :goto_27
    if-nez v4, :cond_32

    .line 1240
    .line 1241
    move v6, v7

    .line 1242
    :cond_32
    :goto_28
    aput v6, v3, v8

    .line 1243
    .line 1244
    :goto_29
    aget v6, v15, v8

    .line 1245
    .line 1246
    aget v7, v3, v8

    .line 1247
    .line 1248
    if-ge v6, v7, :cond_33

    .line 1249
    .line 1250
    aget v10, v22, v6

    .line 1251
    .line 1252
    const/4 v11, 0x1

    .line 1253
    and-int/2addr v10, v11

    .line 1254
    if-nez v10, :cond_33

    .line 1255
    .line 1256
    add-int/lit8 v6, v6, 0x1

    .line 1257
    .line 1258
    aput v6, v15, v8

    .line 1259
    .line 1260
    goto :goto_29

    .line 1261
    :cond_33
    sub-int v10, v7, v6

    .line 1262
    .line 1263
    add-int/2addr v10, v9

    .line 1264
    move/from16 v11, v16

    .line 1265
    .line 1266
    if-eq v11, v6, :cond_34

    .line 1267
    .line 1268
    const/4 v6, 0x1

    .line 1269
    goto :goto_2a

    .line 1270
    :cond_34
    const/4 v6, 0x0

    .line 1271
    :goto_2a
    or-int v6, p2, v6

    .line 1272
    .line 1273
    move v11, v7

    .line 1274
    move v9, v10

    .line 1275
    move v10, v6

    .line 1276
    goto :goto_2b

    .line 1277
    :cond_35
    move-object v15, v7

    .line 1278
    move/from16 p2, v10

    .line 1279
    .line 1280
    :goto_2b
    add-int/lit8 v8, v8, 0x1

    .line 1281
    .line 1282
    move-object v7, v15

    .line 1283
    const/4 v6, 0x0

    .line 1284
    goto :goto_25

    .line 1285
    :cond_36
    move-object v15, v7

    .line 1286
    move/from16 p2, v10

    .line 1287
    .line 1288
    move/from16 v6, v25

    .line 1289
    .line 1290
    if-eq v9, v6, :cond_37

    .line 1291
    .line 1292
    const/4 v4, 0x1

    .line 1293
    goto :goto_2c

    .line 1294
    :cond_37
    const/4 v4, 0x0

    .line 1295
    :goto_2c
    or-int v4, p2, v4

    .line 1296
    .line 1297
    if-eqz v4, :cond_38

    .line 1298
    .line 1299
    new-array v6, v9, [J

    .line 1300
    .line 1301
    goto :goto_2d

    .line 1302
    :cond_38
    move-object v6, v2

    .line 1303
    :goto_2d
    if-eqz v4, :cond_39

    .line 1304
    .line 1305
    new-array v7, v9, [I

    .line 1306
    .line 1307
    :goto_2e
    const/4 v8, 0x1

    .line 1308
    goto :goto_2f

    .line 1309
    :cond_39
    move-object/from16 v7, p1

    .line 1310
    .line 1311
    goto :goto_2e

    .line 1312
    :goto_2f
    if-ne v8, v4, :cond_3a

    .line 1313
    .line 1314
    const/16 v26, 0x0

    .line 1315
    .line 1316
    :cond_3a
    if-eqz v4, :cond_3b

    .line 1317
    .line 1318
    new-array v8, v9, [I

    .line 1319
    .line 1320
    goto :goto_30

    .line 1321
    :cond_3b
    move-object/from16 v8, v22

    .line 1322
    .line 1323
    :goto_30
    new-array v9, v9, [J

    .line 1324
    .line 1325
    move-object/from16 v16, v9

    .line 1326
    .line 1327
    const-wide/16 v10, 0x0

    .line 1328
    .line 1329
    const/4 v12, 0x0

    .line 1330
    const/4 v13, 0x0

    .line 1331
    :goto_31
    array-length v9, v0

    .line 1332
    if-ge v12, v9, :cond_41

    .line 1333
    .line 1334
    aget-wide v23, v17, v12

    .line 1335
    .line 1336
    aget v9, v15, v12

    .line 1337
    .line 1338
    move-object/from16 p2, v15

    .line 1339
    .line 1340
    aget v15, v3, v12

    .line 1341
    .line 1342
    if-eqz v4, :cond_3c

    .line 1343
    .line 1344
    move-object/from16 v18, v3

    .line 1345
    .line 1346
    sub-int v3, v15, v9

    .line 1347
    .line 1348
    invoke-static {v2, v9, v6, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    .line 1350
    .line 1351
    move-object/from16 v25, v2

    .line 1352
    .line 1353
    move-object/from16 v2, p1

    .line 1354
    .line 1355
    invoke-static {v2, v9, v7, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    .line 1357
    .line 1358
    move-object/from16 v34, v6

    .line 1359
    .line 1360
    move-object/from16 v6, v22

    .line 1361
    .line 1362
    invoke-static {v6, v9, v8, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_32

    .line 1366
    :cond_3c
    move-object/from16 v25, v2

    .line 1367
    .line 1368
    move-object/from16 v18, v3

    .line 1369
    .line 1370
    move-object/from16 v34, v6

    .line 1371
    .line 1372
    move-object/from16 v6, v22

    .line 1373
    .line 1374
    move-object/from16 v2, p1

    .line 1375
    .line 1376
    :goto_32
    move/from16 v3, v26

    .line 1377
    .line 1378
    :goto_33
    if-ge v9, v15, :cond_40

    .line 1379
    .line 1380
    sget-object v22, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1381
    .line 1382
    const-wide/32 v29, 0xf4240

    .line 1383
    .line 1384
    .line 1385
    move-object/from16 p1, v2

    .line 1386
    .line 1387
    move/from16 v35, v3

    .line 1388
    .line 1389
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/D1;->d:J

    .line 1390
    .line 1391
    move-wide/from16 v27, v10

    .line 1392
    .line 1393
    move-wide/from16 v31, v2

    .line 1394
    .line 1395
    move-object/from16 v33, v22

    .line 1396
    .line 1397
    invoke-static/range {v27 .. v33}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1398
    .line 1399
    .line 1400
    move-result-wide v2

    .line 1401
    aget-wide v26, v14, v9

    .line 1402
    .line 1403
    sub-long v26, v26, v23

    .line 1404
    .line 1405
    const-wide/32 v28, 0xf4240

    .line 1406
    .line 1407
    .line 1408
    move-object/from16 v33, v14

    .line 1409
    .line 1410
    move/from16 v36, v15

    .line 1411
    .line 1412
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/D1;->c:J

    .line 1413
    .line 1414
    move-wide/from16 v30, v14

    .line 1415
    .line 1416
    move-object/from16 v32, v22

    .line 1417
    .line 1418
    invoke-static/range {v26 .. v32}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1419
    .line 1420
    .line 1421
    move-result-wide v14

    .line 1422
    move-object/from16 v22, v6

    .line 1423
    .line 1424
    const/4 v6, 0x1

    .line 1425
    move-object/from16 v19, v7

    .line 1426
    .line 1427
    if-eq v5, v6, :cond_3d

    .line 1428
    .line 1429
    const-wide/16 v6, 0x0

    .line 1430
    .line 1431
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 1432
    .line 1433
    .line 1434
    move-result-wide v14

    .line 1435
    goto :goto_34

    .line 1436
    :cond_3d
    const-wide/16 v6, 0x0

    .line 1437
    .line 1438
    :goto_34
    add-long/2addr v2, v14

    .line 1439
    aput-wide v2, v16, v13

    .line 1440
    .line 1441
    if-eqz v4, :cond_3e

    .line 1442
    .line 1443
    aget v2, v19, v13

    .line 1444
    .line 1445
    move/from16 v3, v35

    .line 1446
    .line 1447
    if-le v2, v3, :cond_3f

    .line 1448
    .line 1449
    aget v2, p1, v9

    .line 1450
    .line 1451
    move v3, v2

    .line 1452
    goto :goto_35

    .line 1453
    :cond_3e
    move/from16 v3, v35

    .line 1454
    .line 1455
    :cond_3f
    :goto_35
    add-int/lit8 v13, v13, 0x1

    .line 1456
    .line 1457
    add-int/lit8 v9, v9, 0x1

    .line 1458
    .line 1459
    move-object/from16 v2, p1

    .line 1460
    .line 1461
    move-object/from16 v7, v19

    .line 1462
    .line 1463
    move-object/from16 v6, v22

    .line 1464
    .line 1465
    move-object/from16 v14, v33

    .line 1466
    .line 1467
    move/from16 v15, v36

    .line 1468
    .line 1469
    goto :goto_33

    .line 1470
    :cond_40
    move-object/from16 p1, v2

    .line 1471
    .line 1472
    move-object/from16 v22, v6

    .line 1473
    .line 1474
    move-object/from16 v19, v7

    .line 1475
    .line 1476
    move-object/from16 v33, v14

    .line 1477
    .line 1478
    const-wide/16 v6, 0x0

    .line 1479
    .line 1480
    aget-wide v14, v0, v12

    .line 1481
    .line 1482
    add-long/2addr v10, v14

    .line 1483
    add-int/lit8 v12, v12, 0x1

    .line 1484
    .line 1485
    move-object/from16 v15, p2

    .line 1486
    .line 1487
    move/from16 v26, v3

    .line 1488
    .line 1489
    move-object/from16 v3, v18

    .line 1490
    .line 1491
    move-object/from16 v7, v19

    .line 1492
    .line 1493
    move-object/from16 v2, v25

    .line 1494
    .line 1495
    move-object/from16 v14, v33

    .line 1496
    .line 1497
    move-object/from16 v6, v34

    .line 1498
    .line 1499
    goto/16 :goto_31

    .line 1500
    .line 1501
    :cond_41
    move-object/from16 v34, v6

    .line 1502
    .line 1503
    move-object/from16 v19, v7

    .line 1504
    .line 1505
    sget-object v33, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 1506
    .line 1507
    const-wide/32 v29, 0xf4240

    .line 1508
    .line 1509
    .line 1510
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/D1;->d:J

    .line 1511
    .line 1512
    move-wide/from16 v27, v10

    .line 1513
    .line 1514
    move-wide/from16 v31, v2

    .line 1515
    .line 1516
    invoke-static/range {v27 .. v33}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 1517
    .line 1518
    .line 1519
    move-result-wide v9

    .line 1520
    new-instance v11, Lcom/google/android/gms/internal/ads/G1;

    .line 1521
    .line 1522
    move-object v0, v11

    .line 1523
    move-object/from16 v1, p0

    .line 1524
    .line 1525
    move-object/from16 v2, v34

    .line 1526
    .line 1527
    move-object/from16 v3, v19

    .line 1528
    .line 1529
    move/from16 v4, v26

    .line 1530
    .line 1531
    move-object/from16 v5, v16

    .line 1532
    .line 1533
    move-object v6, v8

    .line 1534
    move-wide v7, v9

    .line 1535
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/G1;-><init>(Lcom/google/android/gms/internal/ads/D1;[J[II[J[IJ)V

    .line 1536
    .line 1537
    .line 1538
    return-object v11

    .line 1539
    :cond_42
    const-string v0, "Track has no sample table size information"

    .line 1540
    .line 1541
    const/4 v1, 0x0

    .line 1542
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0

    .line 1546
    throw v0
.end method

.method public static g(Lcom/google/android/gms/internal/ads/jr;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/mO;Lc/g;I)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    const/4 v9, 0x2

    .line 16
    const/4 v11, 0x1

    .line 17
    const/16 v12, 0x10

    .line 18
    .line 19
    add-int/lit8 v13, v1, 0x10

    .line 20
    .line 21
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 22
    .line 23
    .line 24
    const/4 v13, 0x6

    .line 25
    const/16 v14, 0x8

    .line 26
    .line 27
    if-eqz p6, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 30
    .line 31
    .line 32
    move-result v16

    .line 33
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 34
    .line 35
    .line 36
    move/from16 v10, v16

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 40
    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_0
    const/high16 v17, 0x10000000

    .line 44
    .line 45
    const/16 v7, 0x20

    .line 46
    .line 47
    const/4 v8, 0x4

    .line 48
    if-eqz v10, :cond_a

    .line 49
    .line 50
    if-ne v10, v11, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    if-ne v10, v9, :cond_52

    .line 54
    .line 55
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->D()J

    .line 59
    .line 60
    .line 61
    move-result-wide v22

    .line 62
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 63
    .line 64
    .line 65
    move-result-wide v22

    .line 66
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    .line 67
    .line 68
    .line 69
    move-result-wide v12

    .line 70
    long-to-int v10, v12

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 83
    .line 84
    .line 85
    move-result v22

    .line 86
    and-int/lit8 v23, v22, 0x1

    .line 87
    .line 88
    and-int/lit8 v22, v22, 0x2

    .line 89
    .line 90
    if-nez v23, :cond_9

    .line 91
    .line 92
    if-ne v13, v14, :cond_2

    .line 93
    .line 94
    const/4 v8, 0x3

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const/16 v8, 0x10

    .line 97
    .line 98
    if-ne v13, v8, :cond_4

    .line 99
    .line 100
    if-eqz v22, :cond_3

    .line 101
    .line 102
    const/high16 v8, 0x10000000

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const/4 v8, 0x2

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    const/16 v8, 0x18

    .line 108
    .line 109
    if-ne v13, v8, :cond_6

    .line 110
    .line 111
    if-eqz v22, :cond_5

    .line 112
    .line 113
    const/high16 v8, 0x50000000

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    const/16 v8, 0x15

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    if-ne v13, v7, :cond_8

    .line 120
    .line 121
    if-eqz v22, :cond_7

    .line 122
    .line 123
    const/high16 v8, 0x60000000

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    const/16 v8, 0x16

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_8
    const/4 v8, -0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_9
    if-ne v13, v7, :cond_8

    .line 132
    .line 133
    const/4 v8, 0x4

    .line 134
    :goto_1
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 135
    .line 136
    .line 137
    const/4 v13, 0x0

    .line 138
    goto :goto_3

    .line 139
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    const/4 v8, 0x6

    .line 144
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->x()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    iget v13, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 152
    .line 153
    add-int/lit8 v13, v13, -0x4

    .line 154
    .line 155
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    if-ne v10, v11, :cond_b

    .line 163
    .line 164
    const/16 v10, 0x10

    .line 165
    .line 166
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 167
    .line 168
    .line 169
    :cond_b
    move v10, v8

    .line 170
    const/4 v8, -0x1

    .line 171
    :goto_3
    iget v7, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 172
    .line 173
    const v9, 0x656e6361

    .line 174
    .line 175
    .line 176
    move/from16 v11, p1

    .line 177
    .line 178
    if-ne v11, v9, :cond_e

    .line 179
    .line 180
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/r1;->d(Lcom/google/android/gms/internal/ads/jr;II)Landroid/util/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    if-eqz v11, :cond_d

    .line 185
    .line 186
    iget-object v9, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v9, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    if-nez v5, :cond_c

    .line 195
    .line 196
    const/4 v5, 0x0

    .line 197
    goto :goto_4

    .line 198
    :cond_c
    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v14, Lcom/google/android/gms/internal/ads/E1;

    .line 201
    .line 202
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/E1;->b:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/mO;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mO;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    :goto_4
    iget-object v14, v6, Lc/g;->J:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v14, [Lcom/google/android/gms/internal/ads/E1;

    .line 211
    .line 212
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v11, Lcom/google/android/gms/internal/ads/E1;

    .line 215
    .line 216
    aput-object v11, v14, p9

    .line 217
    .line 218
    :cond_d
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_e
    move v9, v11

    .line 223
    :goto_5
    const v11, 0x61632d33

    .line 224
    .line 225
    .line 226
    const-string v14, "audio/mhm1"

    .line 227
    .line 228
    const-string v15, "audio/ac4"

    .line 229
    .line 230
    const-string v27, "audio/eac3"

    .line 231
    .line 232
    move/from16 v28, v7

    .line 233
    .line 234
    const-string v7, "audio/ac3"

    .line 235
    .line 236
    if-ne v9, v11, :cond_f

    .line 237
    .line 238
    move-object v9, v7

    .line 239
    goto/16 :goto_9

    .line 240
    .line 241
    :cond_f
    const v11, 0x65632d33

    .line 242
    .line 243
    .line 244
    if-ne v9, v11, :cond_10

    .line 245
    .line 246
    move-object/from16 v9, v27

    .line 247
    .line 248
    goto/16 :goto_9

    .line 249
    .line 250
    :cond_10
    const v11, 0x61632d34

    .line 251
    .line 252
    .line 253
    if-ne v9, v11, :cond_11

    .line 254
    .line 255
    move-object v9, v15

    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    :cond_11
    const v11, 0x64747363

    .line 259
    .line 260
    .line 261
    if-ne v9, v11, :cond_12

    .line 262
    .line 263
    const-string v9, "audio/vnd.dts"

    .line 264
    .line 265
    goto/16 :goto_9

    .line 266
    .line 267
    :cond_12
    const v11, 0x64747368

    .line 268
    .line 269
    .line 270
    if-eq v9, v11, :cond_27

    .line 271
    .line 272
    const v11, 0x6474736c

    .line 273
    .line 274
    .line 275
    if-ne v9, v11, :cond_13

    .line 276
    .line 277
    goto/16 :goto_8

    .line 278
    .line 279
    :cond_13
    const v11, 0x64747365

    .line 280
    .line 281
    .line 282
    if-ne v9, v11, :cond_14

    .line 283
    .line 284
    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    .line 285
    .line 286
    goto/16 :goto_9

    .line 287
    .line 288
    :cond_14
    const v11, 0x64747378

    .line 289
    .line 290
    .line 291
    if-ne v9, v11, :cond_15

    .line 292
    .line 293
    const-string v9, "audio/vnd.dts.uhd;profile=p2"

    .line 294
    .line 295
    goto/16 :goto_9

    .line 296
    .line 297
    :cond_15
    const v11, 0x73616d72

    .line 298
    .line 299
    .line 300
    if-ne v9, v11, :cond_16

    .line 301
    .line 302
    const-string v9, "audio/3gpp"

    .line 303
    .line 304
    goto/16 :goto_9

    .line 305
    .line 306
    :cond_16
    const v11, 0x73617762

    .line 307
    .line 308
    .line 309
    if-ne v9, v11, :cond_17

    .line 310
    .line 311
    const-string v9, "audio/amr-wb"

    .line 312
    .line 313
    goto/16 :goto_9

    .line 314
    .line 315
    :cond_17
    const v11, 0x736f7774

    .line 316
    .line 317
    .line 318
    const-string v29, "audio/raw"

    .line 319
    .line 320
    if-ne v9, v11, :cond_18

    .line 321
    .line 322
    :goto_6
    move-object/from16 v9, v29

    .line 323
    .line 324
    const/4 v8, 0x2

    .line 325
    goto/16 :goto_9

    .line 326
    .line 327
    :cond_18
    const v11, 0x74776f73

    .line 328
    .line 329
    .line 330
    if-ne v9, v11, :cond_19

    .line 331
    .line 332
    move-object/from16 v9, v29

    .line 333
    .line 334
    const/high16 v8, 0x10000000

    .line 335
    .line 336
    goto/16 :goto_9

    .line 337
    .line 338
    :cond_19
    const v11, 0x6c70636d

    .line 339
    .line 340
    .line 341
    if-ne v9, v11, :cond_1b

    .line 342
    .line 343
    const/4 v11, -0x1

    .line 344
    if-ne v8, v11, :cond_1a

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_1a
    move-object/from16 v9, v29

    .line 348
    .line 349
    goto/16 :goto_9

    .line 350
    .line 351
    :cond_1b
    const v11, 0x2e6d7032

    .line 352
    .line 353
    .line 354
    if-eq v9, v11, :cond_26

    .line 355
    .line 356
    const v11, 0x2e6d7033

    .line 357
    .line 358
    .line 359
    if-ne v9, v11, :cond_1c

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_1c
    const v11, 0x6d686131

    .line 363
    .line 364
    .line 365
    if-ne v9, v11, :cond_1d

    .line 366
    .line 367
    const-string v9, "audio/mha1"

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_1d
    const v11, 0x6d686d31

    .line 371
    .line 372
    .line 373
    if-ne v9, v11, :cond_1e

    .line 374
    .line 375
    move-object v9, v14

    .line 376
    goto :goto_9

    .line 377
    :cond_1e
    const v11, 0x616c6163

    .line 378
    .line 379
    .line 380
    if-ne v9, v11, :cond_1f

    .line 381
    .line 382
    const-string v9, "audio/alac"

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_1f
    const v11, 0x616c6177

    .line 386
    .line 387
    .line 388
    if-ne v9, v11, :cond_20

    .line 389
    .line 390
    const-string v9, "audio/g711-alaw"

    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_20
    const v11, 0x756c6177

    .line 394
    .line 395
    .line 396
    if-ne v9, v11, :cond_21

    .line 397
    .line 398
    const-string v9, "audio/g711-mlaw"

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_21
    const v11, 0x4f707573

    .line 402
    .line 403
    .line 404
    if-ne v9, v11, :cond_22

    .line 405
    .line 406
    const-string v9, "audio/opus"

    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_22
    const v11, 0x664c6143

    .line 410
    .line 411
    .line 412
    if-ne v9, v11, :cond_23

    .line 413
    .line 414
    const-string v9, "audio/flac"

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_23
    const v11, 0x6d6c7061

    .line 418
    .line 419
    .line 420
    if-ne v9, v11, :cond_24

    .line 421
    .line 422
    const-string v9, "audio/true-hd"

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_24
    const v11, 0x69616d66

    .line 426
    .line 427
    .line 428
    if-ne v9, v11, :cond_25

    .line 429
    .line 430
    const-string v9, "audio/iamf"

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_25
    const/4 v9, 0x0

    .line 434
    goto :goto_9

    .line 435
    :cond_26
    :goto_7
    const-string v9, "audio/mpeg"

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_27
    :goto_8
    const-string v9, "audio/vnd.dts.hd"

    .line 439
    .line 440
    :goto_9
    move/from16 v17, v8

    .line 441
    .line 442
    move/from16 v29, v10

    .line 443
    .line 444
    const/4 v8, 0x0

    .line 445
    const/16 v30, 0x0

    .line 446
    .line 447
    move-object v10, v9

    .line 448
    move/from16 v9, v28

    .line 449
    .line 450
    const/16 v28, 0x0

    .line 451
    .line 452
    :goto_a
    sub-int v11, v9, v1

    .line 453
    .line 454
    if-ge v11, v2, :cond_50

    .line 455
    .line 456
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 460
    .line 461
    .line 462
    move-result v11

    .line 463
    if-lez v11, :cond_28

    .line 464
    .line 465
    const/4 v1, 0x1

    .line 466
    goto :goto_b

    .line 467
    :cond_28
    const/4 v1, 0x0

    .line 468
    :goto_b
    const-string v2, "childAtomSize must be positive"

    .line 469
    .line 470
    invoke-static {v2, v1}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 471
    .line 472
    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    move/from16 p7, v12

    .line 478
    .line 479
    const v12, 0x6d686143

    .line 480
    .line 481
    .line 482
    if-ne v1, v12, :cond_2b

    .line 483
    .line 484
    const/16 v12, 0x8

    .line 485
    .line 486
    add-int/lit8 v1, v9, 0x8

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 489
    .line 490
    .line 491
    const/4 v1, 0x1

    .line 492
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 493
    .line 494
    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 500
    .line 501
    .line 502
    invoke-static {v10, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v12

    .line 506
    if-eqz v12, :cond_29

    .line 507
    .line 508
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    new-array v12, v1, [Ljava/lang/Object;

    .line 513
    .line 514
    const/4 v1, 0x0

    .line 515
    aput-object v2, v12, v1

    .line 516
    .line 517
    const-string v2, "mhm1.%02X"

    .line 518
    .line 519
    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    move-object/from16 p9, v14

    .line 524
    .line 525
    goto :goto_c

    .line 526
    :cond_29
    const/4 v1, 0x0

    .line 527
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    move-object/from16 p9, v14

    .line 532
    .line 533
    const/4 v12, 0x1

    .line 534
    new-array v14, v12, [Ljava/lang/Object;

    .line 535
    .line 536
    aput-object v2, v14, v1

    .line 537
    .line 538
    const-string v2, "mha1.%02X"

    .line 539
    .line 540
    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 545
    .line 546
    .line 547
    move-result v12

    .line 548
    new-array v14, v12, [B

    .line 549
    .line 550
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 551
    .line 552
    .line 553
    if-nez v8, :cond_2a

    .line 554
    .line 555
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    :goto_d
    move/from16 v12, p7

    .line 560
    .line 561
    move-object/from16 v28, v2

    .line 562
    .line 563
    :goto_e
    move-object/from16 v31, v7

    .line 564
    .line 565
    move/from16 v1, v29

    .line 566
    .line 567
    :goto_f
    const/4 v2, 0x0

    .line 568
    const/16 v20, 0x3

    .line 569
    .line 570
    const/16 v22, 0x2

    .line 571
    .line 572
    :goto_10
    move/from16 v29, v13

    .line 573
    .line 574
    goto/16 :goto_27

    .line 575
    .line 576
    :cond_2a
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v8

    .line 580
    check-cast v8, [B

    .line 581
    .line 582
    invoke-static {v14, v8}, Lcom/google/android/gms/internal/ads/uA;->x(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 583
    .line 584
    .line 585
    move-result-object v8

    .line 586
    goto :goto_d

    .line 587
    :cond_2b
    move v12, v1

    .line 588
    move-object/from16 p9, v14

    .line 589
    .line 590
    const/4 v1, 0x0

    .line 591
    const v14, 0x6d686150

    .line 592
    .line 593
    .line 594
    if-ne v12, v14, :cond_2e

    .line 595
    .line 596
    const/16 v14, 0x8

    .line 597
    .line 598
    add-int/lit8 v2, v9, 0x8

    .line 599
    .line 600
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-lez v2, :cond_2d

    .line 608
    .line 609
    new-array v12, v2, [B

    .line 610
    .line 611
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 612
    .line 613
    .line 614
    if-nez v8, :cond_2c

    .line 615
    .line 616
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    :goto_11
    move/from16 v12, p7

    .line 621
    .line 622
    goto :goto_e

    .line 623
    :cond_2c
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    check-cast v2, [B

    .line 628
    .line 629
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/ads/uA;->x(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 630
    .line 631
    .line 632
    move-result-object v8

    .line 633
    goto :goto_11

    .line 634
    :cond_2d
    move-object/from16 v31, v7

    .line 635
    .line 636
    move-object/from16 v33, v8

    .line 637
    .line 638
    move-object v7, v10

    .line 639
    move/from16 v1, v29

    .line 640
    .line 641
    const/4 v2, 0x0

    .line 642
    const/16 v20, 0x3

    .line 643
    .line 644
    const/16 v22, 0x2

    .line 645
    .line 646
    move/from16 v8, p7

    .line 647
    .line 648
    :goto_12
    move/from16 v29, v13

    .line 649
    .line 650
    goto/16 :goto_26

    .line 651
    .line 652
    :cond_2e
    const v1, 0x65736473

    .line 653
    .line 654
    .line 655
    if-eq v12, v1, :cond_49

    .line 656
    .line 657
    if-eqz p6, :cond_33

    .line 658
    .line 659
    const v14, 0x77617665

    .line 660
    .line 661
    .line 662
    if-ne v12, v14, :cond_33

    .line 663
    .line 664
    iget v12, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 665
    .line 666
    if-lt v12, v9, :cond_2f

    .line 667
    .line 668
    const/4 v1, 0x0

    .line 669
    const/4 v14, 0x1

    .line 670
    goto :goto_13

    .line 671
    :cond_2f
    const/4 v1, 0x0

    .line 672
    const/4 v14, 0x0

    .line 673
    :goto_13
    invoke-static {v1, v14}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 674
    .line 675
    .line 676
    :goto_14
    sub-int v1, v12, v9

    .line 677
    .line 678
    if-ge v1, v11, :cond_32

    .line 679
    .line 680
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 681
    .line 682
    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    if-lez v1, :cond_30

    .line 688
    .line 689
    const/4 v14, 0x1

    .line 690
    goto :goto_15

    .line 691
    :cond_30
    const/4 v14, 0x0

    .line 692
    :goto_15
    invoke-static {v2, v14}, Lf/b;->t0(Ljava/lang/String;Z)V

    .line 693
    .line 694
    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 696
    .line 697
    .line 698
    move-result v14

    .line 699
    move-object/from16 v32, v2

    .line 700
    .line 701
    const v2, 0x65736473

    .line 702
    .line 703
    .line 704
    if-eq v14, v2, :cond_31

    .line 705
    .line 706
    add-int/2addr v12, v1

    .line 707
    move-object/from16 v2, v32

    .line 708
    .line 709
    goto :goto_14

    .line 710
    :cond_31
    move-object/from16 v31, v7

    .line 711
    .line 712
    move-object/from16 v33, v8

    .line 713
    .line 714
    move-object v7, v10

    .line 715
    move v2, v12

    .line 716
    move/from16 v1, v29

    .line 717
    .line 718
    :goto_16
    const/4 v10, -0x1

    .line 719
    const/4 v12, 0x7

    .line 720
    const/16 v20, 0x3

    .line 721
    .line 722
    const/16 v22, 0x2

    .line 723
    .line 724
    move/from16 v8, p7

    .line 725
    .line 726
    goto/16 :goto_1f

    .line 727
    .line 728
    :cond_32
    move-object/from16 v31, v7

    .line 729
    .line 730
    move-object/from16 v33, v8

    .line 731
    .line 732
    move-object v7, v10

    .line 733
    move/from16 v1, v29

    .line 734
    .line 735
    const/4 v2, -0x1

    .line 736
    goto :goto_16

    .line 737
    :cond_33
    const v1, 0x64616333

    .line 738
    .line 739
    .line 740
    sget-object v14, Lcom/google/android/gms/internal/ads/nH;->f:[I

    .line 741
    .line 742
    sget-object v31, Lcom/google/android/gms/internal/ads/nH;->d:[I

    .line 743
    .line 744
    if-ne v12, v1, :cond_35

    .line 745
    .line 746
    const/16 v1, 0x8

    .line 747
    .line 748
    add-int/lit8 v12, v9, 0x8

    .line 749
    .line 750
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 751
    .line 752
    .line 753
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v12

    .line 757
    new-instance v2, Lcom/google/android/gms/internal/ads/f0;

    .line 758
    .line 759
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/f0;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/f0;->r(Lcom/google/android/gms/internal/ads/jr;)V

    .line 763
    .line 764
    .line 765
    const/4 v1, 0x2

    .line 766
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 767
    .line 768
    .line 769
    move-result v33

    .line 770
    aget v1, v31, v33

    .line 771
    .line 772
    move-object/from16 v33, v8

    .line 773
    .line 774
    const/16 v8, 0x8

    .line 775
    .line 776
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 777
    .line 778
    .line 779
    const/4 v8, 0x3

    .line 780
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 781
    .line 782
    .line 783
    move-result v31

    .line 784
    aget v8, v14, v31

    .line 785
    .line 786
    const/4 v14, 0x1

    .line 787
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 788
    .line 789
    .line 790
    move-result v26

    .line 791
    if-eqz v26, :cond_34

    .line 792
    .line 793
    add-int/2addr v8, v14

    .line 794
    :cond_34
    const/4 v14, 0x5

    .line 795
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 796
    .line 797
    .line 798
    move-result v14

    .line 799
    sget-object v31, Lcom/google/android/gms/internal/ads/nH;->g:[I

    .line 800
    .line 801
    aget v14, v31, v14

    .line 802
    .line 803
    mul-int/lit16 v14, v14, 0x3e8

    .line 804
    .line 805
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->l()V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 813
    .line 814
    .line 815
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 816
    .line 817
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 818
    .line 819
    .line 820
    iput-object v12, v2, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 821
    .line 822
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    iput v8, v2, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 826
    .line 827
    iput v1, v2, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 828
    .line 829
    iput-object v5, v2, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 830
    .line 831
    iput-object v4, v2, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 832
    .line 833
    iput v14, v2, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 834
    .line 835
    iput v14, v2, Lcom/google/android/gms/internal/ads/K;->h:I

    .line 836
    .line 837
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 838
    .line 839
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 840
    .line 841
    .line 842
    iput-object v1, v6, Lc/g;->K:Ljava/lang/Object;

    .line 843
    .line 844
    move/from16 v8, p7

    .line 845
    .line 846
    move-object/from16 v31, v7

    .line 847
    .line 848
    move-object v7, v10

    .line 849
    move/from16 v1, v29

    .line 850
    .line 851
    :goto_17
    const/4 v2, 0x0

    .line 852
    const/16 v20, 0x3

    .line 853
    .line 854
    const/16 v22, 0x2

    .line 855
    .line 856
    goto/16 :goto_12

    .line 857
    .line 858
    :cond_35
    move-object/from16 v33, v8

    .line 859
    .line 860
    const v1, 0x64656333

    .line 861
    .line 862
    .line 863
    if-ne v12, v1, :cond_3a

    .line 864
    .line 865
    const/16 v1, 0x8

    .line 866
    .line 867
    add-int/lit8 v2, v9, 0x8

    .line 868
    .line 869
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 870
    .line 871
    .line 872
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    new-instance v2, Lcom/google/android/gms/internal/ads/f0;

    .line 877
    .line 878
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/f0;-><init>()V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/f0;->r(Lcom/google/android/gms/internal/ads/jr;)V

    .line 882
    .line 883
    .line 884
    const/16 v8, 0xd

    .line 885
    .line 886
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 887
    .line 888
    .line 889
    move-result v8

    .line 890
    mul-int/lit16 v8, v8, 0x3e8

    .line 891
    .line 892
    const/4 v12, 0x3

    .line 893
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 894
    .line 895
    .line 896
    const/4 v12, 0x2

    .line 897
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 898
    .line 899
    .line 900
    move-result v32

    .line 901
    aget v12, v31, v32

    .line 902
    .line 903
    move-object/from16 v31, v7

    .line 904
    .line 905
    const/16 v7, 0xa

    .line 906
    .line 907
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 908
    .line 909
    .line 910
    const/4 v7, 0x3

    .line 911
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 912
    .line 913
    .line 914
    move-result v20

    .line 915
    aget v14, v14, v20

    .line 916
    .line 917
    const/4 v7, 0x1

    .line 918
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 919
    .line 920
    .line 921
    move-result v26

    .line 922
    if-eqz v26, :cond_36

    .line 923
    .line 924
    add-int/2addr v14, v7

    .line 925
    :cond_36
    const/4 v7, 0x3

    .line 926
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 927
    .line 928
    .line 929
    const/4 v7, 0x4

    .line 930
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 931
    .line 932
    .line 933
    move-result v32

    .line 934
    const/4 v7, 0x1

    .line 935
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 936
    .line 937
    .line 938
    move-object/from16 v34, v10

    .line 939
    .line 940
    if-lez v32, :cond_38

    .line 941
    .line 942
    const/4 v10, 0x6

    .line 943
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 947
    .line 948
    .line 949
    move-result v25

    .line 950
    if-eqz v25, :cond_37

    .line 951
    .line 952
    const/16 v24, 0x2

    .line 953
    .line 954
    add-int/lit8 v14, v14, 0x2

    .line 955
    .line 956
    :cond_37
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 957
    .line 958
    .line 959
    :cond_38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 960
    .line 961
    .line 962
    move-result v10

    .line 963
    const/4 v7, 0x7

    .line 964
    if-le v10, v7, :cond_39

    .line 965
    .line 966
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 967
    .line 968
    .line 969
    const/4 v7, 0x1

    .line 970
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 971
    .line 972
    .line 973
    move-result v10

    .line 974
    if-eqz v10, :cond_39

    .line 975
    .line 976
    const-string v7, "audio/eac3-joc"

    .line 977
    .line 978
    goto :goto_18

    .line 979
    :cond_39
    move-object/from16 v7, v27

    .line 980
    .line 981
    :goto_18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->l()V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 985
    .line 986
    .line 987
    move-result v2

    .line 988
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 989
    .line 990
    .line 991
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 992
    .line 993
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 994
    .line 995
    .line 996
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 997
    .line 998
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    iput v14, v2, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 1002
    .line 1003
    iput v12, v2, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 1004
    .line 1005
    iput-object v5, v2, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 1006
    .line 1007
    iput-object v4, v2, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 1008
    .line 1009
    iput v8, v2, Lcom/google/android/gms/internal/ads/K;->h:I

    .line 1010
    .line 1011
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 1012
    .line 1013
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1014
    .line 1015
    .line 1016
    iput-object v1, v6, Lc/g;->K:Ljava/lang/Object;

    .line 1017
    .line 1018
    :goto_19
    move/from16 v8, p7

    .line 1019
    .line 1020
    move/from16 v1, v29

    .line 1021
    .line 1022
    move-object/from16 v7, v34

    .line 1023
    .line 1024
    goto/16 :goto_17

    .line 1025
    .line 1026
    :cond_3a
    move-object/from16 v31, v7

    .line 1027
    .line 1028
    move-object/from16 v34, v10

    .line 1029
    .line 1030
    const v1, 0x64616334

    .line 1031
    .line 1032
    .line 1033
    if-ne v12, v1, :cond_3c

    .line 1034
    .line 1035
    const/16 v1, 0x8

    .line 1036
    .line 1037
    add-int/lit8 v14, v9, 0x8

    .line 1038
    .line 1039
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1040
    .line 1041
    .line 1042
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v1

    .line 1046
    const/4 v2, 0x1

    .line 1047
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1051
    .line 1052
    .line 1053
    move-result v2

    .line 1054
    const/16 v7, 0x20

    .line 1055
    .line 1056
    and-int/2addr v2, v7

    .line 1057
    new-instance v8, Lcom/google/android/gms/internal/ads/K;

    .line 1058
    .line 1059
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 1060
    .line 1061
    .line 1062
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 1063
    .line 1064
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    const/4 v1, 0x2

    .line 1068
    iput v1, v8, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 1069
    .line 1070
    const/4 v1, 0x5

    .line 1071
    shr-int/lit8 v1, v2, 0x5

    .line 1072
    .line 1073
    const/4 v2, 0x1

    .line 1074
    if-eq v2, v1, :cond_3b

    .line 1075
    .line 1076
    const v1, 0xac44

    .line 1077
    .line 1078
    .line 1079
    goto :goto_1a

    .line 1080
    :cond_3b
    const v1, 0xbb80

    .line 1081
    .line 1082
    .line 1083
    :goto_1a
    iput v1, v8, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 1084
    .line 1085
    iput-object v5, v8, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 1086
    .line 1087
    iput-object v4, v8, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 1088
    .line 1089
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 1090
    .line 1091
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1092
    .line 1093
    .line 1094
    iput-object v1, v6, Lc/g;->K:Ljava/lang/Object;

    .line 1095
    .line 1096
    goto :goto_19

    .line 1097
    :cond_3c
    const/16 v7, 0x20

    .line 1098
    .line 1099
    const v1, 0x646d6c70

    .line 1100
    .line 1101
    .line 1102
    if-ne v12, v1, :cond_3e

    .line 1103
    .line 1104
    if-lez v13, :cond_3d

    .line 1105
    .line 1106
    move v1, v13

    .line 1107
    move/from16 v29, v1

    .line 1108
    .line 1109
    move-object/from16 v8, v33

    .line 1110
    .line 1111
    move-object/from16 v10, v34

    .line 1112
    .line 1113
    const/4 v2, 0x0

    .line 1114
    const/4 v12, 0x2

    .line 1115
    const/16 v20, 0x3

    .line 1116
    .line 1117
    const/16 v22, 0x2

    .line 1118
    .line 1119
    goto/16 :goto_27

    .line 1120
    .line 1121
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 1124
    .line 1125
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    const/4 v1, 0x0

    .line 1136
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    throw v0

    .line 1141
    :cond_3e
    const/4 v1, 0x0

    .line 1142
    const v2, 0x64647473

    .line 1143
    .line 1144
    .line 1145
    if-eq v12, v2, :cond_3f

    .line 1146
    .line 1147
    const v2, 0x75647473

    .line 1148
    .line 1149
    .line 1150
    if-ne v12, v2, :cond_40

    .line 1151
    .line 1152
    :cond_3f
    const/16 v1, 0x9

    .line 1153
    .line 1154
    const v10, 0x616c6163

    .line 1155
    .line 1156
    .line 1157
    const/4 v12, 0x7

    .line 1158
    const/16 v20, 0x3

    .line 1159
    .line 1160
    const/16 v22, 0x2

    .line 1161
    .line 1162
    goto/16 :goto_1e

    .line 1163
    .line 1164
    :cond_40
    const v2, 0x644f7073

    .line 1165
    .line 1166
    .line 1167
    if-ne v12, v2, :cond_41

    .line 1168
    .line 1169
    const/16 v2, 0x8

    .line 1170
    .line 1171
    add-int/lit8 v14, v9, 0x8

    .line 1172
    .line 1173
    add-int/lit8 v8, v11, -0x8

    .line 1174
    .line 1175
    sget-object v10, Lcom/google/android/gms/internal/ads/r1;->a:[B

    .line 1176
    .line 1177
    array-length v12, v10

    .line 1178
    add-int/2addr v12, v8

    .line 1179
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 1180
    .line 1181
    .line 1182
    move-result-object v12

    .line 1183
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1184
    .line 1185
    .line 1186
    array-length v10, v10

    .line 1187
    invoke-virtual {v0, v10, v12, v8}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v12}, LQ3/b;->S([B)Ljava/util/ArrayList;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v8

    .line 1194
    move/from16 v12, p7

    .line 1195
    .line 1196
    move/from16 v1, v29

    .line 1197
    .line 1198
    move-object/from16 v10, v34

    .line 1199
    .line 1200
    goto/16 :goto_f

    .line 1201
    .line 1202
    :cond_41
    const/16 v2, 0x8

    .line 1203
    .line 1204
    const v8, 0x64664c61

    .line 1205
    .line 1206
    .line 1207
    if-ne v12, v8, :cond_42

    .line 1208
    .line 1209
    add-int/lit8 v8, v9, 0xc

    .line 1210
    .line 1211
    add-int/lit8 v10, v11, -0xc

    .line 1212
    .line 1213
    add-int/lit8 v12, v11, -0x8

    .line 1214
    .line 1215
    new-array v12, v12, [B

    .line 1216
    .line 1217
    const/16 v14, 0x66

    .line 1218
    .line 1219
    const/16 v21, 0x0

    .line 1220
    .line 1221
    aput-byte v14, v12, v21

    .line 1222
    .line 1223
    const/16 v14, 0x4c

    .line 1224
    .line 1225
    const/16 v22, 0x1

    .line 1226
    .line 1227
    aput-byte v14, v12, v22

    .line 1228
    .line 1229
    const/16 v14, 0x61

    .line 1230
    .line 1231
    const/16 v22, 0x2

    .line 1232
    .line 1233
    aput-byte v14, v12, v22

    .line 1234
    .line 1235
    const/16 v14, 0x43

    .line 1236
    .line 1237
    const/16 v20, 0x3

    .line 1238
    .line 1239
    aput-byte v14, v12, v20

    .line 1240
    .line 1241
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1242
    .line 1243
    .line 1244
    const/4 v8, 0x4

    .line 1245
    invoke-virtual {v0, v8, v12, v10}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1246
    .line 1247
    .line 1248
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v10

    .line 1252
    move/from16 v12, p7

    .line 1253
    .line 1254
    move-object v8, v10

    .line 1255
    :goto_1b
    move/from16 v1, v29

    .line 1256
    .line 1257
    move-object/from16 v10, v34

    .line 1258
    .line 1259
    const/4 v2, 0x0

    .line 1260
    goto/16 :goto_10

    .line 1261
    .line 1262
    :cond_42
    const/4 v8, 0x4

    .line 1263
    const v10, 0x616c6163

    .line 1264
    .line 1265
    .line 1266
    const/16 v20, 0x3

    .line 1267
    .line 1268
    const/16 v22, 0x2

    .line 1269
    .line 1270
    if-ne v12, v10, :cond_43

    .line 1271
    .line 1272
    add-int/lit8 v12, v9, 0xc

    .line 1273
    .line 1274
    add-int/lit8 v14, v11, -0xc

    .line 1275
    .line 1276
    new-array v1, v14, [B

    .line 1277
    .line 1278
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1279
    .line 1280
    .line 1281
    const/4 v12, 0x0

    .line 1282
    invoke-virtual {v0, v12, v1, v14}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1283
    .line 1284
    .line 1285
    new-instance v12, Lcom/google/android/gms/internal/ads/jr;

    .line 1286
    .line 1287
    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 1288
    .line 1289
    .line 1290
    const/16 v14, 0x9

    .line 1291
    .line 1292
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1296
    .line 1297
    .line 1298
    move-result v14

    .line 1299
    const/16 v2, 0x14

    .line 1300
    .line 1301
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 1305
    .line 1306
    .line 1307
    move-result v2

    .line 1308
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v2

    .line 1312
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v12

    .line 1316
    invoke-static {v2, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1321
    .line 1322
    check-cast v12, Ljava/lang/Integer;

    .line 1323
    .line 1324
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 1325
    .line 1326
    .line 1327
    move-result v12

    .line 1328
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1329
    .line 1330
    check-cast v2, Ljava/lang/Integer;

    .line 1331
    .line 1332
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1333
    .line 1334
    .line 1335
    move-result v2

    .line 1336
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    move-object v8, v1

    .line 1341
    move v1, v12

    .line 1342
    move/from16 v29, v13

    .line 1343
    .line 1344
    move-object/from16 v10, v34

    .line 1345
    .line 1346
    move v12, v2

    .line 1347
    const/4 v2, 0x0

    .line 1348
    goto/16 :goto_27

    .line 1349
    .line 1350
    :cond_43
    const v1, 0x69616362

    .line 1351
    .line 1352
    .line 1353
    if-ne v12, v1, :cond_47

    .line 1354
    .line 1355
    const/16 v1, 0x9

    .line 1356
    .line 1357
    add-int/lit8 v2, v9, 0x9

    .line 1358
    .line 1359
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1360
    .line 1361
    .line 1362
    const-wide/16 v23, 0x0

    .line 1363
    .line 1364
    move-wide/from16 v32, v23

    .line 1365
    .line 1366
    const/4 v2, 0x0

    .line 1367
    :goto_1c
    if-ge v2, v1, :cond_46

    .line 1368
    .line 1369
    iget v12, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1370
    .line 1371
    iget v14, v0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 1372
    .line 1373
    if-eq v12, v14, :cond_45

    .line 1374
    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1376
    .line 1377
    .line 1378
    move-result v12

    .line 1379
    int-to-long v7, v12

    .line 1380
    const-wide/16 v35, 0x7f

    .line 1381
    .line 1382
    and-long v35, v7, v35

    .line 1383
    .line 1384
    const/4 v12, 0x7

    .line 1385
    mul-int/lit8 v18, v2, 0x7

    .line 1386
    .line 1387
    shl-long v18, v35, v18

    .line 1388
    .line 1389
    or-long v32, v32, v18

    .line 1390
    .line 1391
    const-wide/16 v18, 0x80

    .line 1392
    .line 1393
    and-long v7, v7, v18

    .line 1394
    .line 1395
    cmp-long v18, v7, v23

    .line 1396
    .line 1397
    if-nez v18, :cond_44

    .line 1398
    .line 1399
    goto :goto_1d

    .line 1400
    :cond_44
    const/4 v7, 0x1

    .line 1401
    add-int/2addr v2, v7

    .line 1402
    const/16 v7, 0x20

    .line 1403
    .line 1404
    const/4 v8, 0x4

    .line 1405
    goto :goto_1c

    .line 1406
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1407
    .line 1408
    const-string v1, "Attempting to read a byte over the limit."

    .line 1409
    .line 1410
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    throw v0

    .line 1414
    :cond_46
    const/4 v12, 0x7

    .line 1415
    :goto_1d
    invoke-static/range {v32 .. v33}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 1416
    .line 1417
    .line 1418
    move-result v2

    .line 1419
    new-array v7, v2, [B

    .line 1420
    .line 1421
    const/4 v8, 0x0

    .line 1422
    invoke-virtual {v0, v8, v7, v2}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1423
    .line 1424
    .line 1425
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v8

    .line 1429
    move/from16 v12, p7

    .line 1430
    .line 1431
    goto/16 :goto_1b

    .line 1432
    .line 1433
    :cond_47
    move/from16 v8, p7

    .line 1434
    .line 1435
    move/from16 v1, v29

    .line 1436
    .line 1437
    move-object/from16 v7, v34

    .line 1438
    .line 1439
    const/4 v2, 0x0

    .line 1440
    goto/16 :goto_12

    .line 1441
    .line 1442
    :goto_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 1443
    .line 1444
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    .line 1448
    .line 1449
    .line 1450
    move-object/from16 v7, v34

    .line 1451
    .line 1452
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    move/from16 v8, p7

    .line 1456
    .line 1457
    iput v8, v2, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 1458
    .line 1459
    move/from16 v1, v29

    .line 1460
    .line 1461
    iput v1, v2, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 1462
    .line 1463
    iput-object v5, v2, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 1464
    .line 1465
    iput-object v4, v2, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 1466
    .line 1467
    new-instance v10, Lcom/google/android/gms/internal/ads/p0;

    .line 1468
    .line 1469
    invoke-direct {v10, v2}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1470
    .line 1471
    .line 1472
    iput-object v10, v6, Lc/g;->K:Ljava/lang/Object;

    .line 1473
    .line 1474
    :cond_48
    move/from16 v29, v13

    .line 1475
    .line 1476
    const/4 v2, 0x0

    .line 1477
    goto/16 :goto_26

    .line 1478
    .line 1479
    :cond_49
    move-object/from16 v31, v7

    .line 1480
    .line 1481
    move-object/from16 v33, v8

    .line 1482
    .line 1483
    move-object v7, v10

    .line 1484
    move/from16 v1, v29

    .line 1485
    .line 1486
    const/4 v12, 0x7

    .line 1487
    const/16 v20, 0x3

    .line 1488
    .line 1489
    const/16 v22, 0x2

    .line 1490
    .line 1491
    move/from16 v8, p7

    .line 1492
    .line 1493
    move v2, v9

    .line 1494
    const/4 v10, -0x1

    .line 1495
    :goto_1f
    if-eq v2, v10, :cond_48

    .line 1496
    .line 1497
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/r1;->e(ILcom/google/android/gms/internal/ads/jr;)Lo1/c;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v2

    .line 1501
    iget-object v7, v2, Lo1/c;->a:Ljava/lang/String;

    .line 1502
    .line 1503
    iget-object v10, v2, Lo1/c;->b:[B

    .line 1504
    .line 1505
    if-eqz v10, :cond_4f

    .line 1506
    .line 1507
    const-string v12, "audio/vorbis"

    .line 1508
    .line 1509
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v12

    .line 1513
    if-eqz v12, :cond_4d

    .line 1514
    .line 1515
    new-instance v12, Lcom/google/android/gms/internal/ads/jr;

    .line 1516
    .line 1517
    invoke-direct {v12, v10}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 1518
    .line 1519
    .line 1520
    const/4 v14, 0x1

    .line 1521
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1522
    .line 1523
    .line 1524
    const/16 v37, 0x0

    .line 1525
    .line 1526
    :goto_20
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1527
    .line 1528
    .line 1529
    move-result v24

    .line 1530
    if-lez v24, :cond_4a

    .line 1531
    .line 1532
    iget-object v14, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1533
    .line 1534
    iget v0, v12, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1535
    .line 1536
    aget-byte v0, v14, v0

    .line 1537
    .line 1538
    const/16 v14, 0xff

    .line 1539
    .line 1540
    and-int/2addr v0, v14

    .line 1541
    if-ne v0, v14, :cond_4a

    .line 1542
    .line 1543
    const/4 v0, 0x1

    .line 1544
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1545
    .line 1546
    .line 1547
    move/from16 v0, v37

    .line 1548
    .line 1549
    add-int/2addr v0, v14

    .line 1550
    move/from16 v37, v0

    .line 1551
    .line 1552
    const/4 v14, 0x1

    .line 1553
    move-object/from16 v0, p0

    .line 1554
    .line 1555
    goto :goto_20

    .line 1556
    :cond_4a
    move/from16 v0, v37

    .line 1557
    .line 1558
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1559
    .line 1560
    .line 1561
    move-result v14

    .line 1562
    add-int/2addr v14, v0

    .line 1563
    const/4 v0, 0x0

    .line 1564
    :goto_21
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1565
    .line 1566
    .line 1567
    move-result v24

    .line 1568
    if-lez v24, :cond_4c

    .line 1569
    .line 1570
    move-object/from16 v24, v2

    .line 1571
    .line 1572
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1573
    .line 1574
    move/from16 v29, v13

    .line 1575
    .line 1576
    iget v13, v12, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1577
    .line 1578
    aget-byte v2, v2, v13

    .line 1579
    .line 1580
    const/16 v13, 0xff

    .line 1581
    .line 1582
    and-int/2addr v2, v13

    .line 1583
    if-ne v2, v13, :cond_4b

    .line 1584
    .line 1585
    const/4 v2, 0x1

    .line 1586
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1587
    .line 1588
    .line 1589
    add-int/2addr v0, v13

    .line 1590
    move-object/from16 v2, v24

    .line 1591
    .line 1592
    move/from16 v13, v29

    .line 1593
    .line 1594
    goto :goto_21

    .line 1595
    :cond_4b
    const/4 v2, 0x1

    .line 1596
    goto :goto_22

    .line 1597
    :cond_4c
    move-object/from16 v24, v2

    .line 1598
    .line 1599
    move/from16 v29, v13

    .line 1600
    .line 1601
    const/4 v2, 0x1

    .line 1602
    const/16 v13, 0xff

    .line 1603
    .line 1604
    :goto_22
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1605
    .line 1606
    .line 1607
    move-result v16

    .line 1608
    add-int v16, v16, v0

    .line 1609
    .line 1610
    new-array v0, v14, [B

    .line 1611
    .line 1612
    iget v12, v12, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1613
    .line 1614
    const/4 v2, 0x0

    .line 1615
    invoke-static {v10, v12, v0, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1616
    .line 1617
    .line 1618
    add-int/2addr v12, v14

    .line 1619
    array-length v14, v10

    .line 1620
    add-int v12, v12, v16

    .line 1621
    .line 1622
    sub-int/2addr v14, v12

    .line 1623
    new-array v13, v14, [B

    .line 1624
    .line 1625
    invoke-static {v10, v12, v13, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1626
    .line 1627
    .line 1628
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/uA;->x(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v0

    .line 1632
    move-object v10, v7

    .line 1633
    move v12, v8

    .line 1634
    :goto_23
    move-object/from16 v30, v24

    .line 1635
    .line 1636
    move-object v8, v0

    .line 1637
    goto :goto_27

    .line 1638
    :cond_4d
    move-object/from16 v24, v2

    .line 1639
    .line 1640
    move/from16 v29, v13

    .line 1641
    .line 1642
    const/4 v2, 0x0

    .line 1643
    const-string v0, "audio/mp4a-latm"

    .line 1644
    .line 1645
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1646
    .line 1647
    .line 1648
    move-result v0

    .line 1649
    if-eqz v0, :cond_4e

    .line 1650
    .line 1651
    new-instance v0, Lcom/google/android/gms/internal/ads/f0;

    .line 1652
    .line 1653
    array-length v1, v10

    .line 1654
    invoke-direct {v0, v10, v1}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 1655
    .line 1656
    .line 1657
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/nH;->c(Lcom/google/android/gms/internal/ads/f0;Z)LW0/r;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v0

    .line 1661
    iget v1, v0, LW0/r;->b:I

    .line 1662
    .line 1663
    iget v12, v0, LW0/r;->c:I

    .line 1664
    .line 1665
    iget-object v8, v0, LW0/r;->a:Ljava/lang/String;

    .line 1666
    .line 1667
    goto :goto_24

    .line 1668
    :cond_4e
    move v12, v8

    .line 1669
    move-object/from16 v8, v28

    .line 1670
    .line 1671
    :goto_24
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    move-object v10, v7

    .line 1676
    move-object/from16 v28, v8

    .line 1677
    .line 1678
    goto :goto_23

    .line 1679
    :cond_4f
    move-object/from16 v24, v2

    .line 1680
    .line 1681
    move/from16 v29, v13

    .line 1682
    .line 1683
    const/4 v2, 0x0

    .line 1684
    move-object v10, v7

    .line 1685
    move v12, v8

    .line 1686
    move-object/from16 v30, v24

    .line 1687
    .line 1688
    :goto_25
    move-object/from16 v8, v33

    .line 1689
    .line 1690
    goto :goto_27

    .line 1691
    :goto_26
    move-object v10, v7

    .line 1692
    move v12, v8

    .line 1693
    goto :goto_25

    .line 1694
    :goto_27
    add-int/2addr v9, v11

    .line 1695
    move-object/from16 v0, p0

    .line 1696
    .line 1697
    move/from16 v2, p3

    .line 1698
    .line 1699
    move-object/from16 v14, p9

    .line 1700
    .line 1701
    move/from16 v13, v29

    .line 1702
    .line 1703
    move-object/from16 v7, v31

    .line 1704
    .line 1705
    move/from16 v29, v1

    .line 1706
    .line 1707
    move/from16 v1, p2

    .line 1708
    .line 1709
    goto/16 :goto_a

    .line 1710
    .line 1711
    :cond_50
    move-object/from16 v33, v8

    .line 1712
    .line 1713
    move-object v7, v10

    .line 1714
    move v8, v12

    .line 1715
    move/from16 v1, v29

    .line 1716
    .line 1717
    iget-object v0, v6, Lc/g;->K:Ljava/lang/Object;

    .line 1718
    .line 1719
    check-cast v0, Lcom/google/android/gms/internal/ads/p0;

    .line 1720
    .line 1721
    if-nez v0, :cond_52

    .line 1722
    .line 1723
    if-eqz v7, :cond_52

    .line 1724
    .line 1725
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 1726
    .line 1727
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 1728
    .line 1729
    .line 1730
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/K;->c(I)V

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 1734
    .line 1735
    .line 1736
    move-object/from16 v2, v28

    .line 1737
    .line 1738
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    .line 1739
    .line 1740
    iput v8, v0, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 1741
    .line 1742
    iput v1, v0, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 1743
    .line 1744
    move/from16 v8, v17

    .line 1745
    .line 1746
    iput v8, v0, Lcom/google/android/gms/internal/ads/K;->B:I

    .line 1747
    .line 1748
    move-object/from16 v8, v33

    .line 1749
    .line 1750
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 1751
    .line 1752
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    .line 1753
    .line 1754
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 1755
    .line 1756
    move-object/from16 v1, v30

    .line 1757
    .line 1758
    if-eqz v1, :cond_51

    .line 1759
    .line 1760
    iget-wide v2, v1, Lo1/c;->c:J

    .line 1761
    .line 1762
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->u1(J)I

    .line 1763
    .line 1764
    .line 1765
    move-result v2

    .line 1766
    iput v2, v0, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 1767
    .line 1768
    iget-wide v1, v1, Lo1/c;->d:J

    .line 1769
    .line 1770
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->u1(J)I

    .line 1771
    .line 1772
    .line 1773
    move-result v1

    .line 1774
    iput v1, v0, Lcom/google/android/gms/internal/ads/K;->h:I

    .line 1775
    .line 1776
    :cond_51
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 1777
    .line 1778
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1779
    .line 1780
    .line 1781
    iput-object v1, v6, Lc/g;->K:Ljava/lang/Object;

    .line 1782
    .line 1783
    :cond_52
    return-void
.end method
