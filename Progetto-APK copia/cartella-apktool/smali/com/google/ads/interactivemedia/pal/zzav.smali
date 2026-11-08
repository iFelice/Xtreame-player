.class public final Lcom/google/ads/interactivemedia/pal/zzav;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/pal/A0;

.field private zzc:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/pal/A0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zzb:Lcom/google/android/gms/internal/pal/A0;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/ads/interactivemedia/pal/zzav;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zza:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/ads/interactivemedia/pal/zzav;)Lcom/google/android/gms/internal/pal/A0;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zzb:Lcom/google/android/gms/internal/pal/A0;

    return-object p0
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/pal/zzav;->zzd()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zzc:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/pal/zzau;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/pal/zzau;-><init>(Lcom/google/ads/interactivemedia/pal/zzav;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zzc:Ljava/lang/Runnable;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zza:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zzb:Lcom/google/android/gms/internal/pal/A0;

    .line 16
    .line 17
    iget-wide v1, v1, Lcom/google/android/gms/internal/pal/C0;->G:J

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zzc:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zza:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzav;->zzc:Ljava/lang/Runnable;

    .line 13
    .line 14
    return-void
.end method
