.class public final Lcom/google/android/gms/internal/ads/c5;
.super Lcom/google/android/gms/internal/ads/t5;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/c5;->h:I

    .line 1
    const-string v3, "mh3tdFapbE/sJv8Vo+tGtSqGob+34XuR/yQkwrU1NOisAE1Jls0cSJi5Lk8Oid+3"

    const-string v4, "sgSNHgqJ9EwYu8w2dMx3zRGSIiO9D1spUgPO3F51srA="

    const/16 v7, 0x1f

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/t5;-><init>(Lcom/google/android/gms/internal/ads/V4;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/V3;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/c5;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/view/View;Landroid/app/Activity;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/c5;->h:I

    .line 2
    const-string v3, "3ikNbWzMTIqU222KtrzzFiiUcpXtNPU8upxs9wXDAJYxbW4sx23+rx4eBiJjRteZ"

    const-string v4, "TdQDsqdcAU8jyTN6NihYJULAUxAJpTfNWWUTPnMXLns="

    const/16 v7, 0x3e

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/t5;-><init>(Lcom/google/android/gms/internal/ads/V4;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/V3;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/c5;->j:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    return-void
.end method

.method private final c()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/c5;->j:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v3, Landroid/view/View;

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->u2:Lcom/google/android/gms/internal/ads/J7;

    .line 12
    .line 13
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 14
    .line 15
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/t5;->e:Ljava/lang/reflect/Method;

    .line 28
    .line 29
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/c5;->j:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v6, Landroid/view/View;

    .line 32
    .line 33
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v7, Landroid/app/Activity;

    .line 36
    .line 37
    const/4 v8, 0x3

    .line 38
    new-array v8, v8, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v6, v8, v2

    .line 41
    .line 42
    aput-object v7, v8, v1

    .line 43
    .line 44
    aput-object v3, v8, v0

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, [Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 54
    .line 55
    monitor-enter v5

    .line 56
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 57
    .line 58
    aget-object v2, v3, v2

    .line 59
    .line 60
    check-cast v2, Ljava/lang/Long;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 67
    .line 68
    .line 69
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 70
    .line 71
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 72
    .line 73
    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/j4;->X(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 77
    .line 78
    aget-object v1, v3, v1

    .line 79
    .line 80
    check-cast v1, Ljava/lang/Long;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v6

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 87
    .line 88
    .line 89
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 90
    .line 91
    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    .line 92
    .line 93
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/ads/j4;->Y(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 94
    .line 95
    .line 96
    if-eqz v4, :cond_1

    .line 97
    .line 98
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 99
    .line 100
    aget-object v0, v3, v0

    .line 101
    .line 102
    check-cast v0, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 105
    .line 106
    .line 107
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 108
    .line 109
    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    .line 110
    .line 111
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/j4;->Z(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    monitor-exit v5

    .line 118
    return-void

    .line 119
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/c5;->h:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 14
    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 16
    .line 17
    const-wide/16 v3, -0x1

    .line 18
    .line 19
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/j4;->P0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 25
    .line 26
    .line 27
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 28
    .line 29
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 30
    .line 31
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/j4;->Q0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c5;->j:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Landroid/content/Context;

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t5;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 43
    .line 44
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Ljava/util/List;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t5;->e:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    new-array v5, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v2, v5, v0

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/List;

    .line 62
    .line 63
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    .line 64
    .line 65
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Ljava/util/List;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x2

    .line 76
    if-ne v2, v3, :cond_2

    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 79
    .line 80
    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v4, Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 98
    .line 99
    .line 100
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 101
    .line 102
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 103
    .line 104
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/j4;->P0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/c5;->i:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v3, Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/Long;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 124
    .line 125
    .line 126
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 127
    .line 128
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 129
    .line 130
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/j4;->Q0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 131
    .line 132
    .line 133
    monitor-exit v2

    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw v0

    .line 138
    :cond_2
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/c5;->c()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
