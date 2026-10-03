.class public final Lcom/google/android/gms/internal/ads/qn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ew;

.field public final b:Lcom/google/android/gms/internal/ads/pn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ew;Lcom/google/android/gms/internal/ads/pn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qn;->a:Lcom/google/android/gms/internal/ads/ew;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qn;->b:Lcom/google/android/gms/internal/ads/pn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ib;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->a:Lcom/google/android/gms/internal/ads/ew;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ew;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/cb;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cb;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ib;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn;->b:Lcom/google/android/gms/internal/ads/pn;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/pn;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    monitor-exit v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ib;->zzf()Lcom/google/android/gms/internal/ads/Ob;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ib;->zzg()Lcom/google/android/gms/internal/ads/Ob;

    .line 35
    .line 36
    .line 37
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/on;

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v4, p1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/on;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ob;Lcom/google/android/gms/internal/ads/Ob;Z)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/pn;->a:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :catchall_0
    monitor-exit v1

    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    return-object v0

    .line 54
    :goto_1
    monitor-exit v1

    .line 55
    throw p1

    .line 56
    :cond_1
    const-string p1, "Unexpected call to adapter creator."

    .line 57
    .line 58
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Landroid/os/RemoteException;

    .line 62
    .line 63
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gw;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->b:Lcom/google/android/gms/internal/ads/pn;

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/gw;

    .line 6
    .line 7
    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 8
    .line 9
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/tb;

    .line 16
    .line 17
    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/tb;-><init>(Lr3/e;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const-string v3, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    .line 29
    .line 30
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/tb;

    .line 37
    .line 38
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsd;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbsd;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/tb;-><init>(Lr3/e;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qn;->a:Lcom/google/android/gms/internal/ads/ew;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ew;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/google/android/gms/internal/ads/cb;

    .line 56
    .line 57
    if-eqz v3, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string v5, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 64
    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    :cond_2
    :try_start_2
    const-string v4, "class_name"

    .line 74
    .line 75
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/cb;->o(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/cb;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eb;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/cb;->s(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/cb;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eb;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/cb;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eb;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    goto :goto_1

    .line 108
    :goto_0
    :try_start_3
    const-string v1, "Invalid custom event."

    .line 109
    .line 110
    invoke-static {v1, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/cb;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eb;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :goto_1
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/gw;-><init>(Lcom/google/android/gms/internal/ads/eb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/internal/ads/pn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gw;)V

    .line 121
    .line 122
    .line 123
    return-object v2

    .line 124
    :cond_6
    :try_start_4
    const-string p1, "Unexpected call to adapter creator."

    .line 125
    .line 126
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroid/os/RemoteException;

    .line 130
    .line 131
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->E8:Lcom/google/android/gms/internal/ads/J7;

    .line 136
    .line 137
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 138
    .line 139
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/ads/pn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gw;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    new-instance p2, Lcom/google/android/gms/internal/ads/aw;

    .line 158
    .line 159
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw p2
.end method
