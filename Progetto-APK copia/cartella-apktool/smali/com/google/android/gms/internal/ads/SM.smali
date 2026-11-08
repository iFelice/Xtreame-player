.class public final Lcom/google/android/gms/internal/ads/SM;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Lcom/google/android/gms/internal/ads/PM;

.field public final I:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/ZM;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/p0;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoder init failed: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const-string v0, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_"

    .line 3
    invoke-static {v0, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/SM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/google/android/gms/internal/ads/PM;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/PM;)V
    .locals 10

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p0;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoder init failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    const-string v3, ", "

    .line 10
    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    instance-of v0, p2, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12
    :goto_1
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    move-object v4, p0

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/SM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/google/android/gms/internal/ads/PM;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/google/android/gms/internal/ads/PM;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/SM;->G:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/SM;->H:Lcom/google/android/gms/internal/ads/PM;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/SM;->I:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/internal/ads/SM;)Lcom/google/android/gms/internal/ads/SM;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/SM;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/SM;->G:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/SM;->I:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/SM;->H:Lcom/google/android/gms/internal/ads/PM;

    .line 16
    .line 17
    move-object v0, v6

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/SM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/google/android/gms/internal/ads/PM;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v6
.end method
