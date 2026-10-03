.class public final Lcom/google/android/gms/internal/measurement/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile g:Lcom/google/android/gms/internal/measurement/m0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LP3/b;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public d:I

.field public e:Z

.field public volatile f:Lcom/google/android/gms/internal/measurement/K;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "FA"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m0;->a:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, LP3/b;->a:LP3/b;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m0;->b:LP3/b;

    .line 11
    .line 12
    new-instance v8, Lcom/google/android/gms/internal/measurement/f0;

    .line 13
    .line 14
    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/f0;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    .line 19
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 22
    .line 23
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const-wide/16 v4, 0x3c

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    move-object v1, v0

    .line 31
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m0;->c:Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Cw;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    :try_start_1
    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 61
    .line 62
    const-class v3, Lcom/google/android/gms/internal/measurement/m0;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v2, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/m0;->e:Z

    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/m0;->a:Ljava/lang/String;

    .line 75
    .line 76
    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    .line 77
    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_1
    nop

    .line 83
    :cond_0
    :goto_0
    xor-int/2addr v1, v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m0;->a:Ljava/lang/String;

    .line 87
    .line 88
    const-string v2, "Specified origin or custom app id is null. Both parameters will be ignored."

    .line 89
    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/a0;

    .line 94
    .line 95
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/a0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/app/Application;

    .line 106
    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/m0;->a:Ljava/lang/String;

    .line 110
    .line 111
    const-string p2, "Unable to register lifecycle notifications. Application null."

    .line 112
    .line 113
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/measurement/l0;

    .line 118
    .line 119
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/measurement/l0;-><init>(Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/m0;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/m0;->g:Lcom/google/android/gms/internal/measurement/m0;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-class v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/m0;->g:Lcom/google/android/gms/internal/measurement/m0;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/measurement/m0;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/m0;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/google/android/gms/internal/measurement/m0;->g:Lcom/google/android/gms/internal/measurement/m0;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/m0;->g:Lcom/google/android/gms/internal/measurement/m0;

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/m0;->e:Z

    .line 2
    .line 3
    or-int/2addr v0, p2

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/m0;->e:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m0;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const-string p2, "Data collection startup failed. No data will be collected."

    .line 11
    .line 12
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    new-instance p2, Lcom/google/android/gms/internal/measurement/g0;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/g0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const-string p2, "Error with data collection. Data lost."

    .line 27
    .line 28
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m0;->c:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
