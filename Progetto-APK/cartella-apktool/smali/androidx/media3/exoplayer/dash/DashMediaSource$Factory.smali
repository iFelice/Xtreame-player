.class public final Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/x;


# instance fields
.field public final a:LE0/a;

.field public final b:Ls0/h;

.field public c:LG0/j;

.field public final d:LU4/b;

.field public final e:LU4/b;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Ls0/h;)V
    .locals 3

    .line 1
    new-instance v0, LE0/m;

    .line 2
    .line 3
    invoke-direct {v0, p1}, LE0/m;-><init>(Ls0/h;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:LE0/a;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Ls0/h;

    .line 12
    .line 13
    new-instance p1, LG0/j;

    .line 14
    .line 15
    invoke-direct {p1}, LG0/j;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:LG0/j;

    .line 19
    .line 20
    new-instance p1, LU4/b;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:LU4/b;

    .line 26
    .line 27
    const-wide/16 v1, 0x7530

    .line 28
    .line 29
    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    .line 30
    .line 31
    const-wide/32 v1, 0x4c4b40

    .line 32
    .line 33
    .line 34
    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    .line 35
    .line 36
    new-instance p1, LU4/b;

    .line 37
    .line 38
    const/16 v1, 0x19

    .line 39
    .line 40
    invoke-direct {p1, v1}, LU4/b;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:LU4/b;

    .line 44
    .line 45
    iget-object p1, v0, LE0/m;->c:LP0/g;

    .line 46
    .line 47
    check-cast p1, Ll/a;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p1, Ll/a;->a:Z

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(LG0/j;)LO0/x;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:LG0/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lm0/I;)LE0/j;
    .locals 13

    .line 1
    iget-object v0, p1, Lm0/I;->b:Lm0/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v2, LF0/e;

    .line 7
    .line 8
    invoke-direct {v2}, LF0/e;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lm0/E;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    new-instance v3, Lm2/e;

    .line 20
    .line 21
    const/4 v4, 0x5

    .line 22
    invoke-direct {v3, v4, v2, v0}, Lm2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v3, v2

    .line 27
    :goto_0
    new-instance v12, LE0/j;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:LU4/b;

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:LG0/j;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, LG0/j;->b(Lm0/I;)LG0/r;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-wide v10, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    .line 38
    .line 39
    iget-object v7, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:LU4/b;

    .line 40
    .line 41
    iget-wide v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Ls0/h;

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:LE0/a;

    .line 46
    .line 47
    move-object v0, v12

    .line 48
    move-object v1, p1

    .line 49
    invoke-direct/range {v0 .. v11}, LE0/j;-><init>(Lm0/I;Ls0/h;LS0/o;LE0/a;LU4/b;LG0/r;LU4/b;JJ)V

    .line 50
    .line 51
    .line 52
    return-object v12
.end method
