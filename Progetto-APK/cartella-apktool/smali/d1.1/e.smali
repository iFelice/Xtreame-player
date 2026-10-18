.class public final Ld1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/u;


# instance fields
.field public final G:J

.field public final H:LW0/u;


# direct methods
.method public constructor <init>(JLW0/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ld1/e;->G:J

    .line 5
    .line 6
    iput-object p3, p0, Ld1/e;->H:LW0/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/e;->H:LW0/u;

    .line 2
    .line 3
    invoke-interface {v0}, LW0/u;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r(LW0/F;)V
    .locals 1

    .line 1
    new-instance v0, Ld1/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p1}, Ld1/d;-><init>(Ld1/e;LW0/F;LW0/F;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ld1/e;->H:LW0/u;

    .line 7
    .line 8
    invoke-interface {p1, v0}, LW0/u;->r(LW0/F;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final t(II)LW0/L;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/e;->H:LW0/u;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LW0/u;->t(II)LW0/L;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
