.class public final Lcom/google/android/gms/internal/pal/Q;
.super Lcom/google/android/gms/internal/pal/S;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/u0;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/pal/I;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/pal/k;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/google/android/gms/internal/pal/k;->G:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/2addr v1, v1

    .line 26
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pal/I;->zzd(I)Lcom/google/android/gms/internal/pal/I;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/pal/v0;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/u0;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/pal/I;

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/gms/internal/pal/k;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p1, Lcom/google/android/gms/internal/pal/k;->G:Z

    .line 13
    .line 14
    return-void
.end method

.method public final c(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/u0;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/pal/I;

    .line 8
    .line 9
    invoke-virtual {v0, p4, p2, p3}, Lcom/google/android/gms/internal/pal/u0;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    check-cast p4, Lcom/google/android/gms/internal/pal/I;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Lcom/google/android/gms/internal/pal/k;

    .line 29
    .line 30
    iget-boolean v3, v3, Lcom/google/android/gms/internal/pal/k;->G:Z

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    add-int/2addr v2, v0

    .line 35
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/pal/I;->zzd(I)Lcom/google/android/gms/internal/pal/I;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_0
    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    if-gtz v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object p4, v1

    .line 46
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/pal/v0;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
