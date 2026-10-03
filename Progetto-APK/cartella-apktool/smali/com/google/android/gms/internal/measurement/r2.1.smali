.class public abstract Lcom/google/android/gms/internal/measurement/r2;
.super Lcom/google/android/gms/internal/atv_ads_framework/D;
.source "SourceFile"


# instance fields
.field public final G:Lcom/google/android/gms/internal/measurement/s2;

.field public H:Lcom/google/android/gms/internal/measurement/s2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/s2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r2;->G:Lcom/google/android/gms/internal/measurement/s2;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/s2;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/measurement/s2;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Default instance must be immutable."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/measurement/r2;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->G:Lcom/google/android/gms/internal/measurement/s2;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/measurement/r2;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r2;->f()Lcom/google/android/gms/internal/measurement/s2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 15
    .line 16
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/s2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->G:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/s2;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s2;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 25
    .line 26
    sget-object v2, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/V2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Y2;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 42
    .line 43
    sget-object v1, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/V2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Y2;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r2;->b()Lcom/google/android/gms/internal/measurement/r2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d([BILcom/google/android/gms/internal/measurement/m2;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->G:Lcom/google/android/gms/internal/measurement/s2;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/V2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Y2;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 34
    .line 35
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/V2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Y2;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 48
    .line 49
    new-instance v7, Lcom/google/android/gms/internal/ads/SG;

    .line 50
    .line 51
    invoke-direct {v7, p3}, Lcom/google/android/gms/internal/ads/SG;-><init>(Lcom/google/android/gms/internal/measurement/m2;)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    move-object v4, p1

    .line 56
    move v6, p2

    .line 57
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/Y2;->c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/SG;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/B2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string p3, "Reading from byte array should not throw IOException."

    .line 68
    .line 69
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p2

    .line 73
    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/B2;

    .line 74
    .line 75
    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :goto_1
    throw p1
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/s2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r2;->f()Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/s2;->o(Lcom/google/android/gms/internal/measurement/s2;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, LY/r;

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v1, v2}, LY/r;-><init>(II)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final f()Lcom/google/android/gms/internal/measurement/s2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->j()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 18
    .line 19
    return-object v0
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->G:Lcom/google/android/gms/internal/measurement/s2;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/V2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Y2;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/Y2;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 34
    .line 35
    :cond_0
    return-void
.end method
