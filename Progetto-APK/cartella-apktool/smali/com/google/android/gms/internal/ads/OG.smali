.class public abstract Lcom/google/android/gms/internal/ads/OG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public final a([BLcom/google/android/gms/internal/ads/jH;)V
    .locals 6

    .line 1
    array-length v4, p1

    .line 2
    move-object v0, p0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/oH;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 21
    .line 22
    new-instance v5, Lcom/google/android/gms/internal/ads/SG;

    .line 23
    .line 24
    invoke-direct {v5, p2}, Lcom/google/android/gms/internal/ads/SG;-><init>(Lcom/google/android/gms/internal/ads/jH;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    move-object v0, v1

    .line 29
    move-object v1, v2

    .line 30
    move-object v2, p1

    .line 31
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bI;->c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/SG;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v0, "Reading from byte array should not throw IOException."

    .line 42
    .line 43
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p2

    .line 47
    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 48
    .line 49
    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :goto_1
    throw p1
.end method
