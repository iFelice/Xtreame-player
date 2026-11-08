.class public final Ll3/a1;
.super LR3/d;
.source "SourceFile"


# virtual methods
.method public final a(Landroid/content/Context;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Ll3/J;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->W9:Lcom/google/android/gms/internal/ads/J7;

    .line 5
    .line 6
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 7
    .line 8
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :try_start_0
    new-instance v4, LR3/b;

    .line 26
    .line 27
    invoke-direct {v4, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl"

    .line 31
    .line 32
    new-instance v3, LF2/G;

    .line 33
    .line 34
    const/16 v5, 0x14

    .line 35
    .line 36
    invoke-direct {v3, v5}, LF2/G;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/measurement/H1;->G(Landroid/content/Context;Ljava/lang/String;Lp3/i;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v3, v0

    .line 44
    check-cast v3, Ll3/K;

    .line 45
    .line 46
    move-object v5, p2

    .line 47
    move-object v6, p3

    .line 48
    move-object v7, p4

    .line 49
    move v8, p5

    .line 50
    invoke-virtual/range {v3 .. v8}, Ll3/K;->z3(LR3/b;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Landroid/os/IBinder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-nez p2, :cond_0

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_0
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    instance-of p4, p3, Ll3/J;

    .line 62
    .line 63
    if-eqz p4, :cond_1

    .line 64
    .line 65
    check-cast p3, Ll3/J;

    .line 66
    .line 67
    :goto_0
    move-object v2, p3

    .line 68
    goto :goto_3

    .line 69
    :catch_0
    move-exception p2

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception p2

    .line 72
    goto :goto_1

    .line 73
    :catch_2
    move-exception p2

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance p3, Ll3/H;

    .line 76
    .line 77
    invoke-direct {p3, p2}, Ll3/H;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lp3/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p3, "AdManagerCreator.newAdManagerByDynamiteLoader"

    .line 86
    .line 87
    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    const-string p1, "#007 Could not call remote method."

    .line 91
    .line 92
    invoke-static {p1, p2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :try_start_1
    new-instance v4, LR3/b;

    .line 97
    .line 98
    invoke-direct {v4, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, LR3/d;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    move-object v3, p1

    .line 106
    check-cast v3, Ll3/K;

    .line 107
    .line 108
    move-object v5, p2

    .line 109
    move-object v6, p3

    .line 110
    move-object v7, p4

    .line 111
    move v8, p5

    .line 112
    invoke-virtual/range {v3 .. v8}, Ll3/K;->z3(LR3/b;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Landroid/os/IBinder;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    instance-of p3, p2, Ll3/J;

    .line 124
    .line 125
    if-eqz p3, :cond_4

    .line 126
    .line 127
    check-cast p2, Ll3/J;

    .line 128
    .line 129
    :goto_2
    move-object v2, p2

    .line 130
    goto :goto_3

    .line 131
    :catch_3
    move-exception p1

    .line 132
    goto :goto_4

    .line 133
    :catch_4
    move-exception p1

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    new-instance p2, Ll3/H;

    .line 136
    .line 137
    invoke-direct {p2, p1}, Ll3/H;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch LR3/c; {:try_start_1 .. :try_end_1} :catch_3

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :goto_3
    return-object v2

    .line 142
    :goto_4
    const-string p2, "Could not create remote AdManager."

    .line 143
    .line 144
    invoke-static {p2, p1}, Lp3/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    return-object v2
.end method

.method public final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Ll3/K;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Ll3/K;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ll3/K;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ll3/K;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    return-object p1
.end method
