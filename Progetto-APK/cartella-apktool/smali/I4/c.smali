.class public final LI4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/L0;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/m0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/g0;

    .line 12
    .line 13
    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/measurement/g0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/H;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x2710

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-class v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/H;->v0(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const/16 p1, 0x19

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_0
    return p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/b0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/b0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    iget-object v6, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v8, Lcom/google/android/gms/internal/measurement/Z;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    move-object v0, v8

    .line 15
    move-object v1, v6

    .line 16
    move-object v2, p1

    .line 17
    move-object v3, p2

    .line 18
    move-object v4, v7

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 p1, 0x1388

    .line 26
    .line 27
    invoke-virtual {v7, p1, p2}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-class p2, Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/H;->v0(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/util/List;

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_0
    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 9

    .line 1
    iget-object v6, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v8, Lcom/google/android/gms/internal/measurement/X;

    .line 12
    .line 13
    move-object v0, v8

    .line 14
    move-object v1, v6

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move v4, p3

    .line 18
    move-object v5, v7

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/X;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/H;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 p1, 0x1388

    .line 26
    .line 27
    invoke-virtual {v7, p1, p2}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    instance-of v2, v1, Ljava/lang/Double;

    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    instance-of v2, v1, Ljava/lang/Long;

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    instance-of v2, v1, Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :cond_4
    return-object p2
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/Y;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/Y;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/h0;

    .line 7
    .line 8
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v6, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/google/android/gms/internal/measurement/Z;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, v7

    .line 10
    move-object v1, v6

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/b0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/b0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzb()J
    .locals 6

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/e0;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/e0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Lcom/google/android/gms/internal/measurement/H;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x1f4

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v2, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/H;->v0(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Long;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Ljava/util/Random;

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/m0;->b:LP3/b;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    xor-long/2addr v2, v4

    .line 52
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    iget v3, v0, Lcom/google/android/gms/internal/measurement/m0;->d:I

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    iput v3, v0, Lcom/google/android/gms/internal/measurement/m0;->d:I

    .line 64
    .line 65
    int-to-long v3, v3

    .line 66
    add-long/2addr v1, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    :goto_0
    return-wide v1
.end method

.method public final zzh()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/e0;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/e0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Lcom/google/android/gms/internal/measurement/H;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x32

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/H;->v0(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/e0;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/e0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Lcom/google/android/gms/internal/measurement/H;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x1f4

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/H;->v0(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/e0;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/e0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Lcom/google/android/gms/internal/measurement/H;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x1f4

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/H;->v0(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LI4/c;->a:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/H;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/e0;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/e0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Lcom/google/android/gms/internal/measurement/H;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x1f4

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/H;->v0(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    return-object v0
.end method
