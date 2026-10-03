.class final Lcom/google/ads/interactivemedia/pal/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/z0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza()Landroid/os/Handler;
    .locals 3

    .line 1
    new-instance v0, LE1/W;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v0, v1, v2}, LE1/W;-><init>(Landroid/os/Looper;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
