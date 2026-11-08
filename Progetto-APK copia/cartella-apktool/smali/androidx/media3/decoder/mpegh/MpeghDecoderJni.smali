.class public Landroidx/media3/decoder/mpegh/MpeghDecoderJni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private decoderHandle:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native destroy()V
.end method

.method public native flush()V
.end method

.method public native flushAndGet()V
.end method

.method public native getNumChannels()I
.end method

.method public native getPts()J
.end method

.method public native getSamplerate()I
.end method

.method public native getSamples(Ljava/nio/ByteBuffer;I)I
.end method

.method public native init(I[BI)V
.end method

.method public native process(Ljava/nio/ByteBuffer;IJ)V
.end method
