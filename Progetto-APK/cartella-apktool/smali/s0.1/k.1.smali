.class public final Ls0/k;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final G:Ls0/i;

.field public final H:Ls0/m;

.field public final I:[B

.field public J:Z

.field public K:Z


# direct methods
.method public constructor <init>(Ls0/i;Ls0/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ls0/k;->J:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Ls0/k;->K:Z

    .line 8
    .line 9
    iput-object p1, p0, Ls0/k;->G:Ls0/i;

    .line 10
    .line 11
    iput-object p2, p0, Ls0/k;->H:Ls0/m;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    iput-object p1, p0, Ls0/k;->I:[B

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls0/k;->K:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ls0/k;->G:Ls0/i;

    .line 6
    .line 7
    invoke-interface {v0}, Ls0/i;->close()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Ls0/k;->K:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls0/k;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ls0/k;->G:Ls0/i;

    .line 6
    .line 7
    iget-object v1, p0, Ls0/k;->H:Ls0/m;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ls0/i;->a(Ls0/m;)J

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Ls0/k;->J:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-object v0, p0, Ls0/k;->I:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ls0/k;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte v0, v0, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public final read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ls0/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 1

    .line 4
    iget-boolean v0, p0, Ls0/k;->K:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 5
    invoke-virtual {p0}, Ls0/k;->k()V

    .line 6
    iget-object v0, p0, Ls0/k;->G:Ls0/i;

    invoke-interface {v0, p1, p2, p3}, Lm0/j;->q([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    return p1
.end method
