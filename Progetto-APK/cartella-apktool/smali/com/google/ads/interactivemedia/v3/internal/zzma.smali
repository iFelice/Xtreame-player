.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzma;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzlz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zza:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzc:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzd:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzmb;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzmb;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzma;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static zze(ILjava/lang/String;FF)Lcom/google/ads/interactivemedia/v3/internal/zzma;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;-><init>(ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static zzf(ILjava/lang/String;II)Lcom/google/ads/interactivemedia/v3/internal/zzma;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzlv;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static zzg(ILjava/lang/String;JJ)Lcom/google/ads/interactivemedia/v3/internal/zzma;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzlw;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const/4 p4, 0x1

    .line 12
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzlw;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static zzh(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzma;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzly;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const-string v0, "gads:sdk_core_constants:experiment_id"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzly;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzmb;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzmb;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public abstract zza(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method public abstract zzb(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract zzc(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zza:I

    return v0
.end method

.method public final zzi()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzmh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzd:Ljava/lang/Object;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzc:Ljava/lang/Object;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzb:Ljava/lang/String;

    return-object v0
.end method
