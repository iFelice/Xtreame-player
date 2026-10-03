.class public final LC3/H;
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
    iput p1, p0, LC3/H;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/internal/k;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/common/internal/k;->G:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-static {p1, v2, v3}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-static {p1, v1, v3}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/google/android/gms/common/internal/k;->H:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-static {p1, v1, v3}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/gms/common/internal/k;->I:I

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/common/internal/k;->J:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v3, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/common/internal/k;->K:Landroid/os/IBinder;

    .line 42
    .line 43
    invoke-static {p1, v1, v2}, Lf/b;->L(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/common/internal/k;->L:[Lcom/google/android/gms/common/api/Scope;

    .line 48
    .line 49
    invoke-static {p1, v1, v2, p2}, Lf/b;->T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x7

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/common/internal/k;->M:Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-static {p1, v1, v2}, Lf/b;->J(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/common/internal/k;->N:Landroid/accounts/Account;

    .line 61
    .line 62
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/common/internal/k;->O:[LJ3/d;

    .line 68
    .line 69
    invoke-static {p1, v1, v2, p2}, Lf/b;->T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0xb

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/gms/common/internal/k;->P:[LJ3/d;

    .line 75
    .line 76
    invoke-static {p1, v1, v2, p2}, Lf/b;->T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 77
    .line 78
    .line 79
    const/16 p2, 0xc

    .line 80
    .line 81
    invoke-static {p1, p2, v3}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 82
    .line 83
    .line 84
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/k;->Q:Z

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    const/16 p2, 0xd

    .line 90
    .line 91
    invoke-static {p1, p2, v3}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 92
    .line 93
    .line 94
    iget p2, p0, Lcom/google/android/gms/common/internal/k;->R:I

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/k;->S:Z

    .line 100
    .line 101
    const/16 v1, 0xe

    .line 102
    .line 103
    invoke-static {p1, v1, v3}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    const/16 p2, 0xf

    .line 110
    .line 111
    iget-object p0, p0, Lcom/google/android/gms/common/internal/k;->T:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1, p2, p0}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LC3/H;->a:I

    const/4 v3, 0x6

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, -0x1

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_3

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v10, :cond_2

    if-eq v6, v13, :cond_1

    if-eq v6, v12, :cond_0

    .line 5
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v5, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v5

    move v14, v5

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, LJ3/d;

    invoke-direct {v1, v14, v3, v4, v15}, LJ3/d;-><init>(IJLjava/lang/String;)V

    return-object v1

    .line 10
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v15

    const/4 v3, 0x0

    .line 11
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_8

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v10, :cond_7

    if-eq v6, v13, :cond_6

    if-eq v6, v12, :cond_5

    if-eq v6, v11, :cond_4

    .line 13
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-static {v1, v5, v6}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/app/PendingIntent;

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_1

    .line 17
    :cond_7
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_1

    .line 18
    :cond_8
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, LJ3/b;

    invoke-direct {v1, v14, v3, v15, v4}, LJ3/b;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v1

    .line 19
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    sget-object v3, Lcom/google/android/gms/common/internal/k;->U:[Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Landroid/os/Bundle;

    .line 20
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lcom/google/android/gms/common/internal/k;->V:[LJ3/d;

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v25

    move-object/from16 v20, v15

    move-object/from16 v21, v20

    move-object/from16 v24, v21

    move-object/from16 v30, v24

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 21
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    .line 23
    :pswitch_2
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_2

    .line 24
    :pswitch_3
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v30

    goto :goto_2

    .line 25
    :pswitch_4
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v29

    goto :goto_2

    .line 26
    :pswitch_5
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v28

    goto :goto_2

    .line 27
    :pswitch_6
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v27

    goto :goto_2

    :pswitch_7
    sget-object v4, LJ3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    invoke-static {v1, v3, v4}, Lf/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, [LJ3/d;

    goto :goto_2

    :pswitch_8
    sget-object v4, LJ3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    invoke-static {v1, v3, v4}, Lf/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, [LJ3/d;

    goto :goto_2

    :pswitch_9
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/accounts/Account;

    goto :goto_2

    .line 31
    :pswitch_a
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v23

    goto :goto_2

    :pswitch_b
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    invoke-static {v1, v3, v4}, Lf/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_2

    .line 33
    :pswitch_c
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v21

    goto :goto_2

    .line 34
    :pswitch_d
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 35
    :pswitch_e
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v19

    goto :goto_2

    .line 36
    :pswitch_f
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v18

    goto :goto_2

    .line 37
    :pswitch_10
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v17

    goto :goto_2

    .line 38
    :cond_9
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, Lcom/google/android/gms/common/internal/k;

    move-object/from16 v16, v1

    .line 39
    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/common/internal/k;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[LJ3/d;[LJ3/d;ZIZLjava/lang/String;)V

    return-object v1

    .line 40
    :pswitch_11
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v15

    move-object v7, v4

    move-object v9, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 41
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_a

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v10, v3

    packed-switch v10, :pswitch_data_2

    .line 43
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_3

    .line 44
    :pswitch_12
    invoke-static {v3, v1}, Lf/b;->j(ILandroid/os/Parcel;)[I

    move-result-object v9

    goto :goto_3

    .line 45
    :pswitch_13
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v8

    goto :goto_3

    .line 46
    :pswitch_14
    invoke-static {v3, v1}, Lf/b;->j(ILandroid/os/Parcel;)[I

    move-result-object v7

    goto :goto_3

    .line 47
    :pswitch_15
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v6

    goto :goto_3

    .line 48
    :pswitch_16
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v5

    goto :goto_3

    :pswitch_17
    sget-object v4, Lcom/google/android/gms/common/internal/s;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/common/internal/s;

    goto :goto_3

    .line 50
    :cond_a
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, Lcom/google/android/gms/common/internal/j;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/common/internal/j;-><init>(Lcom/google/android/gms/common/internal/s;ZZ[II[I)V

    return-object v1

    .line 51
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    move-object v4, v3

    .line 52
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_f

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v10, :cond_e

    if-eq v6, v13, :cond_d

    if-eq v6, v12, :cond_c

    if-eq v6, v11, :cond_b

    .line 54
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_b
    sget-object v4, Lcom/google/android/gms/common/internal/j;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-static {v1, v5, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/j;

    goto :goto_4

    .line 56
    :cond_c
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_4

    :cond_d
    sget-object v3, LJ3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    invoke-static {v1, v5, v3}, Lf/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LJ3/d;

    goto :goto_4

    .line 58
    :cond_e
    invoke-static {v5, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v15

    goto :goto_4

    .line 59
    :cond_f
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, Lcom/google/android/gms/common/internal/S;

    .line 60
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v15, v1, Lcom/google/android/gms/common/internal/S;->G:Landroid/os/Bundle;

    iput-object v3, v1, Lcom/google/android/gms/common/internal/S;->H:[LJ3/d;

    iput v14, v1, Lcom/google/android/gms/common/internal/S;->I:I

    iput-object v4, v1, Lcom/google/android/gms/common/internal/S;->J:Lcom/google/android/gms/common/internal/j;

    return-object v1

    .line 62
    :pswitch_19
    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-direct {v2, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/Parcel;)V

    return-object v2

    .line 63
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 64
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_15

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v10, :cond_14

    if-eq v4, v13, :cond_13

    if-eq v4, v12, :cond_12

    if-eq v4, v11, :cond_11

    if-eq v4, v7, :cond_10

    .line 66
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_5

    .line 67
    :cond_10
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v20

    goto :goto_5

    .line 68
    :cond_11
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v19

    goto :goto_5

    .line 69
    :cond_12
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v18

    goto :goto_5

    .line 70
    :cond_13
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v17

    goto :goto_5

    .line 71
    :cond_14
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v16

    goto :goto_5

    .line 72
    :cond_15
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, Lcom/google/android/gms/common/internal/s;

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/common/internal/s;-><init>(IZZII)V

    return-object v1

    .line 73
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object/from16 v18, v15

    move-object/from16 v19, v18

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 74
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1b

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v10, :cond_1a

    if-eq v4, v13, :cond_19

    if-eq v4, v12, :cond_18

    if-eq v4, v11, :cond_17

    if-eq v4, v7, :cond_16

    .line 76
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_6

    .line 77
    :cond_16
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v21

    goto :goto_6

    .line 78
    :cond_17
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v20

    goto :goto_6

    .line 79
    :cond_18
    sget-object v4, LJ3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, LJ3/b;

    goto :goto_6

    .line 81
    :cond_19
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v18

    goto :goto_6

    .line 82
    :cond_1a
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v17

    goto :goto_6

    .line 83
    :cond_1b
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 84
    new-instance v1, Lcom/google/android/gms/common/internal/D;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/common/internal/D;-><init>(ILandroid/os/IBinder;LJ3/b;ZZ)V

    return-object v1

    .line 85
    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v15

    const/4 v3, 0x0

    .line 86
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_20

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v10, :cond_1f

    if-eq v6, v13, :cond_1e

    if-eq v6, v12, :cond_1d

    if-eq v6, v11, :cond_1c

    .line 88
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_7

    .line 89
    :cond_1c
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    invoke-static {v1, v5, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_7

    .line 91
    :cond_1d
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_7

    :cond_1e
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 92
    invoke-static {v1, v5, v6}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/accounts/Account;

    goto :goto_7

    .line 93
    :cond_1f
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_7

    .line 94
    :cond_20
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 95
    new-instance v1, Lcom/google/android/gms/common/internal/C;

    invoke-direct {v1, v14, v15, v3, v4}, Lcom/google/android/gms/common/internal/C;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v1

    .line 96
    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v20, v8

    move-wide/from16 v22, v20

    move-object/from16 v24, v15

    move-object/from16 v25, v24

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    .line 97
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_21

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_3

    .line 99
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_8

    .line 100
    :pswitch_1e
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v27, v3

    goto :goto_8

    .line 101
    :pswitch_1f
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v26, v3

    goto :goto_8

    .line 102
    :pswitch_20
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_8

    .line 103
    :pswitch_21
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_8

    .line 104
    :pswitch_22
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v22, v3

    goto :goto_8

    .line 105
    :pswitch_23
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v20, v3

    goto :goto_8

    .line 106
    :pswitch_24
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v19, v3

    goto :goto_8

    .line 107
    :pswitch_25
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v18, v3

    goto :goto_8

    .line 108
    :pswitch_26
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v17, v3

    goto :goto_8

    .line 109
    :cond_21
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 110
    new-instance v1, Lcom/google/android/gms/common/internal/q;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v27}, Lcom/google/android/gms/common/internal/q;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v1

    .line 111
    :pswitch_27
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 112
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_24

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v10, :cond_23

    if-eq v4, v13, :cond_22

    .line 114
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_9

    .line 115
    :cond_22
    sget-object v4, Lcom/google/android/gms/common/internal/q;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    goto :goto_9

    .line 117
    :cond_23
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_9

    .line 118
    :cond_24
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 119
    new-instance v1, Lcom/google/android/gms/common/internal/t;

    invoke-direct {v1, v14, v15}, Lcom/google/android/gms/common/internal/t;-><init>(ILjava/util/List;)V

    return-object v1

    .line 120
    :pswitch_28
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 121
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_29

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v10, :cond_28

    if-eq v6, v13, :cond_27

    if-eq v6, v12, :cond_26

    if-eq v6, v11, :cond_25

    .line 123
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_a

    .line 124
    :cond_25
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_a

    .line 125
    :cond_26
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_a

    :cond_27
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    invoke-static {v1, v5, v6}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/net/Uri;

    goto :goto_a

    .line 127
    :cond_28
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_a

    .line 128
    :cond_29
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 129
    new-instance v1, LL3/a;

    invoke-direct {v1, v14, v15, v3, v4}, LL3/a;-><init>(ILandroid/net/Uri;II)V

    return-object v1

    .line 130
    :pswitch_29
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    move-object v4, v3

    .line 131
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_2e

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v10, :cond_2d

    if-eq v6, v13, :cond_2c

    if-eq v6, v12, :cond_2b

    if-eq v6, v11, :cond_2a

    .line 133
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_2a
    sget-object v4, LJ3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    invoke-static {v1, v5, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, LJ3/b;

    goto :goto_b

    :cond_2b
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 135
    invoke-static {v1, v5, v3}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_b

    .line 136
    :cond_2c
    invoke-static {v5, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_b

    .line 137
    :cond_2d
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_b

    .line 138
    :cond_2e
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v14, v15, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    return-object v1

    .line 139
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    .line 140
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_31

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v10, :cond_30

    if-eq v4, v13, :cond_2f

    .line 142
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_c

    .line 143
    :cond_2f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_c

    .line 144
    :cond_30
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_c

    .line 145
    :cond_31
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    .line 146
    invoke-direct {v1, v14, v15}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 147
    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move-object/from16 v29, v27

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v33, v31

    move-object/from16 v34, v33

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v28, 0x0

    const/16 v32, 0x0

    .line 148
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_33

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_4

    .line 150
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_d

    .line 151
    :pswitch_2c
    invoke-static {v3, v1}, Lf/b;->F(ILandroid/os/Parcel;)I

    move-result v3

    if-nez v3, :cond_32

    move-object/from16 v34, v15

    goto :goto_d

    .line 152
    :cond_32
    invoke-static {v1, v3, v11}, Lf/b;->g0(Landroid/os/Parcel;II)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v34, v3

    goto :goto_d

    .line 154
    :pswitch_2d
    sget-object v4, LH3/z;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, LH3/z;

    goto :goto_d

    .line 156
    :pswitch_2e
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v32

    goto :goto_d

    .line 157
    :pswitch_2f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v31

    goto :goto_d

    .line 158
    :pswitch_30
    invoke-static {v3, v1}, Lf/b;->i(ILandroid/os/Parcel;)[B

    move-result-object v30

    goto :goto_d

    .line 159
    :pswitch_31
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v29

    goto :goto_d

    .line 160
    :pswitch_32
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v28

    goto :goto_d

    .line 161
    :pswitch_33
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v27

    goto :goto_d

    .line 162
    :pswitch_34
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v26

    goto :goto_d

    .line 163
    :pswitch_35
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v25

    goto :goto_d

    .line 164
    :pswitch_36
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v24

    goto :goto_d

    .line 165
    :pswitch_37
    sget-object v4, LL3/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    goto :goto_d

    .line 167
    :pswitch_38
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v22

    goto :goto_d

    .line 168
    :pswitch_39
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v21

    goto :goto_d

    .line 169
    :pswitch_3a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v20

    goto :goto_d

    .line 170
    :pswitch_3b
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v19

    goto :goto_d

    .line 171
    :pswitch_3c
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_d

    .line 172
    :pswitch_3d
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_d

    .line 173
    :cond_33
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 174
    new-instance v1, Lcom/google/android/gms/cast/CastDevice;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v34}, Lcom/google/android/gms/cast/CastDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;ZLH3/z;Ljava/lang/Integer;)V

    return-object v1

    .line 175
    :pswitch_3e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 176
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_37

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v13, :cond_36

    if-eq v6, v12, :cond_35

    if-eq v6, v11, :cond_34

    .line 178
    invoke-static {v5, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_e

    .line 179
    :cond_34
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_e

    .line 180
    :cond_35
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_e

    .line 181
    :cond_36
    invoke-static {v5, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_e

    .line 182
    :cond_37
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 183
    new-instance v1, LC3/v;

    invoke-direct {v1, v14, v3, v4}, LC3/v;-><init>(III)V

    return-object v1

    .line 184
    :pswitch_3f
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    .line 185
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_3a

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v13, :cond_39

    if-eq v5, v12, :cond_38

    .line 187
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_f

    .line 188
    :cond_38
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    .line 189
    :cond_39
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_f

    .line 190
    :cond_3a
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 191
    new-instance v1, LC3/u;

    invoke-direct {v1, v15, v3}, LC3/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 192
    :pswitch_40
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v25, v15

    move-object/from16 v28, v25

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 193
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_3b

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_5

    .line 195
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_10

    .line 196
    :pswitch_41
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v28

    goto :goto_10

    .line 197
    :pswitch_42
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v27

    goto :goto_10

    .line 198
    :pswitch_43
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v26

    goto :goto_10

    .line 199
    :pswitch_44
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v25

    goto :goto_10

    .line 200
    :pswitch_45
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v24

    goto :goto_10

    .line 201
    :pswitch_46
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v23

    goto :goto_10

    .line 202
    :pswitch_47
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v22

    goto :goto_10

    .line 203
    :pswitch_48
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v21

    goto :goto_10

    .line 204
    :pswitch_49
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v20

    goto :goto_10

    .line 205
    :pswitch_4a
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v19

    goto :goto_10

    .line 206
    :pswitch_4b
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v18

    goto :goto_10

    .line 207
    :pswitch_4c
    invoke-static {v3, v1}, Lf/b;->B(ILandroid/os/Parcel;)F

    move-result v17

    goto :goto_10

    .line 208
    :cond_3b
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 209
    new-instance v1, LC3/t;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v28}, LC3/t;-><init>(FIIIIIIILjava/lang/String;IILjava/lang/String;)V

    return-object v1

    .line 210
    :pswitch_4d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    .line 211
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_3e

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v13, :cond_3d

    if-eq v5, v12, :cond_3c

    .line 213
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_11

    .line 214
    :cond_3c
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 215
    :cond_3d
    sget-object v5, LC3/k;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 216
    invoke-static {v1, v4, v5}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v15, v4

    check-cast v15, LC3/k;

    goto :goto_11

    .line 217
    :cond_3e
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 218
    new-instance v1, LC3/s;

    .line 219
    invoke-static {v3}, LH3/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v15, v2}, LC3/s;-><init>(LC3/k;Lorg/json/JSONObject;)V

    return-object v1

    .line 220
    :pswitch_4e
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

    .line 221
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_3f

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v13, v3

    packed-switch v13, :pswitch_data_6

    .line 223
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_12

    .line 224
    :pswitch_4f
    invoke-static {v3, v1}, Lf/b;->z(ILandroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_12

    .line 225
    :pswitch_50
    invoke-static {v3, v1}, Lf/b;->z(ILandroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_12

    .line 226
    :pswitch_51
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_12

    .line 227
    :pswitch_52
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_12

    :pswitch_53
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 228
    invoke-static {v1, v3, v8}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/net/Uri;

    goto :goto_12

    .line 229
    :pswitch_54
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    .line 230
    :pswitch_55
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_12

    .line 231
    :pswitch_56
    sget-object v13, LL3/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 232
    invoke-static {v1, v3, v13}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    goto :goto_12

    .line 233
    :pswitch_57
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    .line 234
    :pswitch_58
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 235
    :cond_3f
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 236
    new-instance v1, LC3/d;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, LC3/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v1

    .line 237
    :pswitch_59
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v17, v8

    move-object/from16 v20, v15

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v25, v23

    const/16 v19, 0x0

    const/16 v24, 0x0

    .line 238
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_40

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_7

    .line 240
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_13

    .line 241
    :pswitch_5a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_13

    .line 242
    :pswitch_5b
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_13

    .line 243
    :pswitch_5c
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v24, v3

    goto :goto_13

    .line 244
    :pswitch_5d
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_13

    .line 245
    :pswitch_5e
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_13

    .line 246
    :pswitch_5f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_13

    .line 247
    :pswitch_60
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_13

    .line 248
    :pswitch_61
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v19, v3

    goto :goto_13

    .line 249
    :pswitch_62
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_13

    .line 250
    :cond_40
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 251
    new-instance v1, Lcom/google/android/gms/cast/MediaTrack;

    .line 252
    invoke-static {v15}, LH3/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v16, v1

    .line 253
    invoke-direct/range {v16 .. v26}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    return-object v1

    .line 254
    :pswitch_63
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v21, v5

    move-wide/from16 v29, v21

    move-wide/from16 v18, v8

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    move-object/from16 v17, v15

    move-object/from16 v32, v17

    move-object/from16 v35, v32

    move-object/from16 v37, v35

    move-object/from16 v39, v37

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    .line 255
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_41

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_8

    .line 257
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_14

    .line 258
    :pswitch_64
    sget-object v4, LC3/n;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 259
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/n;

    move-object/from16 v42, v3

    goto :goto_14

    .line 260
    :pswitch_65
    sget-object v4, LC3/j;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 261
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/j;

    move-object/from16 v41, v3

    goto :goto_14

    .line 262
    :pswitch_66
    sget-object v4, LC3/v;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 263
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/v;

    move-object/from16 v40, v3

    goto :goto_14

    .line 264
    :pswitch_67
    sget-object v4, LC3/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/c;

    move-object/from16 v39, v3

    goto :goto_14

    .line 266
    :pswitch_68
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v38, v3

    goto :goto_14

    .line 267
    :pswitch_69
    sget-object v4, LC3/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 268
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v37, v3

    goto :goto_14

    .line 269
    :pswitch_6a
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v36, v3

    goto :goto_14

    .line 270
    :pswitch_6b
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    goto :goto_14

    .line 271
    :pswitch_6c
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v34, v3

    goto :goto_14

    .line 272
    :pswitch_6d
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v33, v3

    goto :goto_14

    .line 273
    :pswitch_6e
    invoke-static {v3, v1}, Lf/b;->l(ILandroid/os/Parcel;)[J

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_14

    .line 274
    :pswitch_6f
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v31, v3

    goto :goto_14

    .line 275
    :pswitch_70
    invoke-static {v3, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    move-wide/from16 v29, v3

    goto :goto_14

    .line 276
    :pswitch_71
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v27, v3

    goto/16 :goto_14

    .line 277
    :pswitch_72
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v25, v3

    goto/16 :goto_14

    .line 278
    :pswitch_73
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v24, v3

    goto/16 :goto_14

    .line 279
    :pswitch_74
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v23, v3

    goto/16 :goto_14

    .line 280
    :pswitch_75
    invoke-static {v3, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    move-wide/from16 v21, v3

    goto/16 :goto_14

    .line 281
    :pswitch_76
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v20, v3

    goto/16 :goto_14

    .line 282
    :pswitch_77
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v18, v3

    goto/16 :goto_14

    .line 283
    :pswitch_78
    sget-object v4, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v17, v3

    goto/16 :goto_14

    .line 285
    :cond_41
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 286
    new-instance v1, LC3/r;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v42}, LC3/r;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLC3/c;LC3/v;LC3/j;LC3/n;)V

    return-object v1

    .line 287
    :pswitch_79
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v20, v5

    move-wide/from16 v22, v20

    move-wide/from16 v24, v22

    move-object/from16 v17, v15

    move-object/from16 v26, v17

    move-object/from16 v27, v26

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 288
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_42

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_9

    .line 290
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_15

    .line 291
    :pswitch_7a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_15

    .line 292
    :pswitch_7b
    invoke-static {v3, v1}, Lf/b;->l(ILandroid/os/Parcel;)[J

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_15

    .line 293
    :pswitch_7c
    invoke-static {v3, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    move-wide/from16 v24, v3

    goto :goto_15

    .line 294
    :pswitch_7d
    invoke-static {v3, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    move-wide/from16 v22, v3

    goto :goto_15

    .line 295
    :pswitch_7e
    invoke-static {v3, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    move-wide/from16 v20, v3

    goto :goto_15

    .line 296
    :pswitch_7f
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v19, v3

    goto :goto_15

    .line 297
    :pswitch_80
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v18, v3

    goto :goto_15

    .line 298
    :pswitch_81
    sget-object v4, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 299
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v17, v3

    goto :goto_15

    .line 300
    :cond_42
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 301
    new-instance v1, LC3/p;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v27}, LC3/p;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    return-object v1

    .line 302
    :pswitch_82
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v6, v15

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 303
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-ge v12, v2, :cond_43

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    int-to-char v13, v12

    packed-switch v13, :pswitch_data_a

    .line 305
    invoke-static {v12, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_16

    .line 306
    :pswitch_83
    invoke-static {v12, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v5

    goto :goto_16

    .line 307
    :pswitch_84
    invoke-static {v12, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v8

    goto :goto_16

    .line 308
    :pswitch_85
    invoke-static {v12, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_16

    .line 309
    :pswitch_86
    sget-object v11, LC3/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 310
    invoke-static {v1, v12, v11}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_16

    .line 311
    :pswitch_87
    invoke-static {v12, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_16

    .line 312
    :pswitch_88
    sget-object v10, LC3/m;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 313
    invoke-static {v1, v12, v10}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, LC3/m;

    goto :goto_16

    .line 314
    :pswitch_89
    invoke-static {v12, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    .line 315
    :pswitch_8a
    invoke-static {v12, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v12

    move v14, v12

    goto :goto_16

    .line 316
    :pswitch_8b
    invoke-static {v12, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    .line 317
    :pswitch_8c
    invoke-static {v12, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    move-object v15, v12

    goto :goto_16

    .line 318
    :cond_43
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 319
    new-instance v1, LC3/n;

    .line 320
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object v15, v1, LC3/n;->G:Ljava/lang/String;

    iput-object v6, v1, LC3/n;->H:Ljava/lang/String;

    iput v14, v1, LC3/n;->I:I

    iput-object v7, v1, LC3/n;->J:Ljava/lang/String;

    iput-object v10, v1, LC3/n;->K:LC3/m;

    iput v3, v1, LC3/n;->L:I

    iput-object v11, v1, LC3/n;->M:Ljava/util/List;

    iput v4, v1, LC3/n;->N:I

    iput-wide v8, v1, LC3/n;->O:J

    iput-boolean v5, v1, LC3/n;->P:Z

    return-object v1

    .line 322
    :pswitch_8d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v15

    move-object v8, v4

    .line 323
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v2, :cond_49

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    if-eq v10, v13, :cond_48

    if-eq v10, v12, :cond_47

    if-eq v10, v11, :cond_46

    if-eq v10, v7, :cond_45

    if-eq v10, v3, :cond_44

    .line 325
    invoke-static {v9, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_17

    .line 326
    :cond_44
    invoke-static {v9, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v5

    goto :goto_17

    .line 327
    :cond_45
    sget-object v8, LL3/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 328
    invoke-static {v1, v9, v8}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_17

    .line 329
    :cond_46
    sget-object v4, LC3/l;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 330
    invoke-static {v1, v9, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_17

    .line 331
    :cond_47
    invoke-static {v9, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_17

    .line 332
    :cond_48
    invoke-static {v9, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v9

    move v14, v9

    goto :goto_17

    .line 333
    :cond_49
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 334
    new-instance v1, LC3/m;

    .line 335
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 336
    iput v14, v1, LC3/m;->G:I

    iput-object v15, v1, LC3/m;->H:Ljava/lang/String;

    iput-object v4, v1, LC3/m;->I:Ljava/util/List;

    iput-object v8, v1, LC3/m;->J:Ljava/util/List;

    iput-wide v5, v1, LC3/m;->K:D

    return-object v1

    .line 337
    :pswitch_8e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v15

    .line 338
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_4d

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v13, :cond_4c

    if-eq v5, v12, :cond_4b

    if-eq v5, v11, :cond_4a

    .line 340
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_18

    .line 341
    :cond_4a
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_18

    .line 342
    :cond_4b
    invoke-static {v4, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_18

    .line 343
    :cond_4c
    sget-object v5, LL3/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 344
    invoke-static {v1, v4, v5}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    goto :goto_18

    .line 345
    :cond_4d
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 346
    new-instance v1, LC3/l;

    invoke-direct {v1, v15, v3, v14}, LC3/l;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V

    return-object v1

    .line 347
    :pswitch_8f
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v22, v5

    move-wide/from16 v20, v8

    move-wide/from16 v30, v20

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v24, v19

    move-object/from16 v26, v24

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    .line 348
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_4e

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_b

    .line 350
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_19

    .line 351
    :pswitch_90
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v30, v3

    goto :goto_19

    .line 352
    :pswitch_91
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_19

    .line 353
    :pswitch_92
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    goto :goto_19

    .line 354
    :pswitch_93
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_19

    .line 355
    :pswitch_94
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_19

    .line 356
    :pswitch_95
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_19

    .line 357
    :pswitch_96
    invoke-static {v3, v1}, Lf/b;->l(ILandroid/os/Parcel;)[J

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_19

    .line 358
    :pswitch_97
    invoke-static {v3, v1}, Lf/b;->A(ILandroid/os/Parcel;)D

    move-result-wide v3

    move-wide/from16 v22, v3

    goto :goto_19

    .line 359
    :pswitch_98
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v20, v3

    goto :goto_19

    .line 360
    :pswitch_99
    invoke-static {v3, v1}, Lf/b;->z(ILandroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_19

    .line 361
    :pswitch_9a
    sget-object v4, LC3/n;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 362
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/n;

    move-object/from16 v18, v3

    goto :goto_19

    .line 363
    :pswitch_9b
    sget-object v4, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 364
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v17, v3

    goto :goto_19

    .line 365
    :cond_4e
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 366
    new-instance v1, LC3/k;

    .line 367
    invoke-static {v15}, LH3/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v16, v1

    .line 368
    invoke-direct/range {v16 .. v31}, LC3/k;-><init>(Lcom/google/android/gms/cast/MediaInfo;LC3/n;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1

    .line 369
    :pswitch_9c
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v17, v8

    move-wide/from16 v19, v17

    move-wide/from16 v23, v19

    move-object/from16 v21, v15

    move-object/from16 v22, v21

    .line 370
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_54

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v13, :cond_53

    if-eq v5, v12, :cond_52

    if-eq v5, v11, :cond_51

    if-eq v5, v7, :cond_50

    if-eq v5, v3, :cond_4f

    .line 372
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1a

    .line 373
    :cond_4f
    invoke-static {v4, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v4

    move-wide/from16 v23, v4

    goto :goto_1a

    .line 374
    :cond_50
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    goto :goto_1a

    .line 375
    :cond_51
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_1a

    .line 376
    :cond_52
    invoke-static {v4, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v4

    move-wide/from16 v19, v4

    goto :goto_1a

    .line 377
    :cond_53
    invoke-static {v4, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    goto :goto_1a

    .line 378
    :cond_54
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 379
    new-instance v1, LC3/c;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v24}, LC3/c;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V

    return-object v1

    .line 380
    :pswitch_9d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v16, v8

    move-wide/from16 v18, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 381
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_59

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v13, :cond_58

    if-eq v4, v12, :cond_57

    if-eq v4, v11, :cond_56

    if-eq v4, v7, :cond_55

    .line 383
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1b

    .line 384
    :cond_55
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v21, v3

    goto :goto_1b

    .line 385
    :cond_56
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    move-result v3

    move/from16 v20, v3

    goto :goto_1b

    .line 386
    :cond_57
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v18, v3

    goto :goto_1b

    .line 387
    :cond_58
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_1b

    .line 388
    :cond_59
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 389
    new-instance v1, LC3/j;

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, LC3/j;-><init>(JJZZ)V

    return-object v1

    .line 390
    :pswitch_9e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    move-result v2

    move-wide/from16 v21, v8

    move-wide/from16 v30, v21

    move-object/from16 v17, v15

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v23, v20

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    const/16 v18, 0x0

    .line 391
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_5a

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_c

    .line 393
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    goto :goto_1c

    .line 394
    :pswitch_9f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    goto :goto_1c

    .line 395
    :pswitch_a0
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    goto :goto_1c

    .line 396
    :pswitch_a1
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    goto :goto_1c

    .line 397
    :pswitch_a2
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_1c

    .line 398
    :pswitch_a3
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v30, v3

    goto :goto_1c

    .line 399
    :pswitch_a4
    sget-object v4, LC3/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 400
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/u;

    move-object/from16 v29, v3

    goto :goto_1c

    .line 401
    :pswitch_a5
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    goto :goto_1c

    .line 402
    :pswitch_a6
    sget-object v4, LC3/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 403
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_1c

    .line 404
    :pswitch_a7
    sget-object v4, LC3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 405
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_1c

    .line 406
    :pswitch_a8
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_1c

    .line 407
    :pswitch_a9
    sget-object v4, LC3/t;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 408
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/t;

    move-object/from16 v24, v3

    goto :goto_1c

    .line 409
    :pswitch_aa
    sget-object v4, Lcom/google/android/gms/cast/MediaTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 410
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_1c

    .line 411
    :pswitch_ab
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide/from16 v21, v3

    goto :goto_1c

    .line 412
    :pswitch_ac
    sget-object v4, LC3/l;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 413
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LC3/l;

    move-object/from16 v20, v3

    goto/16 :goto_1c

    .line 414
    :pswitch_ad
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_1c

    .line 415
    :pswitch_ae
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    move-result v3

    move/from16 v18, v3

    goto/16 :goto_1c

    .line 416
    :pswitch_af
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_1c

    .line 417
    :cond_5a
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 418
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v35}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;LC3/l;JLjava/util/ArrayList;LC3/t;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;LC3/u;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_82
        :pswitch_79
        :pswitch_63
        :pswitch_59
        :pswitch_4e
        :pswitch_4d
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_11
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
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
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
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
        :pswitch_64
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC3/H;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [LJ3/d;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [LJ3/b;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/common/internal/k;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/common/internal/j;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lcom/google/android/gms/common/internal/S;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lcom/google/android/gms/common/internal/BinderWrapper;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/common/internal/s;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/common/internal/D;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lcom/google/android/gms/common/internal/C;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lcom/google/android/gms/common/internal/q;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Lcom/google/android/gms/common/internal/t;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [LL3/a;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lcom/google/android/gms/cast/CastDevice;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [LC3/v;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [LC3/u;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [LC3/t;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [LC3/s;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [LC3/d;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaTrack;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [LC3/r;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [LC3/p;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [LC3/n;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [LC3/m;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [LC3/l;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [LC3/k;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [LC3/c;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [LC3/j;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaInfo;

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
