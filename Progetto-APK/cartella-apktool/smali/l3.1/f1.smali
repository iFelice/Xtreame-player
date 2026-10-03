.class public final Ll3/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ll3/f1;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 52

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ll3/f1;->a:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v18, v10

    move-object v3, v15

    move-object/from16 v17, v3

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_6

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v13, :cond_5

    if-eq v5, v12, :cond_4

    if-eq v5, v9, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v6, :cond_0

    .line 5
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v21

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v4, v1}, Lf/b;->F(ILandroid/os/Parcel;)I

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v20, v15

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v1, v4, v9}, Lf/b;->g0(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {v4, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v4

    move-wide/from16 v18, v4

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    .line 13
    :cond_6
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 14
    new-instance v1, Lcom/google/android/gms/cast/MediaError;

    .line 15
    invoke-static {v3}, LH3/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v16, v1

    .line 16
    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/cast/MediaError;-><init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1

    .line 17
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v15

    const/4 v3, 0x0

    .line 18
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_b

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v13, :cond_a

    if-eq v6, v12, :cond_9

    if-eq v6, v9, :cond_8

    if-eq v6, v7, :cond_7

    .line 20
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1

    .line 21
    :cond_7
    sget-object v4, LC3/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    invoke-static {v1, v5, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, LC3/h;

    goto :goto_1

    .line 23
    :cond_8
    invoke-static {v5, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    goto :goto_1

    .line 24
    :cond_9
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 25
    :cond_a
    invoke-static {v5, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v14

    goto :goto_1

    .line 26
    :cond_b
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 27
    new-instance v1, LC3/i;

    invoke-direct {v1, v14, v15, v3, v4}, LC3/i;-><init>(ZLjava/lang/String;ZLC3/h;)V

    return-object v1

    .line 28
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 29
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_d

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v13, :cond_c

    .line 31
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_2

    .line 32
    :cond_c
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_2

    .line 33
    :cond_d
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 34
    new-instance v1, LC3/G;

    invoke-direct {v1, v14}, LC3/G;-><init>(I)V

    return-object v1

    .line 35
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v17, v10

    move-wide/from16 v20, v17

    move-object/from16 v19, v15

    move-object/from16 v23, v19

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 36
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_e

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    .line 38
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_3

    .line 39
    :pswitch_3
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v25, v3

    goto :goto_3

    .line 40
    :pswitch_4
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v24, v3

    goto :goto_3

    .line 41
    :pswitch_5
    invoke-static {v3, v1}, Lf/b;->o(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_3

    .line 42
    :pswitch_6
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v22, v3

    goto :goto_3

    .line 43
    :pswitch_7
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v20, v3

    goto :goto_3

    .line 44
    :pswitch_8
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_3

    .line 45
    :pswitch_9
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_3

    .line 46
    :cond_e
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 47
    new-instance v1, LC3/b;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v25}, LC3/b;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;ZZ)V

    return-object v1

    .line 48
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    .line 49
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_11

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v13, :cond_10

    if-eq v5, v12, :cond_f

    .line 51
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_4

    .line 52
    :cond_f
    sget-object v3, LC3/w;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    invoke-static {v1, v4, v3}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/w;

    goto :goto_4

    .line 54
    :cond_10
    sget-object v5, LC3/w;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-static {v1, v4, v5}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v15, v4

    check-cast v15, LC3/w;

    goto :goto_4

    .line 56
    :cond_11
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 57
    new-instance v1, LC3/x;

    invoke-direct {v1, v15, v3}, LC3/x;-><init>(LC3/w;LC3/w;)V

    return-object v1

    .line 58
    :pswitch_b
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 59
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_15

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v13, :cond_14

    if-eq v7, v12, :cond_13

    if-eq v7, v9, :cond_12

    .line 61
    invoke-static {v6, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_5

    .line 62
    :cond_12
    invoke-static {v6, v1}, Lf/b;->B(ILandroid/os/Parcel;)F

    move-result v4

    goto :goto_5

    .line 63
    :cond_13
    invoke-static {v6, v1}, Lf/b;->B(ILandroid/os/Parcel;)F

    move-result v3

    goto :goto_5

    .line 64
    :cond_14
    invoke-static {v6, v1}, Lf/b;->B(ILandroid/os/Parcel;)F

    move-result v5

    goto :goto_5

    .line 65
    :cond_15
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 66
    new-instance v1, LC3/w;

    invoke-direct {v1, v5, v3, v4}, LC3/w;-><init>(FFF)V

    return-object v1

    .line 67
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    .line 68
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_18

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v8, :cond_17

    if-eq v5, v13, :cond_16

    .line 70
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_6

    .line 71
    :cond_16
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 72
    :cond_17
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    .line 73
    :cond_18
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 74
    new-instance v1, LC3/h;

    invoke-direct {v1, v15, v3}, LC3/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 75
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v19, v10

    move-wide/from16 v27, v19

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v21, v18

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v29, v26

    move-object/from16 v30, v29

    .line 76
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_19

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_2

    .line 78
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_7

    .line 79
    :pswitch_e
    sget-object v4, LC3/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/u;

    move-object/from16 v30, v3

    goto :goto_7

    .line 81
    :pswitch_f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_7

    .line 82
    :pswitch_10
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v27, v3

    goto :goto_7

    .line 83
    :pswitch_11
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_7

    .line 84
    :pswitch_12
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_7

    .line 85
    :pswitch_13
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_7

    .line 86
    :pswitch_14
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_7

    .line 87
    :pswitch_15
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_7

    .line 88
    :pswitch_16
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_7

    .line 89
    :pswitch_17
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v19, v3

    goto :goto_7

    .line 90
    :pswitch_18
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_7

    .line 91
    :pswitch_19
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_7

    .line 92
    :cond_19
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 93
    new-instance v1, LC3/a;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v30}, LC3/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;LC3/u;)V

    return-object v1

    .line 94
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 95
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1b

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v13, :cond_1a

    .line 97
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_8

    .line 98
    :cond_1a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    .line 99
    :cond_1b
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 100
    new-instance v1, LH3/c;

    invoke-direct {v1, v15}, LH3/c;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 101
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide v5, v3

    move-object v9, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 102
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v2, :cond_1c

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    packed-switch v11, :pswitch_data_3

    .line 104
    invoke-static {v10, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_9

    .line 105
    :pswitch_1c
    invoke-static {v10, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v5

    goto :goto_9

    .line 106
    :pswitch_1d
    sget-object v9, LC3/x;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    invoke-static {v1, v10, v9}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, LC3/x;

    goto :goto_9

    .line 108
    :pswitch_1e
    invoke-static {v10, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v8

    goto :goto_9

    .line 109
    :pswitch_1f
    sget-object v11, LC3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    invoke-static {v1, v10, v11}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, LC3/d;

    move-object v15, v10

    goto :goto_9

    .line 111
    :pswitch_20
    invoke-static {v10, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_9

    .line 112
    :pswitch_21
    invoke-static {v10, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v10

    move v14, v10

    goto :goto_9

    .line 113
    :pswitch_22
    invoke-static {v10, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    goto :goto_9

    .line 114
    :cond_1c
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 115
    new-instance v1, LH3/d;

    .line 116
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-wide v3, v1, LH3/d;->G:D

    iput-boolean v14, v1, LH3/d;->H:Z

    iput v7, v1, LH3/d;->I:I

    iput-object v15, v1, LH3/d;->J:LC3/d;

    iput v8, v1, LH3/d;->K:I

    iput-object v9, v1, LH3/d;->L:LC3/x;

    iput-wide v5, v1, LH3/d;->M:D

    return-object v1

    .line 118
    :pswitch_23
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 119
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_20

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v13, :cond_1f

    if-eq v6, v12, :cond_1e

    if-eq v6, v9, :cond_1d

    .line 121
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_a

    .line 122
    :cond_1d
    invoke-static {v5, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v4

    goto :goto_a

    .line 123
    :cond_1e
    invoke-static {v5, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    goto :goto_a

    .line 124
    :cond_1f
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_a

    .line 125
    :cond_20
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 126
    new-instance v1, LH3/z;

    invoke-direct {v1, v14, v3, v4}, LH3/z;-><init>(IZZ)V

    return-object v1

    .line 127
    :pswitch_24
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v24, v3

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v20, v18

    move-object/from16 v22, v20

    move-object/from16 v29, v22

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 128
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_21

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_4

    .line 130
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_b

    .line 131
    :pswitch_25
    sget-object v4, LD3/F;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LD3/F;

    move-object/from16 v33, v3

    goto :goto_b

    .line 133
    :pswitch_26
    sget-object v4, LD3/E;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LD3/E;

    move-object/from16 v32, v3

    goto :goto_b

    .line 135
    :pswitch_27
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v31, v3

    goto :goto_b

    .line 136
    :pswitch_28
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    goto :goto_b

    .line 137
    :pswitch_29
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v30, v3

    goto :goto_b

    .line 138
    :pswitch_2a
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_b

    .line 139
    :pswitch_2b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v28, v3

    goto :goto_b

    .line 140
    :pswitch_2c
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v27, v3

    goto :goto_b

    .line 141
    :pswitch_2d
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v26, v3

    goto :goto_b

    .line 142
    :pswitch_2e
    invoke-static {v3, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    move-wide/from16 v24, v3

    goto :goto_b

    .line 143
    :pswitch_2f
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v23, v3

    goto :goto_b

    .line 144
    :pswitch_30
    sget-object v4, LE3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 145
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LE3/b;

    move-object/from16 v22, v3

    goto :goto_b

    .line 146
    :pswitch_31
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v21, v3

    goto :goto_b

    .line 147
    :pswitch_32
    sget-object v4, LC3/i;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 148
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/i;

    move-object/from16 v20, v3

    goto/16 :goto_b

    .line 149
    :pswitch_33
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v19, v3

    goto/16 :goto_b

    .line 150
    :pswitch_34
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_b

    .line 151
    :pswitch_35
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_b

    .line 152
    :cond_21
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 153
    new-instance v1, LD3/b;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v33}, LD3/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;ZLC3/i;ZLE3/b;ZDZZZLjava/util/ArrayList;ZZLD3/E;LD3/F;)V

    return-object v1

    .line 154
    :pswitch_36
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 155
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_23

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v13, :cond_22

    .line 157
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_c

    .line 158
    :cond_22
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_c

    .line 159
    :cond_23
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 160
    new-instance v1, LD3/F;

    invoke-direct {v1, v14}, LD3/F;-><init>(I)V

    return-object v1

    .line 161
    :pswitch_37
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 162
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_25

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v13, :cond_24

    .line 164
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_d

    .line 165
    :cond_24
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v14

    goto :goto_d

    .line 166
    :cond_25
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 167
    new-instance v1, LD3/E;

    invoke-direct {v1, v14}, LD3/E;-><init>(Z)V

    return-object v1

    .line 168
    :pswitch_38
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    .line 169
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_29

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v13, :cond_28

    if-eq v5, v12, :cond_27

    if-eq v5, v9, :cond_26

    .line 171
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_e

    .line 172
    :cond_26
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 173
    :cond_27
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_e

    .line 174
    :cond_28
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_e

    .line 175
    :cond_29
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 176
    new-instance v1, LE3/e;

    invoke-direct {v1, v15, v14, v3}, LE3/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 177
    :pswitch_39
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 178
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_2d

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v13, :cond_2c

    if-eq v6, v12, :cond_2b

    if-eq v6, v9, :cond_2a

    .line 180
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_f

    .line 181
    :cond_2a
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_f

    .line 182
    :cond_2b
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_f

    .line 183
    :cond_2c
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_f

    .line 184
    :cond_2d
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 185
    new-instance v1, LE3/c;

    invoke-direct {v1, v14, v3, v4}, LE3/c;-><init>(III)V

    return-object v1

    .line 186
    :pswitch_3a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v19, v10

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v21, v18

    move-object/from16 v49, v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    .line 187
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2e

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_5

    .line 189
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_10

    .line 190
    :pswitch_3b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v51, v3

    goto :goto_10

    .line 191
    :pswitch_3c
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v50, v3

    goto :goto_10

    .line 192
    :pswitch_3d
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v49, v3

    goto :goto_10

    .line 193
    :pswitch_3e
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v48, v3

    goto :goto_10

    .line 194
    :pswitch_3f
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v47, v3

    goto :goto_10

    .line 195
    :pswitch_40
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v46, v3

    goto :goto_10

    .line 196
    :pswitch_41
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v45, v3

    goto :goto_10

    .line 197
    :pswitch_42
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v44, v3

    goto :goto_10

    .line 198
    :pswitch_43
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v43, v3

    goto :goto_10

    .line 199
    :pswitch_44
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v42, v3

    goto :goto_10

    .line 200
    :pswitch_45
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v41, v3

    goto :goto_10

    .line 201
    :pswitch_46
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v40, v3

    goto :goto_10

    .line 202
    :pswitch_47
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v39, v3

    goto :goto_10

    .line 203
    :pswitch_48
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v38, v3

    goto :goto_10

    .line 204
    :pswitch_49
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v37, v3

    goto :goto_10

    .line 205
    :pswitch_4a
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v36, v3

    goto/16 :goto_10

    .line 206
    :pswitch_4b
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v35, v3

    goto/16 :goto_10

    .line 207
    :pswitch_4c
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v34, v3

    goto/16 :goto_10

    .line 208
    :pswitch_4d
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v33, v3

    goto/16 :goto_10

    .line 209
    :pswitch_4e
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v32, v3

    goto/16 :goto_10

    .line 210
    :pswitch_4f
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v31, v3

    goto/16 :goto_10

    .line 211
    :pswitch_50
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v30, v3

    goto/16 :goto_10

    .line 212
    :pswitch_51
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v29, v3

    goto/16 :goto_10

    .line 213
    :pswitch_52
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v28, v3

    goto/16 :goto_10

    .line 214
    :pswitch_53
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v27, v3

    goto/16 :goto_10

    .line 215
    :pswitch_54
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v26, v3

    goto/16 :goto_10

    .line 216
    :pswitch_55
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v25, v3

    goto/16 :goto_10

    .line 217
    :pswitch_56
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v24, v3

    goto/16 :goto_10

    .line 218
    :pswitch_57
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v23, v3

    goto/16 :goto_10

    .line 219
    :pswitch_58
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v22, v3

    goto/16 :goto_10

    .line 220
    :pswitch_59
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_10

    .line 221
    :pswitch_5a
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v19, v3

    goto/16 :goto_10

    .line 222
    :pswitch_5b
    invoke-static {v3, v1}, Lf/b;->j(ILandroid/os/Parcel;)[I

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_10

    .line 223
    :pswitch_5c
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_10

    .line 224
    :cond_2e
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 225
    new-instance v1, LE3/g;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v51}, LE3/g;-><init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;ZZ)V

    return-object v1

    .line 226
    :pswitch_5d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v15

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 227
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2f

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v10, v3

    packed-switch v10, :pswitch_data_6

    .line 229
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_11

    .line 230
    :pswitch_5e
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v9

    goto :goto_11

    .line 231
    :pswitch_5f
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v8

    goto :goto_11

    .line 232
    :pswitch_60
    sget-object v7, LE3/g;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    invoke-static {v1, v3, v7}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, LE3/g;

    goto :goto_11

    .line 234
    :pswitch_61
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v6

    goto :goto_11

    .line 235
    :pswitch_62
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    .line 236
    :pswitch_63
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 237
    :cond_2f
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 238
    new-instance v1, LE3/b;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, LE3/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;LE3/g;ZZ)V

    return-object v1

    .line 239
    :pswitch_64
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v24, v10

    move-object/from16 v18, v15

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    const/16 v17, 0x0

    .line 240
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_30

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_7

    .line 242
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_12

    .line 243
    :pswitch_65
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_12

    .line 244
    :pswitch_66
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    goto :goto_12

    .line 245
    :pswitch_67
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 246
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_12

    .line 247
    :pswitch_68
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_12

    .line 248
    :pswitch_69
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v24, v3

    goto :goto_12

    .line 249
    :pswitch_6a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_12

    :pswitch_6b
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 250
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v22, v3

    goto :goto_12

    .line 251
    :pswitch_6c
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_12

    .line 252
    :pswitch_6d
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_12

    .line 253
    :pswitch_6e
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_12

    .line 254
    :pswitch_6f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_12

    .line 255
    :pswitch_70
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v17, v3

    goto :goto_12

    .line 256
    :cond_30
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 257
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v29}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 258
    :pswitch_71
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 259
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_33

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_32

    if-eq v4, v13, :cond_31

    .line 261
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_13

    .line 262
    :cond_31
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move v14, v3

    goto :goto_13

    .line 263
    :cond_32
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_13

    .line 264
    :cond_33
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 265
    new-instance v1, LA3/d;

    invoke-direct {v1, v15, v14}, LA3/d;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 266
    :pswitch_72
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    .line 267
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_36

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v8, :cond_35

    if-eq v5, v13, :cond_34

    .line 269
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_14

    .line 270
    :cond_34
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    .line 271
    :cond_35
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    goto :goto_14

    .line 272
    :cond_36
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 273
    new-instance v1, LA3/c;

    invoke-direct {v1, v15, v3}, LA3/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 274
    :pswitch_73
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object/from16 v19, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 275
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_37

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_8

    .line 277
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_15

    .line 278
    :pswitch_74
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v25

    goto :goto_15

    .line 279
    :pswitch_75
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v24

    goto :goto_15

    .line 280
    :pswitch_76
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v23

    goto :goto_15

    .line 281
    :pswitch_77
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v22

    goto :goto_15

    .line 282
    :pswitch_78
    invoke-static {v3, v1}, Lf/b;->B(ILandroid/os/Parcel;)F

    move-result v21

    goto :goto_15

    .line 283
    :pswitch_79
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v20

    goto :goto_15

    .line 284
    :pswitch_7a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v19

    goto :goto_15

    .line 285
    :pswitch_7b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v18

    goto :goto_15

    .line 286
    :pswitch_7c
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v17

    goto :goto_15

    .line 287
    :cond_37
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 288
    new-instance v1, Lk3/g;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v25}, Lk3/g;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-object v1

    .line 289
    :pswitch_7d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 290
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_3a

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_39

    if-eq v4, v13, :cond_38

    .line 292
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_16

    .line 293
    :cond_38
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_16

    .line 294
    :cond_39
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_16

    .line 295
    :cond_3a
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 296
    new-instance v1, Lo3/p;

    invoke-direct {v1, v15, v14}, Lo3/p;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 297
    :pswitch_7e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object/from16 v17, v15

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 298
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_40

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v13, :cond_3f

    if-eq v4, v12, :cond_3e

    if-eq v4, v9, :cond_3d

    if-eq v4, v7, :cond_3c

    if-eq v4, v6, :cond_3b

    .line 300
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_17

    .line 301
    :cond_3b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v21

    goto :goto_17

    .line 302
    :cond_3c
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v20

    goto :goto_17

    .line 303
    :cond_3d
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v19

    goto :goto_17

    .line 304
    :cond_3e
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v18

    goto :goto_17

    .line 305
    :cond_3f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v17

    goto :goto_17

    .line 306
    :cond_40
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 307
    new-instance v1, Lp3/a;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lp3/a;-><init>(Ljava/lang/String;IIZZ)V

    return-object v1

    .line 308
    :pswitch_7f
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v40, v10

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    move-object/from16 v28, v25

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v39, 0x0

    .line 309
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_41

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_9

    .line 311
    :pswitch_80
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_18

    .line 312
    :pswitch_81
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v40, v3

    goto :goto_18

    .line 313
    :pswitch_82
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v39, v3

    goto :goto_18

    .line 314
    :pswitch_83
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v38, v3

    goto :goto_18

    .line 315
    :pswitch_84
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v37, v3

    goto :goto_18

    .line 316
    :pswitch_85
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v36, v3

    goto :goto_18

    .line 317
    :pswitch_86
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    goto :goto_18

    .line 318
    :pswitch_87
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    goto :goto_18

    .line 319
    :pswitch_88
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    goto :goto_18

    .line 320
    :pswitch_89
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_18

    .line 321
    :pswitch_8a
    sget-object v4, Lk3/g;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 322
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lk3/g;

    move-object/from16 v31, v3

    goto :goto_18

    .line 323
    :pswitch_8b
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    goto :goto_18

    .line 324
    :pswitch_8c
    sget-object v4, Lp3/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 325
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lp3/a;

    move-object/from16 v29, v3

    goto :goto_18

    .line 326
    :pswitch_8d
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    goto :goto_18

    .line 327
    :pswitch_8e
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v27, v3

    goto :goto_18

    .line 328
    :pswitch_8f
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v26, v3

    goto/16 :goto_18

    .line 329
    :pswitch_90
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v25, v3

    goto/16 :goto_18

    .line 330
    :pswitch_91
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto/16 :goto_18

    .line 331
    :pswitch_92
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v23, v3

    goto/16 :goto_18

    .line 332
    :pswitch_93
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto/16 :goto_18

    .line 333
    :pswitch_94
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_18

    .line 334
    :pswitch_95
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v20, v3

    goto/16 :goto_18

    .line 335
    :pswitch_96
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_18

    .line 336
    :pswitch_97
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_18

    .line 337
    :pswitch_98
    sget-object v4, Ln3/f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ln3/f;

    move-object/from16 v17, v3

    goto/16 :goto_18

    .line 339
    :cond_41
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 340
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v41}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ln3/f;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lp3/a;Ljava/lang/String;Lk3/g;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;ZJ)V

    return-object v1

    .line 341
    :pswitch_99
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v15

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    const/4 v13, 0x0

    .line 342
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_42

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v14, v3

    packed-switch v14, :pswitch_data_a

    .line 344
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_19

    .line 345
    :pswitch_9a
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v13

    goto :goto_19

    .line 346
    :pswitch_9b
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v12

    goto :goto_19

    :pswitch_9c
    sget-object v11, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 347
    invoke-static {v1, v3, v11}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/content/Intent;

    goto :goto_19

    .line 348
    :pswitch_9d
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_19

    .line 349
    :pswitch_9e
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_19

    .line 350
    :pswitch_9f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v8

    goto :goto_19

    .line 351
    :pswitch_a0
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_19

    .line 352
    :pswitch_a1
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 353
    :pswitch_a2
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 354
    :pswitch_a3
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    .line 355
    :cond_42
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 356
    new-instance v1, Ln3/f;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Ln3/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    return-object v1

    .line 357
    :pswitch_a4
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    move-object v4, v3

    .line 358
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_46

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v8, :cond_45

    if-eq v6, v13, :cond_44

    if-eq v6, v12, :cond_43

    .line 360
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1a

    .line 361
    :cond_43
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    .line 362
    :cond_44
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    .line 363
    :cond_45
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1a

    .line 364
    :cond_46
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 365
    new-instance v1, Lm3/a;

    invoke-direct {v1, v15, v3, v4}, Lm3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 366
    :pswitch_a5
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 367
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_48

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v13, :cond_47

    .line 369
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1b

    .line 370
    :cond_47
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_1b

    .line 371
    :cond_48
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 372
    new-instance v1, Ll3/h1;

    invoke-direct {v1, v14}, Ll3/h1;-><init>(I)V

    return-object v1

    .line 373
    :pswitch_a6
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v18, v10

    move-object/from16 v17, v15

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    .line 374
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_49

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_b

    .line 376
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1c

    .line 377
    :pswitch_a7
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_1c

    .line 378
    :pswitch_a8
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_1c

    .line 379
    :pswitch_a9
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_1c

    .line 380
    :pswitch_aa
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_1c

    .line 381
    :pswitch_ab
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_1c

    .line 382
    :pswitch_ac
    sget-object v4, Ll3/z0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 383
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ll3/z0;

    move-object/from16 v20, v3

    goto :goto_1c

    .line 384
    :pswitch_ad
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v18, v3

    goto :goto_1c

    .line 385
    :pswitch_ae
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_1c

    .line 386
    :cond_49
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 387
    new-instance v1, Ll3/g1;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v25}, Ll3/g1;-><init>(Ljava/lang/String;JLl3/z0;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 388
    :pswitch_af
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v19, v10

    move-object/from16 v21, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 389
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_4e

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_4d

    if-eq v4, v13, :cond_4c

    if-eq v4, v12, :cond_4b

    if-eq v4, v9, :cond_4a

    .line 391
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1d

    .line 392
    :cond_4a
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v19, v3

    goto :goto_1d

    .line 393
    :cond_4b
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_1d

    .line 394
    :cond_4c
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v18, v3

    goto :goto_1d

    .line 395
    :cond_4d
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v17, v3

    goto :goto_1d

    .line 396
    :cond_4e
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 397
    new-instance v1, Ll3/e1;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Ll3/e1;-><init>(IIJLjava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_af
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_99
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_64
        :pswitch_5d
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_24
        :pswitch_23
        :pswitch_1b
        :pswitch_1a
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_80
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ll3/f1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaError;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [LC3/i;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [LC3/G;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [LC3/b;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [LC3/x;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [LC3/w;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [LC3/h;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [LC3/a;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [LH3/c;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [LH3/d;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [LH3/z;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [LD3/b;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [LD3/F;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [LD3/E;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [LE3/e;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [LE3/c;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [LE3/g;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [LE3/b;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [LA3/d;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [LA3/c;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Lk3/g;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Lo3/p;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Lp3/a;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Ln3/f;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Lm3/a;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Ll3/h1;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Ll3/g1;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Ll3/e1;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
