.class public final Lcom/google/android/gms/internal/ads/Xk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Xk;->a:Lcom/google/android/gms/internal/ads/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xk;->a:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    return-object v0
.end method
