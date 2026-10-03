.class public final Lc4/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Long;

.field public B:Ljava/lang/Long;

.field public C:J

.field public D:Ljava/lang/String;

.field public E:I

.field public F:I

.field public G:J

.field public H:Ljava/lang/String;

.field public I:[B

.field public J:I

.field public K:J

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public P:J

.field public Q:Ljava/lang/String;

.field public R:Z

.field public S:J

.field public T:J

.field public final a:Lc4/l0;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/Boolean;

.field public s:J

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:J

.field public x:J

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Lc4/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lc4/P;->a:Lc4/l0;

    .line 11
    .line 12
    iput-object p2, p0, Lc4/P;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 15
    .line 16
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lc4/j0;->m()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final A(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->P:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->P:J

    .line 26
    .line 27
    return-void
.end method

.method public final B(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->K:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->K:J

    .line 26
    .line 27
    return-void
.end method

.method public final C(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->n:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->n:J

    .line 26
    .line 27
    return-void
.end method

.method public final D(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget v1, p0, Lc4/P;->E:I

    .line 14
    .line 15
    if-eq v1, p1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    or-int/2addr v0, v1

    .line 21
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 22
    .line 23
    iput p1, p0, Lc4/P;->E:I

    .line 24
    .line 25
    return-void
.end method

.method public final E(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->s:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->s:J

    .line 26
    .line 27
    return-void
.end method

.method public final F(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->T:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->T:J

    .line 26
    .line 27
    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-object v1, p0, Lc4/P;->f:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 23
    .line 24
    iput-object p1, p0, Lc4/P;->f:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 20
    .line 21
    iget-object v2, p0, Lc4/P;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    xor-int/2addr v1, v2

    .line 28
    or-int/2addr v0, v1

    .line 29
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 30
    .line 31
    iput-object p1, p0, Lc4/P;->d:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public final I(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->m:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->m:J

    .line 26
    .line 27
    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-object v1, p0, Lc4/P;->Q:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 23
    .line 24
    iput-object p1, p0, Lc4/P;->Q:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final K(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->G:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->G:J

    .line 26
    .line 27
    return-void
.end method

.method public final L(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->i:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->i:J

    .line 26
    .line 27
    return-void
.end method

.method public final M(J)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    cmp-long v4, p1, v0

    .line 6
    .line 7
    if-ltz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/c;->b(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 16
    .line 17
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 18
    .line 19
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 26
    .line 27
    iget-wide v4, p0, Lc4/P;->g:J

    .line 28
    .line 29
    cmp-long v1, v4, p1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_1
    or-int/2addr v0, v2

    .line 35
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 36
    .line 37
    iput-wide p1, p0, Lc4/P;->g:J

    .line 38
    .line 39
    return-void
.end method

.method public final N(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->h:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->h:J

    .line 26
    .line 27
    return-void
.end method

.method public final O(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Lc4/P;->o:Z

    .line 14
    .line 15
    if-eq v1, p1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    or-int/2addr v0, v1

    .line 21
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lc4/P;->o:Z

    .line 24
    .line 25
    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-object v1, p0, Lc4/P;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 23
    .line 24
    iput-object p1, p0, Lc4/P;->e:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final Q(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->t:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-object v0, p0, Lc4/P;->t:Ljava/util/ArrayList;

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final R()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lc4/P;->J:I

    .line 12
    .line 13
    return v0
.end method

.method public final S()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lc4/P;->k:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public final T()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lc4/P;->s:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public final U()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->r:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->q:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->Q:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lc4/P;->J(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->c:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->j:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->d:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->H:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc4/P;->D:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final j(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lc4/P;->g:J

    .line 12
    .line 13
    add-long/2addr v1, p1

    .line 14
    iget-object v3, p0, Lc4/P;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/32 v4, 0x7fffffff

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 20
    .line 21
    cmp-long v6, v1, v4

    .line 22
    .line 23
    if-lez v6, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, v0, Lc4/T;->O:Lc4/Q;

    .line 33
    .line 34
    const-string v6, "Bundle index overflow. appId"

    .line 35
    .line 36
    invoke-virtual {v2, v1, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v1, -0x1

    .line 40
    .line 41
    add-long/2addr v1, p1

    .line 42
    :cond_0
    iget-wide p1, p0, Lc4/P;->G:J

    .line 43
    .line 44
    const-wide/16 v6, 0x1

    .line 45
    .line 46
    add-long/2addr p1, v6

    .line 47
    cmp-long v6, p1, v4

    .line 48
    .line 49
    if-lez v6, :cond_1

    .line 50
    .line 51
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p2, v0, Lc4/T;->O:Lc4/Q;

    .line 59
    .line 60
    const-string v0, "Delivery index overflow. appId"

    .line 61
    .line 62
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 p1, 0x0

    .line 66
    .line 67
    :cond_1
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 69
    .line 70
    iput-wide v1, p0, Lc4/P;->g:J

    .line 71
    .line 72
    iput-wide p1, p0, Lc4/P;->G:J

    .line 73
    .line 74
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 20
    .line 21
    iget-object v2, p0, Lc4/P;->q:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    xor-int/2addr v1, v2

    .line 28
    or-int/2addr v0, v1

    .line 29
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 30
    .line 31
    iput-object p1, p0, Lc4/P;->q:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-object v1, p0, Lc4/P;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 23
    .line 24
    iput-object p1, p0, Lc4/P;->c:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-object v1, p0, Lc4/P;->l:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 23
    .line 24
    iput-object p1, p0, Lc4/P;->l:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-object v1, p0, Lc4/P;->j:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 23
    .line 24
    iput-object p1, p0, Lc4/P;->j:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final o(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->k:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->k:J

    .line 26
    .line 27
    return-void
.end method

.method public final p(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->C:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->C:J

    .line 26
    .line 27
    return-void
.end method

.method public final q(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->x:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->x:J

    .line 26
    .line 27
    return-void
.end method

.method public final r(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->w:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->w:J

    .line 26
    .line 27
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->v:Z

    .line 12
    .line 13
    return v0
.end method

.method public final u(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->S:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->S:J

    .line 26
    .line 27
    return-void
.end method

.method public final v(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->N:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->N:J

    .line 26
    .line 27
    return-void
.end method

.method public final w(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->O:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->O:J

    .line 26
    .line 27
    return-void
.end method

.method public final x(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->M:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->M:J

    .line 26
    .line 27
    return-void
.end method

.method public final y(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget-wide v1, p0, Lc4/P;->L:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 24
    .line 25
    iput-wide p1, p0, Lc4/P;->L:J

    .line 26
    .line 27
    return-void
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/P;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc4/P;->R:Z

    .line 12
    .line 13
    iget v1, p0, Lc4/P;->F:I

    .line 14
    .line 15
    if-eq v1, p1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    or-int/2addr v0, v1

    .line 21
    iput-boolean v0, p0, Lc4/P;->R:Z

    .line 22
    .line 23
    iput p1, p0, Lc4/P;->F:I

    .line 24
    .line 25
    return-void
.end method
