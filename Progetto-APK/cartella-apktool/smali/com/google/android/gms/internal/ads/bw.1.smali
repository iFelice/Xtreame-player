.class public final Lcom/google/android/gms/internal/ads/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Ov;

.field public final b:Lcom/google/android/gms/internal/ads/Qv;

.field public final c:Lcom/google/android/gms/internal/ads/cq;

.field public final d:Lcom/google/android/gms/internal/ads/ix;

.field public final e:Lcom/google/android/gms/internal/ads/Tw;

.field public final f:Lcom/google/android/gms/internal/ads/oh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cq;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;Lcom/google/android/gms/internal/ads/oh;Lcom/google/android/gms/internal/ads/Tw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bw;->a:Lcom/google/android/gms/internal/ads/Ov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bw;->b:Lcom/google/android/gms/internal/ads/Qv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bw;->c:Lcom/google/android/gms/internal/ads/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bw;->d:Lcom/google/android/gms/internal/ads/ix;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bw;->f:Lcom/google/android/gms/internal/ads/oh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bw;->e:Lcom/google/android/gms/internal/ads/Tw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/bw;->b(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bw;->a:Lcom/google/android/gms/internal/ads/Ov;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bw;->d:Lcom/google/android/gms/internal/ads/ix;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bw;->e:Lcom/google/android/gms/internal/ads/Tw;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, LA0/w;

    .line 16
    .line 17
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 18
    .line 19
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bw;->b:Lcom/google/android/gms/internal/ads/Qv;

    .line 29
    .line 30
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    move v4, p1

    .line 34
    move-object v6, p2

    .line 35
    invoke-direct/range {v1 .. v6}, LA0/w;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bw;->c:Lcom/google/android/gms/internal/ads/cq;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cq;->E(LA0/w;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final c(ILjava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->p9:Lcom/google/android/gms/internal/ads/J7;

    .line 18
    .line 19
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 20
    .line 21
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oh;->b(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    sget-object v1, Ll3/p;->f:Ll3/p;

    .line 42
    .line 43
    iget-object v1, v1, Ll3/p;->e:Ljava/util/Random;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bw;->f:Lcom/google/android/gms/internal/ads/oh;

    .line 46
    .line 47
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/oh;->a(Ljava/lang/String;Ljava/util/Random;)LD4/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_1
    new-instance v1, LK/k;

    .line 57
    .line 58
    const/16 v2, 0xa

    .line 59
    .line 60
    invoke-direct {v1, p0, p1, v2}, LK/k;-><init>(Ljava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 64
    .line 65
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method
