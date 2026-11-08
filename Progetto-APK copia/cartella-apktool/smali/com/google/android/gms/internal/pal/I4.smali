.class public abstract Lcom/google/android/gms/internal/pal/I4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 4
    .line 5
    const/16 v3, 0xf

    .line 6
    .line 7
    const-class v4, Lcom/google/android/gms/internal/pal/z3;

    .line 8
    .line 9
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    new-array v3, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 13
    .line 14
    aput-object v2, v3, v0

    .line 15
    .line 16
    new-instance v2, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-gtz v4, :cond_1

    .line 23
    .line 24
    aget-object v5, v3, v4

    .line 25
    .line 26
    iget-object v6, v5, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iget-object v7, v5, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 33
    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    add-int/2addr v4, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "KeyTypeManager constructed with duplicate factories for primitive "

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    aget-object v0, v3, v0

    .line 62
    .line 63
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    sget v0, Lcom/google/android/gms/internal/pal/x6;->a:I

    .line 69
    .line 70
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/I4;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v1
.end method

.method public static a()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/K4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->f(Lcom/google/android/gms/internal/pal/D3;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/pal/U3;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 27
    .line 28
    const/16 v1, 0xc

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/google/android/gms/internal/pal/H4;->a:Lcom/google/android/gms/internal/pal/v4;

    .line 37
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/pal/t4;->b:Lcom/google/android/gms/internal/pal/t4;

    .line 39
    .line 40
    sget-object v1, Lcom/google/android/gms/internal/pal/H4;->a:Lcom/google/android/gms/internal/pal/v4;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    new-instance v2, Lm2/i;

    .line 44
    .line 45
    iget-object v3, v0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/google/android/gms/internal/pal/B4;

    .line 52
    .line 53
    invoke-direct {v2, v3}, Lm2/i;-><init>(Lcom/google/android/gms/internal/pal/B4;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Lm2/i;->y(Lcom/google/android/gms/internal/pal/v4;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/google/android/gms/internal/pal/B4;

    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/pal/B4;-><init>(Lm2/i;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/pal/H4;->b:Lcom/google/android/gms/internal/pal/u4;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/t4;->c(Lcom/google/android/gms/internal/pal/u4;)V

    .line 73
    .line 74
    .line 75
    sget-object v1, Lcom/google/android/gms/internal/pal/H4;->c:Lcom/google/android/gms/internal/pal/l4;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/t4;->b(Lcom/google/android/gms/internal/pal/l4;)V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/google/android/gms/internal/pal/H4;->d:Lcom/google/android/gms/internal/pal/j4;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/t4;->a(Lcom/google/android/gms/internal/pal/j4;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0

    .line 88
    throw v1
.end method
