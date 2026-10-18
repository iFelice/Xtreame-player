.class public final Lcom/google/android/gms/internal/ads/tb;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eb;


# instance fields
.field public final G:Ljava/lang/Object;

.field public H:La3/b;

.field public I:Lcom/google/android/gms/internal/ads/kd;

.field public J:LR3/a;


# direct methods
.method public constructor <init>(Lr3/a;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr3/e;)V
    .locals 1

    .line 3
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    return-void
.end method

.method public static final C3(Ll3/b1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ll3/b1;->L:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    sget-object p0, Ll3/p;->f:Ll3/p;

    .line 6
    .line 7
    iget-object p0, p0, Ll3/p;->a:Lp3/d;

    .line 8
    .line 9
    invoke-static {}, Lp3/d;->m()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public static final D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Ll3/b1;->a0:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "max_ad_content_rating"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    return-object p0
.end method


# virtual methods
.method public final A0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/e;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    check-cast v0, Lr3/e;

    .line 9
    .line 10
    invoke-interface {v0}, Lr3/e;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/os/RemoteException;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final A3(Ll3/b1;)V
    .locals 1

    .line 1
    iget-object p1, p1, Ll3/b1;->S:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v0, "Can not show null mediated rewarded ad."

    .line 8
    .line 9
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/RemoteException;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_0
    const-class v1, Lr3/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " #009 Class mismatch: "

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/os/RemoteException;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public final B0(LR3/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p1, Lr3/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Show rewarded ad from adapter."

    .line 8
    .line 9
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "Can not show null mediation rewarded ad."

    .line 13
    .line 14
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/os/RemoteException;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_0
    const-class v0, Lr3/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " #009 Class mismatch: "

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/os/RemoteException;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Server parameters: "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move-object v0, p2

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 59
    .line 60
    instance-of p2, p2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    const-string p2, "adJson"

    .line 65
    .line 66
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    const-string p2, "tagForChildDirectedTreatment"

    .line 72
    .line 73
    iget p1, p1, Ll3/b1;->M:I

    .line 74
    .line 75
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    const-string p1, "max_ad_content_rating"

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :goto_1
    const-string p2, ""

    .line 85
    .line 86
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Landroid/os/RemoteException;

    .line 90
    .line 91
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public final D0(LR3/a;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/M8;Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v0, v7, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    instance-of v8, v7, Lr3/a;

    .line 20
    .line 21
    if-eqz v8, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v2, Lr3/a;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " or "

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " #009 Class mismatch: "

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/os/RemoteException;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_1
    :goto_0
    const-string v8, "Requesting native ad from adapter."

    .line 82
    .line 83
    invoke-static {v8}, Lp3/h;->b(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v8, ""

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    :try_start_0
    move-object v0, v7

    .line 91
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 92
    .line 93
    iget-object v7, v3, Ll3/b1;->K:Ljava/util/List;

    .line 94
    .line 95
    const/4 v9, 0x0

    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    new-instance v10, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {v10, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    move-object v12, v10

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    move-object v12, v9

    .line 108
    :goto_1
    new-instance v7, Lcom/google/android/gms/internal/ads/wb;

    .line 109
    .line 110
    iget-wide v10, v3, Ll3/b1;->H:J

    .line 111
    .line 112
    const-wide/16 v13, -0x1

    .line 113
    .line 114
    cmp-long v15, v10, v13

    .line 115
    .line 116
    if-nez v15, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    new-instance v13, Ljava/util/Date;

    .line 120
    .line 121
    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    iget v14, v3, Ll3/b1;->M:I

    .line 129
    .line 130
    iget-boolean v10, v3, Ll3/b1;->X:Z

    .line 131
    .line 132
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-object v11, v7

    .line 136
    move-object/from16 v15, p6

    .line 137
    .line 138
    move-object/from16 v16, p7

    .line 139
    .line 140
    move/from16 v17, v10

    .line 141
    .line 142
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/wb;-><init>(Ljava/util/HashSet;ZILcom/google/android/gms/internal/ads/M8;Ljava/util/ArrayList;Z)V

    .line 143
    .line 144
    .line 145
    iget-object v10, v3, Ll3/b1;->S:Landroid/os/Bundle;

    .line 146
    .line 147
    if-eqz v10, :cond_4

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v10, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    :cond_4
    new-instance v10, La3/b;

    .line 162
    .line 163
    invoke-direct {v10, v6}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/hb;)V

    .line 164
    .line 165
    .line 166
    iput-object v10, v1, Lcom/google/android/gms/internal/ads/tb;->H:La3/b;

    .line 167
    .line 168
    invoke-static/range {p1 .. p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Landroid/content/Context;

    .line 173
    .line 174
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/tb;->H:La3/b;

    .line 175
    .line 176
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    move-object/from16 p2, v0

    .line 181
    .line 182
    move-object/from16 p3, v6

    .line 183
    .line 184
    move-object/from16 p4, v10

    .line 185
    .line 186
    move-object/from16 p5, v3

    .line 187
    .line 188
    move-object/from16 p6, v7

    .line 189
    .line 190
    move-object/from16 p7, v9

    .line 191
    .line 192
    invoke-interface/range {p2 .. p7}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lr3/l;Landroid/os/Bundle;Lr3/n;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :goto_3
    invoke-static {v8, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    const-string v3, "adapter.requestNativeAd"

    .line 200
    .line 201
    invoke-static {v2, v0, v3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Landroid/os/RemoteException;

    .line 205
    .line 206
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_5
    instance-of v0, v7, Lr3/a;

    .line 211
    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    :try_start_1
    move-object v0, v7

    .line 215
    check-cast v0, Lr3/a;

    .line 216
    .line 217
    new-instance v9, Lcom/google/android/gms/internal/ads/sb;

    .line 218
    .line 219
    const/4 v10, 0x3

    .line 220
    invoke-direct {v9, v1, v6, v10}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/hb;I)V

    .line 221
    .line 222
    .line 223
    new-instance v10, Lr3/k;

    .line 224
    .line 225
    invoke-static/range {p1 .. p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    check-cast v11, Landroid/content/Context;

    .line 230
    .line 231
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 235
    .line 236
    .line 237
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 238
    .line 239
    .line 240
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v10, v9}, Lr3/a;->loadNativeAdMapper(Lr3/k;Lr3/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :catchall_1
    move-exception v0

    .line 251
    invoke-static {v8, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    const-string v9, "adapter.loadNativeAdMapper"

    .line 255
    .line 256
    invoke-static {v2, v0, v9}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-nez v9, :cond_6

    .line 268
    .line 269
    const-string v9, "Method is not found"

    .line 270
    .line 271
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_6

    .line 276
    .line 277
    :try_start_2
    check-cast v7, Lr3/a;

    .line 278
    .line 279
    new-instance v0, Lcom/google/android/gms/internal/ads/sb;

    .line 280
    .line 281
    const/4 v9, 0x2

    .line 282
    invoke-direct {v0, v1, v6, v9}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/hb;I)V

    .line 283
    .line 284
    .line 285
    new-instance v6, Lr3/k;

    .line 286
    .line 287
    invoke-static/range {p1 .. p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    check-cast v9, Landroid/content/Context;

    .line 292
    .line 293
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 297
    .line 298
    .line 299
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 300
    .line 301
    .line 302
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v6, v0}, Lr3/a;->loadNativeAd(Lr3/k;Lr3/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :catchall_2
    move-exception v0

    .line 313
    invoke-static {v8, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    const-string v3, "adapter.loadNativeAd"

    .line 317
    .line 318
    invoke-static {v2, v0, v3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    new-instance v0, Landroid/os/RemoteException;

    .line 322
    .line 323
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_6
    new-instance v0, Landroid/os/RemoteException;

    .line 328
    .line 329
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 330
    .line 331
    .line 332
    throw v0

    .line 333
    :cond_7
    return-void
.end method

.method public final E2(LR3/a;Ll3/d1;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 16
    .line 17
    instance-of v8, v7, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 18
    .line 19
    if-nez v8, :cond_1

    .line 20
    .line 21
    instance-of v9, v7, Lr3/a;

    .line 22
    .line 23
    if-eqz v9, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-class v2, Lr3/a;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " or "

    .line 55
    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " #009 Class mismatch: "

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Landroid/os/RemoteException;

    .line 78
    .line 79
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_1
    :goto_0
    const-string v9, "Requesting banner ad from adapter."

    .line 84
    .line 85
    invoke-static {v9}, Lp3/h;->b(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v9, v0, Ll3/d1;->T:Z

    .line 89
    .line 90
    iget v10, v0, Ll3/d1;->H:I

    .line 91
    .line 92
    iget v11, v0, Ll3/d1;->K:I

    .line 93
    .line 94
    if-eqz v9, :cond_2

    .line 95
    .line 96
    new-instance v0, Lf3/g;

    .line 97
    .line 98
    invoke-direct {v0, v11, v10}, Lf3/g;-><init>(II)V

    .line 99
    .line 100
    .line 101
    const/4 v9, 0x1

    .line 102
    iput-boolean v9, v0, Lf3/g;->d:Z

    .line 103
    .line 104
    iput v10, v0, Lf3/g;->e:I

    .line 105
    .line 106
    move-object/from16 v16, v0

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    new-instance v9, Lf3/g;

    .line 110
    .line 111
    iget-object v0, v0, Ll3/d1;->G:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {v9, v11, v10, v0}, Lf3/g;-><init>(IILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v16, v9

    .line 117
    .line 118
    :goto_1
    const-string v9, ""

    .line 119
    .line 120
    if-eqz v8, :cond_6

    .line 121
    .line 122
    :try_start_0
    move-object v12, v7

    .line 123
    check-cast v12, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 124
    .line 125
    iget-object v0, v3, Ll3/b1;->K:Ljava/util/List;

    .line 126
    .line 127
    const/4 v7, 0x0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    new-instance v8, Ljava/util/HashSet;

    .line 131
    .line 132
    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto :goto_4

    .line 138
    :cond_3
    move-object v8, v7

    .line 139
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/rb;

    .line 140
    .line 141
    iget-wide v10, v3, Ll3/b1;->H:J

    .line 142
    .line 143
    const-wide/16 v13, -0x1

    .line 144
    .line 145
    cmp-long v15, v10, v13

    .line 146
    .line 147
    if-nez v15, :cond_4

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    new-instance v13, Ljava/util/Date;

    .line 151
    .line 152
    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    iget v11, v3, Ll3/b1;->M:I

    .line 160
    .line 161
    iget-boolean v13, v3, Ll3/b1;->X:Z

    .line 162
    .line 163
    invoke-static/range {p3 .. p4}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v8, v10, v11, v13}, Lcom/google/android/gms/internal/ads/rb;-><init>(Ljava/util/HashSet;ZIZ)V

    .line 167
    .line 168
    .line 169
    iget-object v8, v3, Ll3/b1;->S:Landroid/os/Bundle;

    .line 170
    .line 171
    if-eqz v8, :cond_5

    .line 172
    .line 173
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    :cond_5
    move-object/from16 v18, v7

    .line 186
    .line 187
    invoke-static/range {p1 .. p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    move-object v13, v7

    .line 192
    check-cast v13, Landroid/content/Context;

    .line 193
    .line 194
    new-instance v14, La3/b;

    .line 195
    .line 196
    invoke-direct {v14, v6}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/hb;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    move-object/from16 v17, v0

    .line 204
    .line 205
    invoke-interface/range {v12 .. v18}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lr3/h;Landroid/os/Bundle;Lf3/g;Lr3/d;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :goto_4
    invoke-static {v9, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    const-string v3, "adapter.requestBannerAd"

    .line 213
    .line 214
    invoke-static {v2, v0, v3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v0, Landroid/os/RemoteException;

    .line 218
    .line 219
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_6
    instance-of v0, v7, Lr3/a;

    .line 224
    .line 225
    if-eqz v0, :cond_7

    .line 226
    .line 227
    :try_start_1
    check-cast v7, Lr3/a;

    .line 228
    .line 229
    new-instance v0, Lcom/google/android/gms/internal/ads/sb;

    .line 230
    .line 231
    const/4 v8, 0x0

    .line 232
    invoke-direct {v0, v1, v6, v8}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/hb;I)V

    .line 233
    .line 234
    .line 235
    new-instance v6, Lr3/g;

    .line 236
    .line 237
    invoke-static/range {p1 .. p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    check-cast v8, Landroid/content/Context;

    .line 242
    .line 243
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 247
    .line 248
    .line 249
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 250
    .line 251
    .line 252
    invoke-static/range {p3 .. p4}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v6, v0}, Lr3/a;->loadBannerAd(Lr3/g;Lr3/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    invoke-static {v9, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    const-string v3, "adapter.loadBannerAd"

    .line 267
    .line 268
    invoke-static {v2, v0, v3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance v0, Landroid/os/RemoteException;

    .line 272
    .line 273
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_7
    return-void
.end method

.method public final H1(LR3/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p1, Lr3/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Show app open ad from adapter."

    .line 8
    .line 9
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "Can not show null mediation app open ad."

    .line 13
    .line 14
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/os/RemoteException;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_0
    const-class v0, Lr3/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " #009 Class mismatch: "

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/os/RemoteException;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final I0(LR3/a;Lcom/google/android/gms/internal/ads/ha;Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/K4;

    .line 8
    .line 9
    const/16 v2, 0x14

    .line 10
    .line 11
    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/ads/K4;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/android/gms/internal/ads/ka;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ka;->G:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sparse-switch v4, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :sswitch_0
    const-string v4, "rewarded_interstitial"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    goto :goto_2

    .line 55
    :sswitch_1
    const-string v4, "app_open_ad"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    const/4 v3, 0x6

    .line 64
    goto :goto_2

    .line 65
    :sswitch_2
    const-string v4, "app_open"

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    const/4 v3, 0x5

    .line 74
    goto :goto_2

    .line 75
    :sswitch_3
    const-string v4, "interstitial"

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    goto :goto_2

    .line 85
    :sswitch_4
    const-string v4, "rewarded"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    goto :goto_2

    .line 95
    :sswitch_5
    const-string v4, "native"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    const/4 v3, 0x4

    .line 104
    goto :goto_2

    .line 105
    :sswitch_6
    const-string v4, "banner"

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_1

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_1
    const/4 v3, -0x1

    .line 116
    :goto_2
    sget-object v4, Lf3/a;->M:Lf3/a;

    .line 117
    .line 118
    const/4 v5, 0x0

    .line 119
    packed-switch v3, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    :cond_2
    move-object v4, v5

    .line 123
    goto :goto_3

    .line 124
    :pswitch_0
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->cb:Lcom/google/android/gms/internal/ads/J7;

    .line 125
    .line 126
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 127
    .line 128
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 129
    .line 130
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_2

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :pswitch_1
    sget-object v4, Lf3/a;->L:Lf3/a;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :pswitch_2
    sget-object v4, Lf3/a;->K:Lf3/a;

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :pswitch_3
    sget-object v4, Lf3/a;->J:Lf3/a;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :pswitch_4
    sget-object v4, Lf3/a;->I:Lf3/a;

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :pswitch_5
    sget-object v4, Lf3/a;->H:Lf3/a;

    .line 156
    .line 157
    :goto_3
    :pswitch_6
    if-eqz v4, :cond_0

    .line 158
    .line 159
    new-instance v3, Lm2/e;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ka;->H:Landroid/os/Bundle;

    .line 162
    .line 163
    const/16 v5, 0xe

    .line 164
    .line 165
    invoke-direct {v3, v5, v4, v2}, Lm2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_3
    check-cast v0, Lr3/a;

    .line 174
    .line 175
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {v0, p1, v1, p2}, Lr3/a;->initialize(Landroid/content/Context;Lr3/b;Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_4
    new-instance p1, Landroid/os/RemoteException;

    .line 186
    .line 187
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_6
        -0x3ebdafe9 -> :sswitch_5
        -0xe47b3f2 -> :sswitch_4
        0x240b672c -> :sswitch_3
        0x459991a8 -> :sswitch_2
        0x69fe9e1a -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public final N()Lcom/google/android/gms/internal/ads/lb;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final O0(LR3/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p1, Lr3/a;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    instance-of v0, p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-class v1, Lr3/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " or "

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " #009 Class mismatch: "

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/os/RemoteException;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    :goto_0
    instance-of p1, p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->T()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const-string p1, "Show interstitial ad from adapter."

    .line 78
    .line 79
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "Can not show null mediation interstitial ad."

    .line 83
    .line 84
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Landroid/os/RemoteException;

    .line 88
    .line 89
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public final O1(LR3/a;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    instance-of v2, v0, Lr3/a;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-class p2, Lr3/a;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    new-instance p4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " or "

    .line 41
    .line 42
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " #009 Class mismatch: "

    .line 49
    .line 50
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/os/RemoteException;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    :goto_0
    const-string v2, "Requesting interstitial ad from adapter."

    .line 70
    .line 71
    invoke-static {v2}, Lp3/h;->b(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v2, ""

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    :try_start_0
    move-object v3, v0

    .line 79
    check-cast v3, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 80
    .line 81
    iget-object v0, p2, Ll3/b1;->K:Ljava/util/List;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    new-instance v4, Ljava/util/HashSet;

    .line 87
    .line 88
    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p2

    .line 93
    goto :goto_4

    .line 94
    :cond_2
    move-object v4, v1

    .line 95
    :goto_1
    new-instance v7, Lcom/google/android/gms/internal/ads/rb;

    .line 96
    .line 97
    iget-wide v5, p2, Ll3/b1;->H:J

    .line 98
    .line 99
    const-wide/16 v8, -0x1

    .line 100
    .line 101
    cmp-long v0, v5, v8

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    new-instance v0, Ljava/util/Date;

    .line 107
    .line 108
    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget v5, p2, Ll3/b1;->M:I

    .line 116
    .line 117
    iget-boolean v6, p2, Ll3/b1;->X:Z

    .line 118
    .line 119
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-direct {v7, v4, v0, v5, v6}, Lcom/google/android/gms/internal/ads/rb;-><init>(Ljava/util/HashSet;ZIZ)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p2, Ll3/b1;->S:Landroid/os/Bundle;

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    move-object v8, v0

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move-object v8, v1

    .line 144
    :goto_3
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object v4, v0

    .line 149
    check-cast v4, Landroid/content/Context;

    .line 150
    .line 151
    new-instance v5, La3/b;

    .line 152
    .line 153
    invoke-direct {v5, p5}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/hb;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lr3/j;Landroid/os/Bundle;Lr3/d;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :goto_4
    invoke-static {v2, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    const-string p3, "adapter.requestInterstitialAd"

    .line 168
    .line 169
    invoke-static {p1, p2, p3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Landroid/os/RemoteException;

    .line 173
    .line 174
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_5
    instance-of v1, v0, Lr3/a;

    .line 179
    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    :try_start_1
    check-cast v0, Lr3/a;

    .line 183
    .line 184
    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    .line 185
    .line 186
    const/4 v3, 0x1

    .line 187
    invoke-direct {v1, p0, p5, v3}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/hb;I)V

    .line 188
    .line 189
    .line 190
    new-instance p5, Lr3/i;

    .line 191
    .line 192
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 205
    .line 206
    .line 207
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p5, v1}, Lr3/a;->loadInterstitialAd(Lr3/i;Lr3/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :catchall_1
    move-exception p2

    .line 218
    invoke-static {v2, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    const-string p3, "adapter.loadInterstitialAd"

    .line 222
    .line 223
    invoke-static {p1, p2, p3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance p1, Landroid/os/RemoteException;

    .line 227
    .line 228
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_6
    return-void
.end method

.method public final P0(LR3/a;Lcom/google/android/gms/internal/ads/kd;Ljava/util/List;)V
    .locals 0

    .line 1
    const-string p1, "Could not initialize rewarded video adapter."

    .line 2
    .line 3
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/RemoteException;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "Showing interstitial from adapter."

    .line 8
    .line 9
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/os/RemoteException;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_0
    const-class v1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " #009 Class mismatch: "

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Landroid/os/RemoteException;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final W2(LR3/a;Ll3/d1;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "Requesting interscroller ad from adapter."

    .line 8
    .line 9
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    check-cast v0, Lr3/a;

    .line 13
    .line 14
    new-instance v1, La3/b;

    .line 15
    .line 16
    const/16 v6, 0xc

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    move-object v2, v1

    .line 20
    move-object v3, p0

    .line 21
    move-object v4, p6

    .line 22
    move-object v5, v0

    .line 23
    invoke-direct/range {v2 .. v7}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    new-instance p6, Lr3/g;

    .line 27
    .line 28
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0, p3, p4, p5}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 41
    .line 42
    .line 43
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    iget p3, p2, Ll3/d1;->K:I

    .line 47
    .line 48
    iget p2, p2, Ll3/d1;->H:I

    .line 49
    .line 50
    new-instance p4, Lf3/g;

    .line 51
    .line 52
    invoke-direct {p4, p3, p2}, Lf3/g;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/4 p3, 0x1

    .line 56
    iput-boolean p3, p4, Lf3/g;->f:Z

    .line 57
    .line 58
    iput p2, p4, Lf3/g;->g:I

    .line 59
    .line 60
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p6, v1}, Lr3/a;->loadInterscrollerAd(Lr3/g;Lr3/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    move-exception p2

    .line 68
    const-string p3, ""

    .line 69
    .line 70
    invoke-static {p3, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    const-string p3, "adapter.loadInterscrollerAd"

    .line 74
    .line 75
    invoke-static {p1, p2, p3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroid/os/RemoteException;

    .line 79
    .line 80
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_0
    const-class p1, Lr3/a;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, " #009 Class mismatch: "

    .line 107
    .line 108
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroid/os/RemoteException;

    .line 122
    .line 123
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public final f3(LR3/a;Ll3/b1;Lcom/google/android/gms/internal/ads/kd;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of p4, p2, Lr3/a;

    .line 4
    .line 5
    if-nez p4, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 16
    .line 17
    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-class p1, Lr3/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " #009 Class mismatch: "

    .line 47
    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Landroid/os/RemoteException;

    .line 62
    .line 63
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->J:LR3/a;

    .line 68
    .line 69
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tb;->I:Lcom/google/android/gms/internal/ads/kd;

    .line 70
    .line 71
    new-instance p1, LR3/b;

    .line 72
    .line 73
    invoke-direct {p1, p2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/kd;->zzl(LR3/a;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final g2(LR3/a;Ll3/b1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "Requesting rewarded interstitial ad from adapter."

    .line 8
    .line 9
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    check-cast v0, Lr3/a;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v1, p0, p4, v2}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/hb;I)V

    .line 18
    .line 19
    .line 20
    new-instance p4, Lr3/m;

    .line 21
    .line 22
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p4, v1}, Lr3/a;->loadRewardedInterstitialAd(Lr3/m;Lr3/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p2

    .line 49
    const-string p3, "adapter.loadRewardedInterstitialAd"

    .line 50
    .line 51
    invoke-static {p1, p2, p3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Landroid/os/RemoteException;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_0
    const-class p1, Lr3/a;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " #009 Class mismatch: "

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Landroid/os/RemoteException;

    .line 98
    .line 99
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public final i0(LR3/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/e;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    check-cast v0, Lr3/e;

    .line 9
    .line 10
    invoke-interface {v0}, Lr3/e;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/os/RemoteException;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/e;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    check-cast v0, Lr3/e;

    .line 9
    .line 10
    invoke-interface {v0}, Lr3/e;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/os/RemoteException;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/kb;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l1(LR3/a;Ll3/b1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "Requesting rewarded ad from adapter."

    .line 8
    .line 9
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    check-cast v0, Lr3/a;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v1, p0, p4, v2}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/hb;I)V

    .line 18
    .line 19
    .line 20
    new-instance p4, Lr3/m;

    .line 21
    .line 22
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p4, v1}, Lr3/a;->loadRewardedAd(Lr3/m;Lr3/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p2

    .line 49
    const-string p3, ""

    .line 50
    .line 51
    invoke-static {p3, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    const-string p3, "adapter.loadRewardedAd"

    .line 55
    .line 56
    invoke-static {p1, p2, p3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroid/os/RemoteException;

    .line 60
    .line 61
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_0
    const-class p1, Lr3/a;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, " #009 Class mismatch: "

    .line 88
    .line 89
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Landroid/os/RemoteException;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final l2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    check-cast v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->onImmersiveModeUpdated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    const-string v0, ""

    .line 15
    .line 16
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-class p1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " #009 Class mismatch: "

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final q1(LR3/a;Ll3/b1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "Requesting app open ad from adapter."

    .line 8
    .line 9
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    check-cast v0, Lr3/a;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-direct {v1, p0, p4, v2}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/hb;I)V

    .line 18
    .line 19
    .line 20
    new-instance p4, Lr3/f;

    .line 21
    .line 22
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/tb;->B3(Ll3/b1;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/tb;->A3(Ll3/b1;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tb;->C3(Ll3/b1;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/tb;->D3(Ll3/b1;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p4, v1}, Lr3/a;->loadAppOpenAd(Lr3/f;Lr3/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p2

    .line 49
    const-string p3, ""

    .line 50
    .line 51
    invoke-static {p3, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    const-string p3, "adapter.loadAppOpenAd"

    .line 55
    .line 56
    invoke-static {p1, p2, p3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroid/os/RemoteException;

    .line 60
    .line 61
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_0
    const-class p1, Lr3/a;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, " #009 Class mismatch: "

    .line 88
    .line 89
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Landroid/os/RemoteException;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final q3(Ll3/b1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/tb;->z3(Ll3/b1;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final r()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    goto/16 :goto_13

    .line 11
    .line 12
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/tb;->H1(LR3/a;)V

    .line 24
    .line 25
    .line 26
    throw v2

    .line 27
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    .line 37
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ll3/b1;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v4, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/hb;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 66
    .line 67
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/tb;->q1(LR3/a;Ll3/b1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_12

    .line 80
    .line 81
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/tb;->O0(LR3/a;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_12

    .line 99
    .line 100
    :pswitch_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    .line 102
    .line 103
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_12

    .line 107
    .line 108
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    sget-object p1, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    .line 118
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    move-object v6, p1

    .line 123
    check-cast v6, Ll3/d1;

    .line 124
    .line 125
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    .line 127
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    move-object v7, p1

    .line 132
    check-cast v7, Ll3/b1;

    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-nez p1, :cond_2

    .line 147
    .line 148
    :goto_1
    move-object v10, v2

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/hb;

    .line 155
    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    move-object v2, v0

    .line 159
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 163
    .line 164
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 169
    .line 170
    .line 171
    move-object v4, p0

    .line 172
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/tb;->W2(LR3/a;Ll3/d1;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_12

    .line 179
    .line 180
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->zzm()Lcom/google/android/gms/internal/ads/Ob;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_12

    .line 190
    .line 191
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->zzl()Lcom/google/android/gms/internal/ads/Ob;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    .line 196
    .line 197
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_12

    .line 201
    .line 202
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    .line 212
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Ll3/b1;

    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    if-nez v4, :cond_4

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_4
    invoke-interface {v4, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/hb;

    .line 234
    .line 235
    if-eqz v3, :cond_5

    .line 236
    .line 237
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 241
    .line 242
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 243
    .line 244
    .line 245
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/tb;->g2(LR3/a;Ll3/b1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_12

    .line 255
    .line 256
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-nez v0, :cond_6

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_6
    const-string v2, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback"

    .line 272
    .line 273
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/ha;

    .line 278
    .line 279
    if-eqz v4, :cond_7

    .line 280
    .line 281
    move-object v2, v3

    .line 282
    check-cast v2, Lcom/google/android/gms/internal/ads/ha;

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/ads/ga;

    .line 286
    .line 287
    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    move-object v2, v3

    .line 291
    :goto_4
    sget-object v0, Lcom/google/android/gms/internal/ads/ka;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 292
    .line 293
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/tb;->I0(LR3/a;Lcom/google/android/gms/internal/ads/ha;Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_12

    .line 307
    .line 308
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/tb;->B0(LR3/a;)V

    .line 320
    .line 321
    .line 322
    throw v2

    .line 323
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 332
    .line 333
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Ll3/b1;

    .line 338
    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    if-nez v4, :cond_8

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_8
    invoke-interface {v4, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/hb;

    .line 355
    .line 356
    if-eqz v3, :cond_9

    .line 357
    .line 358
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 362
    .line 363
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 364
    .line 365
    .line 366
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/tb;->l1(LR3/a;Ll3/b1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_12

    .line 376
    .line 377
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->zzk()Lcom/google/android/gms/internal/ads/pb;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    .line 383
    .line 384
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_12

    .line 388
    .line 389
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->zzh()Ll3/B0;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    .line 395
    .line 396
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_12

    .line 400
    .line 401
    :pswitch_e
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->f(Landroid/os/Parcel;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/tb;->l2(Z)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_12

    .line 415
    .line 416
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tb;->H:La3/b;

    .line 417
    .line 418
    if-eqz p1, :cond_a

    .line 419
    .line 420
    iget-object p1, p1, La3/b;->J:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast p1, Lcom/google/android/gms/internal/ads/g9;

    .line 423
    .line 424
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/g9;

    .line 425
    .line 426
    if-eqz p2, :cond_a

    .line 427
    .line 428
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/g9;->a:Lcom/google/android/gms/internal/ads/f9;

    .line 429
    .line 430
    :cond_a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    .line 432
    .line 433
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_12

    .line 437
    .line 438
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 447
    .line 448
    .line 449
    move-result-object p3

    .line 450
    if-eqz p3, :cond_c

    .line 451
    .line 452
    invoke-interface {p3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/kd;

    .line 457
    .line 458
    if-eqz v4, :cond_b

    .line 459
    .line 460
    check-cast v3, Lcom/google/android/gms/internal/ads/kd;

    .line 461
    .line 462
    goto :goto_6

    .line 463
    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/ads/id;

    .line 464
    .line 465
    invoke-direct {v3, p3, v0, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 466
    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_c
    move-object v3, v2

    .line 470
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 471
    .line 472
    .line 473
    move-result-object p3

    .line 474
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0, p1, v3, p3}, Lcom/google/android/gms/internal/ads/tb;->P0(LR3/a;Lcom/google/android/gms/internal/ads/kd;Ljava/util/List;)V

    .line 478
    .line 479
    .line 480
    throw v2

    .line 481
    :pswitch_11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    .line 483
    .line 484
    sget-object p1, Lcom/google/android/gms/internal/ads/A5;->a:Ljava/lang/ClassLoader;

    .line 485
    .line 486
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_12

    .line 490
    .line 491
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/tb;->i0(LR3/a;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_12

    .line 509
    .line 510
    :pswitch_13
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 511
    .line 512
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    check-cast p1, Ll3/b1;

    .line 517
    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/tb;->z3(Ll3/b1;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_12

    .line 535
    .line 536
    :pswitch_14
    new-instance p1, Landroid/os/Bundle;

    .line 537
    .line 538
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    .line 543
    .line 544
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_12

    .line 548
    .line 549
    :pswitch_15
    new-instance p1, Landroid/os/Bundle;

    .line 550
    .line 551
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    .line 556
    .line 557
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_12

    .line 561
    .line 562
    :pswitch_16
    new-instance p1, Landroid/os/Bundle;

    .line 563
    .line 564
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    .line 569
    .line 570
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_12

    .line 574
    .line 575
    :pswitch_17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    .line 577
    .line 578
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_12

    .line 582
    .line 583
    :pswitch_18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    .line 585
    .line 586
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_12

    .line 590
    .line 591
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 600
    .line 601
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    move-object v6, p1

    .line 606
    check-cast v6, Ll3/b1;

    .line 607
    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v8

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    if-nez p1, :cond_d

    .line 621
    .line 622
    :goto_7
    move-object v9, v2

    .line 623
    goto :goto_8

    .line 624
    :cond_d
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/hb;

    .line 629
    .line 630
    if-eqz v1, :cond_e

    .line 631
    .line 632
    move-object v2, v0

    .line 633
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 634
    .line 635
    goto :goto_7

    .line 636
    :cond_e
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 637
    .line 638
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 639
    .line 640
    .line 641
    goto :goto_7

    .line 642
    :goto_8
    sget-object p1, Lcom/google/android/gms/internal/ads/M8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 643
    .line 644
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    move-object v10, p1

    .line 649
    check-cast v10, Lcom/google/android/gms/internal/ads/M8;

    .line 650
    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 652
    .line 653
    .line 654
    move-result-object v11

    .line 655
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 656
    .line 657
    .line 658
    move-object v4, p0

    .line 659
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/tb;->D0(LR3/a;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/M8;Ljava/util/ArrayList;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_12

    .line 666
    .line 667
    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->zzN()Z

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    .line 673
    .line 674
    sget-object p2, Lcom/google/android/gms/internal/ads/A5;->a:Ljava/lang/ClassLoader;

    .line 675
    .line 676
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_12

    .line 680
    .line 681
    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->B()V

    .line 682
    .line 683
    .line 684
    throw v2

    .line 685
    :pswitch_1c
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 686
    .line 687
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    check-cast p1, Ll3/b1;

    .line 692
    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/tb;->z3(Ll3/b1;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_12

    .line 707
    .line 708
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 713
    .line 714
    .line 715
    move-result-object p1

    .line 716
    sget-object v3, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 717
    .line 718
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    check-cast v3, Ll3/b1;

    .line 723
    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    if-nez v4, :cond_f

    .line 732
    .line 733
    goto :goto_9

    .line 734
    :cond_f
    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    instance-of v5, v2, Lcom/google/android/gms/internal/ads/kd;

    .line 739
    .line 740
    if-eqz v5, :cond_10

    .line 741
    .line 742
    check-cast v2, Lcom/google/android/gms/internal/ads/kd;

    .line 743
    .line 744
    goto :goto_9

    .line 745
    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/ads/id;

    .line 746
    .line 747
    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 748
    .line 749
    .line 750
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/tb;->f3(LR3/a;Ll3/b1;Lcom/google/android/gms/internal/ads/kd;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_12

    .line 764
    .line 765
    :pswitch_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->j()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_12

    .line 772
    .line 773
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->A0()V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    .line 778
    .line 779
    goto/16 :goto_12

    .line 780
    .line 781
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 782
    .line 783
    .line 784
    move-result-object p1

    .line 785
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 790
    .line 791
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    move-object v6, p1

    .line 796
    check-cast v6, Ll3/b1;

    .line 797
    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v7

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v8

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    if-nez p1, :cond_11

    .line 811
    .line 812
    :goto_a
    move-object v9, v2

    .line 813
    goto :goto_b

    .line 814
    :cond_11
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/hb;

    .line 819
    .line 820
    if-eqz v1, :cond_12

    .line 821
    .line 822
    move-object v2, v0

    .line 823
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 824
    .line 825
    goto :goto_a

    .line 826
    :cond_12
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 827
    .line 828
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 829
    .line 830
    .line 831
    goto :goto_a

    .line 832
    :goto_b
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 833
    .line 834
    .line 835
    move-object v4, p0

    .line 836
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/tb;->O1(LR3/a;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_12

    .line 843
    .line 844
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    sget-object p1, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 853
    .line 854
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 855
    .line 856
    .line 857
    move-result-object p1

    .line 858
    move-object v6, p1

    .line 859
    check-cast v6, Ll3/d1;

    .line 860
    .line 861
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 862
    .line 863
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 864
    .line 865
    .line 866
    move-result-object p1

    .line 867
    move-object v7, p1

    .line 868
    check-cast v7, Ll3/b1;

    .line 869
    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v8

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v9

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 879
    .line 880
    .line 881
    move-result-object p1

    .line 882
    if-nez p1, :cond_13

    .line 883
    .line 884
    :goto_c
    move-object v10, v2

    .line 885
    goto :goto_d

    .line 886
    :cond_13
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/hb;

    .line 891
    .line 892
    if-eqz v1, :cond_14

    .line 893
    .line 894
    move-object v2, v0

    .line 895
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 896
    .line 897
    goto :goto_c

    .line 898
    :cond_14
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 899
    .line 900
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 901
    .line 902
    .line 903
    goto :goto_c

    .line 904
    :goto_d
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 905
    .line 906
    .line 907
    move-object v4, p0

    .line 908
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/tb;->E2(LR3/a;Ll3/d1;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    .line 913
    .line 914
    goto/16 :goto_12

    .line 915
    .line 916
    :pswitch_22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->k()V

    .line 917
    .line 918
    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    .line 921
    .line 922
    goto/16 :goto_12

    .line 923
    .line 924
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->T()V

    .line 925
    .line 926
    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    .line 929
    .line 930
    goto/16 :goto_12

    .line 931
    .line 932
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 933
    .line 934
    .line 935
    move-result-object p1

    .line 936
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 941
    .line 942
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 943
    .line 944
    .line 945
    move-result-object p1

    .line 946
    move-object v6, p1

    .line 947
    check-cast v6, Ll3/b1;

    .line 948
    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v7

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 954
    .line 955
    .line 956
    move-result-object p1

    .line 957
    if-nez p1, :cond_15

    .line 958
    .line 959
    :goto_e
    move-object v9, v2

    .line 960
    goto :goto_f

    .line 961
    :cond_15
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/hb;

    .line 966
    .line 967
    if-eqz v1, :cond_16

    .line 968
    .line 969
    move-object v2, v0

    .line 970
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 971
    .line 972
    goto :goto_e

    .line 973
    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 974
    .line 975
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 976
    .line 977
    .line 978
    goto :goto_e

    .line 979
    :goto_f
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 980
    .line 981
    .line 982
    const/4 v8, 0x0

    .line 983
    move-object v4, p0

    .line 984
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/tb;->O1(LR3/a;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    .line 989
    .line 990
    goto :goto_12

    .line 991
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tb;->zzn()LR3/a;

    .line 992
    .line 993
    .line 994
    move-result-object p1

    .line 995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    .line 997
    .line 998
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_12

    .line 1002
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1003
    .line 1004
    .line 1005
    move-result-object p1

    .line 1006
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v5

    .line 1010
    sget-object p1, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1011
    .line 1012
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p1

    .line 1016
    move-object v6, p1

    .line 1017
    check-cast v6, Ll3/d1;

    .line 1018
    .line 1019
    sget-object p1, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1020
    .line 1021
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1022
    .line 1023
    .line 1024
    move-result-object p1

    .line 1025
    move-object v7, p1

    .line 1026
    check-cast v7, Ll3/b1;

    .line 1027
    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v8

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1033
    .line 1034
    .line 1035
    move-result-object p1

    .line 1036
    if-nez p1, :cond_17

    .line 1037
    .line 1038
    :goto_10
    move-object v10, v2

    .line 1039
    goto :goto_11

    .line 1040
    :cond_17
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/hb;

    .line 1045
    .line 1046
    if-eqz v1, :cond_18

    .line 1047
    .line 1048
    move-object v2, v0

    .line 1049
    check-cast v2, Lcom/google/android/gms/internal/ads/hb;

    .line 1050
    .line 1051
    goto :goto_10

    .line 1052
    :cond_18
    new-instance v2, Lcom/google/android/gms/internal/ads/fb;

    .line 1053
    .line 1054
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_10

    .line 1058
    :goto_11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 1059
    .line 1060
    .line 1061
    const/4 v9, 0x0

    .line 1062
    move-object v4, p0

    .line 1063
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/tb;->E2(LR3/a;Ll3/d1;Ll3/b1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    .line 1068
    .line 1069
    :goto_12
    const/4 v1, 0x1

    .line 1070
    :goto_13
    return v1

    .line 1071
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final z3(Ll3/b1;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tb;->J:LR3/a;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/ub;

    .line 10
    .line 11
    check-cast v0, Lr3/a;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tb;->I:Lcom/google/android/gms/internal/ads/kd;

    .line 14
    .line 15
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/ub;-><init>(Lr3/a;Lcom/google/android/gms/internal/ads/kd;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/tb;->l1(LR3/a;Ll3/b1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hb;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-class p1, Lr3/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " #009 Class mismatch: "

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroid/os/RemoteException;

    .line 60
    .line 61
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final zzN()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-class v1, Lr3/a;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " #009 Class mismatch: "

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroid/os/RemoteException;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->I:Lcom/google/android/gms/internal/ads/kd;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    return v0

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 74
    return v0
.end method

.method public final zzh()Ll3/B0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    check-cast v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getVideoController()Ll3/B0;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v2
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/jb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/pb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->H:La3/b;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, La3/b;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/vb;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/vb;-><init>(Lcom/google/ads/mediation/a;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    instance-of v0, v0, Lr3/a;

    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/Ob;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    check-cast v0, Lr3/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lr3/a;->getVersionInfo()Lf3/q;

    .line 12
    .line 13
    .line 14
    throw v2
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/Ob;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lr3/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    check-cast v0, Lr3/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lr3/a;->getSDKVersionInfo()Lf3/q;

    .line 12
    .line 13
    .line 14
    throw v2
.end method

.method public final zzn()LR3/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, LR3/b;

    .line 14
    .line 15
    invoke-direct {v1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/os/RemoteException;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_0
    instance-of v1, v0, Lr3/a;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    new-instance v0, LR3/b;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    const-class v1, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-class v2, Lr3/a;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " or "

    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, " #009 Class mismatch: "

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Landroid/os/RemoteException;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw v0
.end method
