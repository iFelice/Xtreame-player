.class public final Lcom/google/android/gms/internal/ads/Nb;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ib;


# static fields
.field public static final synthetic H:I


# instance fields
.field public final G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public static final A3(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

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
    if-eqz p0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

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
    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    return-void

    .line 58
    :goto_1
    const-string v0, ""

    .line 59
    .line 60
    invoke-static {v0, p0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Landroid/os/RemoteException;

    .line 64
    .line 65
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public static final B3(Ll3/b1;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Ll3/b1;->L:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

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
    :cond_0
    return-void
.end method

.method public static final C3(Ll3/b1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ll3/b1;->a0:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "max_ad_content_rating"

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method


# virtual methods
.method public final D1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Gb;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance p1, La3/b;

    .line 2
    .line 3
    const/16 v4, 0x10

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p1

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p5

    .line 9
    move-object v3, p6

    .line 10
    invoke-direct/range {v0 .. v5}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 14
    .line 15
    new-instance p6, Lr3/m;

    .line 16
    .line 17
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedInterstitialAd(Lr3/m;Lr3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    const-string p2, "Adapter failed to render rewarded interstitial ad."

    .line 44
    .line 45
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    const-string p2, "adapter.loadRtbRewardedInterstitialAd"

    .line 49
    .line 50
    invoke-static {p4, p1, p2}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/RemoteException;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final F2(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/yb;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance p1, La3/b;

    .line 2
    .line 3
    const/16 v4, 0xf

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p1

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p5

    .line 9
    move-object v3, p6

    .line 10
    invoke-direct/range {v0 .. v5}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 14
    .line 15
    new-instance p6, Lr3/f;

    .line 16
    .line 17
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbAppOpenAd(Lr3/f;Lr3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    const-string p2, "Adapter failed to render app open ad."

    .line 44
    .line 45
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    const-string p2, "adapter.loadRtbAppOpenAd"

    .line 49
    .line 50
    invoke-static {p4, p1, p2}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/RemoteException;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final H(LR3/a;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final K(LR3/a;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final T0(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/b;Lcom/google/android/gms/internal/ads/Zq;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 8

    .line 1
    const/4 v7, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/Nb;->n1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Eb;Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/M8;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final V2(LR3/b;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Ab;Lcom/google/android/gms/internal/ads/hb;Ll3/d1;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p1, Lcom/google/android/gms/internal/ads/Lb;

    .line 2
    .line 3
    const/4 p6, 0x1

    .line 4
    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/Lb;-><init>(Lcom/google/android/gms/internal/ads/Ab;I)V

    .line 5
    .line 6
    .line 7
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 8
    .line 9
    new-instance p6, Lr3/g;

    .line 10
    .line 11
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p2, p7, Ll3/d1;->K:I

    .line 30
    .line 31
    iget p3, p7, Ll3/d1;->H:I

    .line 32
    .line 33
    iget-object p7, p7, Ll3/d1;->G:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lf3/g;

    .line 36
    .line 37
    invoke-direct {v0, p2, p3, p7}, Lf3/g;-><init>(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterscrollerAd(Lr3/g;Lr3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    const-string p2, "Adapter failed to render interscroller ad."

    .line 49
    .line 50
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "adapter.loadRtbInterscrollerAd"

    .line 54
    .line 55
    invoke-static {p4, p1, p2}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroid/os/RemoteException;

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public final X1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Gb;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance p1, La3/b;

    .line 2
    .line 3
    const/16 v4, 0x10

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p1

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p5

    .line 9
    move-object v3, p6

    .line 10
    invoke-direct/range {v0 .. v5}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 14
    .line 15
    new-instance p6, Lr3/m;

    .line 16
    .line 17
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedAd(Lr3/m;Lr3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    const-string p2, "Adapter failed to render rewarded ad."

    .line 44
    .line 45
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    const-string p2, "adapter.loadRtbRewardedAd"

    .line 49
    .line 50
    invoke-static {p4, p1, p2}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/RemoteException;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final a3(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c3(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Ab;Lcom/google/android/gms/internal/ads/hb;Ll3/d1;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p1, Lcom/google/android/gms/internal/ads/Lb;

    .line 2
    .line 3
    const/4 p6, 0x0

    .line 4
    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/Lb;-><init>(Lcom/google/android/gms/internal/ads/Ab;I)V

    .line 5
    .line 6
    .line 7
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 8
    .line 9
    new-instance p6, Lr3/g;

    .line 10
    .line 11
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p2, p7, Ll3/d1;->K:I

    .line 30
    .line 31
    iget p3, p7, Ll3/d1;->H:I

    .line 32
    .line 33
    iget-object p7, p7, Ll3/d1;->G:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lf3/g;

    .line 36
    .line 37
    invoke-direct {v0, p2, p3, p7}, Lf3/g;-><init>(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbBannerAd(Lr3/g;Lr3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    const-string p2, "Adapter failed to render banner ad."

    .line 49
    .line 50
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "adapter.loadRtbBannerAd"

    .line 54
    .line 55
    invoke-static {p4, p1, p2}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroid/os/RemoteException;

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public final n1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Eb;Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/M8;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 2
    .line 3
    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/ads/Mb;

    .line 4
    .line 5
    const/4 p7, 0x0

    .line 6
    invoke-direct {p6, p5, p7}, Lcom/google/android/gms/internal/ads/Mb;-><init>(Lcom/google/android/gms/internal/ads/Eb;I)V

    .line 7
    .line 8
    .line 9
    new-instance p7, Lr3/k;

    .line 10
    .line 11
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p7}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p7, p6}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAdMapper(Lr3/k;Lr3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p6

    .line 37
    const-string p7, "Adapter failed to render native ad."

    .line 38
    .line 39
    invoke-static {p7, p6}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "adapter.loadRtbNativeAdMapper"

    .line 43
    .line 44
    invoke-static {p4, p6, v0}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p6

    .line 51
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    const-string v0, "Method is not found"

    .line 58
    .line 59
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p6

    .line 63
    if-eqz p6, :cond_0

    .line 64
    .line 65
    :try_start_1
    new-instance p6, Lcom/google/android/gms/internal/ads/Mb;

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-direct {p6, p5, v0}, Lcom/google/android/gms/internal/ads/Mb;-><init>(Lcom/google/android/gms/internal/ads/Eb;I)V

    .line 69
    .line 70
    .line 71
    new-instance p5, Lr3/k;

    .line 72
    .line 73
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p5, p6}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAd(Lr3/k;Lr3/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_1
    move-exception p1

    .line 99
    invoke-static {p7, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    const-string p2, "adapter.loadRtbNativeAd"

    .line 103
    .line 104
    invoke-static {p4, p1, p2}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Landroid/os/RemoteException;

    .line 108
    .line 109
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    .line 114
    .line 115
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public final v2(LR3/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ll3/d1;Lcom/google/android/gms/internal/ads/Kb;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance p3, Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    const/16 v0, 0x16

    .line 4
    .line 5
    invoke-direct {p3, v0, p6}, Lcom/google/android/gms/internal/ads/K4;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 9
    .line 10
    new-instance v0, Lm2/e;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v1, "rewarded_interstitial"

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    goto :goto_1

    .line 30
    :sswitch_1
    const-string v1, "app_open_ad"

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    const/4 p2, 0x6

    .line 39
    goto :goto_1

    .line 40
    :sswitch_2
    const-string v1, "app_open"

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    const/4 p2, 0x5

    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string v1, "interstitial"

    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    goto :goto_1

    .line 60
    :sswitch_4
    const-string v1, "rewarded"

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    const/4 p2, 0x2

    .line 69
    goto :goto_1

    .line 70
    :sswitch_5
    const-string v1, "native"

    .line 71
    .line 72
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    const/4 p2, 0x4

    .line 79
    goto :goto_1

    .line 80
    :sswitch_6
    const-string v1, "banner"

    .line 81
    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_0

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    const/4 p2, -0x1

    .line 91
    :goto_1
    sget-object v1, Lf3/a;->M:Lf3/a;

    .line 92
    .line 93
    packed-switch p2, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_0
    :try_start_1
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->cb:Lcom/google/android/gms/internal/ads/J7;

    .line 98
    .line 99
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 100
    .line 101
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 102
    .line 103
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_1
    :goto_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    const-string p3, "Internal Error"

    .line 119
    .line 120
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p2

    .line 124
    :catchall_0
    move-exception p2

    .line 125
    goto :goto_4

    .line 126
    :pswitch_1
    sget-object v1, Lf3/a;->L:Lf3/a;

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_2
    sget-object v1, Lf3/a;->K:Lf3/a;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :pswitch_3
    sget-object v1, Lf3/a;->J:Lf3/a;

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :pswitch_4
    sget-object v1, Lf3/a;->I:Lf3/a;

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :pswitch_5
    sget-object v1, Lf3/a;->H:Lf3/a;

    .line 139
    .line 140
    :goto_3
    :pswitch_6
    const/16 p2, 0xe

    .line 141
    .line 142
    invoke-direct {v0, p2, v1, p4}, Lm2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance p2, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    new-instance p4, Lt3/a;

    .line 154
    .line 155
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroid/content/Context;

    .line 160
    .line 161
    iget v0, p5, Ll3/d1;->K:I

    .line 162
    .line 163
    iget v1, p5, Ll3/d1;->H:I

    .line 164
    .line 165
    iget-object p5, p5, Ll3/d1;->G:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v2, Lf3/g;

    .line 168
    .line 169
    invoke-direct {v2, v0, v1, p5}, Lf3/g;-><init>(IILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p4, p2}, Lt3/a;-><init>(Ljava/util/ArrayList;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p6, p4, p3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lt3/a;Lt3/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_4
    const-string p3, "Error generating signals for RTB"

    .line 180
    .line 181
    invoke-static {p3, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    const-string p3, "adapter.collectSignals"

    .line 185
    .line 186
    invoke-static {p1, p2, p3}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance p1, Landroid/os/RemoteException;

    .line 190
    .line 191
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
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
    .line 222
    .line 223
    .line 224
    .line 225
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

.method public final x0(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Cb;Lcom/google/android/gms/internal/ads/hb;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance p1, La3/b;

    .line 2
    .line 3
    const/16 v4, 0xe

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p1

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p5

    .line 9
    move-object v3, p6

    .line 10
    invoke-direct/range {v0 .. v5}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 14
    .line 15
    new-instance p6, Lr3/i;

    .line 16
    .line 17
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nb;->A3(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Nb;->z3(Ll3/b1;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/Nb;->B3(Ll3/b1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nb;->C3(Ll3/b1;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterstitialAd(Lr3/i;Lr3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    const-string p2, "Adapter failed to render interstitial ad."

    .line 44
    .line 45
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    const-string p2, "adapter.loadRtbInterstitialAd"

    .line 49
    .line 50
    invoke-static {p4, p1, p2}, Lf/b;->e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/RemoteException;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eq v0, v4, :cond_15

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    if-eq v0, v6, :cond_14

    .line 14
    .line 15
    const/4 v6, 0x3

    .line 16
    if-eq v0, v6, :cond_13

    .line 17
    .line 18
    const/4 v6, 0x5

    .line 19
    if-eq v0, v6, :cond_12

    .line 20
    .line 21
    const/16 v6, 0xa

    .line 22
    .line 23
    if-eq v0, v6, :cond_11

    .line 24
    .line 25
    const/16 v6, 0xb

    .line 26
    .line 27
    if-eq v0, v6, :cond_10

    .line 28
    .line 29
    const-string v6, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

    .line 30
    .line 31
    const-string v7, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    .line 32
    .line 33
    const-string v8, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback"

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    goto/16 :goto_12

    .line 40
    .line 41
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 46
    .line 47
    .line 48
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_12

    .line 58
    .line 59
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v9, v0

    .line 74
    check-cast v9, Ll3/b1;

    .line 75
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    .line 90
    :goto_0
    move-object v11, v3

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    const-string v3, "com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback"

    .line 93
    .line 94
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    instance-of v11, v6, Lcom/google/android/gms/internal/ads/yb;

    .line 99
    .line 100
    if-eqz v11, :cond_1

    .line 101
    .line 102
    move-object v3, v6

    .line 103
    check-cast v3, Lcom/google/android/gms/internal/ads/yb;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/xb;

    .line 107
    .line 108
    invoke-direct {v6, v0, v3, v5}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    move-object v11, v6

    .line 112
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v6, p0

    .line 124
    .line 125
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/Nb;->F2(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/yb;Lcom/google/android/gms/internal/ads/hb;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_12

    .line 132
    .line 133
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    .line 143
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    move-object/from16 v16, v0

    .line 148
    .line 149
    check-cast v16, Ll3/b1;

    .line 150
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 156
    .line 157
    .line 158
    move-result-object v17

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-nez v0, :cond_2

    .line 164
    .line 165
    :goto_2
    move-object/from16 v18, v3

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_2
    invoke-interface {v0, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    instance-of v5, v3, Lcom/google/android/gms/internal/ads/Eb;

    .line 173
    .line 174
    if-eqz v5, :cond_3

    .line 175
    .line 176
    check-cast v3, Lcom/google/android/gms/internal/ads/Eb;

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/Db;

    .line 180
    .line 181
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/Db;-><init>(Landroid/os/IBinder;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 190
    .line 191
    .line 192
    move-result-object v19

    .line 193
    sget-object v0, Lcom/google/android/gms/internal/ads/M8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 194
    .line 195
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    move-object/from16 v20, v0

    .line 200
    .line 201
    check-cast v20, Lcom/google/android/gms/internal/ads/M8;

    .line 202
    .line 203
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 204
    .line 205
    .line 206
    move-object/from16 v13, p0

    .line 207
    .line 208
    invoke-virtual/range {v13 .. v20}, Lcom/google/android/gms/internal/ads/Nb;->n1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Eb;Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/M8;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_12

    .line 215
    .line 216
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    sget-object v5, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 225
    .line 226
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    move-object v8, v5

    .line 231
    check-cast v8, Ll3/b1;

    .line 232
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v5}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    if-nez v5, :cond_4

    .line 246
    .line 247
    :goto_4
    move-object v10, v3

    .line 248
    goto :goto_5

    .line 249
    :cond_4
    invoke-interface {v5, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    instance-of v7, v3, Lcom/google/android/gms/internal/ads/Ab;

    .line 254
    .line 255
    if-eqz v7, :cond_5

    .line 256
    .line 257
    check-cast v3, Lcom/google/android/gms/internal/ads/Ab;

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/ads/zb;

    .line 261
    .line 262
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zb;-><init>(Landroid/os/IBinder;)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    sget-object v3, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 275
    .line 276
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    move-object v12, v3

    .line 281
    check-cast v12, Ll3/d1;

    .line 282
    .line 283
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v5, p0

    .line 287
    .line 288
    move-object v7, v0

    .line 289
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/Nb;->W(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Ab;Lcom/google/android/gms/internal/ads/hb;Ll3/d1;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_12

    .line 296
    .line 297
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v14

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v15

    .line 305
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 306
    .line 307
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    move-object/from16 v16, v0

    .line 312
    .line 313
    check-cast v16, Ll3/b1;

    .line 314
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 320
    .line 321
    .line 322
    move-result-object v17

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-nez v0, :cond_6

    .line 328
    .line 329
    :goto_6
    move-object/from16 v18, v3

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_6
    invoke-interface {v0, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    instance-of v5, v3, Lcom/google/android/gms/internal/ads/Gb;

    .line 337
    .line 338
    if-eqz v5, :cond_7

    .line 339
    .line 340
    check-cast v3, Lcom/google/android/gms/internal/ads/Gb;

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/ads/Fb;

    .line 344
    .line 345
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/Fb;-><init>(Landroid/os/IBinder;)V

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 354
    .line 355
    .line 356
    move-result-object v19

    .line 357
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 358
    .line 359
    .line 360
    move-object/from16 v13, p0

    .line 361
    .line 362
    invoke-virtual/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/Nb;->D1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Gb;Lcom/google/android/gms/internal/ads/hb;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_12

    .line 369
    .line 370
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_12

    .line 380
    .line 381
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 390
    .line 391
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Ll3/b1;

    .line 396
    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-static {v5}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    if-nez v5, :cond_8

    .line 410
    .line 411
    :goto_8
    move-object v10, v3

    .line 412
    goto :goto_9

    .line 413
    :cond_8
    invoke-interface {v5, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    instance-of v8, v3, Lcom/google/android/gms/internal/ads/Eb;

    .line 418
    .line 419
    if-eqz v8, :cond_9

    .line 420
    .line 421
    check-cast v3, Lcom/google/android/gms/internal/ads/Eb;

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ads/Db;

    .line 425
    .line 426
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/Db;-><init>(Landroid/os/IBinder;)V

    .line 427
    .line 428
    .line 429
    goto :goto_8

    .line 430
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 435
    .line 436
    .line 437
    move-result-object v11

    .line 438
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 439
    .line 440
    .line 441
    const/4 v12, 0x0

    .line 442
    move-object/from16 v5, p0

    .line 443
    .line 444
    move-object v8, v0

    .line 445
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/Nb;->n1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Eb;Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/M8;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_12

    .line 452
    .line 453
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 458
    .line 459
    .line 460
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_12

    .line 470
    .line 471
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 480
    .line 481
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    move-object v9, v0

    .line 486
    check-cast v9, Ll3/b1;

    .line 487
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    if-nez v0, :cond_a

    .line 501
    .line 502
    :goto_a
    move-object v11, v3

    .line 503
    goto :goto_b

    .line 504
    :cond_a
    invoke-interface {v0, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    instance-of v5, v3, Lcom/google/android/gms/internal/ads/Gb;

    .line 509
    .line 510
    if-eqz v5, :cond_b

    .line 511
    .line 512
    check-cast v3, Lcom/google/android/gms/internal/ads/Gb;

    .line 513
    .line 514
    goto :goto_a

    .line 515
    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/ads/Fb;

    .line 516
    .line 517
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/Fb;-><init>(Landroid/os/IBinder;)V

    .line 518
    .line 519
    .line 520
    goto :goto_a

    .line 521
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 526
    .line 527
    .line 528
    move-result-object v12

    .line 529
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 530
    .line 531
    .line 532
    move-object/from16 v6, p0

    .line 533
    .line 534
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/Nb;->X1(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Gb;Lcom/google/android/gms/internal/ads/hb;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_12

    .line 541
    .line 542
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 547
    .line 548
    .line 549
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_12

    .line 559
    .line 560
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v7

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 569
    .line 570
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    move-object v9, v0

    .line 575
    check-cast v9, Ll3/b1;

    .line 576
    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 582
    .line 583
    .line 584
    move-result-object v10

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    if-nez v0, :cond_c

    .line 590
    .line 591
    :goto_c
    move-object v11, v3

    .line 592
    goto :goto_d

    .line 593
    :cond_c
    const-string v3, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback"

    .line 594
    .line 595
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    instance-of v11, v6, Lcom/google/android/gms/internal/ads/Cb;

    .line 600
    .line 601
    if-eqz v11, :cond_d

    .line 602
    .line 603
    move-object v3, v6

    .line 604
    check-cast v3, Lcom/google/android/gms/internal/ads/Cb;

    .line 605
    .line 606
    goto :goto_c

    .line 607
    :cond_d
    new-instance v6, Lcom/google/android/gms/internal/ads/Bb;

    .line 608
    .line 609
    invoke-direct {v6, v0, v3, v5}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 610
    .line 611
    .line 612
    move-object v11, v6

    .line 613
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 618
    .line 619
    .line 620
    move-result-object v12

    .line 621
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 622
    .line 623
    .line 624
    move-object/from16 v6, p0

    .line 625
    .line 626
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/Nb;->x0(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Cb;Lcom/google/android/gms/internal/ads/hb;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_12

    .line 633
    .line 634
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v14

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v15

    .line 642
    sget-object v0, Ll3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 643
    .line 644
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    move-object/from16 v16, v0

    .line 649
    .line 650
    check-cast v16, Ll3/b1;

    .line 651
    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 657
    .line 658
    .line 659
    move-result-object v17

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    if-nez v0, :cond_e

    .line 665
    .line 666
    :goto_e
    move-object/from16 v18, v3

    .line 667
    .line 668
    goto :goto_f

    .line 669
    :cond_e
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    instance-of v5, v3, Lcom/google/android/gms/internal/ads/Ab;

    .line 674
    .line 675
    if-eqz v5, :cond_f

    .line 676
    .line 677
    check-cast v3, Lcom/google/android/gms/internal/ads/Ab;

    .line 678
    .line 679
    goto :goto_e

    .line 680
    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/ads/zb;

    .line 681
    .line 682
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zb;-><init>(Landroid/os/IBinder;)V

    .line 683
    .line 684
    .line 685
    goto :goto_e

    .line 686
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gb;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/hb;

    .line 691
    .line 692
    .line 693
    move-result-object v19

    .line 694
    sget-object v0, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 695
    .line 696
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    move-object/from16 v20, v0

    .line 701
    .line 702
    check-cast v20, Ll3/d1;

    .line 703
    .line 704
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 705
    .line 706
    .line 707
    move-object/from16 v13, p0

    .line 708
    .line 709
    invoke-virtual/range {v13 .. v20}, Lcom/google/android/gms/internal/ads/Nb;->c3(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Ab;Lcom/google/android/gms/internal/ads/hb;Ll3/d1;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    .line 714
    .line 715
    goto/16 :goto_12

    .line 716
    .line 717
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 721
    .line 722
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    check-cast v0, [Landroid/os/Bundle;

    .line 727
    .line 728
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    goto :goto_12

    .line 735
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 740
    .line 741
    .line 742
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    .line 747
    .line 748
    goto :goto_12

    .line 749
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Nb;->zze()Ll3/B0;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    .line 755
    .line 756
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 757
    .line 758
    .line 759
    goto :goto_12

    .line 760
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Nb;->zzg()Lcom/google/android/gms/internal/ads/Ob;

    .line 761
    .line 762
    .line 763
    throw v3

    .line 764
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Nb;->zzf()Lcom/google/android/gms/internal/ads/Ob;

    .line 765
    .line 766
    .line 767
    throw v3

    .line 768
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-static {v0}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 773
    .line 774
    .line 775
    move-result-object v7

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 781
    .line 782
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 783
    .line 784
    .line 785
    move-result-object v6

    .line 786
    move-object v9, v6

    .line 787
    check-cast v9, Landroid/os/Bundle;

    .line 788
    .line 789
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    move-object v10, v0

    .line 794
    check-cast v10, Landroid/os/Bundle;

    .line 795
    .line 796
    sget-object v0, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 797
    .line 798
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    move-object v11, v0

    .line 803
    check-cast v11, Ll3/d1;

    .line 804
    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    if-nez v0, :cond_16

    .line 810
    .line 811
    :goto_10
    move-object v12, v3

    .line 812
    goto :goto_11

    .line 813
    :cond_16
    const-string v3, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback"

    .line 814
    .line 815
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 816
    .line 817
    .line 818
    move-result-object v6

    .line 819
    instance-of v12, v6, Lcom/google/android/gms/internal/ads/Kb;

    .line 820
    .line 821
    if-eqz v12, :cond_17

    .line 822
    .line 823
    move-object v3, v6

    .line 824
    check-cast v3, Lcom/google/android/gms/internal/ads/Kb;

    .line 825
    .line 826
    goto :goto_10

    .line 827
    :cond_17
    new-instance v6, Lcom/google/android/gms/internal/ads/Jb;

    .line 828
    .line 829
    invoke-direct {v6, v0, v3, v5}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 830
    .line 831
    .line 832
    move-object v12, v6

    .line 833
    :goto_11
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 834
    .line 835
    .line 836
    move-object/from16 v6, p0

    .line 837
    .line 838
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/Nb;->v2(LR3/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ll3/d1;Lcom/google/android/gms/internal/ads/Kb;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    .line 843
    .line 844
    :goto_12
    return v4

    .line 845
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method

.method public final z3(Ll3/b1;)V
    .locals 1

    .line 1
    iget-object p1, p1, Ll3/b1;->S:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

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

.method public final zze()Ll3/B0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

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

.method public final zzf()Lcom/google/android/gms/internal/ads/Ob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr3/a;->getVersionInfo()Lf3/q;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/Ob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nb;->G:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr3/a;->getSDKVersionInfo()Lf3/q;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method
