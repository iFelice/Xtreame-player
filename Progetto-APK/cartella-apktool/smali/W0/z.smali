.class public abstract LW0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/F;


# instance fields
.field public final a:LW0/F;


# direct methods
.method public constructor <init>(LW0/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW0/z;->a:LW0/F;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, LW0/z;->a:LW0/F;

    .line 2
    .line 3
    invoke-interface {v0}, LW0/F;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k(J)LW0/E;
    .locals 1

    .line 1
    iget-object v0, p0, LW0/z;->a:LW0/F;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LW0/F;->k(J)LW0/E;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m()J
    .locals 2

    .line 1
    iget-object v0, p0, LW0/z;->a:LW0/F;

    .line 2
    .line 3
    invoke-interface {v0}, LW0/F;->m()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
