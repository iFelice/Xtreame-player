.class public final synthetic Lcom/google/android/gms/internal/ads/Ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ha;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/te;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ha;->G:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/Ia;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ha;->G:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/Ha;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Q5;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v11, Lcom/google/android/gms/internal/ads/M5;

    .line 13
    .line 14
    iget v3, v0, Lcom/google/android/gms/internal/ads/Q5;->L:I

    .line 15
    .line 16
    iget v4, v0, Lcom/google/android/gms/internal/ads/Q5;->M:I

    .line 17
    .line 18
    iget v5, v0, Lcom/google/android/gms/internal/ads/Q5;->N:I

    .line 19
    .line 20
    iget v6, v0, Lcom/google/android/gms/internal/ads/Q5;->O:I

    .line 21
    .line 22
    iget v7, v0, Lcom/google/android/gms/internal/ads/Q5;->P:I

    .line 23
    .line 24
    iget v8, v0, Lcom/google/android/gms/internal/ads/Q5;->Q:I

    .line 25
    .line 26
    iget v9, v0, Lcom/google/android/gms/internal/ads/Q5;->R:I

    .line 27
    .line 28
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Q5;->U:Z

    .line 29
    .line 30
    move-object v2, v11

    .line 31
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/M5;-><init>(IIIIIIIZ)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 35
    .line 36
    iget-object v2, v2, Lk3/l;->f:LJ2/t;

    .line 37
    .line 38
    invoke-virtual {v2}, LJ2/t;->j()Landroid/app/Application;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Q5;->S:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->S:Lcom/google/android/gms/internal/ads/J7;

    .line 57
    .line 58
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 59
    .line 60
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    const-string v5, "id"

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Q5;->S:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_4

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/ads/Q5;->b(Landroid/view/View;Lcom/google/android/gms/internal/ads/M5;)LN/r;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/M5;->c()V

    .line 102
    .line 103
    .line 104
    iget v2, v1, LN/r;->H:I

    .line 105
    .line 106
    if-nez v2, :cond_1

    .line 107
    .line 108
    iget v2, v1, LN/r;->I:I

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    :cond_1
    iget v1, v1, LN/r;->I:I

    .line 113
    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    iget v1, v11, Lcom/google/android/gms/internal/ads/M5;->k:I

    .line 117
    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    if-nez v1, :cond_4

    .line 122
    .line 123
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Q5;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 124
    .line 125
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/f8;->I:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v1, Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    monitor-exit v2

    .line 139
    goto :goto_5

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_2

    .line 142
    :cond_3
    monitor-exit v2

    .line 143
    goto :goto_3

    .line 144
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    throw v0

    .line 146
    :cond_4
    :goto_3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Q5;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 147
    .line 148
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/f8;->c(Lcom/google/android/gms/internal/ads/M5;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :goto_4
    const-string v1, "Exception in fetchContentOnUIThread"

    .line 153
    .line 154
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    const-string v1, "ContentFetchTask.fetchContent"

    .line 158
    .line 159
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 160
    .line 161
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 162
    .line 163
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_5
    return-void
.end method

.method private final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Fd;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/WG;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/WG;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fd;->h:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Fd;->a:Lcom/google/android/gms/internal/ads/CI;

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/cJ;->A()Lcom/google/android/gms/internal/ads/aJ;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/WG;->k()Lcom/google/android/gms/internal/ads/XG;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 39
    .line 40
    .line 41
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 42
    .line 43
    check-cast v4, Lcom/google/android/gms/internal/ads/cJ;

    .line 44
    .line 45
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/cJ;->C(Lcom/google/android/gms/internal/ads/cJ;Lcom/google/android/gms/internal/ads/XG;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 49
    .line 50
    .line 51
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 52
    .line 53
    check-cast v2, Lcom/google/android/gms/internal/ads/cJ;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cJ;->B(Lcom/google/android/gms/internal/ads/cJ;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 59
    .line 60
    .line 61
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 62
    .line 63
    check-cast v2, Lcom/google/android/gms/internal/ads/cJ;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cJ;->D(Lcom/google/android/gms/internal/ads/cJ;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/google/android/gms/internal/ads/cJ;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 78
    .line 79
    check-cast v0, Lcom/google/android/gms/internal/ads/pJ;

    .line 80
    .line 81
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/pJ;->K(Lcom/google/android/gms/internal/ads/pJ;Lcom/google/android/gms/internal/ads/cJ;)V

    .line 82
    .line 83
    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/google/android/gms/internal/ads/Ha;->G:I

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x2

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/eo;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lcom/google/android/gms/internal/ads/ja;

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eo;->a()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/ja;->r2(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v2, ""

    .line 30
    .line 31
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcom/google/android/gms/internal/ads/eo;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lcom/google/android/gms/internal/ads/te;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/google/android/gms/internal/ads/Zn;

    .line 47
    .line 48
    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/internal/ads/Zn;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eo;->i:Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lcom/google/android/gms/internal/ads/Jn;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jn;->d:Lp3/k;

    .line 62
    .line 63
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lp3/k;->c(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 72
    .line 73
    move-object v9, v0

    .line 74
    check-cast v9, Lcom/google/android/gms/internal/ads/Sl;

    .line 75
    .line 76
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v10, v0

    .line 79
    check-cast v10, Lcom/google/android/gms/internal/ads/dm;

    .line 80
    .line 81
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/Sl;->c:Lcom/google/android/gms/internal/ads/Kl;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kl;->e()Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-nez v11, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kl;->d()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    move-object v12, v6

    .line 97
    goto :goto_3

    .line 98
    :cond_1
    :goto_1
    const-string v0, "1098"

    .line 99
    .line 100
    const-string v11, "3011"

    .line 101
    .line 102
    filled-new-array {v0, v11}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v11, 0x0

    .line 107
    :goto_2
    if-ge v11, v5, :cond_0

    .line 108
    .line 109
    aget-object v12, v0, v11

    .line 110
    .line 111
    invoke-interface {v10, v12}, Lcom/google/android/gms/internal/ads/dm;->n2(Ljava/lang/String;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    if-eqz v12, :cond_2

    .line 116
    .line 117
    instance-of v13, v12, Landroid/view/ViewGroup;

    .line 118
    .line 119
    if-eqz v13, :cond_2

    .line 120
    .line 121
    check-cast v12, Landroid/view/ViewGroup;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_3
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dm;->zzf()Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    .line 137
    const/4 v11, -0x2

    .line 138
    invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .line 140
    .line 141
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/Sl;->d:Lcom/google/android/gms/internal/ads/Il;

    .line 142
    .line 143
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->F()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    if-eqz v14, :cond_4

    .line 148
    .line 149
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->F()Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/Sl;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 154
    .line 155
    if-nez v4, :cond_3

    .line 156
    .line 157
    goto/16 :goto_6

    .line 158
    .line 159
    :cond_3
    if-nez v12, :cond_b

    .line 160
    .line 161
    iget v4, v4, Lcom/google/android/gms/internal/ads/M8;->K:I

    .line 162
    .line 163
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/Sl;->b(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    move-object v12, v6

    .line 170
    goto/16 :goto_6

    .line 171
    .line 172
    :cond_4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->L()Lcom/google/android/gms/internal/ads/P8;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    instance-of v14, v14, Lcom/google/android/gms/internal/ads/H8;

    .line 177
    .line 178
    if-nez v14, :cond_5

    .line 179
    .line 180
    move-object v0, v6

    .line 181
    goto/16 :goto_6

    .line 182
    .line 183
    :cond_5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->L()Lcom/google/android/gms/internal/ads/P8;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    check-cast v14, Lcom/google/android/gms/internal/ads/H8;

    .line 188
    .line 189
    if-nez v12, :cond_6

    .line 190
    .line 191
    iget v12, v14, Lcom/google/android/gms/internal/ads/H8;->N:I

    .line 192
    .line 193
    invoke-static {v5, v12}, Lcom/google/android/gms/internal/ads/Sl;->b(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 194
    .line 195
    .line 196
    move-object v12, v6

    .line 197
    :cond_6
    new-instance v15, Lcom/google/android/gms/internal/ads/I8;

    .line 198
    .line 199
    invoke-direct {v15, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v14}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 206
    .line 207
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 208
    .line 209
    sget-object v8, Lcom/google/android/gms/internal/ads/I8;->H:[F

    .line 210
    .line 211
    invoke-direct {v3, v8, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iget v8, v14, Lcom/google/android/gms/internal/ads/H8;->J:I

    .line 222
    .line 223
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v15, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    .line 231
    .line 232
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 233
    .line 234
    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    .line 236
    .line 237
    iget-object v3, v14, Lcom/google/android/gms/internal/ads/H8;->G:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-nez v5, :cond_7

    .line 244
    .line 245
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 246
    .line 247
    invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 248
    .line 249
    .line 250
    new-instance v8, Landroid/widget/TextView;

    .line 251
    .line 252
    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    const v5, 0x47470001

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8, v5}, Landroid/view/View;->setId(I)V

    .line 262
    .line 263
    .line 264
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 265
    .line 266
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget v3, v14, Lcom/google/android/gms/internal/ads/H8;->K:I

    .line 273
    .line 274
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    .line 276
    .line 277
    iget v3, v14, Lcom/google/android/gms/internal/ads/H8;->L:I

    .line 278
    .line 279
    int-to-float v3, v3

    .line 280
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    .line 282
    .line 283
    sget-object v3, Ll3/p;->f:Ll3/p;

    .line 284
    .line 285
    iget-object v3, v3, Ll3/p;->a:Lp3/d;

    .line 286
    .line 287
    invoke-static {v0, v4}, Lp3/d;->o(Landroid/content/Context;I)I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-static {v5, v4}, Lp3/d;->l(Landroid/util/DisplayMetrics;I)I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    invoke-virtual {v8, v3, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    const/4 v4, 0x1

    .line 314
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 315
    .line 316
    .line 317
    :cond_7
    new-instance v3, Landroid/widget/ImageView;

    .line 318
    .line 319
    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    .line 324
    .line 325
    const v0, 0x47470002

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/H8;->H:Ljava/util/ArrayList;

    .line 332
    .line 333
    const-string v2, "Error while getting drawable."

    .line 334
    .line 335
    if-eqz v0, :cond_9

    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    const/4 v5, 0x1

    .line 342
    if-le v4, v5, :cond_9

    .line 343
    .line 344
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 345
    .line 346
    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 347
    .line 348
    .line 349
    iput-object v4, v15, Lcom/google/android/gms/internal/ads/I8;->G:Landroid/graphics/drawable/AnimationDrawable;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_8

    .line 360
    .line 361
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lcom/google/android/gms/internal/ads/K8;

    .line 366
    .line 367
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/K8;->zzf()LR3/a;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 376
    .line 377
    iget-object v5, v15, Lcom/google/android/gms/internal/ads/I8;->G:Landroid/graphics/drawable/AnimationDrawable;

    .line 378
    .line 379
    iget v8, v14, Lcom/google/android/gms/internal/ads/H8;->M:I

    .line 380
    .line 381
    invoke-virtual {v5, v0, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :catch_1
    move-exception v0

    .line 386
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_8
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/I8;->G:Landroid/graphics/drawable/AnimationDrawable;

    .line 391
    .line 392
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    const/4 v5, 0x1

    .line 401
    if-ne v4, v5, :cond_a

    .line 402
    .line 403
    :try_start_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Lcom/google/android/gms/internal/ads/K8;

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/K8;->zzf()LR3/a;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-static {v0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 418
    .line 419
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 420
    .line 421
    .line 422
    goto :goto_5

    .line 423
    :catch_2
    move-exception v0

    .line 424
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    .line 426
    .line 427
    :cond_a
    :goto_5
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 428
    .line 429
    .line 430
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->A3:Lcom/google/android/gms/internal/ads/J7;

    .line 431
    .line 432
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 433
    .line 434
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 435
    .line 436
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, Ljava/lang/CharSequence;

    .line 441
    .line 442
    invoke-virtual {v15, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    move-object v0, v15

    .line 446
    :cond_b
    :goto_6
    if-nez v0, :cond_c

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 454
    .line 455
    if-eqz v2, :cond_d

    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Landroid/view/ViewGroup;

    .line 462
    .line 463
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 464
    .line 465
    .line 466
    :cond_d
    if-eqz v12, :cond_e

    .line 467
    .line 468
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_e
    new-instance v2, Li3/e;

    .line 476
    .line 477
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dm;->zzf()Landroid/view/View;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 486
    .line 487
    .line 488
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 489
    .line 490
    const/4 v4, -0x1

    .line 491
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dm;->zzh()Landroid/widget/FrameLayout;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    if-eqz v3, :cond_f

    .line 505
    .line 506
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 507
    .line 508
    .line 509
    :cond_f
    :goto_7
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dm;->zzk()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-interface {v10, v2, v0}, Lcom/google/android/gms/internal/ads/dm;->j0(Ljava/lang/String;Landroid/view/View;)V

    .line 514
    .line 515
    .line 516
    :goto_8
    sget-object v0, Lcom/google/android/gms/internal/ads/Rl;->V:Lcom/google/android/gms/internal/ads/PA;

    .line 517
    .line 518
    iget v2, v0, Lcom/google/android/gms/internal/ads/PA;->J:I

    .line 519
    .line 520
    const/4 v3, 0x0

    .line 521
    :cond_10
    if-ge v3, v2, :cond_11

    .line 522
    .line 523
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    check-cast v4, Ljava/lang/String;

    .line 528
    .line 529
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/dm;->n2(Ljava/lang/String;)Landroid/view/View;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 534
    .line 535
    add-int/lit8 v3, v3, 0x1

    .line 536
    .line 537
    if-eqz v5, :cond_10

    .line 538
    .line 539
    check-cast v4, Landroid/view/ViewGroup;

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_11
    move-object v4, v6

    .line 543
    :goto_9
    new-instance v0, Lcom/google/android/gms/internal/ads/Ha;

    .line 544
    .line 545
    const/16 v2, 0x19

    .line 546
    .line 547
    invoke-direct {v0, v2, v9, v4}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/Sl;->h:Ljava/util/concurrent/Executor;

    .line 551
    .line 552
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 553
    .line 554
    .line 555
    if-nez v4, :cond_12

    .line 556
    .line 557
    goto/16 :goto_c

    .line 558
    .line 559
    :cond_12
    const/4 v2, 0x1

    .line 560
    invoke-virtual {v9, v4, v2}, Lcom/google/android/gms/internal/ads/Sl;->c(Landroid/view/ViewGroup;Z)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    const/16 v2, 0x1a

    .line 565
    .line 566
    if-eqz v0, :cond_13

    .line 567
    .line 568
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    if-eqz v0, :cond_18

    .line 573
    .line 574
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    new-instance v3, Lcom/google/android/gms/internal/ads/x;

    .line 579
    .line 580
    invoke-direct {v3, v2, v10, v4}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/Ef;->M0(Lcom/google/android/gms/internal/ads/x;)V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_c

    .line 587
    .line 588
    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->o9:Lcom/google/android/gms/internal/ads/J7;

    .line 589
    .line 590
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 591
    .line 592
    iget-object v5, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 593
    .line 594
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    check-cast v0, Ljava/lang/Boolean;

    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_14

    .line 605
    .line 606
    invoke-virtual {v9, v4, v7}, Lcom/google/android/gms/internal/ads/Sl;->c(Landroid/view/ViewGroup;Z)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-eqz v0, :cond_14

    .line 611
    .line 612
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->P()Lcom/google/android/gms/internal/ads/Ef;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    if-eqz v0, :cond_18

    .line 617
    .line 618
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/Il;->P()Lcom/google/android/gms/internal/ads/Ef;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    new-instance v3, Lcom/google/android/gms/internal/ads/x;

    .line 623
    .line 624
    invoke-direct {v3, v2, v10, v4}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/Ef;->M0(Lcom/google/android/gms/internal/ads/x;)V

    .line 628
    .line 629
    .line 630
    goto :goto_c

    .line 631
    :cond_14
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 632
    .line 633
    .line 634
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dm;->zzf()Landroid/view/View;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    if-eqz v0, :cond_15

    .line 639
    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    :cond_15
    if-eqz v6, :cond_18

    .line 645
    .line 646
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/Sl;->j:Lcom/google/android/gms/internal/ads/Gl;

    .line 647
    .line 648
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gl;->a()Lcom/google/android/gms/internal/ads/R8;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    if-eqz v0, :cond_18

    .line 653
    .line 654
    :try_start_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/R8;->zzi()LR3/a;

    .line 655
    .line 656
    .line 657
    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 658
    if-eqz v0, :cond_18

    .line 659
    .line 660
    invoke-static {v0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 665
    .line 666
    if-eqz v0, :cond_18

    .line 667
    .line 668
    new-instance v2, Landroid/widget/ImageView;

    .line 669
    .line 670
    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    .line 675
    .line 676
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dm;->zzj()LR3/a;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    if-eqz v0, :cond_17

    .line 681
    .line 682
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->I5:Lcom/google/android/gms/internal/ads/J7;

    .line 683
    .line 684
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 685
    .line 686
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    check-cast v3, Ljava/lang/Boolean;

    .line 691
    .line 692
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-nez v3, :cond_16

    .line 697
    .line 698
    goto :goto_a

    .line 699
    :cond_16
    invoke-static {v0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Landroid/widget/ImageView$ScaleType;

    .line 704
    .line 705
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 706
    .line 707
    .line 708
    goto :goto_b

    .line 709
    :cond_17
    :goto_a
    sget-object v0, Lcom/google/android/gms/internal/ads/Sl;->k:Landroid/widget/ImageView$ScaleType;

    .line 710
    .line 711
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 712
    .line 713
    .line 714
    :goto_b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 715
    .line 716
    const/4 v3, -0x1

    .line 717
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 724
    .line 725
    .line 726
    goto :goto_c

    .line 727
    :catch_3
    const-string v0, "Could not get main image drawable"

    .line 728
    .line 729
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    :cond_18
    :goto_c
    return-void

    .line 733
    :pswitch_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 734
    .line 735
    check-cast v0, Lcom/google/android/gms/internal/ads/Sl;

    .line 736
    .line 737
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v2, Landroid/view/ViewGroup;

    .line 740
    .line 741
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Sl;->d:Lcom/google/android/gms/internal/ads/Il;

    .line 742
    .line 743
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Il;->G()Landroid/view/View;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    if-eqz v4, :cond_1c

    .line 748
    .line 749
    if-eqz v2, :cond_19

    .line 750
    .line 751
    const/4 v7, 0x1

    .line 752
    :cond_19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 753
    .line 754
    .line 755
    move-result v2

    .line 756
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Sl;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 757
    .line 758
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Sl;->a:Lo3/K;

    .line 759
    .line 760
    if-eq v2, v5, :cond_1b

    .line 761
    .line 762
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    const/4 v5, 0x1

    .line 767
    if-ne v2, v5, :cond_1a

    .line 768
    .line 769
    goto :goto_d

    .line 770
    :cond_1a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    const/4 v3, 0x6

    .line 775
    if-ne v2, v3, :cond_1c

    .line 776
    .line 777
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 778
    .line 779
    check-cast v0, Lo3/L;

    .line 780
    .line 781
    const-string v3, "2"

    .line 782
    .line 783
    invoke-virtual {v0, v2, v3, v7}, Lo3/L;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 784
    .line 785
    .line 786
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 787
    .line 788
    const-string v3, "1"

    .line 789
    .line 790
    invoke-virtual {v0, v2, v3, v7}, Lo3/L;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 791
    .line 792
    .line 793
    goto :goto_e

    .line 794
    :cond_1b
    :goto_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 803
    .line 804
    check-cast v0, Lo3/L;

    .line 805
    .line 806
    invoke-virtual {v0, v3, v2, v7}, Lo3/L;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 807
    .line 808
    .line 809
    :cond_1c
    :goto_e
    return-void

    .line 810
    :pswitch_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 811
    .line 812
    check-cast v0, Lcom/google/android/gms/internal/ads/rk;

    .line 813
    .line 814
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 815
    .line 816
    :try_start_4
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/rk;->zza(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 817
    .line 818
    .line 819
    goto :goto_f

    .line 820
    :catchall_0
    move-exception v0

    .line 821
    move-object v2, v0

    .line 822
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 823
    .line 824
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 825
    .line 826
    const-string v3, "EventEmitter.notify"

    .line 827
    .line 828
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 829
    .line 830
    .line 831
    const-string v0, "Event emitter exception."

    .line 832
    .line 833
    invoke-static {v0, v2}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    .line 835
    .line 836
    :goto_f
    return-void

    .line 837
    :pswitch_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast v0, Lcom/google/android/gms/internal/ads/ji;

    .line 840
    .line 841
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 842
    .line 843
    check-cast v2, Ljava/lang/Runnable;

    .line 844
    .line 845
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    .line 847
    .line 848
    :try_start_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ji;->j:Lcom/google/android/gms/internal/ads/y9;

    .line 849
    .line 850
    new-instance v3, LR3/b;

    .line 851
    .line 852
    invoke-direct {v3, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    check-cast v0, Lcom/google/android/gms/internal/ads/w9;

    .line 856
    .line 857
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    if-eqz v3, :cond_1d

    .line 873
    .line 874
    const/4 v7, 0x1

    .line 875
    :cond_1d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 876
    .line 877
    .line 878
    if-nez v7, :cond_1e

    .line 879
    .line 880
    move-object v0, v2

    .line 881
    check-cast v0, Lcom/google/android/gms/internal/ads/ii;

    .line 882
    .line 883
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ii;->G:Ljava/util/concurrent/atomic/AtomicReference;

    .line 884
    .line 885
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    check-cast v0, Ljava/lang/Runnable;

    .line 890
    .line 891
    if-eqz v0, :cond_1e

    .line 892
    .line 893
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 894
    .line 895
    .line 896
    goto :goto_10

    .line 897
    :catch_4
    check-cast v2, Lcom/google/android/gms/internal/ads/ii;

    .line 898
    .line 899
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/ii;->G:Ljava/util/concurrent/atomic/AtomicReference;

    .line 900
    .line 901
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    check-cast v0, Ljava/lang/Runnable;

    .line 906
    .line 907
    if-eqz v0, :cond_1e

    .line 908
    .line 909
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 910
    .line 911
    .line 912
    :cond_1e
    :goto_10
    return-void

    .line 913
    :pswitch_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 914
    .line 915
    check-cast v0, Lcom/google/android/gms/internal/ads/Dh;

    .line 916
    .line 917
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v2, Lorg/json/JSONObject;

    .line 920
    .line 921
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Dh;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 922
    .line 923
    const-string v3, "AFMA_updateActiveView"

    .line 924
    .line 925
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ya;->g(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    return-void

    .line 929
    :pswitch_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 930
    .line 931
    check-cast v0, La3/b;

    .line 932
    .line 933
    iget-object v0, v0, La3/b;->H:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast v0, Lcom/google/android/gms/internal/ads/ix;

    .line 936
    .line 937
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 938
    .line 939
    check-cast v2, Ljava/lang/String;

    .line 940
    .line 941
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V

    .line 942
    .line 943
    .line 944
    return-void

    .line 945
    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->D9:Lcom/google/android/gms/internal/ads/J7;

    .line 946
    .line 947
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 948
    .line 949
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 950
    .line 951
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    check-cast v0, Ljava/lang/Boolean;

    .line 956
    .line 957
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 958
    .line 959
    .line 960
    move-result v0

    .line 961
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast v2, La3/b;

    .line 964
    .line 965
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v3, Ljava/lang/Throwable;

    .line 968
    .line 969
    if-eqz v0, :cond_1f

    .line 970
    .line 971
    iget-object v0, v2, La3/b;->J:Ljava/lang/Object;

    .line 972
    .line 973
    check-cast v0, Lcom/google/android/gms/internal/ads/oh;

    .line 974
    .line 975
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/oh;->a:Landroid/content/Context;

    .line 976
    .line 977
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Bc;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/oh;->i:Lcom/google/android/gms/internal/ads/Cc;

    .line 982
    .line 983
    iget-object v0, v2, La3/b;->J:Ljava/lang/Object;

    .line 984
    .line 985
    check-cast v0, Lcom/google/android/gms/internal/ads/oh;

    .line 986
    .line 987
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oh;->i:Lcom/google/android/gms/internal/ads/Cc;

    .line 988
    .line 989
    const-string v4, "AttributionReporting.registerSourceAndPingClickUrl"

    .line 990
    .line 991
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 992
    .line 993
    .line 994
    goto :goto_11

    .line 995
    :cond_1f
    iget-object v0, v2, La3/b;->J:Ljava/lang/Object;

    .line 996
    .line 997
    check-cast v0, Lcom/google/android/gms/internal/ads/oh;

    .line 998
    .line 999
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/oh;->a:Landroid/content/Context;

    .line 1000
    .line 1001
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v4

    .line 1005
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/oh;->h:Lcom/google/android/gms/internal/ads/Cc;

    .line 1006
    .line 1007
    iget-object v0, v2, La3/b;->J:Ljava/lang/Object;

    .line 1008
    .line 1009
    check-cast v0, Lcom/google/android/gms/internal/ads/oh;

    .line 1010
    .line 1011
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oh;->h:Lcom/google/android/gms/internal/ads/Cc;

    .line 1012
    .line 1013
    const-string v4, "AttributionReportingSampled.registerSourceAndPingClickUrl"

    .line 1014
    .line 1015
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1016
    .line 1017
    .line 1018
    :goto_11
    iget-object v0, v2, La3/b;->H:Ljava/lang/Object;

    .line 1019
    .line 1020
    check-cast v0, Lcom/google/android/gms/internal/ads/ix;

    .line 1021
    .line 1022
    iget-object v2, v2, La3/b;->I:Ljava/lang/Object;

    .line 1023
    .line 1024
    check-cast v2, Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V

    .line 1027
    .line 1028
    .line 1029
    return-void

    .line 1030
    :pswitch_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1031
    .line 1032
    check-cast v0, Lcom/google/android/gms/internal/ads/Vf;

    .line 1033
    .line 1034
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1035
    .line 1036
    check-cast v2, Ljava/lang/String;

    .line 1037
    .line 1038
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Vf;->b:Lcom/google/android/gms/internal/ads/L9;

    .line 1046
    .line 1047
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/L9;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 1048
    .line 1049
    check-cast v0, Lcom/google/android/gms/internal/ads/Sf;

    .line 1050
    .line 1051
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 1052
    .line 1053
    if-nez v0, :cond_20

    .line 1054
    .line 1055
    const-string v0, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 1056
    .line 1057
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_12

    .line 1061
    :cond_20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Xf;->Y(Landroid/net/Uri;)V

    .line 1062
    .line 1063
    .line 1064
    :goto_12
    return-void

    .line 1065
    :pswitch_a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1066
    .line 1067
    check-cast v0, Lcom/google/android/gms/internal/ads/Uf;

    .line 1068
    .line 1069
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1070
    .line 1071
    check-cast v2, Ljava/util/Map;

    .line 1072
    .line 1073
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Uf;->G:Lcom/google/android/gms/internal/ads/Oe;

    .line 1074
    .line 1075
    const-string v3, "pubVideoCmd"

    .line 1076
    .line 1077
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 1078
    .line 1079
    .line 1080
    return-void

    .line 1081
    :pswitch_b
    new-instance v0, Lcom/google/android/gms/internal/ads/Of;

    .line 1082
    .line 1083
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1084
    .line 1085
    check-cast v2, Lcom/google/android/gms/internal/ads/Qf;

    .line 1086
    .line 1087
    invoke-direct {v0, v2, v7}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 1088
    .line 1089
    .line 1090
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v2, Lcom/google/android/gms/internal/ads/lq;

    .line 1093
    .line 1094
    monitor-enter v2

    .line 1095
    :try_start_6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/lq;->f:Lcom/google/android/gms/internal/ads/Bx;

    .line 1096
    .line 1097
    if-eqz v3, :cond_21

    .line 1098
    .line 1099
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 1100
    .line 1101
    if-eqz v5, :cond_21

    .line 1102
    .line 1103
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 1104
    .line 1105
    iget-object v5, v5, Lk3/l;->v:Lc4/y;

    .line 1106
    .line 1107
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    .line 1109
    .line 1110
    new-instance v5, Lcom/google/android/gms/internal/ads/co;

    .line 1111
    .line 1112
    invoke-direct {v5, v4, v3, v0}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v5}, Lc4/y;->k(Ljava/lang/Runnable;)V

    .line 1116
    .line 1117
    .line 1118
    iput-object v6, v2, Lcom/google/android/gms/internal/ads/lq;->f:Lcom/google/android/gms/internal/ads/Bx;

    .line 1119
    .line 1120
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 1121
    .line 1122
    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/Ef;->H0(Lcom/google/android/gms/internal/ads/lq;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1123
    .line 1124
    .line 1125
    :cond_21
    monitor-exit v2

    .line 1126
    goto :goto_13

    .line 1127
    :catchall_1
    move-exception v0

    .line 1128
    goto :goto_14

    .line 1129
    :goto_13
    return-void

    .line 1130
    :goto_14
    monitor-exit v2

    .line 1131
    throw v0

    .line 1132
    :pswitch_c
    sget-object v0, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1133
    .line 1134
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1135
    .line 1136
    check-cast v0, Lcom/google/android/gms/internal/ads/Oe;

    .line 1137
    .line 1138
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast v2, Ljava/util/Map;

    .line 1141
    .line 1142
    const-string v3, "onGcacheInfoEvent"

    .line 1143
    .line 1144
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 1145
    .line 1146
    .line 1147
    return-void

    .line 1148
    :pswitch_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1149
    .line 1150
    move-object v2, v0

    .line 1151
    check-cast v2, Lcom/google/android/gms/internal/ads/Be;

    .line 1152
    .line 1153
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1154
    .line 1155
    check-cast v0, Landroid/media/MediaPlayer;

    .line 1156
    .line 1157
    sget-object v3, Lcom/google/android/gms/internal/ads/Be;->b0:Ljava/util/HashMap;

    .line 1158
    .line 1159
    const-string v3, "frameRate"

    .line 1160
    .line 1161
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 1162
    .line 1163
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 1164
    .line 1165
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1166
    .line 1167
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v4

    .line 1171
    check-cast v4, Ljava/lang/Boolean;

    .line 1172
    .line 1173
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v4

    .line 1177
    if-eqz v4, :cond_2d

    .line 1178
    .line 1179
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Be;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 1180
    .line 1181
    if-eqz v4, :cond_2d

    .line 1182
    .line 1183
    if-nez v0, :cond_22

    .line 1184
    .line 1185
    goto/16 :goto_18

    .line 1186
    .line 1187
    :cond_22
    :try_start_7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1191
    if-eqz v0, :cond_2d

    .line 1192
    .line 1193
    new-instance v4, Ljava/util/HashMap;

    .line 1194
    .line 1195
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1196
    .line 1197
    .line 1198
    :goto_15
    array-length v6, v0

    .line 1199
    if-ge v7, v6, :cond_2c

    .line 1200
    .line 1201
    aget-object v6, v0, v7

    .line 1202
    .line 1203
    if-nez v6, :cond_23

    .line 1204
    .line 1205
    goto/16 :goto_17

    .line 1206
    .line 1207
    :cond_23
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    .line 1208
    .line 1209
    .line 1210
    move-result v8

    .line 1211
    const-string v9, "codecs-string"

    .line 1212
    .line 1213
    const-string v10, "mime"

    .line 1214
    .line 1215
    const/16 v11, 0x1e

    .line 1216
    .line 1217
    const/4 v12, 0x1

    .line 1218
    if-eq v8, v12, :cond_26

    .line 1219
    .line 1220
    if-eq v8, v5, :cond_24

    .line 1221
    .line 1222
    goto/16 :goto_17

    .line 1223
    .line 1224
    :cond_24
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v6

    .line 1228
    if-eqz v6, :cond_2b

    .line 1229
    .line 1230
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v8

    .line 1234
    if-eqz v8, :cond_25

    .line 1235
    .line 1236
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v8

    .line 1240
    const-string v10, "audioMime"

    .line 1241
    .line 1242
    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    :cond_25
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1246
    .line 1247
    if-lt v8, v11, :cond_2b

    .line 1248
    .line 1249
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v8

    .line 1253
    if-eqz v8, :cond_2b

    .line 1254
    .line 1255
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v6

    .line 1259
    const-string v8, "audioCodec"

    .line 1260
    .line 1261
    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_17

    .line 1265
    .line 1266
    :cond_26
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v6

    .line 1270
    if-eqz v6, :cond_2b

    .line 1271
    .line 1272
    const-string v8, "frame-rate"

    .line 1273
    .line 1274
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1275
    .line 1276
    .line 1277
    move-result v12

    .line 1278
    if-eqz v12, :cond_27

    .line 1279
    .line 1280
    :try_start_8
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    .line 1281
    .line 1282
    .line 1283
    move-result v12

    .line 1284
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v12

    .line 1288
    invoke-virtual {v4, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1289
    .line 1290
    .line 1291
    goto :goto_16

    .line 1292
    :catch_5
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 1293
    .line 1294
    .line 1295
    move-result v8

    .line 1296
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v8

    .line 1300
    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    :cond_27
    :goto_16
    const-string v8, "bitrate"

    .line 1304
    .line 1305
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v12

    .line 1309
    if-eqz v12, :cond_28

    .line 1310
    .line 1311
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 1312
    .line 1313
    .line 1314
    move-result v8

    .line 1315
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v8

    .line 1319
    iput-object v8, v2, Lcom/google/android/gms/internal/ads/Be;->a0:Ljava/lang/Integer;

    .line 1320
    .line 1321
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v8

    .line 1325
    const-string v12, "bitRate"

    .line 1326
    .line 1327
    invoke-virtual {v4, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    :cond_28
    const-string v8, "width"

    .line 1331
    .line 1332
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1333
    .line 1334
    .line 1335
    move-result v12

    .line 1336
    if-eqz v12, :cond_29

    .line 1337
    .line 1338
    const-string v12, "height"

    .line 1339
    .line 1340
    invoke-virtual {v6, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v13

    .line 1344
    if-eqz v13, :cond_29

    .line 1345
    .line 1346
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 1347
    .line 1348
    .line 1349
    move-result v8

    .line 1350
    invoke-virtual {v6, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 1351
    .line 1352
    .line 1353
    move-result v12

    .line 1354
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    const-string v8, "x"

    .line 1363
    .line 1364
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v8

    .line 1374
    const-string v12, "resolution"

    .line 1375
    .line 1376
    invoke-virtual {v4, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    :cond_29
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1380
    .line 1381
    .line 1382
    move-result v8

    .line 1383
    if-eqz v8, :cond_2a

    .line 1384
    .line 1385
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v8

    .line 1389
    const-string v10, "videoMime"

    .line 1390
    .line 1391
    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    :cond_2a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1395
    .line 1396
    if-lt v8, v11, :cond_2b

    .line 1397
    .line 1398
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 1399
    .line 1400
    .line 1401
    move-result v8

    .line 1402
    if-eqz v8, :cond_2b

    .line 1403
    .line 1404
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v6

    .line 1408
    const-string v8, "videoCodec"

    .line 1409
    .line 1410
    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    :cond_2b
    :goto_17
    add-int/lit8 v7, v7, 0x1

    .line 1414
    .line 1415
    goto/16 :goto_15

    .line 1416
    .line 1417
    :cond_2c
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 1418
    .line 1419
    .line 1420
    move-result v0

    .line 1421
    if-nez v0, :cond_2d

    .line 1422
    .line 1423
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Be;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 1424
    .line 1425
    const-string v3, "onMetadataEvent"

    .line 1426
    .line 1427
    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 1428
    .line 1429
    .line 1430
    goto :goto_18

    .line 1431
    :catch_6
    move-exception v0

    .line 1432
    move-object v3, v0

    .line 1433
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1434
    .line 1435
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1436
    .line 1437
    const-string v4, "AdMediaPlayerView.reportMetadata"

    .line 1438
    .line 1439
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1440
    .line 1441
    .line 1442
    :cond_2d
    :goto_18
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Be;->V:Lcom/google/android/gms/internal/ads/Ce;

    .line 1443
    .line 1444
    if-eqz v0, :cond_2e

    .line 1445
    .line 1446
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 1447
    .line 1448
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->g()V

    .line 1449
    .line 1450
    .line 1451
    :cond_2e
    return-void

    .line 1452
    :pswitch_e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1453
    .line 1454
    :try_start_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1455
    .line 1456
    check-cast v0, Landroid/content/Context;

    .line 1457
    .line 1458
    invoke-static {v0}, Lj3/b;->a(Landroid/content/Context;)Lj3/a;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v0

    .line 1462
    move-object v3, v2

    .line 1463
    check-cast v3, Lcom/google/android/gms/internal/ads/te;

    .line 1464
    .line 1465
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_9
    .catch LJ3/g; {:try_start_9 .. :try_end_9} :catch_8
    .catch LJ3/h; {:try_start_9 .. :try_end_9} :catch_7

    .line 1466
    .line 1467
    .line 1468
    goto :goto_1a

    .line 1469
    :catch_7
    move-exception v0

    .line 1470
    goto :goto_19

    .line 1471
    :catch_8
    move-exception v0

    .line 1472
    goto :goto_19

    .line 1473
    :catch_9
    move-exception v0

    .line 1474
    goto :goto_19

    .line 1475
    :catch_a
    move-exception v0

    .line 1476
    :goto_19
    check-cast v2, Lcom/google/android/gms/internal/ads/te;

    .line 1477
    .line 1478
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 1479
    .line 1480
    .line 1481
    const-string v2, "Exception while getting advertising Id info"

    .line 1482
    .line 1483
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1484
    .line 1485
    .line 1486
    :goto_1a
    return-void

    .line 1487
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ha;->b()V

    .line 1488
    .line 1489
    .line 1490
    return-void

    .line 1491
    :pswitch_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1492
    .line 1493
    move-object v2, v0

    .line 1494
    check-cast v2, Ljava/io/OutputStream;

    .line 1495
    .line 1496
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1497
    .line 1498
    check-cast v0, [B

    .line 1499
    .line 1500
    :try_start_a
    new-instance v3, Ljava/io/DataOutputStream;

    .line 1501
    .line 1502
    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1503
    .line 1504
    .line 1505
    :try_start_b
    array-length v4, v0

    .line 1506
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1510
    .line 1511
    .line 1512
    invoke-static {v3}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 1513
    .line 1514
    .line 1515
    goto :goto_1e

    .line 1516
    :catchall_2
    move-exception v0

    .line 1517
    goto :goto_1b

    .line 1518
    :catch_b
    move-exception v0

    .line 1519
    goto :goto_1c

    .line 1520
    :goto_1b
    move-object v6, v3

    .line 1521
    goto :goto_1f

    .line 1522
    :goto_1c
    move-object v6, v3

    .line 1523
    goto :goto_1d

    .line 1524
    :catchall_3
    move-exception v0

    .line 1525
    goto :goto_1f

    .line 1526
    :catch_c
    move-exception v0

    .line 1527
    :goto_1d
    :try_start_c
    const-string v3, "Error transporting the ad response"

    .line 1528
    .line 1529
    invoke-static {v3, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1530
    .line 1531
    .line 1532
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1533
    .line 1534
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1535
    .line 1536
    const-string v4, "LargeParcelTeleporter.pipeData.1"

    .line 1537
    .line 1538
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1539
    .line 1540
    .line 1541
    if-nez v6, :cond_2f

    .line 1542
    .line 1543
    invoke-static {v2}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 1544
    .line 1545
    .line 1546
    goto :goto_1e

    .line 1547
    :cond_2f
    invoke-static {v6}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 1548
    .line 1549
    .line 1550
    :goto_1e
    return-void

    .line 1551
    :goto_1f
    if-nez v6, :cond_30

    .line 1552
    .line 1553
    invoke-static {v2}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 1554
    .line 1555
    .line 1556
    goto :goto_20

    .line 1557
    :cond_30
    invoke-static {v6}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 1558
    .line 1559
    .line 1560
    :goto_20
    throw v0

    .line 1561
    :pswitch_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1562
    .line 1563
    check-cast v0, Lp3/k;

    .line 1564
    .line 1565
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1566
    .line 1567
    check-cast v2, Ljava/lang/String;

    .line 1568
    .line 1569
    invoke-virtual {v0, v2}, Lp3/k;->c(Ljava/lang/String;)Z

    .line 1570
    .line 1571
    .line 1572
    return-void

    .line 1573
    :pswitch_12
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1574
    .line 1575
    iget-object v0, v0, Lk3/l;->b:LF2/G;

    .line 1576
    .line 1577
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1578
    .line 1579
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbsd;

    .line 1580
    .line 1581
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbsd;->a:Landroid/app/Activity;

    .line 1582
    .line 1583
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1584
    .line 1585
    check-cast v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 1586
    .line 1587
    const/4 v3, 0x1

    .line 1588
    invoke-static {v0, v2, v3}, LF2/G;->M(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 1589
    .line 1590
    .line 1591
    return-void

    .line 1592
    :pswitch_13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1593
    .line 1594
    check-cast v0, Lcom/google/android/gms/internal/ads/Ja;

    .line 1595
    .line 1596
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1597
    .line 1598
    check-cast v2, Lcom/google/android/gms/internal/ads/Ia;

    .line 1599
    .line 1600
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1601
    .line 1602
    .line 1603
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1604
    .line 1605
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 1606
    .line 1607
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1608
    .line 1609
    .line 1610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1611
    .line 1612
    .line 1613
    move-result-wide v3

    .line 1614
    new-instance v6, Ljava/util/ArrayList;

    .line 1615
    .line 1616
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    .line 1618
    .line 1619
    :try_start_d
    const-string v8, "loadJavascriptEngine > Before createJavascriptEngine"

    .line 1620
    .line 1621
    invoke-static {v8}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Ja;->b:Landroid/content/Context;

    .line 1625
    .line 1626
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Ja;->d:Lp3/a;

    .line 1627
    .line 1628
    new-instance v14, Lcom/google/android/gms/internal/ads/xa;

    .line 1629
    .line 1630
    invoke-direct {v14, v8, v9}, Lcom/google/android/gms/internal/ads/xa;-><init>(Landroid/content/Context;Lp3/a;)V

    .line 1631
    .line 1632
    .line 1633
    const-string v8, "loadJavascriptEngine > After createJavascriptEngine"

    .line 1634
    .line 1635
    invoke-static {v8}, Lo3/I;->k(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1636
    .line 1637
    .line 1638
    const-string v8, "loadJavascriptEngine > Before setting new engine loaded listener"

    .line 1639
    .line 1640
    invoke-static {v8}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1641
    .line 1642
    .line 1643
    new-instance v8, Lt2/c;

    .line 1644
    .line 1645
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1646
    .line 1647
    .line 1648
    iput-object v0, v8, Lt2/c;->I:Ljava/lang/Object;

    .line 1649
    .line 1650
    iput-object v6, v8, Lt2/c;->J:Ljava/io/Serializable;

    .line 1651
    .line 1652
    iput-wide v3, v8, Lt2/c;->G:J

    .line 1653
    .line 1654
    iput-object v2, v8, Lt2/c;->K:Ljava/lang/Object;

    .line 1655
    .line 1656
    iput-object v14, v8, Lt2/c;->H:Ljava/lang/Object;

    .line 1657
    .line 1658
    iget-object v9, v14, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 1659
    .line 1660
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v9

    .line 1664
    new-instance v10, Lcom/google/android/gms/internal/ads/K4;

    .line 1665
    .line 1666
    const/16 v11, 0x11

    .line 1667
    .line 1668
    invoke-direct {v10, v8, v11}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 1669
    .line 1670
    .line 1671
    iput-object v10, v9, Lcom/google/android/gms/internal/ads/Xf;->N:Lcom/google/android/gms/internal/ads/dg;

    .line 1672
    .line 1673
    const-string v8, "loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded"

    .line 1674
    .line 1675
    invoke-static {v8}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1676
    .line 1677
    .line 1678
    new-instance v15, Lcom/google/android/gms/internal/ads/Ca;

    .line 1679
    .line 1680
    move-object v8, v15

    .line 1681
    move-object v9, v0

    .line 1682
    move-wide v10, v3

    .line 1683
    move-object v12, v2

    .line 1684
    move-object v13, v14

    .line 1685
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/Ca;-><init>(Lcom/google/android/gms/internal/ads/Ja;JLcom/google/android/gms/internal/ads/Ia;Lcom/google/android/gms/internal/ads/xa;)V

    .line 1686
    .line 1687
    .line 1688
    const-string v8, "/jsLoaded"

    .line 1689
    .line 1690
    invoke-virtual {v14, v8, v15}, Lcom/google/android/gms/internal/ads/xa;->C(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 1691
    .line 1692
    .line 1693
    new-instance v8, LO1/J;

    .line 1694
    .line 1695
    invoke-direct {v8}, LO1/J;-><init>()V

    .line 1696
    .line 1697
    .line 1698
    new-instance v9, Lcom/google/android/gms/internal/ads/Da;

    .line 1699
    .line 1700
    invoke-direct {v9, v0, v14, v8}, Lcom/google/android/gms/internal/ads/Da;-><init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/xa;LO1/J;)V

    .line 1701
    .line 1702
    .line 1703
    iput-object v9, v8, LO1/J;->H:Ljava/lang/Object;

    .line 1704
    .line 1705
    const-string v8, "loadJavascriptEngine > Before registering GmsgHandler for /requestReload"

    .line 1706
    .line 1707
    invoke-static {v8}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1708
    .line 1709
    .line 1710
    const-string v8, "/requestReload"

    .line 1711
    .line 1712
    invoke-virtual {v14, v8, v9}, Lcom/google/android/gms/internal/ads/xa;->C(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 1713
    .line 1714
    .line 1715
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Ja;->c:Ljava/lang/String;

    .line 1716
    .line 1717
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v9

    .line 1721
    const-string v10, "loadJavascriptEngine > javascriptPath: "

    .line 1722
    .line 1723
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v9

    .line 1727
    invoke-static {v9}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1728
    .line 1729
    .line 1730
    const-string v9, ".js"

    .line 1731
    .line 1732
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1733
    .line 1734
    .line 1735
    move-result v9

    .line 1736
    if-eqz v9, :cond_31

    .line 1737
    .line 1738
    const-string v5, "loadJavascriptEngine > Before newEngine.loadJavascript"

    .line 1739
    .line 1740
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1741
    .line 1742
    .line 1743
    const-string v5, "loadJavascript on adWebView from path: "

    .line 1744
    .line 1745
    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v5

    .line 1749
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1750
    .line 1751
    .line 1752
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1753
    .line 1754
    const-string v7, "<!DOCTYPE html><html><head><script src=\""

    .line 1755
    .line 1756
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    .line 1762
    const-string v7, "\"></script></head><body></body></html>"

    .line 1763
    .line 1764
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v5

    .line 1771
    new-instance v7, Lcom/google/android/gms/internal/ads/ua;

    .line 1772
    .line 1773
    const/4 v8, 0x3

    .line 1774
    invoke-direct {v7, v14, v5, v8}, Lcom/google/android/gms/internal/ads/ua;-><init>(Lcom/google/android/gms/internal/ads/xa;Ljava/lang/String;I)V

    .line 1775
    .line 1776
    .line 1777
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/xa;->a(Lcom/google/android/gms/internal/ads/ua;)V

    .line 1778
    .line 1779
    .line 1780
    const-string v5, "loadJavascriptEngine > After newEngine.loadJavascript"

    .line 1781
    .line 1782
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1783
    .line 1784
    .line 1785
    goto :goto_21

    .line 1786
    :cond_31
    const-string v9, "<html>"

    .line 1787
    .line 1788
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1789
    .line 1790
    .line 1791
    move-result v9

    .line 1792
    if-eqz v9, :cond_32

    .line 1793
    .line 1794
    const-string v7, "loadJavascriptEngine > Before newEngine.loadHtml"

    .line 1795
    .line 1796
    invoke-static {v7}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1797
    .line 1798
    .line 1799
    const-string v7, "loadHtml on adWebView from html"

    .line 1800
    .line 1801
    invoke-static {v7}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1802
    .line 1803
    .line 1804
    new-instance v7, Lcom/google/android/gms/internal/ads/ua;

    .line 1805
    .line 1806
    invoke-direct {v7, v14, v8, v5}, Lcom/google/android/gms/internal/ads/ua;-><init>(Lcom/google/android/gms/internal/ads/xa;Ljava/lang/String;I)V

    .line 1807
    .line 1808
    .line 1809
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/xa;->a(Lcom/google/android/gms/internal/ads/ua;)V

    .line 1810
    .line 1811
    .line 1812
    const-string v5, "loadJavascriptEngine > After newEngine.loadHtml"

    .line 1813
    .line 1814
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1815
    .line 1816
    .line 1817
    goto :goto_21

    .line 1818
    :cond_32
    const-string v5, "loadJavascriptEngine > Before newEngine.loadHtmlWrapper"

    .line 1819
    .line 1820
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1821
    .line 1822
    .line 1823
    const-string v5, "loadHtmlWrapper on adWebView from path: "

    .line 1824
    .line 1825
    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v5

    .line 1829
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1830
    .line 1831
    .line 1832
    new-instance v5, Lcom/google/android/gms/internal/ads/ua;

    .line 1833
    .line 1834
    invoke-direct {v5, v14, v8, v7}, Lcom/google/android/gms/internal/ads/ua;-><init>(Lcom/google/android/gms/internal/ads/xa;Ljava/lang/String;I)V

    .line 1835
    .line 1836
    .line 1837
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/xa;->a(Lcom/google/android/gms/internal/ads/ua;)V

    .line 1838
    .line 1839
    .line 1840
    const-string v5, "loadJavascriptEngine > After newEngine.loadHtmlWrapper"

    .line 1841
    .line 1842
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1843
    .line 1844
    .line 1845
    :goto_21
    const-string v5, "loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed"

    .line 1846
    .line 1847
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    sget-object v5, Lo3/O;->l:Lo3/J;

    .line 1851
    .line 1852
    new-instance v7, Lcom/google/android/gms/internal/ads/za;

    .line 1853
    .line 1854
    const/4 v15, 0x1

    .line 1855
    move-object v8, v7

    .line 1856
    move-object v9, v0

    .line 1857
    move-object v10, v2

    .line 1858
    move-object v11, v14

    .line 1859
    move-object v12, v6

    .line 1860
    move-wide v13, v3

    .line 1861
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/za;-><init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/Ia;Lcom/google/android/gms/internal/ads/xa;Ljava/util/ArrayList;JI)V

    .line 1862
    .line 1863
    .line 1864
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->c:Lcom/google/android/gms/internal/ads/J7;

    .line 1865
    .line 1866
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 1867
    .line 1868
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1869
    .line 1870
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v0

    .line 1874
    check-cast v0, Ljava/lang/Integer;

    .line 1875
    .line 1876
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1877
    .line 1878
    .line 1879
    move-result v0

    .line 1880
    int-to-long v2, v0

    .line 1881
    invoke-virtual {v5, v7, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1882
    .line 1883
    .line 1884
    goto :goto_22

    .line 1885
    :catchall_4
    move-exception v0

    .line 1886
    const-string v3, "Error creating webview."

    .line 1887
    .line 1888
    invoke-static {v3, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    .line 1890
    .line 1891
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->a7:Lcom/google/android/gms/internal/ads/J7;

    .line 1892
    .line 1893
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 1894
    .line 1895
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1896
    .line 1897
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v3

    .line 1901
    check-cast v3, Ljava/lang/Boolean;

    .line 1902
    .line 1903
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1904
    .line 1905
    .line 1906
    move-result v3

    .line 1907
    if-eqz v3, :cond_33

    .line 1908
    .line 1909
    const-string v3, "SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine"

    .line 1910
    .line 1911
    invoke-virtual {v2, v3, v0}, Lf/H;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1912
    .line 1913
    .line 1914
    goto :goto_22

    .line 1915
    :cond_33
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->c7:Lcom/google/android/gms/internal/ads/J7;

    .line 1916
    .line 1917
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1918
    .line 1919
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v3

    .line 1923
    check-cast v3, Ljava/lang/Boolean;

    .line 1924
    .line 1925
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1926
    .line 1927
    .line 1928
    move-result v3

    .line 1929
    const-string v4, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 1930
    .line 1931
    if-eqz v3, :cond_34

    .line 1932
    .line 1933
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1934
    .line 1935
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1936
    .line 1937
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1938
    .line 1939
    .line 1940
    invoke-virtual {v2}, Lf/H;->p()V

    .line 1941
    .line 1942
    .line 1943
    goto :goto_22

    .line 1944
    :cond_34
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1945
    .line 1946
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1947
    .line 1948
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {v2}, Lf/H;->p()V

    .line 1952
    .line 1953
    .line 1954
    :goto_22
    return-void

    .line 1955
    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->A4:Lcom/google/android/gms/internal/ads/J7;

    .line 1956
    .line 1957
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 1958
    .line 1959
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1960
    .line 1961
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v0

    .line 1965
    check-cast v0, Ljava/lang/Boolean;

    .line 1966
    .line 1967
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1968
    .line 1969
    .line 1970
    move-result v0

    .line 1971
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 1972
    .line 1973
    check-cast v2, LJ2/t;

    .line 1974
    .line 1975
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 1976
    .line 1977
    check-cast v3, Landroid/content/Context;

    .line 1978
    .line 1979
    if-eqz v0, :cond_35

    .line 1980
    .line 1981
    :try_start_e
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    .line 1982
    .line 1983
    new-instance v4, Lcom/google/android/gms/internal/ads/kH;

    .line 1984
    .line 1985
    const/16 v5, 0x10

    .line 1986
    .line 1987
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    .line 1988
    .line 1989
    .line 1990
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/measurement/H1;->G(Landroid/content/Context;Ljava/lang/String;Lp3/i;)Ljava/lang/Object;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v0

    .line 1994
    check-cast v0, Lcom/google/android/gms/internal/ads/D5;

    .line 1995
    .line 1996
    iput-object v0, v2, LJ2/t;->I:Ljava/lang/Object;

    .line 1997
    .line 1998
    new-instance v0, LR3/b;

    .line 1999
    .line 2000
    invoke-direct {v0, v3}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 2001
    .line 2002
    .line 2003
    iget-object v3, v2, LJ2/t;->I:Ljava/lang/Object;

    .line 2004
    .line 2005
    check-cast v3, Lcom/google/android/gms/internal/ads/D5;

    .line 2006
    .line 2007
    check-cast v3, Lcom/google/android/gms/internal/ads/B5;

    .line 2008
    .line 2009
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/B5;->z3(LR3/b;)V

    .line 2010
    .line 2011
    .line 2012
    const/4 v3, 0x1

    .line 2013
    iput-boolean v3, v2, LJ2/t;->H:Z
    :try_end_e
    .catch Lp3/j; {:try_start_e .. :try_end_e} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_d

    .line 2014
    .line 2015
    goto :goto_23

    .line 2016
    :catch_d
    const-string v0, "Cannot dynamite load clearcut"

    .line 2017
    .line 2018
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 2019
    .line 2020
    .line 2021
    :cond_35
    :goto_23
    return-void

    .line 2022
    :pswitch_15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 2023
    .line 2024
    check-cast v0, Lcom/google/android/gms/internal/ads/s6;

    .line 2025
    .line 2026
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/s6;->b:Lcom/google/android/gms/internal/ads/te;

    .line 2027
    .line 2028
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/te;->isCancelled()Z

    .line 2029
    .line 2030
    .line 2031
    move-result v0

    .line 2032
    if-eqz v0, :cond_36

    .line 2033
    .line 2034
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 2035
    .line 2036
    check-cast v0, Ljava/util/concurrent/Future;

    .line 2037
    .line 2038
    const/4 v2, 0x1

    .line 2039
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2040
    .line 2041
    .line 2042
    :cond_36
    return-void

    .line 2043
    :pswitch_16
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 2044
    .line 2045
    move-object v2, v0

    .line 2046
    check-cast v2, Lcom/google/android/gms/internal/ads/s6;

    .line 2047
    .line 2048
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 2049
    .line 2050
    check-cast v0, Lcom/google/android/gms/internal/ads/n6;

    .line 2051
    .line 2052
    :try_start_f
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v3

    .line 2056
    check-cast v3, Lcom/google/android/gms/internal/ads/p6;

    .line 2057
    .line 2058
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n6;->d()Z

    .line 2059
    .line 2060
    .line 2061
    move-result v0

    .line 2062
    if-eqz v0, :cond_37

    .line 2063
    .line 2064
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/s6;->a:Lcom/google/android/gms/internal/ads/o6;

    .line 2065
    .line 2066
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v4

    .line 2070
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/A5;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v0

    .line 2077
    sget-object v3, Lcom/google/android/gms/internal/ads/m6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2078
    .line 2079
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v3

    .line 2083
    check-cast v3, Lcom/google/android/gms/internal/ads/m6;

    .line 2084
    .line 2085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2086
    .line 2087
    .line 2088
    goto :goto_24

    .line 2089
    :catch_e
    move-exception v0

    .line 2090
    goto :goto_25

    .line 2091
    :catch_f
    move-exception v0

    .line 2092
    goto :goto_25

    .line 2093
    :cond_37
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/s6;->a:Lcom/google/android/gms/internal/ads/o6;

    .line 2094
    .line 2095
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v4

    .line 2099
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/A5;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 2100
    .line 2101
    .line 2102
    const/4 v5, 0x1

    .line 2103
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v0

    .line 2107
    sget-object v3, Lcom/google/android/gms/internal/ads/m6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2108
    .line 2109
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v3

    .line 2113
    check-cast v3, Lcom/google/android/gms/internal/ads/m6;

    .line 2114
    .line 2115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    .line 2117
    .line 2118
    :goto_24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/m6;->o()Z

    .line 2119
    .line 2120
    .line 2121
    move-result v0

    .line 2122
    if-nez v0, :cond_38

    .line 2123
    .line 2124
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/s6;->b:Lcom/google/android/gms/internal/ads/te;

    .line 2125
    .line 2126
    new-instance v3, Ljava/lang/RuntimeException;

    .line 2127
    .line 2128
    const-string v4, "No entry contents."

    .line 2129
    .line 2130
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2131
    .line 2132
    .line 2133
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 2134
    .line 2135
    .line 2136
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/s6;->c:Lcom/google/android/gms/internal/ads/x3;

    .line 2137
    .line 2138
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x3;->d(Lcom/google/android/gms/internal/ads/x3;)V

    .line 2139
    .line 2140
    .line 2141
    goto :goto_26

    .line 2142
    :cond_38
    new-instance v4, Lcom/google/android/gms/internal/ads/r6;

    .line 2143
    .line 2144
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/m6;->l()Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v0

    .line 2148
    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/r6;-><init>(Lcom/google/android/gms/internal/ads/s6;Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;)V

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    .line 2152
    .line 2153
    .line 2154
    move-result v0

    .line 2155
    const/4 v5, -0x1

    .line 2156
    if-eq v0, v5, :cond_39

    .line 2157
    .line 2158
    invoke-virtual {v4, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 2159
    .line 2160
    .line 2161
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/s6;->b:Lcom/google/android/gms/internal/ads/te;

    .line 2162
    .line 2163
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/m6;->n()Z

    .line 2164
    .line 2165
    .line 2166
    move-result v5

    .line 2167
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/m6;->q()Z

    .line 2168
    .line 2169
    .line 2170
    move-result v6

    .line 2171
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/m6;->i()J

    .line 2172
    .line 2173
    .line 2174
    move-result-wide v7

    .line 2175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/m6;->p()Z

    .line 2176
    .line 2177
    .line 2178
    move-result v9

    .line 2179
    new-instance v10, Lcom/google/android/gms/internal/ads/u6;

    .line 2180
    .line 2181
    move-object v3, v10

    .line 2182
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/u6;-><init>(Lcom/google/android/gms/internal/ads/r6;ZZJZ)V

    .line 2183
    .line 2184
    .line 2185
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 2186
    .line 2187
    .line 2188
    goto :goto_26

    .line 2189
    :cond_39
    new-instance v0, Ljava/io/IOException;

    .line 2190
    .line 2191
    const-string v3, "Unable to read from cache."

    .line 2192
    .line 2193
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2194
    .line 2195
    .line 2196
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_e

    .line 2197
    :goto_25
    const-string v3, "Unable to obtain a cache service instance."

    .line 2198
    .line 2199
    invoke-static {v3, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2200
    .line 2201
    .line 2202
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/s6;->b:Lcom/google/android/gms/internal/ads/te;

    .line 2203
    .line 2204
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 2205
    .line 2206
    .line 2207
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/s6;->c:Lcom/google/android/gms/internal/ads/x3;

    .line 2208
    .line 2209
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x3;->d(Lcom/google/android/gms/internal/ads/x3;)V

    .line 2210
    .line 2211
    .line 2212
    :goto_26
    return-void

    .line 2213
    :pswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Ha;->a()V

    .line 2214
    .line 2215
    .line 2216
    return-void

    .line 2217
    :pswitch_18
    :try_start_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 2218
    .line 2219
    check-cast v0, Lcom/google/android/gms/internal/ads/n3;

    .line 2220
    .line 2221
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/n3;->H:Ljava/util/concurrent/BlockingQueue;

    .line 2222
    .line 2223
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 2224
    .line 2225
    check-cast v2, Lcom/google/android/gms/internal/ads/v3;

    .line 2226
    .line 2227
    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_10

    .line 2228
    .line 2229
    .line 2230
    goto :goto_27

    .line 2231
    :catch_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v0

    .line 2235
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2236
    .line 2237
    .line 2238
    :goto_27
    return-void

    .line 2239
    :pswitch_19
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 2240
    .line 2241
    check-cast v0, Lcom/google/android/gms/internal/ads/x;

    .line 2242
    .line 2243
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 2244
    .line 2245
    check-cast v2, Ljava/lang/String;

    .line 2246
    .line 2247
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/x;->l(Ljava/lang/String;)V

    .line 2248
    .line 2249
    .line 2250
    return-void

    .line 2251
    :pswitch_1a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 2252
    .line 2253
    check-cast v0, Lcom/google/android/gms/internal/ads/x;

    .line 2254
    .line 2255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2256
    .line 2257
    .line 2258
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2259
    .line 2260
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 2261
    .line 2262
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 2263
    .line 2264
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 2265
    .line 2266
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 2267
    .line 2268
    check-cast v0, Lcom/google/android/gms/internal/ads/tL;

    .line 2269
    .line 2270
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tL;->l()Lcom/google/android/gms/internal/ads/dL;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v2

    .line 2274
    new-instance v3, Lcom/google/android/gms/internal/ads/mL;

    .line 2275
    .line 2276
    const/4 v4, 0x5

    .line 2277
    invoke-direct {v3, v4, v7}, Lcom/google/android/gms/internal/ads/mL;-><init>(II)V

    .line 2278
    .line 2279
    .line 2280
    const/16 v4, 0x406

    .line 2281
    .line 2282
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 2283
    .line 2284
    .line 2285
    return-void

    .line 2286
    :pswitch_1b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->H:Ljava/lang/Object;

    .line 2287
    .line 2288
    check-cast v0, Lcom/google/android/gms/internal/ads/x;

    .line 2289
    .line 2290
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 2291
    .line 2292
    check-cast v2, Lcom/google/android/gms/internal/ads/th;

    .line 2293
    .line 2294
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2295
    .line 2296
    .line 2297
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2298
    .line 2299
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 2300
    .line 2301
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 2302
    .line 2303
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 2304
    .line 2305
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 2306
    .line 2307
    new-instance v3, Lcom/google/android/gms/internal/ads/Xu;

    .line 2308
    .line 2309
    const/16 v4, 0x19

    .line 2310
    .line 2311
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 2312
    .line 2313
    .line 2314
    invoke-virtual {v0, v4, v3}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual {v0}, Lx/e;->o()V

    .line 2318
    .line 2319
    .line 2320
    return-void

    .line 2321
    :pswitch_1c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Ha;->I:Ljava/lang/Object;

    .line 2322
    .line 2323
    check-cast v0, Lcom/google/android/gms/internal/ads/xa;

    .line 2324
    .line 2325
    const-string v2, "/result"

    .line 2326
    .line 2327
    sget-object v3, Lcom/google/android/gms/internal/ads/M9;->o:Lcom/google/android/gms/internal/ads/Vl;

    .line 2328
    .line 2329
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xa;->z(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 2330
    .line 2331
    .line 2332
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 2333
    .line 2334
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 2335
    .line 2336
    .line 2337
    return-void

    .line 2338
    nop

    .line 2339
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
