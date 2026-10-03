.class public final Lcom/google/android/gms/internal/measurement/P1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lcom/google/android/gms/internal/measurement/P1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/measurement/O1;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/P1;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/P1;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/P1;->b:Lcom/google/android/gms/internal/measurement/O1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/P1;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/P1;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/measurement/O1;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/P1;->b:Lcom/google/android/gms/internal/measurement/O1;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/P1;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/P1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 9
    .line 10
    invoke-static {p0, v1}, LJ6/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/measurement/P1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/P1;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/P1;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/P1;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 30
    .line 31
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/P1;->b:Lcom/google/android/gms/internal/measurement/O1;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/P1;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/measurement/F1;->a:Landroid/net/Uri;

    .line 48
    .line 49
    sget-object v2, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/P1;->b:Lcom/google/android/gms/internal/measurement/O1;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/P1;->c:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    :try_start_2
    const-string v1, "GservicesLoader"

    .line 67
    .line 68
    const-string v2, "Unable to register Gservices content observer"

    .line 69
    .line 70
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-object p0

    .line 80
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p0
.end method

.method public static declared-synchronized c()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/P1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/P1;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/P1;->b:Lcom/google/android/gms/internal/measurement/O1;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/P1;->c:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/P1;->b:Lcom/google/android/gms/internal/measurement/O1;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 35
    sput-object v1, Lcom/google/android/gms/internal/measurement/P1;->d:Lcom/google/android/gms/internal/measurement/P1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    throw v1
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/P1;->a:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/K1;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/K1;->b(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :try_start_0
    new-instance v1, Lm2/l;

    .line 20
    .line 21
    const/16 v2, 0x13

    .line 22
    .line 23
    invoke-direct {v1, v2, p0, p1}, Lm2/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v1}, Lm2/l;->p()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    :try_start_3
    invoke-virtual {v1}, Lm2/l;->p()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    :goto_0
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    return-object v1

    .line 45
    :catch_1
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :catch_2
    move-exception v1

    .line 48
    goto :goto_1

    .line 49
    :catch_3
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 56
    :goto_1
    const-string v2, "Unable to read GServices for: "

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v2, "GservicesLoader"

    .line 63
    .line 64
    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_2
    return-object v0
.end method
