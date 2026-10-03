.class public final Lcom/google/android/gms/internal/ads/zf;
.super Lcom/google/android/gms/internal/ads/De;
.source "SourceFile"


# instance fields
.field public final I:Lcom/google/android/gms/internal/ads/Pe;

.field public J:Lcom/google/android/gms/internal/ads/K4;

.field public K:Lcom/google/android/gms/internal/ads/Ce;

.field public L:Z

.field public M:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Pe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/De;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zf;->M:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zf;->L:Z

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zf;->I:Lcom/google/android/gms/internal/ads/Pe;

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/Pe;->a(Lcom/google/android/gms/internal/ads/De;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zf;->M:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zf;->I:Lcom/google/android/gms/internal/ads/Pe;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Pe;->b()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zf;->M:I

    .line 19
    .line 20
    if-ne v3, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 24
    .line 25
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zf;->M:I

    .line 31
    .line 32
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zf;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zf;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final p()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final q()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ImmersivePlayer"

    return-object v0
.end method

.method public final s()V
    .locals 3

    .line 1
    const-string v0, "AdImmersivePlayerView pause"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zf;->D()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/K4;->zza()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zf;->E(I)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 34
    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/yf;

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/yf;-><init>(Lcom/google/android/gms/internal/ads/zf;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    const-string v0, "AdImmersivePlayerView play"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zf;->D()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zf;->E(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->G:Lcom/google/android/gms/internal/ads/Je;

    .line 27
    .line 28
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Je;->c:Z

    .line 29
    .line 30
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 31
    .line 32
    new-instance v2, Lcom/google/android/gms/internal/ads/yf;

    .line 33
    .line 34
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/yf;-><init>(Lcom/google/android/gms/internal/ads/zf;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "@"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final u(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdImmersivePlayerView seek "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/Ce;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zf;->K:Lcom/google/android/gms/internal/ads/Ce;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/K4;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K4;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zf;->E(I)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 22
    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/yf;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/yf;-><init>(Lcom/google/android/gms/internal/ads/zf;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    const-string v0, "AdImmersivePlayerView stop"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zf;->E(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->I:Lcom/google/android/gms/internal/ads/Pe;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Pe;->c()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final y(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->J:Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
