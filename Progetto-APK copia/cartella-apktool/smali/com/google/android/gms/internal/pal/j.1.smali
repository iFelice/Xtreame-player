.class public abstract Lcom/google/android/gms/internal/pal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected zza:I


# virtual methods
.method public final a()Lcom/google/android/gms/internal/pal/q;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/j;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/pal/r;->H:Lcom/google/android/gms/internal/pal/q;

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/pal/v;

    .line 10
    .line 11
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/pal/v;-><init>([BI)V

    .line 12
    .line 13
    .line 14
    move-object v3, p0

    .line 15
    check-cast v3, Lcom/google/android/gms/internal/pal/D;

    .line 16
    .line 17
    sget-object v4, Lcom/google/android/gms/internal/pal/h0;->c:Lcom/google/android/gms/internal/pal/h0;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/pal/h0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pal/k0;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, v2, Lcom/google/android/gms/internal/pal/v;->Q:Lcom/google/android/gms/internal/pal/w;

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/pal/w;

    .line 33
    .line 34
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/pal/w;-><init>(Lcom/google/android/gms/internal/pal/v;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/pal/k0;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/pal/w;)V

    .line 38
    .line 39
    .line 40
    iget v2, v2, Lcom/google/android/gms/internal/pal/v;->T:I

    .line 41
    .line 42
    sub-int/2addr v0, v2

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lcom/google/android/gms/internal/pal/q;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/q;-><init>([B)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v1, "Did not write as much data as expected."

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "Serializing "

    .line 72
    .line 73
    const-string v4, " to a ByteString threw an IOException (should never happen)."

    .line 74
    .line 75
    invoke-static {v3, v2, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method

.method public final b()[B
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/j;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    new-instance v2, Lcom/google/android/gms/internal/pal/v;

    .line 8
    .line 9
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/pal/v;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    move-object v3, p0

    .line 13
    check-cast v3, Lcom/google/android/gms/internal/pal/D;

    .line 14
    .line 15
    sget-object v4, Lcom/google/android/gms/internal/pal/h0;->c:Lcom/google/android/gms/internal/pal/h0;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/pal/h0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pal/k0;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, v2, Lcom/google/android/gms/internal/pal/v;->Q:Lcom/google/android/gms/internal/pal/w;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/pal/w;

    .line 31
    .line 32
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/pal/w;-><init>(Lcom/google/android/gms/internal/pal/v;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/pal/k0;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/pal/w;)V

    .line 36
    .line 37
    .line 38
    iget v2, v2, Lcom/google/android/gms/internal/pal/v;->T:I

    .line 39
    .line 40
    sub-int/2addr v0, v2

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "Did not write as much data as expected."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "Serializing "

    .line 64
    .line 65
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 66
    .line 67
    invoke-static {v3, v2, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v1
.end method

.method public abstract c()I
.end method
