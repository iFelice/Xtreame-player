.class public final Ls0/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/i;


# instance fields
.field public final a:Ls0/i;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ls0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ls0/M;->a:Ls0/i;

    .line 8
    .line 9
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 10
    .line 11
    iput-object p1, p0, Ls0/M;->c:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Ls0/M;->d:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ls0/m;)J
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/M;->a:Ls0/i;

    .line 2
    .line 3
    iget-object v1, p1, Ls0/m;->a:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object v1, p0, Ls0/M;->c:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Ls0/M;->d:Ljava/util/Map;

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Ls0/i;->a(Ls0/m;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {v0}, Ls0/i;->getUri()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Ls0/M;->c:Landroid/net/Uri;

    .line 24
    .line 25
    :cond_0
    invoke-interface {v0}, Ls0/i;->k()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Ls0/M;->d:Ljava/util/Map;

    .line 30
    .line 31
    return-wide v1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    invoke-interface {v0}, Ls0/i;->getUri()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iput-object v1, p0, Ls0/M;->c:Landroid/net/Uri;

    .line 40
    .line 41
    :cond_1
    invoke-interface {v0}, Ls0/i;->k()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Ls0/M;->d:Ljava/util/Map;

    .line 46
    .line 47
    throw p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/M;->a:Ls0/i;

    .line 2
    .line 3
    invoke-interface {v0}, Ls0/i;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/M;->a:Ls0/i;

    .line 2
    .line 3
    invoke-interface {v0}, Ls0/i;->getUri()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/M;->a:Ls0/i;

    .line 2
    .line 3
    invoke-interface {v0}, Ls0/i;->k()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final p(Ls0/O;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls0/M;->a:Ls0/i;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ls0/i;->p(Ls0/O;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final q([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/M;->a:Ls0/i;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lm0/j;->q([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, -0x1

    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    iget-wide p2, p0, Ls0/M;->b:J

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    add-long/2addr p2, v0

    .line 14
    iput-wide p2, p0, Ls0/M;->b:J

    .line 15
    .line 16
    :cond_0
    return p1
.end method
