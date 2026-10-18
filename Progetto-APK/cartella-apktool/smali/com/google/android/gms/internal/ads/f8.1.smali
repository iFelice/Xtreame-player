.class public Lcom/google/android/gms/internal/ads/f8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/D;
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    add-int/2addr p1, p1

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/f8;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/Fc;Lcom/google/android/gms/internal/ads/Fc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/Ys;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LJ2/t;[B)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Q;I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    new-instance p1, LW0/w;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    return-void
.end method

.method public static b(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/f8;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {v0, p2, p0, p1}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Ljava/lang/Object;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    add-int/2addr v0, v0

    .line 11
    if-le v0, v2, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/oA;->e(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 22
    .line 23
    :cond_0
    invoke-static {p1, p2}, Lo3/r;->y(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, [Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 31
    .line 32
    add-int v2, v1, v1

    .line 33
    .line 34
    aput-object p1, v0, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    aput-object p2, v0, v2

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 43
    .line 44
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M5;)V
    .locals 4

    .line 1
    const-string v0, "Queue is full, current size = "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    if-lt v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/util/List;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 53
    .line 54
    add-int/lit8 v2, v0, 0x1

    .line 55
    .line 56
    iput v2, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 57
    .line 58
    iput v0, p1, Lcom/google/android/gms/internal/ads/M5;->l:I

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/M5;->d()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)J
    .locals 14

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x6

    .line 10
    .line 11
    add-long/2addr v2, v4

    .line 12
    cmp-long v6, v0, v2

    .line 13
    .line 14
    if-gez v6, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/Q;

    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, LW0/w;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    const/4 v3, 0x2

    .line 31
    new-array v8, v3, [B

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-interface {p1, v9, v8, v3}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 35
    .line 36
    .line 37
    aget-byte v10, v8, v9

    .line 38
    .line 39
    and-int/lit16 v10, v10, 0xff

    .line 40
    .line 41
    const/4 v11, 0x1

    .line 42
    aget-byte v12, v8, v11

    .line 43
    .line 44
    and-int/lit16 v12, v12, 0xff

    .line 45
    .line 46
    shl-int/lit8 v10, v10, 0x8

    .line 47
    .line 48
    or-int/2addr v10, v12

    .line 49
    if-eq v10, v1, :cond_0

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    sub-long/2addr v6, v0

    .line 59
    long-to-int v0, v6

    .line 60
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_0
    new-instance v10, Lcom/google/android/gms/internal/ads/jr;

    .line 65
    .line 66
    const/16 v12, 0x10

    .line 67
    .line 68
    invoke-direct {v10, v12}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 72
    .line 73
    invoke-static {v8, v9, v12, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 77
    .line 78
    :goto_1
    const/16 v12, 0xe

    .line 79
    .line 80
    if-ge v9, v12, :cond_2

    .line 81
    .line 82
    add-int v12, v3, v9

    .line 83
    .line 84
    rsub-int/lit8 v13, v9, 0xe

    .line 85
    .line 86
    invoke-interface {p1, v12, v8, v13}, Lcom/google/android/gms/internal/ads/M;->c(I[BI)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v13, -0x1

    .line 91
    if-ne v12, v13, :cond_1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    add-int/2addr v9, v12

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_2
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    sub-long/2addr v6, v8

    .line 107
    long-to-int v3, v6

    .line 108
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v10, v0, v1, v2}, Lo3/r;->E(Lcom/google/android/gms/internal/ads/jr;Lcom/google/android/gms/internal/ads/Q;ILW0/w;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_3
    :goto_3
    invoke-interface {p1, v11}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    :goto_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    add-long/2addr v2, v4

    .line 131
    cmp-long v4, v0, v2

    .line 132
    .line 133
    if-ltz v4, :cond_5

    .line 134
    .line 135
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    sub-long/2addr v0, v2

    .line 144
    long-to-int v1, v0

    .line 145
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Lcom/google/android/gms/internal/ads/Q;

    .line 151
    .line 152
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 153
    .line 154
    return-wide v0

    .line 155
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, LW0/w;

    .line 158
    .line 159
    iget-wide v0, p1, LW0/w;->a:J

    .line 160
    .line 161
    return-wide v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/M;J)Lcom/google/android/gms/internal/ads/C;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/f8;->G:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 11
    .line 12
    .line 13
    move-result-wide v7

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    sub-long/2addr v2, v7

    .line 19
    const-wide/32 v4, 0x1b8a0

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    long-to-int v3, v2

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-interface {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/google/android/gms/internal/ads/jr;

    .line 47
    .line 48
    iget v2, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 49
    .line 50
    const-wide/16 v5, -0x1

    .line 51
    .line 52
    move-wide v9, v5

    .line 53
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const/16 v12, 0xbc

    .line 63
    .line 64
    if-lt v11, v12, :cond_1

    .line 65
    .line 66
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 67
    .line 68
    iget v12, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 69
    .line 70
    :goto_1
    if-ge v12, v2, :cond_0

    .line 71
    .line 72
    aget-byte v15, v11, v12

    .line 73
    .line 74
    const/16 v3, 0x47

    .line 75
    .line 76
    if-eq v15, v3, :cond_0

    .line 77
    .line 78
    add-int/lit8 v12, v12, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    add-int/lit16 v3, v12, 0xbc

    .line 82
    .line 83
    if-le v3, v2, :cond_2

    .line 84
    .line 85
    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget v4, v0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 92
    .line 93
    invoke-static {v1, v12, v4}, LS3/e;->x(Lcom/google/android/gms/internal/ads/jr;II)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    cmp-long v6, v4, v15

    .line 103
    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v6, Lcom/google/android/gms/internal/ads/Ys;

    .line 109
    .line 110
    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/Ys;->b(J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    cmp-long v4, v5, p2

    .line 115
    .line 116
    if-lez v4, :cond_4

    .line 117
    .line 118
    cmp-long v1, v13, v15

    .line 119
    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    new-instance v1, Lcom/google/android/gms/internal/ads/C;

    .line 123
    .line 124
    const/4 v4, -0x1

    .line 125
    move-object v3, v1

    .line 126
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/C;-><init>(IJJ)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    add-long v13, v7, v9

    .line 131
    .line 132
    new-instance v1, Lcom/google/android/gms/internal/ads/C;

    .line 133
    .line 134
    const/4 v10, 0x0

    .line 135
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    move-object v9, v1

    .line 141
    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/C;-><init>(IJJ)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_4
    int-to-long v9, v12

    .line 146
    const-wide/32 v11, 0x186a0

    .line 147
    .line 148
    .line 149
    add-long/2addr v11, v5

    .line 150
    cmp-long v4, v11, p2

    .line 151
    .line 152
    if-lez v4, :cond_5

    .line 153
    .line 154
    add-long v22, v7, v9

    .line 155
    .line 156
    new-instance v1, Lcom/google/android/gms/internal/ads/C;

    .line 157
    .line 158
    const/16 v19, 0x0

    .line 159
    .line 160
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    move-object/from16 v18, v1

    .line 166
    .line 167
    invoke-direct/range {v18 .. v23}, Lcom/google/android/gms/internal/ads/C;-><init>(IJJ)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    move-wide v13, v5

    .line 172
    :cond_6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 173
    .line 174
    .line 175
    int-to-long v5, v3

    .line 176
    goto :goto_0

    .line 177
    :goto_2
    cmp-long v3, v13, v1

    .line 178
    .line 179
    if-eqz v3, :cond_7

    .line 180
    .line 181
    add-long v15, v7, v5

    .line 182
    .line 183
    new-instance v1, Lcom/google/android/gms/internal/ads/C;

    .line 184
    .line 185
    const/4 v12, -0x2

    .line 186
    move-object v11, v1

    .line 187
    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/C;-><init>(IJJ)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/ads/C;->d:Lcom/google/android/gms/internal/ads/C;

    .line 192
    .line 193
    :goto_3
    return-object v1

    .line 194
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/f8;->d(Lcom/google/android/gms/internal/ads/M;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v4

    .line 202
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 203
    .line 204
    .line 205
    move-result-wide v12

    .line 206
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v2, Lcom/google/android/gms/internal/ads/Q;

    .line 209
    .line 210
    iget v2, v2, Lcom/google/android/gms/internal/ads/Q;->c:I

    .line 211
    .line 212
    const/4 v3, 0x6

    .line 213
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 218
    .line 219
    .line 220
    cmp-long v2, v4, p2

    .line 221
    .line 222
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/f8;->d(Lcom/google/android/gms/internal/ads/M;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v16

    .line 226
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zze()J

    .line 227
    .line 228
    .line 229
    move-result-wide v18

    .line 230
    if-gtz v2, :cond_9

    .line 231
    .line 232
    cmp-long v1, v16, p2

    .line 233
    .line 234
    if-gtz v1, :cond_8

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/C;

    .line 238
    .line 239
    const/4 v9, 0x0

    .line 240
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    move-object v8, v1

    .line 246
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/C;-><init>(IJJ)V

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_9
    :goto_4
    cmp-long v1, v16, p2

    .line 251
    .line 252
    if-gtz v1, :cond_a

    .line 253
    .line 254
    new-instance v1, Lcom/google/android/gms/internal/ads/C;

    .line 255
    .line 256
    const/4 v15, -0x2

    .line 257
    move-object v14, v1

    .line 258
    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/C;-><init>(IJJ)V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/C;

    .line 263
    .line 264
    const/4 v3, -0x1

    .line 265
    move-object v2, v1

    .line 266
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/C;-><init>(IJJ)V

    .line 267
    .line 268
    .line 269
    :goto_5
    return-object v1

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lcom/google/android/gms/internal/ads/UA;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/vA;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/UA;->c(I[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/internal/ads/UA;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/vA;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vA;->a()Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    throw v0

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vA;->a()Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, LJ2/t;

    .line 5
    .line 6
    iget-object v0, v0, LJ2/t;->J:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/Pf;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public final h(Lcom/google/android/gms/internal/ads/M5;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/google/android/gms/internal/ads/M5;

    .line 23
    .line 24
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 25
    .line 26
    iget-object v4, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lo3/L;->o()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/M5;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/M5;->o:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/M5;->o:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lo3/L;->p()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/M5;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_0

    .line 78
    .line 79
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/M5;->q:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/M5;->q:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 90
    .line 91
    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :cond_2
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p1
.end method

.method public final i(Lcom/google/android/gms/internal/ads/nL;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/zN;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zN;->b:Lcom/google/android/gms/internal/ads/AN;

    .line 22
    .line 23
    new-instance v8, LK/a;

    .line 24
    .line 25
    const/16 v6, 0x1d

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v2, v8

    .line 29
    move-object v3, p0

    .line 30
    move-object v5, p1

    .line 31
    invoke-direct/range {v2 .. v7}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zN;->a:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/Et;->f(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/zN;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zN;->b:Lcom/google/android/gms/internal/ads/AN;

    .line 22
    .line 23
    new-instance v8, Lcom/google/android/gms/internal/ads/yN;

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    move-object v2, v8

    .line 27
    move-object v3, p0

    .line 28
    move-object v5, p1

    .line 29
    move-object v6, p2

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/yN;-><init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/AN;Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zN;->a:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/Et;->f(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final l()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/F8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/N7;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/F8;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/N7;->a:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eq v1, v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Ljava/lang/Double;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    double-to-float v4, v2

    .line 63
    :try_start_0
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    float-to-double v4, v4

    .line 68
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    :try_start_1
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    goto :goto_1

    .line 107
    :catch_1
    long-to-int v3, v2

    .line 108
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    int-to-long v0, v0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_1
    return-object v0

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ljava/lang/String;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v2, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :try_start_2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    goto :goto_2

    .line 139
    :catch_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_2
    return-object v0
.end method

.method public final m(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/zN;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zN;->b:Lcom/google/android/gms/internal/ads/AN;

    .line 22
    .line 23
    new-instance v8, Lcom/google/android/gms/internal/ads/yN;

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    move-object v2, v8

    .line 27
    move-object v3, p0

    .line 28
    move-object v5, p1

    .line 29
    move-object v6, p2

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/yN;-><init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/AN;Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zN;->a:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/Et;->f(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;Ljava/io/IOException;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/zN;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zN;->b:Lcom/google/android/gms/internal/ads/AN;

    .line 22
    .line 23
    new-instance v10, Lcom/google/android/gms/internal/ads/LK;

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    move-object v2, v10

    .line 27
    move-object v3, p0

    .line 28
    move-object v5, p1

    .line 29
    move-object v6, p2

    .line 30
    move-object v7, p3

    .line 31
    move v8, p4

    .line 32
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/LK;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;Ljava/io/IOException;ZI)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zN;->a:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/ads/Et;->f(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/zN;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zN;->b:Lcom/google/android/gms/internal/ads/AN;

    .line 22
    .line 23
    new-instance v8, Lcom/google/android/gms/internal/ads/yN;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v2, v8

    .line 27
    move-object v3, p0

    .line 28
    move-object v5, p1

    .line 29
    move-object v6, p2

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/yN;-><init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/AN;Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zN;->a:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/Et;->f(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    .line 2
    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/vK;->U:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Fc;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/f8;->H:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lcom/google/android/gms/internal/ads/Fc;

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/tL;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/tL;->O:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/tL;->M:Lcom/google/android/gms/internal/ads/Vc;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/tL;->J:Lcom/google/android/gms/internal/ads/sL;

    .line 30
    .line 31
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/sL;->b:Lcom/google/android/gms/internal/ads/uA;

    .line 32
    .line 33
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/sL;->e:Lcom/google/android/gms/internal/ads/wN;

    .line 34
    .line 35
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/sL;->a:Lcom/google/android/gms/internal/ads/je;

    .line 36
    .line 37
    invoke-static {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/sL;->a(Lcom/google/android/gms/internal/ads/Vc;Lcom/google/android/gms/internal/ads/uA;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/wN;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/sL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tL;->d()Lcom/google/android/gms/internal/ads/dL;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v4, Lcom/google/android/gms/internal/ads/Kq;

    .line 48
    .line 49
    invoke-direct {v4, v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/Kq;-><init>(ILcom/google/android/gms/internal/ads/Fc;Lcom/google/android/gms/internal/ads/Fc;Lcom/google/android/gms/internal/ads/dL;)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0xb

    .line 53
    .line 54
    invoke-virtual {p1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/f8;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/Et;->f:[B

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/jr;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 15
    .line 16
    .line 17
    :pswitch_0
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
