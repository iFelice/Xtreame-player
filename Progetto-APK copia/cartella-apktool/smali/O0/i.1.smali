.class public final LO0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/W;


# instance fields
.field public final G:LO0/W;

.field public final H:Lz4/H;


# direct methods
.method public constructor <init>(LO0/W;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/i;->G:LO0/W;

    .line 5
    .line 6
    invoke-static {p2}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, LO0/i;->H:Lz4/H;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b()Lz4/H;
    .locals 1

    .line 1
    iget-object v0, p0, LO0/i;->H:Lz4/H;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/i;->G:LO0/W;

    .line 2
    .line 3
    invoke-interface {v0}, LO0/W;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final g(LB0/d0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0/i;->G:LO0/W;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LO0/W;->g(LB0/d0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0/i;->G:LO0/W;

    .line 2
    .line 3
    invoke-interface {v0}, LO0/W;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/i;->G:LO0/W;

    .line 2
    .line 3
    invoke-interface {v0}, LO0/W;->u()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final w(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0/i;->G:LO0/W;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LO0/W;->w(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
