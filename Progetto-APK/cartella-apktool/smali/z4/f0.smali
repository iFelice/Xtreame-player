.class public final Lz4/f0;
.super Lz4/L;
.source "SourceFile"


# instance fields
.field public final transient J:Lz4/J;

.field public final transient K:[Ljava/lang/Object;

.field public final transient L:I

.field public final transient M:I


# direct methods
.method public constructor <init>(Lz4/J;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz4/f0;->J:Lz4/J;

    .line 5
    .line 6
    iput-object p2, p0, Lz4/f0;->K:[Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lz4/f0;->L:I

    .line 10
    .line 11
    iput p3, p0, Lz4/f0;->M:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final c(I[Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz4/L;->b()Lz4/H;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lz4/H;->c(I[Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lz4/f0;->J:Lz4/J;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lz4/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_0
    return v1
.end method

.method public final o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final s()Lz4/H;
    .locals 1

    .line 1
    new-instance v0, Lz4/e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lz4/e0;-><init>(Lz4/f0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lz4/f0;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public final t()Lcom/google/android/gms/internal/ads/gB;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz4/L;->b()Lz4/H;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lz4/H;->v(I)Lz4/F;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
