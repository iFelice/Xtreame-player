.class public final LJ6/h;
.super LJ6/N;
.source "SourceFile"

# interfaces
.implements LJ6/g;


# instance fields
.field public final e:LJ6/i;


# direct methods
.method public constructor <init>(LJ6/Q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LN6/k;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ6/h;->e:LJ6/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LJ6/N;->i()LJ6/Q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, LJ6/Q;->e(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, LJ6/Q;->m()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    return v2
.end method

.method public final j()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LJ6/N;->i()LJ6/Q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, LJ6/h;->e:LJ6/i;

    .line 6
    .line 7
    check-cast v0, LJ6/Q;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LJ6/Q;->e(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
