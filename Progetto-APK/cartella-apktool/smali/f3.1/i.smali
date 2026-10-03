.class public abstract Lf3/i;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final G:Ll3/I0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ll3/I0;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, p0, v0}, Ll3/I0;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lf3/i;->G:Ll3/I0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ll3/I0;

    .line 5
    invoke-direct {p1, p0, p2}, Ll3/I0;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V

    .line 6
    iput-object p1, p0, Lf3/i;->G:Ll3/I0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/p8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

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
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->ua:Lcom/google/android/gms/internal/ads/J7;

    .line 23
    .line 24
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 25
    .line 26
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lp3/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    new-instance v1, Lf3/r;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v1, p0, v2}, Lf3/r;-><init>(Lf3/i;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object v0, v0, Ll3/I0;->i:Ll3/J;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {v0}, Ll3/J;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "#007 Could not call remote method."

    .line 67
    .line 68
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lf3/f;)V
    .locals 3

    .line 1
    const-string v0, "#008 Must be called on the main UI thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/p8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->xa:Lcom/google/android/gms/internal/ads/J7;

    .line 28
    .line 29
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 30
    .line 31
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    sget-object v0, Lp3/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    new-instance v1, Ll/k;

    .line 48
    .line 49
    const/16 v2, 0x17

    .line 50
    .line 51
    invoke-direct {v1, p0, p1, v2}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 59
    .line 60
    iget-object p1, p1, Lf3/f;->a:Ll3/G0;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ll3/I0;->b(Ll3/G0;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/p8;->e:Lcom/google/android/gms/internal/ads/f8;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

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
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->va:Lcom/google/android/gms/internal/ads/J7;

    .line 23
    .line 24
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 25
    .line 26
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lp3/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    new-instance v1, Lf3/r;

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-direct {v1, p0, v2}, Lf3/r;-><init>(Lf3/i;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object v0, v0, Ll3/I0;->i:Ll3/J;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {v0}, Ll3/J;->y0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "#007 Could not call remote method."

    .line 67
    .line 68
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/p8;->f:Lcom/google/android/gms/internal/ads/f8;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

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
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->ta:Lcom/google/android/gms/internal/ads/J7;

    .line 23
    .line 24
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 25
    .line 26
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lp3/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    new-instance v1, Lf3/r;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v1, p0, v2}, Lf3/r;-><init>(Lf3/i;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object v0, v0, Ll3/I0;->i:Ll3/J;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {v0}, Ll3/J;->t()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "#007 Could not call remote method."

    .line 67
    .line 68
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public getAdListener()Lf3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/I0;->f:Lf3/b;

    .line 4
    .line 5
    return-object v0
.end method

.method public getAdSize()Lf3/g;
    .locals 5

    .line 1
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Ll3/I0;->i:Ll3/J;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Ll3/J;->zzg()Ll3/d1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget v2, v1, Ll3/d1;->K:I

    .line 17
    .line 18
    iget v3, v1, Ll3/d1;->H:I

    .line 19
    .line 20
    iget-object v1, v1, Ll3/d1;->G:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v4, Lf3/g;

    .line 23
    .line 24
    invoke-direct {v4, v2, v3, v1}, Lf3/g;-><init>(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    const-string v2, "#007 Could not call remote method."

    .line 30
    .line 31
    invoke-static {v2, v1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, v0, Ll3/I0;->g:[Lf3/g;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    aget-object v4, v0, v1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v4, 0x0

    .line 43
    :goto_0
    return-object v4
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    iget-object v1, v0, Ll3/I0;->j:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Ll3/I0;->i:Ll3/J;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v1}, Ll3/J;->zzr()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Ll3/I0;->j:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    const-string v2, "#007 Could not call remote method."

    .line 20
    .line 21
    invoke-static {v2, v1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    iget-object v0, v0, Ll3/I0;->j:Ljava/lang/String;

    .line 25
    .line 26
    return-object v0
.end method

.method public getOnPaidEventListener()Lf3/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method

.method public getResponseInfo()Lf3/p;
    .locals 3

    .line 1
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v0, v0, Ll3/I0;->i:Ll3/J;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ll3/J;->zzk()Ll3/x0;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    move-object v0, v1

    .line 19
    goto :goto_2

    .line 20
    :goto_1
    const-string v2, "#007 Could not call remote method."

    .line 21
    .line 22
    invoke-static {v2, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_2
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v1, Lf3/p;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lf3/p;-><init>(Ll3/x0;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-int/2addr p4, p2

    .line 25
    sub-int/2addr p4, v0

    .line 26
    sub-int/2addr p5, p3

    .line 27
    sub-int/2addr p5, v1

    .line 28
    div-int/lit8 p4, p4, 0x2

    .line 29
    .line 30
    div-int/lit8 p5, p5, 0x2

    .line 31
    .line 32
    add-int/2addr v0, p4

    .line 33
    add-int/2addr v1, p5

    .line 34
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lf3/i;->getAdSize()Lf3/g;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    const-string v2, "Unable to retrieve ad size."

    .line 36
    .line 37
    invoke-static {v2, v1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    if-eqz v1, :cond_7

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v2, -0x1

    .line 48
    const/4 v3, -0x3

    .line 49
    iget v4, v1, Lf3/g;->a:I

    .line 50
    .line 51
    if-eq v4, v3, :cond_2

    .line 52
    .line 53
    if-eq v4, v2, :cond_1

    .line 54
    .line 55
    sget-object v5, Ll3/p;->f:Ll3/p;

    .line 56
    .line 57
    iget-object v5, v5, Ll3/p;->a:Lp3/d;

    .line 58
    .line 59
    invoke-static {v0, v4}, Lp3/d;->o(Landroid/content/Context;I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v4, -0x1

    .line 76
    :goto_1
    const/4 v5, -0x4

    .line 77
    iget v1, v1, Lf3/g;->b:I

    .line 78
    .line 79
    if-eq v1, v5, :cond_6

    .line 80
    .line 81
    if-eq v1, v3, :cond_6

    .line 82
    .line 83
    const/4 v2, -0x2

    .line 84
    if-eq v1, v2, :cond_3

    .line 85
    .line 86
    sget-object v2, Ll3/p;->f:Ll3/p;

    .line 87
    .line 88
    iget-object v2, v2, Ll3/p;->a:Lp3/d;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lp3/d;->o(Landroid/content/Context;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .line 105
    int-to-float v1, v1

    .line 106
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .line 108
    div-float/2addr v1, v0

    .line 109
    float-to-int v1, v1

    .line 110
    const/16 v2, 0x190

    .line 111
    .line 112
    if-gt v1, v2, :cond_4

    .line 113
    .line 114
    const/16 v1, 0x20

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/16 v2, 0x2d0

    .line 118
    .line 119
    if-gt v1, v2, :cond_5

    .line 120
    .line 121
    const/16 v1, 0x32

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    const/16 v1, 0x5a

    .line 125
    .line 126
    :goto_2
    int-to-float v1, v1

    .line 127
    mul-float v1, v1, v0

    .line 128
    .line 129
    float-to-int v0, v1

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    const/4 v0, -0x1

    .line 132
    :goto_3
    move v1, v0

    .line 133
    move v0, v4

    .line 134
    goto :goto_4

    .line 135
    :cond_7
    const/4 v1, 0x0

    .line 136
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public setAdListener(Lf3/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    iput-object p1, v0, Ll3/I0;->f:Lf3/b;

    .line 4
    .line 5
    iget-object v0, v0, Ll3/I0;->d:Ll3/H0;

    .line 6
    .line 7
    iget-object v1, v0, Ll3/H0;->G:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iput-object p1, v0, Ll3/H0;->H:Lf3/b;

    .line 11
    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lf3/i;->G:Ll3/I0;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ll3/I0;->c(Ll3/a;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    instance-of v0, p1, Ll3/a;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, Ll3/a;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ll3/I0;->c(Ll3/a;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    instance-of v0, p1, Lg3/b;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 39
    .line 40
    check-cast p1, Lg3/b;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :try_start_1
    iput-object p1, v0, Ll3/I0;->h:Lg3/b;

    .line 46
    .line 47
    iget-object v0, v0, Ll3/I0;->i:Ll3/J;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    new-instance v1, Lcom/google/android/gms/internal/ads/L5;

    .line 52
    .line 53
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/L5;-><init>(Lg3/b;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ll3/J;->p0(Ll3/U;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string v0, "#007 Could not call remote method."

    .line 62
    .line 63
    invoke-static {v0, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p1
.end method

.method public setAdSize(Lf3/g;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lf3/g;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    iget-object p1, p0, Lf3/i;->G:Ll3/I0;

    .line 8
    .line 9
    iget-object v1, p1, Ll3/I0;->g:[Lf3/g;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p1, Ll3/I0;->k:Landroid/view/ViewGroup;

    .line 14
    .line 15
    iput-object v0, p1, Ll3/I0;->g:[Lf3/g;

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p1, Ll3/I0;->i:Ll3/J;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p1, Ll3/I0;->g:[Lf3/g;

    .line 26
    .line 27
    iget p1, p1, Ll3/I0;->l:I

    .line 28
    .line 29
    invoke-static {v2, v3, p1}, Ll3/I0;->a(Landroid/content/Context;[Lf3/g;I)Ll3/d1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v0, p1}, Ll3/J;->u0(Ll3/d1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    const-string v0, "#007 Could not call remote method."

    .line 39
    .line 40
    invoke-static {v0, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "The ad size can only be set once on AdView."

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    iget-object v1, v0, Ll3/I0;->j:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Ll3/I0;->j:Ljava/lang/String;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "The ad unit ID can only be set once on AdView."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setOnPaidEventListener(Lf3/l;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf3/i;->G:Ll3/I0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, p1, Ll3/I0;->i:Ll3/J;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ll3/S0;

    .line 11
    .line 12
    invoke-direct {v0}, Ll3/S0;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ll3/J;->N2(Ll3/q0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const-string v0, "#007 Could not call remote method."

    .line 21
    .line 22
    invoke-static {v0, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method
