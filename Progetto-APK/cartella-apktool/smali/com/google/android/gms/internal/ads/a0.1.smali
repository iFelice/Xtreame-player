.class public final Lcom/google/android/gms/internal/ads/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Lcom/google/android/gms/internal/ads/N;

.field public g:Lcom/google/android/gms/internal/ads/e0;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/a0;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/a0;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/a0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 9

    .line 1
    iget p2, p0, Lcom/google/android/gms/internal/ads/a0;->e:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p2, v2, :cond_1

    .line 7
    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/a0;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x400

    .line 23
    .line 24
    invoke-interface {p2, p1, v3, v2}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iput v1, p0, Lcom/google/android/gms/internal/ads/a0;->e:I

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/a0;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 34
    .line 35
    iget v6, p0, Lcom/google/android/gms/internal/ads/a0;->d:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 43
    .line 44
    .line 45
    iput p2, p0, Lcom/google/android/gms/internal/ads/a0;->d:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/a0;->d:I

    .line 49
    .line 50
    add-int/2addr v0, p1

    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/ads/a0;->d:I

    .line 52
    .line 53
    :goto_0
    return p2
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/a0;->b:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lcom/google/android/gms/internal/ads/a0;->a:I

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    if-eq v3, v4, :cond_0

    .line 9
    .line 10
    if-eq v1, v4, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-static {v4}, Lo3/r;->M(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lcom/google/android/gms/internal/ads/jr;

    .line 19
    .line 20
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 24
    .line 25
    check-cast p1, Lcom/google/android/gms/internal/ads/F;

    .line 26
    .line 27
    invoke-virtual {p1, v5, v2, v1, v2}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, v3, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    return v2
.end method

.method public final e(JJ)V
    .locals 2

    .line 1
    const-wide/16 p3, 0x0

    const/4 v0, 0x1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/a0;->e:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/a0;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/a0;->d:I

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    const/16 v0, 0x400

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a0;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a0;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/a0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/a0;->f:Lcom/google/android/gms/internal/ads/N;

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/b0;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/google/android/gms/internal/ads/a0;->e:I

    .line 47
    .line 48
    return-void
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    return-object v0
.end method
