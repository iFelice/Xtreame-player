.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzck;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzck;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzck;

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzck;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzck;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zzb()Z

    move-result v0

    return v0
.end method
