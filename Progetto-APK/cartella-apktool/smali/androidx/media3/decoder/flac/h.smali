.class public final Landroidx/media3/decoder/flac/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/F;


# instance fields
.field public final a:J

.field public final b:Landroidx/media3/decoder/flac/FlacDecoderJni;


# direct methods
.method public constructor <init>(JLandroidx/media3/decoder/flac/FlacDecoderJni;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/decoder/flac/h;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/decoder/flac/h;->b:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final k(J)LW0/E;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/decoder/flac/h;->b:Landroidx/media3/decoder/flac/FlacDecoderJni;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/decoder/flac/FlacDecoderJni;->getSeekPoints(J)LW0/E;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, LW0/E;

    .line 10
    .line 11
    sget-object p2, LW0/G;->c:LW0/G;

    .line 12
    .line 13
    invoke-direct {p1, p2, p2}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p1
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/decoder/flac/h;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
