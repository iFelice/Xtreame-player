.class public final LC3/E;
.super LH3/g;
.source "SourceFile"


# instance fields
.field public final synthetic H:LC3/F;


# direct methods
.method public constructor <init>(LC3/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-direct {p0}, LH3/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LC3/F;->f(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    sget-object v0, LC3/F;->w:LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "Deprecated callback: \"onStatusReceived\""

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final E1(LH3/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0}, LC3/F;->h(LC3/F;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ll/k;

    .line 8
    .line 9
    const/16 v2, 0x1b

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, v2}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final O(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0}, LC3/F;->h(LC3/F;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LC3/D;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, p0, p1, v2}, LC3/D;-><init>(LC3/E;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0, p1}, LC3/F;->d(LC3/F;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, LC3/F;->w:LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aput-object p2, v1, v2

    .line 11
    .line 12
    const-string v2, "Receive (type=text, ns=%s) %s"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 18
    .line 19
    invoke-static {v0}, LC3/F;->h(LC3/F;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v7, LK/a;

    .line 24
    .line 25
    const/16 v5, 0xe

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v1, v7

    .line 29
    move-object v2, p0

    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final i1([BLjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, LC3/F;->w:LH3/b;

    .line 2
    .line 3
    array-length p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object p2, v1, v2

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    aput-object p1, v1, p2

    .line 16
    .line 17
    const-string p1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final o0(LC3/d;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    iput-object p1, v0, LC3/F;->j:LC3/d;

    .line 4
    .line 5
    iput-object p2, v0, LC3/F;->k:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v7, LH3/v;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    invoke-direct {v2, v1, v8, v8, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 14
    .line 15
    .line 16
    move-object v1, v7

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move v6, p4

    .line 21
    invoke-direct/range {v1 .. v6}, LH3/v;-><init>(Lcom/google/android/gms/common/api/Status;LC3/d;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, LC3/F;->h:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    iget-object p2, v0, LC3/F;->e:Lg4/i;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2, v7}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iput-object v8, v0, LC3/F;->e:Lg4/i;

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p2
.end method

.method public final q(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0}, LC3/F;->h(LC3/F;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LC3/D;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, LC3/D;-><init>(LC3/E;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final x2(LH3/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0}, LC3/F;->h(LC3/F;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ll/k;

    .line 8
    .line 9
    const/16 v2, 0x1a

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, v2}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final y1(J)V
    .locals 2

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1}, LC3/F;->c(LC3/F;JI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzd(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0, p1}, LC3/F;->d(LC3/F;I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, LC3/F;->t:LD3/I;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, LC3/F;->h(LC3/F;)Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, LC3/D;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, p0, p1, v2}, LC3/D;-><init>(LC3/E;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final zzg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0, p1}, LC3/F;->d(LC3/F;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzi(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0}, LC3/F;->h(LC3/F;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LC3/D;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, LC3/D;-><init>(LC3/E;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzm(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, LC3/E;->H:LC3/F;

    .line 2
    .line 3
    invoke-static {v0, p2, p3, p1}, LC3/F;->c(LC3/F;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
