.class public final Lcom/google/android/gms/internal/ads/vb;
.super Lcom/google/android/gms/internal/ads/nb;
.source "SourceFile"


# instance fields
.field public final G:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->i:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f2(LR3/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/google/ads/mediation/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->b:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/gms/internal/ads/U8;

    .line 30
    .line 31
    new-instance v10, Lcom/google/android/gms/internal/ads/K8;

    .line 32
    .line 33
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/U8;->b:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/U8;->c:Landroid/net/Uri;

    .line 36
    .line 37
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/U8;->d:D

    .line 38
    .line 39
    iget v8, v2, Lcom/google/android/gms/internal/ads/U8;->e:I

    .line 40
    .line 41
    iget v9, v2, Lcom/google/android/gms/internal/ads/U8;->f:I

    .line 42
    .line 43
    move-object v3, v10

    .line 44
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/K8;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    return-object v1
.end method

.method public final j1(LR3/a;LR3/a;LR3/a;)V
    .locals 0

    .line 1
    invoke-static {p2}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {p3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/View;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p2, Lcom/google/ads/mediation/a;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object p2, Li3/f;->a:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final l0(LR3/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/google/ads/mediation/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/google/ads/mediation/a;->m:Z

    .line 6
    .line 7
    return v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->h:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/google/ads/mediation/a;->n:Z

    .line 6
    .line 7
    return v0
.end method

.method public final zze()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->g:Ljava/lang/Double;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 15
    .line 16
    :goto_0
    return-wide v0
.end method

.method public final zzf()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final zzg()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final zzh()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final zzi()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->l:Landroid/os/Bundle;

    .line 6
    .line 7
    return-object v0
.end method

.method public final zzj()Ll3/B0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->j:La3/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, La3/b;->H:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, La3/b;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ll3/B0;

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/P8;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/T8;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->d:Lcom/google/android/gms/internal/ads/U8;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v8, Lcom/google/android/gms/internal/ads/K8;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/U8;->c:Landroid/net/Uri;

    .line 12
    .line 13
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/U8;->d:D

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/U8;->b:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget v6, v0, Lcom/google/android/gms/internal/ads/U8;->e:I

    .line 18
    .line 19
    iget v7, v0, Lcom/google/android/gms/internal/ads/U8;->f:I

    .line 20
    .line 21
    move-object v1, v8

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/K8;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v8, 0x0

    .line 27
    :goto_0
    return-object v8
.end method

.method public final zzm()LR3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final zzn()LR3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final zzo()LR3/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->k:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, LR3/b;

    .line 12
    .line 13
    invoke-direct {v1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :goto_0
    return-object v0
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->f:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->e:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/ads/mediation/a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/ads/mediation/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method
