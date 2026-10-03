.class public final Lc4/W;
.super Lc4/u1;
.source "SourceFile"


# virtual methods
.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q(Ljava/lang/String;Lc4/v1;Lcom/google/android/gms/internal/measurement/j1;Lcom/google/android/gms/internal/ads/bD;)V
    .locals 9

    .line 1
    iget-object v0, p2, Lc4/v1;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v1, p0, Lc4/q1;->H:Lc4/A1;

    .line 19
    .line 20
    invoke-virtual {v1}, Lc4/A1;->e()Lc4/E1;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/c2;->c()[B

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p3, Lc4/l0;

    .line 30
    .line 31
    iget-object p3, p3, Lc4/l0;->P:Lc4/j0;

    .line 32
    .line 33
    invoke-static {p3}, Lc4/l0;->k(Lc4/s0;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lc4/V;

    .line 37
    .line 38
    iget-object p2, p2, Lc4/v1;->b:Ljava/util/Map;

    .line 39
    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :cond_0
    move-object v7, p2

    .line 47
    move-object v2, v1

    .line 48
    move-object v3, p0

    .line 49
    move-object v4, p1

    .line 50
    move-object v8, p4

    .line 51
    invoke-direct/range {v2 .. v8}, Lc4/V;-><init>(Lc4/W;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lc4/U;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v1}, Lc4/j0;->w(Lc4/V;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Lc4/l0;

    .line 61
    .line 62
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 63
    .line 64
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p3, "Failed to parse URL. Not uploading MeasurementBatch. appId"

    .line 72
    .line 73
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 74
    .line 75
    invoke-virtual {p2, p1, v0, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final r()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "connectivity"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    nop

    .line 27
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    return v0
.end method
