.class public final Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Google1"

    iput-object p1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zza:Ljava/lang/String;

    const-string p1, "3.35.1"

    iput-object p1, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;
    .locals 1

    .line 1
    const-string p0, "Name is null or empty"

    .line 2
    .line 3
    const-string p1, "Google1"

    .line 4
    .line 5
    invoke-static {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "Version is null or empty"

    .line 9
    .line 10
    const-string v0, "3.35.1"

    .line 11
    .line 12
    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zzb:Ljava/lang/String;

    return-object v0
.end method
