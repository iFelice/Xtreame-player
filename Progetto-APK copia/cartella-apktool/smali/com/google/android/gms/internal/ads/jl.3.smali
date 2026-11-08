.class public final Lcom/google/android/gms/internal/ads/jl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pj;
.implements Lcom/google/android/gms/internal/ads/Fk;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Od;

.field public final H:Landroid/content/Context;

.field public final I:Lcom/google/android/gms/internal/ads/Qd;

.field public final J:Landroid/view/View;

.field public K:Ljava/lang/String;

.field public final L:Lcom/google/android/gms/internal/ads/z6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Od;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Qd;Landroid/webkit/WebView;Lcom/google/android/gms/internal/ads/z6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jl;->G:Lcom/google/android/gms/internal/ads/Od;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jl;->H:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jl;->I:Lcom/google/android/gms/internal/ads/Qd;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jl;->J:Landroid/view/View;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/jl;->L:Lcom/google/android/gms/internal/ads/z6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jl;->I:Lcom/google/android/gms/internal/ads/Qd;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jl;->H:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/Qd;->e(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jl;->H:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jl;->G:Lcom/google/android/gms/internal/ads/Od;

    .line 18
    .line 19
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/Od;->I:Ljava/lang/String;

    .line 20
    .line 21
    move-object p2, p1

    .line 22
    check-cast p2, Lcom/google/android/gms/internal/ads/bd;

    .line 23
    .line 24
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/bd;->G:Ljava/lang/String;

    .line 25
    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/bd;

    .line 27
    .line 28
    iget v5, p1, Lcom/google/android/gms/internal/ads/bd;->H:I

    .line 29
    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Qd;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string p2, "Remote Exception to get reward item."

    .line 36
    .line 37
    invoke-static {p2, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jl;->G:Lcom/google/android/gms/internal/ads/Od;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Od;->a(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jl;->J:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jl;->K:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jl;->K:Ljava/lang/String;

    .line 15
    .line 16
    const-class v3, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jl;->I:Lcom/google/android/gms/internal/ads/Qd;

    .line 19
    .line 20
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/Qd;->e(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    instance-of v5, v1, Landroid/app/Activity;

    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Qd;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    const-string v6, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-virtual {v4, v1, v6, v5, v7}, Lcom/google/android/gms/internal/ads/Qd;->m(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_2

    .line 41
    .line 42
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/Qd;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    const-string v9, "setCurrentScreen"

    .line 45
    .line 46
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    check-cast v10, Ljava/lang/reflect/Method;

    .line 51
    .line 52
    const/4 v11, 0x2

    .line 53
    const/4 v12, 0x3

    .line 54
    if-eqz v10, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v10, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-array v10, v12, [Ljava/lang/Class;

    .line 66
    .line 67
    const-class v13, Landroid/app/Activity;

    .line 68
    .line 69
    aput-object v13, v10, v7

    .line 70
    .line 71
    aput-object v3, v10, v0

    .line 72
    .line 73
    aput-object v3, v10, v11

    .line 74
    .line 75
    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    invoke-virtual {v4, v9, v7}, Lcom/google/android/gms/internal/ads/Qd;->l(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    :goto_0
    :try_start_1
    move-object v3, v1

    .line 88
    check-cast v3, Landroid/app/Activity;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    new-array v6, v12, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v3, v6, v7

    .line 97
    .line 98
    aput-object v2, v6, v0

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    aput-object v1, v6, v11

    .line 105
    .line 106
    invoke-virtual {v10, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_1
    invoke-virtual {v4, v9, v7}, Lcom/google/android/gms/internal/ads/Qd;->l(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jl;->G:Lcom/google/android/gms/internal/ads/Od;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Od;->a(Z)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final zzk()V
    .locals 0

    return-void
.end method

.method public final zzl()V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->R:Lcom/google/android/gms/internal/ads/z6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jl;->L:Lcom/google/android/gms/internal/ads/z6;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "getCurrentScreenName"

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jl;->I:Lcom/google/android/gms/internal/ads/Qd;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jl;->H:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qd;->e(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const-string v5, ""

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Qd;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    const-string v6, "com.google.android.gms.measurement.AppMeasurement"

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    invoke-virtual {v2, v3, v6, v4, v7}, Lcom/google/android/gms/internal/ads/Qd;->m(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_4

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Qd;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    new-array v9, v6, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Ljava/lang/String;

    .line 50
    .line 51
    if-nez v7, :cond_2

    .line 52
    .line 53
    const-string v7, "getCurrentScreenClass"

    .line 54
    .line 55
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/ads/Qd;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    new-array v7, v6, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v7, v3

    .line 70
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    :cond_2
    if-nez v7, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move-object v5, v7

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/internal/ads/Qd;->l(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/jl;->K:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v2, Lcom/google/android/gms/internal/ads/z6;->O:Lcom/google/android/gms/internal/ads/z6;

    .line 87
    .line 88
    if-ne v1, v2, :cond_5

    .line 89
    .line 90
    const-string v1, "/Rewarded"

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    const-string v1, "/Interstitial"

    .line 94
    .line 95
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jl;->K:Ljava/lang/String;

    .line 100
    .line 101
    return-void
.end method
