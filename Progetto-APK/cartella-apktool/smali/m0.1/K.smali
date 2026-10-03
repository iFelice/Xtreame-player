.class public final Lm0/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Integer;

.field public B:Ljava/lang/CharSequence;

.field public C:Ljava/lang/CharSequence;

.field public D:Ljava/lang/CharSequence;

.field public E:Ljava/lang/Integer;

.field public F:Landroid/os/Bundle;

.field public G:Lz4/H;

.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/CharSequence;

.field public h:Ljava/lang/Long;

.field public i:[B

.field public j:Ljava/lang/Integer;

.field public k:Landroid/net/Uri;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Boolean;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/Integer;

.field public r:Ljava/lang/Integer;

.field public s:Ljava/lang/Integer;

.field public t:Ljava/lang/Integer;

.field public u:Ljava/lang/Integer;

.field public v:Ljava/lang/Integer;

.field public w:Ljava/lang/CharSequence;

.field public x:Ljava/lang/CharSequence;

.field public y:Ljava/lang/CharSequence;

.field public z:Ljava/lang/Integer;


# virtual methods
.method public final a(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/K;->i:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lm0/K;->j:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, [B

    .line 25
    .line 26
    iput-object p2, p0, Lm0/K;->i:[B

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lm0/K;->j:Ljava/lang/Integer;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->d:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->b:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->x:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->B:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->s:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->r:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final j(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->q:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->u:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->t:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->m:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final p(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->l:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/K;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method
