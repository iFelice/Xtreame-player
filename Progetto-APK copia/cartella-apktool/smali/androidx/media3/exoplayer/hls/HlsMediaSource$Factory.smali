.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/x;


# instance fields
.field public final a:LH0/c;

.field public b:LH0/k;

.field public final c:Z

.field public final d:LU4/b;

.field public final e:LN/i;

.field public final f:LU4/b;

.field public g:LG0/j;

.field public final h:LU4/b;

.field public i:Z

.field public final j:I

.field public final k:J


# direct methods
.method public constructor <init>(Ls0/h;)V
    .locals 2

    .line 1
    new-instance v0, LH0/c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, LH0/c;-><init>(Ls0/h;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:LH0/c;

    .line 10
    .line 11
    new-instance p1, LG0/j;

    .line 12
    .line 13
    invoke-direct {p1}, LG0/j;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:LG0/j;

    .line 17
    .line 18
    new-instance p1, LU4/b;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:LU4/b;

    .line 24
    .line 25
    sget-object p1, LI0/c;->U:LN/i;

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:LN/i;

    .line 28
    .line 29
    new-instance p1, LU4/b;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:LU4/b;

    .line 35
    .line 36
    new-instance p1, LU4/b;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:LU4/b;

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:I

    .line 45
    .line 46
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:J

    .line 52
    .line 53
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Z

    .line 54
    .line 55
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Z

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a(LG0/j;)LO0/x;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:LG0/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lm0/I;)LH0/o;
    .locals 14

    .line 1
    iget-object v0, p1, Lm0/I;->b:Lm0/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:LH0/k;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, LH0/d;

    .line 11
    .line 12
    invoke-direct {v1}, LH0/d;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:LH0/k;

    .line 16
    .line 17
    :cond_0
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:LH0/k;

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Z

    .line 20
    .line 21
    move-object v2, v5

    .line 22
    check-cast v2, LH0/d;

    .line 23
    .line 24
    iput-boolean v1, v2, LH0/d;->c:Z

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, v2, LH0/d;->d:I

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:LU4/b;

    .line 30
    .line 31
    iget-object v0, v0, Lm0/E;->d:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    new-instance v2, Lm2/c;

    .line 40
    .line 41
    const/4 v3, 0x5

    .line 42
    invoke-direct {v2, v3, v1, v0}, Lm2/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object v1, v2

    .line 46
    :cond_1
    new-instance v0, LH0/o;

    .line 47
    .line 48
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:LU4/b;

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:LG0/j;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, LG0/j;->b(Lm0/I;)LG0/r;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:LN/i;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v9, LI0/c;

    .line 62
    .line 63
    iget-object v8, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:LU4/b;

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:LH0/c;

    .line 66
    .line 67
    invoke-direct {v9, v2, v8, v1}, LI0/c;-><init>(LH0/c;LU4/b;LI0/s;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v12, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Z

    .line 71
    .line 72
    iget-wide v10, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:J

    .line 73
    .line 74
    iget v13, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:I

    .line 75
    .line 76
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:LH0/c;

    .line 77
    .line 78
    move-object v2, v0

    .line 79
    move-object v3, p1

    .line 80
    invoke-direct/range {v2 .. v13}, LH0/o;-><init>(Lm0/I;LH0/c;LH0/k;LU4/b;LG0/r;LU4/b;LI0/c;JZI)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method
