.class public final Lz4/g0;
.super Lz4/L;
.source "SourceFile"


# instance fields
.field public final transient J:Lz4/J;

.field public final transient K:Lz4/H;


# direct methods
.method public constructor <init>(Lz4/J;Lz4/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz4/g0;->J:Lz4/J;

    .line 5
    .line 6
    iput-object p2, p0, Lz4/g0;->K:Lz4/H;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Lz4/H;
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/g0;->K:Lz4/H;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(I[Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/g0;->K:Lz4/H;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz4/H;->c(I[Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/g0;->J:Lz4/J;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz4/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/g0;->J:Lz4/J;

    .line 2
    .line 3
    check-cast v0, Lz4/i0;

    .line 4
    .line 5
    iget v0, v0, Lz4/i0;->L:I

    .line 6
    .line 7
    return v0
.end method

.method public final t()Lcom/google/android/gms/internal/ads/gB;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lz4/g0;->K:Lz4/H;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lz4/H;->v(I)Lz4/F;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
