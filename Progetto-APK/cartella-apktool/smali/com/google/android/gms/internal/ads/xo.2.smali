.class public final Lcom/google/android/gms/internal/ads/xo;
.super Ll3/s0;
.source "SourceFile"


# instance fields
.field public final G:Ljava/util/HashMap;

.field public final H:Landroid/content/Context;

.field public final I:Ljava/lang/ref/WeakReference;

.field public final J:Lcom/google/android/gms/internal/ads/so;

.field public final K:Lcom/google/android/gms/internal/ads/jC;

.field public L:Lcom/google/android/gms/internal/ads/qo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lcom/google/android/gms/internal/ads/so;Lcom/google/android/gms/internal/ads/re;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.client.IOutOfContextTester"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->G:Ljava/util/HashMap;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->H:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xo;->I:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xo;->J:Lcom/google/android/gms/internal/ads/so;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xo;->K:Lcom/google/android/gms/internal/ads/jC;

    .line 20
    .line 21
    return-void
.end method

.method public static C3()Lf3/f;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "request_origin"

    .line 7
    .line 8
    const-string v2, "inspector_ooct"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lf3/e;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v1, v2}, Lc1/d;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lc1/d;->e(Landroid/os/Bundle;)Lc1/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lf3/e;

    .line 24
    .line 25
    new-instance v1, Lf3/f;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lf3/f;-><init>(Lf3/e;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public static D3(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Lf3/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lf3/j;

    .line 6
    .line 7
    iget-object p0, p0, Lf3/j;->L:Lf3/p;

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Z5;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "#007 Could not call remote method."

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p0, Lcom/google/android/gms/internal/ads/Z5;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Z5;->a:Lcom/google/android/gms/internal/ads/c6;

    .line 24
    .line 25
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/c6;->zzf()Ll3/x0;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-static {v2, p0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    new-instance p0, Lf3/p;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lf3/p;-><init>(Ll3/x0;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    instance-of v0, p0, Lq3/a;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    check-cast p0, Lq3/a;

    .line 46
    .line 47
    check-cast p0, Lcom/google/android/gms/internal/ads/ra;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ra;->c:Ll3/J;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-interface {p0}, Ll3/J;->zzk()Ll3/x0;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception p0

    .line 62
    invoke-static {v2, p0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    new-instance p0, Lf3/p;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lf3/p;-><init>(Ll3/x0;)V

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_3
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zd;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    check-cast p0, Lcom/google/android/gms/internal/ads/zd;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :try_start_2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/qd;

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/qd;->zzc()Ll3/x0;

    .line 85
    .line 86
    .line 87
    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    goto :goto_2

    .line 89
    :catch_2
    move-exception p0

    .line 90
    invoke-static {v2, p0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    new-instance p0, Lf3/p;

    .line 94
    .line 95
    invoke-direct {p0, v1}, Lf3/p;-><init>(Ll3/x0;)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Ed;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    check-cast p0, Lcom/google/android/gms/internal/ads/Ed;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Ed;->a:Lcom/google/android/gms/internal/ads/qd;

    .line 109
    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/qd;->zzc()Ll3/x0;

    .line 113
    .line 114
    .line 115
    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 116
    goto :goto_3

    .line 117
    :catch_3
    move-exception p0

    .line 118
    invoke-static {v2, p0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_3
    new-instance p0, Lf3/p;

    .line 122
    .line 123
    invoke-direct {p0, v1}, Lf3/p;-><init>(Ll3/x0;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    instance-of v0, p0, Lcom/google/android/gms/ads/AdView;

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    check-cast p0, Lcom/google/android/gms/ads/AdView;

    .line 132
    .line 133
    invoke-virtual {p0}, Lf3/i;->getResponseInfo()Lf3/p;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    goto :goto_4

    .line 138
    :cond_8
    instance-of v0, p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 139
    .line 140
    if-eqz v0, :cond_a

    .line 141
    .line 142
    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->c()Lf3/p;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    :goto_4
    if-nez p0, :cond_9

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_9
    iget-object p0, p0, Lf3/p;->a:Ll3/x0;

    .line 152
    .line 153
    if-eqz p0, :cond_a

    .line 154
    .line 155
    :try_start_4
    invoke-interface {p0}, Ll3/x0;->zzh()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 159
    return-object p0

    .line 160
    :catch_4
    :cond_a
    :goto_5
    const-string p0, ""

    .line 161
    .line 162
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->J:Lcom/google/android/gms/internal/ads/so;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/so;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->a0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/so;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->zzi()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->G:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_c

    .line 34
    .line 35
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->G8:Lcom/google/android/gms/internal/ads/J7;

    .line 36
    .line 37
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 38
    .line 39
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    instance-of v4, v1, Lcom/google/android/gms/internal/ads/Z5;

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    instance-of v4, v1, Lq3/a;

    .line 58
    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zd;

    .line 62
    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    instance-of v4, v1, Lcom/google/android/gms/internal/ads/Ed;

    .line 66
    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xo;->G:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/xo;->D3(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p0, v4, p2}, Lcom/google/android/gms/internal/ads/xo;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    instance-of p2, v1, Lcom/google/android/gms/internal/ads/Z5;

    .line 86
    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    check-cast v1, Lcom/google/android/gms/internal/ads/Z5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    :try_start_1
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Z5;->a:Lcom/google/android/gms/internal/ads/c6;

    .line 92
    .line 93
    new-instance p2, LR3/b;

    .line 94
    .line 95
    invoke-direct {p2, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Z5;->b:Lcom/google/android/gms/internal/ads/a6;

    .line 99
    .line 100
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/c6;->X(LR3/a;Lcom/google/android/gms/internal/ads/h6;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :catch_0
    move-exception p1

    .line 105
    :try_start_2
    const-string p2, "#007 Could not call remote method."

    .line 106
    .line 107
    invoke-static {p2, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    :goto_3
    monitor-exit p0

    .line 111
    return-void

    .line 112
    :cond_5
    :try_start_3
    instance-of p2, v1, Lq3/a;

    .line 113
    .line 114
    if-eqz p2, :cond_6

    .line 115
    .line 116
    check-cast v1, Lq3/a;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Lq3/a;->b(Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :cond_6
    :try_start_4
    instance-of p2, v1, Lcom/google/android/gms/internal/ads/zd;

    .line 124
    .line 125
    if-eqz p2, :cond_8

    .line 126
    .line 127
    check-cast v1, Lcom/google/android/gms/internal/ads/zd;

    .line 128
    .line 129
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zd;->c:Lcom/google/android/gms/internal/ads/Dd;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/qd;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    :try_start_5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->f0(Lcom/google/android/gms/internal/ads/td;)V

    .line 139
    .line 140
    .line 141
    new-instance p1, LR3/b;

    .line 142
    .line 143
    invoke-direct {p1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->zzm(LR3/a;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catch_1
    move-exception p1

    .line 151
    :try_start_6
    const-string p2, "#007 Could not call remote method."

    .line 152
    .line 153
    invoke-static {p2, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_4
    monitor-exit p0

    .line 157
    return-void

    .line 158
    :cond_8
    :try_start_7
    instance-of p2, v1, Lcom/google/android/gms/internal/ads/Ed;

    .line 159
    .line 160
    if-eqz p2, :cond_a

    .line 161
    .line 162
    check-cast v1, Lcom/google/android/gms/internal/ads/Ed;

    .line 163
    .line 164
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Ed;->c:Lcom/google/android/gms/internal/ads/Dd;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/Ed;->a:Lcom/google/android/gms/internal/ads/qd;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    .line 171
    if-eqz p2, :cond_9

    .line 172
    .line 173
    :try_start_8
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->f0(Lcom/google/android/gms/internal/ads/td;)V

    .line 174
    .line 175
    .line 176
    new-instance p1, LR3/b;

    .line 177
    .line 178
    invoke-direct {p1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->zzm(LR3/a;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :catch_2
    move-exception p1

    .line 186
    :try_start_9
    const-string p2, "#007 Could not call remote method."

    .line 187
    .line 188
    invoke-static {p2, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 189
    .line 190
    .line 191
    :cond_9
    :goto_5
    monitor-exit p0

    .line 192
    return-void

    .line 193
    :cond_a
    :try_start_a
    iget-object p2, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 194
    .line 195
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-eqz p2, :cond_c

    .line 206
    .line 207
    instance-of p2, v1, Lcom/google/android/gms/ads/AdView;

    .line 208
    .line 209
    if-nez p2, :cond_b

    .line 210
    .line 211
    instance-of p2, v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 212
    .line 213
    if-eqz p2, :cond_c

    .line 214
    .line 215
    :cond_b
    new-instance p2, Landroid/content/Intent;

    .line 216
    .line 217
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xo;->B3()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "com.google.android.gms.ads.OutOfContextTestingActivity"

    .line 225
    .line 226
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    const-string v1, "adUnit"

    .line 230
    .line 231
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 235
    .line 236
    iget-object p1, p1, Lk3/l;->c:Lo3/O;

    .line 237
    .line 238
    invoke-static {v0, p2}, Lo3/O;->p(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 239
    .line 240
    .line 241
    monitor-exit p0

    .line 242
    return-void

    .line 243
    :cond_c
    :goto_6
    monitor-exit p0

    .line 244
    return-void

    .line 245
    :goto_7
    monitor-exit p0

    .line 246
    throw p1
.end method

.method public final B3()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->I:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->H:Landroid/content/Context;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized E3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->L:Lcom/google/android/gms/internal/ads/qo;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/te;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/wo;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/wo;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xo;->K:Lcom/google/android/gms/internal/ads/jC;

    .line 15
    .line 16
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsOutOfContext"

    .line 25
    .line 26
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 27
    .line 28
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 29
    .line 30
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->J:Lcom/google/android/gms/internal/ads/so;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/so;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_0
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public final h1(Ljava/lang/String;LR3/a;LR3/a;)V
    .locals 9

    .line 1
    invoke-static {p2}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz p2, :cond_8

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_8

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->G:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    instance-of p1, v1, Lcom/google/android/gms/ads/AdView;

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 36
    .line 37
    new-instance p1, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const-string p2, "layout"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, v0}, Lcom/google/android/gms/internal/ads/y1;->j(Landroid/view/View;II)V

    .line 48
    .line 49
    .line 50
    const/16 p2, 0x11

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    const-string p2, "ad_view"

    .line 59
    .line 60
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    instance-of p1, v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 68
    .line 69
    if-eqz p1, :cond_8

    .line 70
    .line 71
    move-object p1, v1

    .line 72
    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 73
    .line 74
    new-instance v6, Lu3/d;

    .line 75
    .line 76
    invoke-direct {v6, p2}, Lu3/d;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "ad_view_tag"

    .line 80
    .line 81
    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v6, v0, v0}, Lcom/google/android/gms/internal/ads/y1;->j(Landroid/view/View;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    new-instance p3, Landroid/widget/LinearLayout;

    .line 91
    .line 92
    invoke-direct {p3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "layout_tag"

    .line 96
    .line 97
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p3, v0, v0}, Lcom/google/android/gms/internal/ads/y1;->j(Landroid/view/View;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 114
    .line 115
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->b()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-nez v7, :cond_3

    .line 122
    .line 123
    const-string v0, "Headline"

    .line 124
    .line 125
    :goto_0
    move-object v1, v0

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const v0, 0x7f13014c

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_0

    .line 135
    :goto_1
    const v2, 0x1030046

    .line 136
    .line 137
    .line 138
    const v3, -0x8c8985

    .line 139
    .line 140
    .line 141
    const/4 v4, 0x0

    .line 142
    const-string v5, "headline_header_tag"

    .line 143
    .line 144
    move-object v0, p2

    .line 145
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/y1;->i(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->b()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v8, ""

    .line 157
    .line 158
    if-nez v0, :cond_4

    .line 159
    .line 160
    move-object v1, v8

    .line 161
    goto :goto_2

    .line 162
    :cond_4
    move-object v1, v0

    .line 163
    :goto_2
    const v2, 0x1030044

    .line 164
    .line 165
    .line 166
    const/high16 v3, -0x1000000

    .line 167
    .line 168
    const/high16 v4, 0x41400000    # 12.0f

    .line 169
    .line 170
    const-string v5, "headline_tag"

    .line 171
    .line 172
    move-object v0, p2

    .line 173
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/y1;->i(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v6, v0}, Lu3/d;->setHeadlineView(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    if-nez v7, :cond_5

    .line 184
    .line 185
    const-string v0, "Body"

    .line 186
    .line 187
    :goto_3
    move-object v1, v0

    .line 188
    goto :goto_4

    .line 189
    :cond_5
    const v0, 0x7f13014b

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_3

    .line 197
    :goto_4
    const v2, 0x1030046

    .line 198
    .line 199
    .line 200
    const v3, -0x8c8985

    .line 201
    .line 202
    .line 203
    const/4 v4, 0x0

    .line 204
    const-string v5, "body_header_tag"

    .line 205
    .line 206
    move-object v0, p2

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/y1;->i(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->a()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-nez v0, :cond_6

    .line 219
    .line 220
    move-object v1, v8

    .line 221
    goto :goto_5

    .line 222
    :cond_6
    move-object v1, v0

    .line 223
    :goto_5
    const v2, 0x1030044

    .line 224
    .line 225
    .line 226
    const/high16 v3, -0x1000000

    .line 227
    .line 228
    const/high16 v4, 0x41400000    # 12.0f

    .line 229
    .line 230
    const-string v5, "body_tag"

    .line 231
    .line 232
    move-object v0, p2

    .line 233
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/y1;->i(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v6, v0}, Lu3/d;->setBodyView(Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    if-nez v7, :cond_7

    .line 244
    .line 245
    const-string v0, "Media View"

    .line 246
    .line 247
    :goto_6
    move-object v1, v0

    .line 248
    goto :goto_7

    .line 249
    :cond_7
    const v0, 0x7f13014d

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_6

    .line 257
    :goto_7
    const v2, 0x1030046

    .line 258
    .line 259
    .line 260
    const v3, -0x8c8985

    .line 261
    .line 262
    .line 263
    const/4 v4, 0x0

    .line 264
    const-string v5, "media_view_header_tag"

    .line 265
    .line 266
    move-object v0, p2

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/y1;->i(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Lu3/b;

    .line 275
    .line 276
    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    const-string p2, "media_view_tag"

    .line 280
    .line 281
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v0}, Lu3/d;->setMediaView(Lu3/b;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, p1}, Lu3/d;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 291
    .line 292
    .line 293
    :cond_8
    :goto_8
    return-void
.end method

.method public final declared-synchronized z3(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->G:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xo;->D3(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/xo;->E3(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public final declared-synchronized zzn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->L:Lcom/google/android/gms/internal/ads/qo;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/te;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/wo;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/wo;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xo;->K:Lcom/google/android/gms/internal/ads/jC;

    .line 15
    .line 16
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsShown"

    .line 25
    .line 26
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 27
    .line 28
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 29
    .line 30
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->J:Lcom/google/android/gms/internal/ads/so;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/so;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_0
    monitor-exit p0

    .line 41
    throw p1
.end method
