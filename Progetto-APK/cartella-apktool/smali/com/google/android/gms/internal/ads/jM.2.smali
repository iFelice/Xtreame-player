.class public final Lcom/google/android/gms/internal/ads/jM;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/kM;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kM;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jM;->a:Lcom/google/android/gms/internal/ads/kM;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jM;->a:Lcom/google/android/gms/internal/ads/kM;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/kM;->c:Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jM;->a:Lcom/google/android/gms/internal/ads/kM;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kM;->c:Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jM;->a:Lcom/google/android/gms/internal/ads/kM;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kM;->c:Lcom/google/android/gms/internal/ads/lM;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/lM;->M:Z

    .line 20
    .line 21
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jM;->a:Lcom/google/android/gms/internal/ads/kM;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kM;->c:Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
