.class public final Lcom/google/android/gms/internal/ads/bn;
.super Lcom/google/android/gms/internal/ads/xi;
.source "SourceFile"


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Ljava/lang/ref/WeakReference;

.field public final l:Lcom/google/android/gms/internal/ads/gl;

.field public final m:Lcom/google/android/gms/internal/ads/Ek;

.field public final n:Lcom/google/android/gms/internal/ads/wj;

.field public final o:Lcom/google/android/gms/internal/ads/Mj;

.field public final p:Lcom/google/android/gms/internal/ads/Gi;

.field public final q:Lcom/google/android/gms/internal/ads/Cd;

.field public final r:Lcom/google/android/gms/internal/ads/hy;

.field public final s:Lcom/google/android/gms/internal/ads/Vv;

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/gl;Lcom/google/android/gms/internal/ads/Ek;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/Mj;Lcom/google/android/gms/internal/ads/Gi;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/hy;Lcom/google/android/gms/internal/ads/Vv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xi;-><init>(Lcom/google/android/gms/internal/ads/wi;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bn;->t:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bn;->j:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bn;->l:Lcom/google/android/gms/internal/ads/gl;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bn;->k:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bn;->m:Lcom/google/android/gms/internal/ads/Ek;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bn;->n:Lcom/google/android/gms/internal/ads/wj;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bn;->o:Lcom/google/android/gms/internal/ads/Mj;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bn;->p:Lcom/google/android/gms/internal/ads/Gi;

    .line 25
    .line 26
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bn;->r:Lcom/google/android/gms/internal/ads/hy;

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/Cd;

    .line 29
    .line 30
    iget-object p2, p9, Lcom/google/android/gms/internal/ads/Ov;->l:Lcom/google/android/gms/internal/ads/ld;

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/ld;->G:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p3, ""

    .line 38
    .line 39
    :goto_0
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget p2, p2, Lcom/google/android/gms/internal/ads/ld;->H:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p2, 0x1

    .line 45
    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/Cd;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bn;->q:Lcom/google/android/gms/internal/ads/Cd;

    .line 49
    .line 50
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/bn;->s:Lcom/google/android/gms/internal/ads/Vv;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bn;->o:Lcom/google/android/gms/internal/ads/Mj;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Mj;->H:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method public final c(Landroid/app/Activity;Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->v0:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bn;->j:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bn;->n:Lcom/google/android/gms/internal/ads/wj;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 24
    .line 25
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 26
    .line 27
    invoke-static {v2}, Lo3/O;->e(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 34
    .line 35
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wj;->zzb()V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->w0:Lcom/google/android/gms/internal/ads/J7;

    .line 42
    .line 43
    iget-object p2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/Tv;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lcom/google/android/gms/internal/ads/Qv;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bn;->r:Lcom/google/android/gms/internal/ads/hy;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/hy;->a(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bn;->t:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    const-string p1, "The rewarded ad have been showed."

    .line 78
    .line 79
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/16 p1, 0xa

    .line 83
    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-static {p1, p2, p2}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/wj;->g(Ll3/z0;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bn;->t:Z

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bn;->m:Lcom/google/android/gms/internal/ads/Ek;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v1, Lc4/w;

    .line 102
    .line 103
    const/16 v4, 0x12

    .line 104
    .line 105
    invoke-direct {v1, v4}, Lc4/w;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V

    .line 109
    .line 110
    .line 111
    if-nez p1, :cond_3

    .line 112
    .line 113
    move-object p1, v2

    .line 114
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bn;->l:Lcom/google/android/gms/internal/ads/gl;

    .line 115
    .line 116
    invoke-interface {v1, p2, p1, v3}, Lcom/google/android/gms/internal/ads/gl;->c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lc4/w;

    .line 120
    .line 121
    const/16 p2, 0x13

    .line 122
    .line 123
    invoke-direct {p1, p2}, Lc4/w;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/fl; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/wj;->H(Lcom/google/android/gms/internal/ads/fl;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final finalize()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bn;->k:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->i6:Lcom/google/android/gms/internal/ads/J7;

    .line 10
    .line 11
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 12
    .line 13
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bn;->t:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/gms/internal/ads/Nf;

    .line 36
    .line 37
    const/4 v3, 0x5

    .line 38
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Nf;-><init>(Lcom/google/android/gms/internal/ads/Ef;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 57
    .line 58
    .line 59
    throw v0
.end method
