.class public final Lc4/x;
.super Lc4/z;
.source "SourceFile"


# instance fields
.field public final H:Lr/f;

.field public final I:Lr/f;

.field public J:J


# direct methods
.method public constructor <init>(Lc4/l0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc1/d;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lr/f;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, v0}, Lr/m;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lc4/x;->I:Lr/f;

    .line 11
    .line 12
    new-instance p1, Lr/f;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lr/m;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lc4/x;->H:Lr/f;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/String;J)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/l0;

    .line 13
    .line 14
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 15
    .line 16
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 17
    .line 18
    .line 19
    new-instance v7, Lc4/a;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v1, v7

    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move-wide v4, p2

    .line 26
    invoke-direct/range {v1 .. v6}, Lc4/a;-><init>(Lc4/x;Ljava/lang/String;JI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v7}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lc4/l0;

    .line 36
    .line 37
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 38
    .line 39
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 40
    .line 41
    .line 42
    const-string p2, "Ad unit id must be a non-empty string"

    .line 43
    .line 44
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final o(JLjava/lang/String;)V
    .locals 8

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/l0;

    .line 13
    .line 14
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 15
    .line 16
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 17
    .line 18
    .line 19
    new-instance v7, Lc4/a;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    move-object v1, v7

    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p3

    .line 25
    move-wide v4, p1

    .line 26
    invoke-direct/range {v1 .. v6}, Lc4/a;-><init>(Lc4/x;Ljava/lang/String;JI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v7}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lc4/l0;

    .line 36
    .line 37
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 38
    .line 39
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 40
    .line 41
    .line 42
    const-string p2, "Ad unit id must be a non-empty string"

    .line 43
    .line 44
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final p(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 6
    .line 7
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lc4/V0;->t(Z)Lc4/S0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lc4/x;->H:Lr/f;

    .line 16
    .line 17
    invoke-virtual {v1}, Lr/f;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lr/c;

    .line 22
    .line 23
    invoke-virtual {v2}, Lr/c;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long v4, p1, v4

    .line 50
    .line 51
    invoke-virtual {p0, v3, v4, v5, v0}, Lc4/x;->r(Ljava/lang/String;JLc4/S0;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lr/m;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    iget-wide v1, p0, Lc4/x;->J:J

    .line 62
    .line 63
    sub-long v1, p1, v1

    .line 64
    .line 65
    invoke-virtual {p0, v1, v2, v0}, Lc4/x;->q(JLc4/S0;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc4/x;->s(J)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final q(JLc4/S0;)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lc4/l0;

    .line 6
    .line 7
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 8
    .line 9
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "Not logging ad exposure. No active activity"

    .line 13
    .line 14
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 21
    .line 22
    cmp-long v2, p1, v0

    .line 23
    .line 24
    if-gez v2, :cond_1

    .line 25
    .line 26
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p3, Lc4/l0;

    .line 29
    .line 30
    iget-object p3, p3, Lc4/l0;->O:Lc4/T;

    .line 31
    .line 32
    invoke-static {p3}, Lc4/l0;->k(Lc4/s0;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p3, Lc4/T;->T:Lc4/Q;

    .line 40
    .line 41
    const-string p3, "Not logging ad exposure. Less than 1000 ms. exposure"

    .line 42
    .line 43
    invoke-virtual {p2, p1, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "_xt"

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    invoke-static {p3, v0, p1}, Lc4/I1;->C(Lc4/S0;Landroid/os/Bundle;Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lc4/l0;

    .line 64
    .line 65
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 66
    .line 67
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 68
    .line 69
    .line 70
    const-string p2, "am"

    .line 71
    .line 72
    const-string p3, "_xa"

    .line 73
    .line 74
    invoke-virtual {p1, p2, p3, v0}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final r(Ljava/lang/String;JLc4/S0;)V
    .locals 3

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lc4/l0;

    .line 6
    .line 7
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 8
    .line 9
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "Not logging ad unit exposure. No active activity"

    .line 13
    .line 14
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 21
    .line 22
    cmp-long v2, p2, v0

    .line 23
    .line 24
    if-gez v2, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lc4/l0;

    .line 29
    .line 30
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 31
    .line 32
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 40
    .line 41
    const-string p3, "Not logging ad unit exposure. Less than 1000 ms. exposure"

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "_ai"

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "_xt"

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-static {p4, v0, p1}, Lc4/I1;->C(Lc4/S0;Landroid/os/Bundle;Z)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lc4/l0;

    .line 69
    .line 70
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 71
    .line 72
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 73
    .line 74
    .line 75
    const-string p2, "am"

    .line 76
    .line 77
    const-string p3, "_xu"

    .line 78
    .line 79
    invoke-virtual {p1, p2, p3, v0}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final s(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/x;->H:Lr/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr/f;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lr/c;

    .line 8
    .line 9
    invoke-virtual {v1}, Lr/c;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v2, v3}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lr/m;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iput-wide p1, p0, Lc4/x;->J:J

    .line 40
    .line 41
    :cond_1
    return-void
.end method
