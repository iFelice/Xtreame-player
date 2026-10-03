.class final Lcom/google/ads/interactivemedia/v3/internal/zzdh;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzdj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzdj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzdj;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "WebView renderer gone: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, "for WebView: "

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "NativeBridge"

    .line 32
    .line 33
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzdj;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zza()Landroid/webkit/WebView;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-ne p2, p1, :cond_0

    .line 43
    .line 44
    const-string p2, "Deallocating the Native bridge as it is unusable. No further events will be generated for this session."

    .line 45
    .line 46
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzdj;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zzm(Landroid/webkit/WebView;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    return p1
.end method
