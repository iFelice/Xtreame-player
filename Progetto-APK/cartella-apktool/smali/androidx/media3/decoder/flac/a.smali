.class public final synthetic Landroidx/media3/decoder/flac/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/h;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/extractor/FlacStreamMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/decoder/flac/a;->G:I

    iput-object p2, p0, Landroidx/media3/decoder/flac/a;->H:Landroidx/media3/extractor/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final b(J)J
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/decoder/flac/a;->G:I

    iget-object v1, p0, Landroidx/media3/decoder/flac/a;->H:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
