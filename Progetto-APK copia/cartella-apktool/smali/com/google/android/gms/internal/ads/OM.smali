.class public Lcom/google/android/gms/internal/ads/OM;
.super Lcom/google/android/gms/internal/ads/TJ;
.source "SourceFile"


# instance fields
.field public final G:I


# direct methods
.method public constructor <init>(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/PM;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move-object p2, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v1, "Decoder failed: "

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Landroid/media/MediaCodec$CodecException;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 33
    .line 34
    const/16 v2, 0x17

    .line 35
    .line 36
    if-lt v1, v2, :cond_3

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    check-cast p1, Landroid/media/MediaCodec$CodecException;

    .line 41
    .line 42
    invoke-static {p1}, LF2/D;->b(Landroid/media/MediaCodec$CodecException;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Et;->q(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/OM;->G:I

    .line 54
    .line 55
    return-void
.end method
