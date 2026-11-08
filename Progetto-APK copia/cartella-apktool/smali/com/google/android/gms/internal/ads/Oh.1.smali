.class public final Lcom/google/android/gms/internal/ads/Oh;
.super Lcom/google/android/gms/internal/ads/Nh;
.source "SourceFile"


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Landroid/view/View;

.field public final l:Lcom/google/android/gms/internal/ads/Ef;

.field public final m:Lcom/google/android/gms/internal/ads/Pv;

.field public final n:Lcom/google/android/gms/internal/ads/vi;

.field public final o:Lcom/google/android/gms/internal/ads/Nl;

.field public final p:Lcom/google/android/gms/internal/ads/Pk;

.field public final q:Lcom/google/android/gms/internal/ads/EJ;

.field public final r:Ljava/util/concurrent/Executor;

.field public s:Ll3/d1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Pv;Landroid/view/View;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/vi;Lcom/google/android/gms/internal/ads/Nl;Lcom/google/android/gms/internal/ads/Pk;Lcom/google/android/gms/internal/ads/EJ;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xi;-><init>(Lcom/google/android/gms/internal/ads/wi;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Oh;->j:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Oh;->k:Landroid/view/View;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Oh;->l:Lcom/google/android/gms/internal/ads/Ef;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Oh;->m:Lcom/google/android/gms/internal/ads/Pv;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Oh;->n:Lcom/google/android/gms/internal/ads/vi;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Oh;->o:Lcom/google/android/gms/internal/ads/Nl;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Oh;->p:Lcom/google/android/gms/internal/ads/Pk;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Oh;->q:Lcom/google/android/gms/internal/ads/EJ;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/Oh;->r:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Pf;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Oh;->r:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/xi;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/Tv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Qv;

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/Qv;->d:I

    .line 10
    .line 11
    return v0
.end method

.method public final c()I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->i7:Lcom/google/android/gms/internal/ads/J7;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/Ov;

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->g0:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->j7:Lcom/google/android/gms/internal/ads/J7;

    .line 26
    .line 27
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/Tv;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/google/android/gms/internal/ads/Qv;

    .line 50
    .line 51
    iget v0, v0, Lcom/google/android/gms/internal/ads/Qv;->c:I

    .line 52
    .line 53
    return v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oh;->k:Landroid/view/View;

    return-object v0
.end method

.method public final e()Ll3/B0;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oh;->n:Lcom/google/android/gms/internal/ads/vi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vi;->zza()Ll3/B0;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/Pv;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oh;->s:Ll3/d1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, v0, Ll3/d1;->O:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/Pv;

    .line 11
    .line 12
    const/4 v2, -0x3

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/Pv;-><init>(ZII)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/Pv;

    .line 19
    .line 20
    iget v3, v0, Ll3/d1;->K:I

    .line 21
    .line 22
    iget v0, v0, Ll3/d1;->H:I

    .line 23
    .line 24
    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/Pv;-><init>(ZII)V

    .line 25
    .line 26
    .line 27
    move-object v0, v2

    .line 28
    :goto_0
    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/Ov;

    .line 30
    .line 31
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ov;->c0:Z

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ov;->a:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const-string v4, "FirstParty"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/Pv;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Oh;->k:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/Pv;-><init>(ZII)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_4
    :goto_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->r:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/google/android/gms/internal/ads/Pv;

    .line 87
    .line 88
    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/Pv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oh;->m:Lcom/google/android/gms/internal/ads/Pv;

    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oh;->p:Lcom/google/android/gms/internal/ads/Pk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Pk;->zza()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Landroid/widget/FrameLayout;Ll3/d1;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oh;->l:Lcom/google/android/gms/internal/ads/Ef;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, LA2/i;->a(Ll3/d1;)LA2/i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ef;->n0(LA2/i;)V

    .line 12
    .line 13
    .line 14
    iget v0, p2, Ll3/d1;->I:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 17
    .line 18
    .line 19
    iget v0, p2, Ll3/d1;->L:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Oh;->s:Ll3/d1;

    .line 25
    .line 26
    :cond_0
    return-void
.end method
