.class public final synthetic Landroidx/media3/decoder/ffmpeg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/h;


# instance fields
.field public final synthetic G:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/b;->G:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    return-void
.end method


# virtual methods
.method public final c(Lw0/i;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/b;->G:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lw0/k;->releaseOutputBuffer(Lw0/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
