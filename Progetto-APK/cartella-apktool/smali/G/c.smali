.class public final LG/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN2/e;
.implements Lcom/google/android/gms/internal/ads/v6;
.implements Lcom/google/android/gms/internal/ads/rk;
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public G:I

.field public H:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, LG/c;->G:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, LG/c;->G:I

    return-void
.end method

.method public constructor <init>(Lq0/s;Lq0/r;)V
    .locals 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, LG/c;->G:I

    .line 9
    iget v1, p2, Lq0/r;->a:I

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 10
    iget-object p2, p2, Lq0/r;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    new-instance p2, Lp0/D;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 13
    iget-boolean v1, p1, Lq0/s;->a:Z

    if-nez v1, :cond_10

    .line 14
    invoke-virtual {p2}, Lp0/D;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iput-boolean v0, p0, LG/c;->H:Z

    goto :goto_6

    :cond_2
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p2, v1}, Lp0/D;->i(I)I

    move-result v2

    .line 17
    invoke-virtual {p2}, Lp0/D;->h()Z

    move-result v5

    .line 18
    iget-boolean v6, p1, Lq0/s;->b:Z

    if-nez v6, :cond_f

    if-nez v5, :cond_3

    .line 19
    iput-boolean v4, p0, LG/c;->H:Z

    goto :goto_6

    :cond_3
    if-eq v2, v3, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p2}, Lp0/D;->h()Z

    move-result v5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 21
    :goto_3
    invoke-virtual {p2}, Lp0/D;->t()V

    .line 22
    iget-boolean v6, p1, Lq0/s;->d:Z

    xor-int/2addr v6, v4

    if-nez v6, :cond_e

    .line 23
    invoke-virtual {p2}, Lp0/D;->h()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 24
    iget-boolean v6, p1, Lq0/s;->e:Z

    xor-int/2addr v6, v4

    if-nez v6, :cond_6

    .line 25
    invoke-virtual {p2}, Lp0/D;->t()V

    goto :goto_4

    .line 26
    :cond_6
    new-instance p1, Lq0/q;

    .line 27
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 28
    throw p1

    .line 29
    :cond_7
    :goto_4
    iget-boolean v6, p1, Lq0/s;->c:Z

    if-nez v6, :cond_d

    if-eq v2, v3, :cond_8

    .line 30
    invoke-virtual {p2}, Lp0/D;->t()V

    .line 31
    :cond_8
    iget p1, p1, Lq0/s;->f:I

    invoke-virtual {p2, p1}, Lp0/D;->u(I)V

    if-eq v2, v1, :cond_9

    if-eqz v2, :cond_9

    if-nez v5, :cond_9

    .line 32
    invoke-virtual {p2, v3}, Lp0/D;->u(I)V

    :cond_9
    if-eq v2, v3, :cond_b

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const/16 p1, 0x8

    .line 33
    invoke-virtual {p2, p1}, Lp0/D;->i(I)I

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    :goto_5
    const/4 v0, 0x1

    .line 34
    :cond_c
    iput-boolean v0, p0, LG/c;->H:Z

    :goto_6
    return-void

    .line 35
    :cond_d
    new-instance p1, Lq0/q;

    .line 36
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 37
    throw p1

    .line 38
    :cond_e
    new-instance p1, Lq0/q;

    .line 39
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 40
    throw p1

    .line 41
    :cond_f
    new-instance p1, Lq0/q;

    .line 42
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 43
    throw p1

    .line 44
    :cond_10
    new-instance p1, Lq0/q;

    .line 45
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 46
    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, LG/c;->G:I

    .line 5
    iput-boolean p1, p0, LG/c;->H:Z

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LG/c;->G:I

    iput-boolean p1, p0, LG/c;->H:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LN2/d;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    check-cast p2, LM2/g;

    .line 6
    .line 7
    iget-object v2, p2, LM2/g;->G:Landroid/view/View;

    .line 8
    .line 9
    check-cast v2, Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    aput-object v2, v4, v1

    .line 28
    .line 29
    aput-object p1, v4, v0

    .line 30
    .line 31
    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, LG/c;->H:Z

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget p1, p0, LG/c;->G:I

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p2, LM2/g;->G:Landroid/view/View;

    .line 45
    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    return v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, LG/c;->H:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :goto_1
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-boolean v1, p0, LG/c;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_1
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, LG/c;->H:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, LG/c;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, LG/c;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    :try_start_1
    iput-boolean v0, p0, LG/c;->H:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public g(Lcom/google/android/gms/internal/ads/C7;)V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Sf;->H0:I

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/o7;->A()Lcom/google/android/gms/internal/ads/n7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/o7;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o7;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-boolean v2, p0, LG/c;->H:Z

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 23
    .line 24
    check-cast v1, Lcom/google/android/gms/internal/ads/o7;

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/o7;->C(Lcom/google/android/gms/internal/ads/o7;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget v1, p0, LG/c;->G:I

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 35
    .line 36
    check-cast v2, Lcom/google/android/gms/internal/ads/o7;

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/o7;->D(Lcom/google/android/gms/internal/ads/o7;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/google/android/gms/internal/ads/o7;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 51
    .line 52
    check-cast p1, Lcom/google/android/gms/internal/ads/D7;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/D7;->I(Lcom/google/android/gms/internal/ads/D7;Lcom/google/android/gms/internal/ads/o7;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public zza(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, LG/c;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/tL;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tL;->l()Lcom/google/android/gms/internal/ads/dL;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/mL;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/mL;-><init>(ILcom/google/android/gms/internal/ads/uc;)V

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x17

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/ok;

    .line 28
    .line 29
    iget-boolean v0, p0, LG/c;->H:Z

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ok;->p(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/ok;

    .line 36
    .line 37
    iget-boolean v0, p0, LG/c;->H:Z

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ok;->m(Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
