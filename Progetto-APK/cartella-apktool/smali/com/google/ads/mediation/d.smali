.class public final Lcom/google/ads/mediation/d;
.super Lf3/b;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lr3/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/ads/mediation/d;->G:I

    .line 3
    iput-object p1, p0, Lcom/google/ads/mediation/d;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/ads/mediation/d;->G:I

    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/d;->H:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/mediation/d;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr3/l;

    .line 10
    .line 11
    check-cast v0, La3/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "#008 Must be called on the main UI thread."

    .line 17
    .line 18
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "Adapter called onAdClosed."

    .line 22
    .line 23
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v0, v0, La3/b;->H:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/hb;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hb;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "#007 Could not call remote method."

    .line 36
    .line 37
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lf3/j;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/mediation/d;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/xo;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xo;->D3(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/ads/mediation/d;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/xo;->E3(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast v1, Lr3/l;

    .line 23
    .line 24
    check-cast v1, La3/b;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, La3/b;->i(LB0/w0;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/ads/mediation/d;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr3/l;

    .line 10
    .line 11
    check-cast v0, La3/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "#008 Must be called on the main UI thread."

    .line 17
    .line 18
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, La3/b;->I:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lcom/google/ads/mediation/a;

    .line 24
    .line 25
    iget-object v2, v0, La3/b;->J:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lcom/google/android/gms/internal/ads/g9;

    .line 28
    .line 29
    const-string v3, "#007 Could not call remote method."

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {v3, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-boolean v1, v1, Lcom/google/ads/mediation/a;->m:Z

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    .line 46
    .line 47
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const-string v1, "Adapter called onAdImpression."

    .line 52
    .line 53
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object v0, v0, La3/b;->H:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/google/android/gms/internal/ads/hb;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hb;->zzm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {v3, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/mediation/d;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr3/l;

    .line 10
    .line 11
    check-cast v0, La3/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "#008 Must be called on the main UI thread."

    .line 17
    .line 18
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "Adapter called onAdOpened."

    .line 22
    .line 23
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v0, v0, La3/b;->H:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/hb;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hb;->U1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "#007 Could not call remote method."

    .line 36
    .line 37
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final x()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/ads/mediation/d;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr3/l;

    .line 10
    .line 11
    check-cast v0, La3/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "#008 Must be called on the main UI thread."

    .line 17
    .line 18
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, La3/b;->I:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lcom/google/ads/mediation/a;

    .line 24
    .line 25
    iget-object v2, v0, La3/b;->J:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lcom/google/android/gms/internal/ads/g9;

    .line 28
    .line 29
    const-string v3, "#007 Could not call remote method."

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {v3, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-boolean v1, v1, Lcom/google/ads/mediation/a;->n:Z

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    .line 46
    .line 47
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const-string v1, "Adapter called onAdClicked."

    .line 52
    .line 53
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object v0, v0, La3/b;->H:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/google/android/gms/internal/ads/hb;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hb;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {v3, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
